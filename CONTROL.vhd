library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.share_pos_array_type.all;

PACKAGE CONTROL IS
 PROCEDURE CONTROLLER(SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL CLK_5Hz  : IN  STD_LOGIC;
				  SIGNAL KEYS    : IN  STD_LOGIC_VECTOR(3 downto 0);
				  SIGNAL collide_detect : IN  STD_LOGIC;
				  SIGNAL S_2 : IN  STD_LOGIC;
				  SIGNAL SQ_X1  : OUT integer range 0 to 799;
				  SIGNAL SQ_Y1  : OUT integer range 0 to 524;
			     SIGNAL p1_prev_x_position  : OUT store_x_position;
			     SIGNAL p1_prev_y_position  : OUT store_y_position
				  );
	signal i_store : integer range 0 to 750:= 0;	
   SIGNAL X_Cur : INTEGER range 0 to 799 := 220;
   SIGNAL Y_Cur : INTEGER range 0 to 524 := 180;
END CONTROL;

PACKAGE BODY CONTROL IS   
	PROCEDURE CONTROLLER(SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL CLK_5Hz  : IN  STD_LOGIC; 
				  SIGNAL KEYS    : IN  STD_LOGIC_VECTOR(3 downto 0);
				  SIGNAL collide_detect : IN  STD_LOGIC;
				  SIGNAL S_2 : IN  STD_LOGIC;
				  SIGNAL SQ_X1  : OUT integer range 0 to 799;
				  SIGNAL SQ_Y1  : OUT integer range 0 to 524;
			     SIGNAL p1_prev_x_position  : OUT store_x_position;
			     SIGNAL p1_prev_y_position  : OUT store_y_position
				  ) IS
   BEGIN
		if(RST = '1' OR X_Cur <= 30 OR Y_Cur <= 30 OR X_Cur >= 575 OR Y_Cur >= 380 OR collide_detect = '1' OR S_2 = '1')then
			X_Cur <= 220;
			Y_Cur <= 180;
			i_store <= 0;
			p1_prev_x_position <= (others=>0);
			p1_prev_y_position <= (others=>0);
		elsif(CLK_5Hz'event and CLK_5Hz = '1')then
						if (KEYS(0)='0') then
							 Y_Cur <= Y_Cur - 3;
						end if;
						if (KEYS(1)='0') then
							 X_Cur <= X_Cur + 3;
						end if;
						if (KEYS(2)='0') then
							 X_Cur <= X_Cur - 3;
						end if;
						if (KEYS(3)='0') then
							 Y_Cur <= Y_Cur + 3;
						end if;
					SQ_X1 <= X_Cur;
					SQ_Y1 <= Y_Cur;
					p1_prev_x_position(i_store) <= X_Cur;
					p1_prev_y_position(i_store) <= Y_Cur;
						if(i_store < 750)then
							i_store <= i_store + 1;
						else
							i_store <= 0;
						end if;
		end if;
				--
   END PROCEDURE CONTROLLER;
END CONTROL;