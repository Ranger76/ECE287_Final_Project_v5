library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.share_pos_array_type.all;
use work.state_type.all;
use work.DRAWING_CONT.all;
use work.DRAWING_CONT_0.all;
use work.DRAWING_CONT_1.all;
use work.DRAWING_CONT_2.all;
use work.CONTROL.all;
use work.CONTROL_GROW.all;

entity ECE287_Final_Project_v5 is
    Port ( CLK     : in  STD_LOGIC;
           RST     : in  STD_LOGIC;
           HSYNC   : out  STD_LOGIC;
           VSYNC   : out  STD_LOGIC;
           RGB     : out  STD_LOGIC_VECTOR (2 downto 0);
			  VGA_CLK : out  STD_LOGIC;
			  KEYS    : in  STD_LOGIC_VECTOR(3 downto 0);
			  S       : in  STD_LOGIC_VECTOR(2 downto 0);
			  LED     : out STD_LOGIC
			  );
end ECE287_Final_Project_v5;


architecture Behavioral of ECE287_Final_Project_v5 is

COMPONENT vga_driver IS
    Port ( CLK               : in  STD_LOGIC;
           RST               : in  STD_LOGIC;
           HSYNC             : out  STD_LOGIC;
           VSYNC             : out  STD_LOGIC;
           RGB               : out  STD_LOGIC_VECTOR (2 downto 0);
			  VGA_CLK           : out  STD_LOGIC;
			  KEYS              : in  STD_LOGIC_VECTOR(3 downto 0);
			  S                 : in  STD_LOGIC_VECTOR(2 downto 0);
			  RGB_DRAWING_CONT  : in STD_LOGIC_VECTOR(2 downto 0);
			  videoOn_Draw      : out STD_LOGIC;
			  X_Pos             : out INTEGER;
			  Y_Pos             : out INTEGER
			  );
END COMPONENT vga_driver;

-- START: Setting clock for game
	signal counter_1          : std_logic_vector(24 downto 0);  -- signal that does the counting
	signal CLK_5Hz            : std_logic;           
-- END: Setting clock for game

-- START: Setting clock for game
	signal counter_2          : std_logic_vector(24 downto 0);  -- signal that does the counting
	signal CLK_2Hz            : std_logic;           
-- END: Setting clock for game

-- START: Setting up states
	signal state              : state_type := STATE_1;
	signal STATE_STORE        : state_type;
-- END: Setting up states

-- START: timer for FSM transition
   signal timer              : std_logic_vector(28 downto 0);  -- signal that does the counting
-- END: timer for FSM transition

-- START: Position for drawing procedure
	signal SQ_X1              : integer range 0 to 799;
	signal SQ_Y1              : integer range 0 to 524;
	signal SQ_X1_OLD          : integer range 0 to 1000 := 1000;
	signal SQ_Y1_OLD          : integer range 0 to 1000 := 1000;
-- END: Position for drawing procedure

-- START: Storing p1 x & y positions
	signal p1_prev_x_position : store_x_position;
	signal p1_prev_y_position : store_y_position;
	signal p1_prev_x_position_check : store_x_position;
	signal p1_prev_y_position_check : store_y_position;
-- END: Storing p1 x & y positions

-- START: Drawing procedure for game
	signal videoOn_Draw       : std_logic := '0';
	signal X_Pos              : integer := 0;
	signal Y_Pos              : integer := 0;
	signal RGB_DRAWING_CONT   : STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal RGB_DRAWING_CONT_0 : STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal RGB_DRAWING_CONT_1 : STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal RGB_DRAWING_CONT_2 : STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal clk25              : std_logic := '0';
-- END: Drawing procedure for game

-- START: Collision Detection
	signal i_collide          : integer := 0;
	signal collide            : std_logic := '0';
	signal collide_detect     : std_logic := '0';
-- END: Collision Detection
	
-- START: Start Game
	signal Game_On_S3         : std_logic := '0';
	signal Game_On_S2         : std_logic := '0';
	signal Game_On_S1         : std_logic := '0';
	signal Game_On_S0         : std_logic := '0';
-- END: Start Game

begin
C1: vga_driver PORT MAP(CLK, 
								RST, 
								HSYNC, 
								VSYNC, 
								RGB, 
								VGA_CLK, 
								KEYS, 
								S, 
								RGB_DRAWING_CONT,
								videoOn_Draw => videoOn_Draw,
								X_Pos => X_Pos, 
								Y_Pos => Y_Pos
								);
