library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.share_pos_array_type.all;
	
PACKAGE DRAWING_CONT_1 IS
 PROCEDURE SQ_NEW_1(SIGNAL RGB_DRAWING_CONT: OUT STD_LOGIC_VECTOR(2 downto 0); 
				  SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL clk25  : IN  STD_LOGIC;
				  SIGNAL videoOn : IN STD_LOGIC; 
				  SIGNAL hPos, vPos : IN INTEGER;
				  SIGNAL SQ_X1  : IN integer range 0 to 799;
				  SIGNAL SQ_Y1  : IN integer range 0 to 524;
			     SIGNAL p1_prev_x_position  : IN store_x_position;
			     SIGNAL p1_prev_y_position  : IN store_y_position
				  );
END DRAWING_CONT_1;

PACKAGE BODY DRAWING_CONT_1 IS   
	PROCEDURE SQ_NEW_1(SIGNAL RGB_DRAWING_CONT: OUT STD_LOGIC_VECTOR(2 downto 0); 
				  SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL clk25  : IN  STD_LOGIC; 
				  SIGNAL videoOn : IN STD_LOGIC;
				  SIGNAL hPos, vPos : IN INTEGER;
				  SIGNAL SQ_X1  : IN integer range 0 to 799;
				  SIGNAL SQ_Y1  : IN integer range 0 to 524;
			     SIGNAL p1_prev_x_position  : IN store_x_position;
			     SIGNAL p1_prev_y_position  : IN store_y_position
				  ) IS
   BEGIN
		if(RST = '1')then
			RGB_DRAWING_CONT <= "000";
		elsif(clk25'event and clk25 = '1')then
				if(videoOn = '1')then
					if(((hPos >= 600 OR hPos <= 40) OR (vPos >= 383 OR vPos <= 50)))then
						RGB_DRAWING_CONT <= "001";
					elsif((hPos >= 300)AND(hPos <= 350)AND(vPos >= 100)AND(vPos <= 300))then
						RGB_DRAWING_CONT <= "010";			
					else
						RGB_DRAWING_CONT <= "000";
					end if;
				else
					RGB_DRAWING_CONT <= "000";
				end if;
				--
		end if;
				--
   END PROCEDURE SQ_NEW_1;
END DRAWING_CONT_1;