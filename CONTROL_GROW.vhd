library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.share_pos_array_type.all;

PACKAGE CONTROL_GROW IS
 PROCEDURE CONTROLLER_GROW(SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL CLK_5Hz  : IN  STD_LOGIC;
				  SIGNAL KEYS    : IN  STD_LOGIC_VECTOR(3 downto 0);
				  SIGNAL collide_detect : IN  STD_LOGIC;
				  SIGNAL S_2 : IN  STD_LOGIC;
				  SIGNAL SQ_X1  : OUT integer range 0 to 799;
				  SIGNAL SQ_Y1  : OUT integer range 0 to 524;
				  SIGNAL SQ_X1_OLD  : OUT integer range 0 to 1000;
				  SIGNAL SQ_Y1_OLD  : OUT integer range 0 to 1000;
			     SIGNAL p1_prev_x_position  : OUT store_x_position;
			     SIGNAL p1_prev_y_position  : OUT store_y_position;
				  SIGNAL p1_prev_x_position_check  : OUT store_x_position;
			     SIGNAL p1_prev_y_position_check  : OUT store_y_position
				  );
	signal i_store : integer range 0 to 750:= 0;	
	signal Direc_3_UP : STD_LOGIC := '0';
	signal Direc_2_LEFT : STD_LOGIC := '0';
	signal Direc_1_RIGHT : STD_LOGIC := '0';
	signal Direc_0_DOWN : STD_LOGIC := '0';	
	SIGNAL X_Cur : INTEGER range 0 to 799 := 220;
   SIGNAL Y_Cur : INTEGER range 0 to 524 := 180;
END CONTROL_GROW;

PACKAGE BODY CONTROL_GROW IS   
	PROCEDURE CONTROLLER_GROW(SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL CLK_5Hz  : IN  STD_LOGIC; 
				  SIGNAL KEYS    : IN  STD_LOGIC_VECTOR(3 downto 0);
				  SIGNAL collide_detect : IN  STD_LOGIC;
				  SIGNAL S_2 : IN  STD_LOGIC;
				  SIGNAL SQ_X1  : OUT integer range 0 to 799;
				  SIGNAL SQ_Y1  : OUT integer range 0 to 524;
				  SIGNAL SQ_X1_OLD  : OUT integer range 0 to 1000;
				  SIGNAL SQ_Y1_OLD  : OUT integer range 0 to 1000;
			     SIGNAL p1_prev_x_position  : OUT store_x_position;
			     SIGNAL p1_prev_y_position  : OUT store_y_position;
				  SIGNAL p1_prev_x_position_check  : OUT store_x_position;
			     SIGNAL p1_prev_y_position_check  : OUT store_y_position
				  ) IS
   BEGIN
			if(RST = '1' OR collide_detect = '1' OR S_2 = '1')then
				X_Cur <= 220;
				Y_Cur <= 180;
				i_store <= 0;
				p1_prev_x_position <= (others=>0);
				p1_prev_y_position <= (others=>0);
				SQ_X1_OLD <= 1000;
				SQ_Y1_OLD <= 1000;
				Direc_3_UP <= '0';
				Direc_2_LEFT <= '0';
				Direc_1_RIGHT <= '0';
				Direc_0_DOWN <= '0';
			elsif(CLK_5Hz'event and CLK_5Hz = '1')then
						p1_prev_x_position_check(i_store) <= X_Cur; -- current x position for collision check
						p1_prev_y_position_check(i_store) <= Y_Cur; -- current y position for collision check
						SQ_X1_OLD <= X_Cur;
						SQ_Y1_OLD <= Y_Cur;
							if(KEYS(0) = '0')then
								 Direc_3_UP <= '0';
								 Direc_2_LEFT <= '0';
								 Direc_1_RIGHT <= '0';
								 Direc_0_DOWN <= '1';
							elsif(KEYS(1) = '0')then
								 Direc_3_UP <= '0';
								 Direc_2_LEFT <= '0';
								 Direc_1_RIGHT <= '1';
								 Direc_0_DOWN <= '0';
							elsif(KEYS(2) = '0')then
								 Direc_3_UP <= '0';
								 Direc_2_LEFT <= '1';
								 Direc_1_RIGHT <= '0';
								 Direc_0_DOWN <= '0';
							elsif(KEYS(3) = '0')then
								 Direc_3_UP <= '1';
								 Direc_2_LEFT <= '0';
								 Direc_1_RIGHT <= '0';
								 Direc_0_DOWN <= '0';
							end if;
							if (Direc_0_DOWN='1') then
								 Y_Cur <= Y_Cur - 25;
							elsif(Direc_1_RIGHT='1') then
								 X_Cur <= X_Cur + 25;
							elsif(Direc_2_LEFT='1') then
								 X_Cur <= X_Cur - 25;
							elsif(Direc_3_UP='1') then
								 Y_Cur <= Y_Cur + 25;
							end if;
						SQ_X1 <= X_Cur;
						SQ_Y1 <= Y_Cur;
						SQ_X1_OLD <= X_Cur;
						SQ_Y1_OLD <= Y_Cur;
						p1_prev_x_position(i_store) <= X_Cur; -- current x position for drawing
						p1_prev_y_position(i_store) <= Y_Cur; -- current y position for drawing
							if(i_store < 750)then
								i_store <= i_store + 1;
							else
								i_store <= 0;
							end if;	
			end if;
   END PROCEDURE CONTROLLER_GROW;
END CONTROL_GROW;