-- START: Controller procedure for testing/game
--CONTROLLER(RST, CLK_5Hz, KEYS, collide_detect, S(2), SQ_X1, SQ_Y1, p1_prev_x_position, p1_prev_y_position);
CONTROLLER_GROW(RST, CLK_5HZ, KEYS, collide_detect, S(2), SQ_X1, SQ_Y1, SQ_X1_OLD, SQ_Y1_OLD, p1_prev_x_position, p1_prev_y_position, p1_prev_x_position_check, p1_prev_y_position_check);
-- END: Controller procedure for testing/game
-----------------------------------------------------------------------------
p1_body_collision:process(RST, collide_detect, CLK_5HZ, SQ_X1, SQ_Y1)
begin	
		if(RST = '1')then
			 i_collide <= 0;
			 collide <= '0';
		elsif(CLK'event and CLK = '1')then
		 -------- START: Collison for game
			if (((((SQ_X1 = p1_prev_x_position(i_collide))) AND (SQ_Y1 = p1_prev_y_position(i_collide)) AND ((SQ_X1 > SQ_X1_OLD OR SQ_X1 < SQ_X1_OLD )) AND ((SQ_Y1 > SQ_Y1_OLD OR SQ_Y1 < SQ_Y1_OLD )))) OR SQ_X1 <= 30 OR SQ_Y1 <= 30 OR SQ_X1 >= 575 OR SQ_Y1 >= 380)then
				 collide <= '1';
			elsif(collide_detect = '0')then
				collide <= '0';
			end if;		 			 
		 -------- End: Collison for game
		 --------
		 -------- START: Collison for test
----			if (((SQ_X1_OLD > p1_prev_x_position(i_collide)) AND (SQ_X1_OLD < (p1_prev_x_position(i_collide)+25)) AND ((SQ_Y1_OLD) > p1_prev_y_position(i_collide)) AND ((SQ_Y1_OLD) < (p1_prev_y_position(i_collide)+25)))) then
----	          collide <= '1';
		 -------- END: Collison for test	
			--
			if(i_collide < 750)then
				i_collide <= i_collide + 1;
			else
				i_collide <= 0;
			end if; 
		end if;
end process;
-----------------------------------------------------------------------------
-- START: state_transition_FSM_Clock
state_transition_FSM_Clock: process (CLK)
begin
    if CLK'event and CLK = '1' then  -- rising clock edge
      if counter_1 < "10011000100101101000000" then
        counter_1 <= counter_1 + 1;
      else
        CLK_5Hz <= not CLK_5Hz;
        counter_1 <= (others => '0');        
      end if;		
    end if;
end process state_transition_FSM_Clock;
-- END: state_transition_FSM_Clock
--
-- START: Control_Clock
clock_2HZ: process (CLK)
begin
    if CLK'event and CLK = '1' then  -- rising clock edge
      if counter_2 < "0111111010111100001000000" then
        counter_2 <= counter_2 + 1;
      else
        CLK_2Hz <= not CLK_2Hz;
        counter_2 <= (others => '0');        
      end if;		
    end if;
end process clock_2HZ;
-- END: Control_Clock
--
--
clk_div:process(CLK)
begin
	if(CLK'event and CLK = '1')then
		clk25 <= NOT(clk25);
	end if;
end process;
--
--
-- START: state_transition FSM Flow
state_transition:process(RST, CLK, collide_detect, SQ_X1, SQ_Y1, S(2), state)
begin
   if(RST = '1')then
			state <= STATE_1;
	elsif(CLK'event and CLK = '1')then
			case state is 
				when STATE_1 =>
					if timer < "00111111010111100001000000000" then
						 timer <= timer + 4;
					else
						timer <= (others => '0'); 
						   if (S(2) = '1' OR collide_detect = '1' OR SQ_X1 <= 30 OR SQ_Y1 <= 30 OR SQ_X1 >= 575 OR SQ_Y1 >= 380) then
								 state <= STATE_2;
							else
								 state <= STATE_1;
							end if;
               end if;        							
					
			   when STATE_2 =>
					if timer < "01011111010111100001000000000" then
						 timer <= timer + 1;
					else
						timer <= (others => '0'); 
						   if (S(2) = '1' OR collide_detect = '1' OR SQ_X1 <= 30 OR SQ_Y1 <= 30 OR SQ_X1 >= 575 OR SQ_Y1 >= 380) then
								 state <= STATE_2;
							else
								 state <= STATE_1;
							end if;
               end if;          
				when others => null;
         end case;
   end if;
end process state_transition;
-- End: state_transition FSM Flow
--
-- Start: state_FSM_Output
state_FSM_Output: process(RST, clk25, collide_detect, collide, SQ_X1, SQ_Y1, p1_prev_x_position, p1_prev_y_position, state)
  begin
	case state is  
	  when STATE_1 =>
					SQ_NEW_0(RGB_DRAWING_CONT_0, RST, clk25, videoOn_Draw, X_Pos, Y_Pos, SQ_X1, SQ_Y1, p1_prev_x_position, p1_prev_y_position);
				   RGB_DRAWING_CONT <= RGB_DRAWING_CONT_0;
					collide_detect <= collide;
					
	  when STATE_2 =>
					--LED <= '1';
					SQ_NEW_1(RGB_DRAWING_CONT_1, RST, clk25, videoOn_Draw, X_Pos, Y_Pos, SQ_X1, SQ_Y1, p1_prev_x_position, p1_prev_y_position);
 				   RGB_DRAWING_CONT <= RGB_DRAWING_CONT_1;
					collide_detect <= '0';
		 

	  when others => null;
	end case;
end process state_FSM_Output;
-- END: state_FSM_Output
end Behavioral;
