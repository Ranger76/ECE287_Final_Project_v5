library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.share_pos_array_type.all;
	
PACKAGE DRAWING_CONT_0 IS
 PROCEDURE SQ_NEW_0(SIGNAL RGB_DRAWING_CONT: OUT STD_LOGIC_VECTOR(2 downto 0); 
				  SIGNAL RST  : IN  STD_LOGIC;
				  SIGNAL clk25  : IN  STD_LOGIC;
				  SIGNAL videoOn : IN STD_LOGIC; 
				  SIGNAL hPos, vPos : IN INTEGER;
				  SIGNAL SQ_X1  : IN integer range 0 to 799;
				  SIGNAL SQ_Y1  : IN integer range 0 to 524;
			     SIGNAL p1_prev_x_position  : IN store_x_position;
			     SIGNAL p1_prev_y_position  : IN store_y_position
				  );
--	SIGNAL h_Pos_array : store_x_position;
--	SIGNAL v_Pos_array : store_y_position;
--   SIGNAL i : INTEGER := 0;
END DRAWING_CONT_0;

PACKAGE BODY DRAWING_CONT_0 IS   
	PROCEDURE SQ_NEW_0(SIGNAL RGB_DRAWING_CONT: OUT STD_LOGIC_VECTOR(2 downto 0); 
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
--				if (i < 750) then
--				  i <= i + 1;
--				else
--				  i <= 0;
--				end if;
--				h_Pos_array(i) <= hPos;
--				v_Pos_array(i) <= vPos;
--	for i in 0 to 750 loop
		if(RST = '1')then
			RGB_DRAWING_CONT <= "000";
	--		i <= 0;
	--		i_read <= 0;
		elsif(clk25'event and clk25 = '1')then
				if(videoOn = '1')then
					if(((hPos >= 600 OR hPos <= 40) OR (vPos >= 383 OR vPos <= 50)))then
						RGB_DRAWING_CONT <= "001";
					elsif(hPos>SQ_X1 AND hPos<(SQ_X1+25) AND vPos>SQ_Y1 AND vPos<(SQ_Y1+25))then
						RGB_DRAWING_CONT <= "100";
	--				elsif(hPos>p1_prev_x_position(750-i_read) AND hPos<(p1_prev_x_position(750-i_read)+50) AND vPos>p1_prev_y_position(750-i_read) AND vPos<(p1_prev_y_position(750-i_read)+50))then
	--					RGB_DRAWING_CONT <= "100";
	--				elsif(hPos>p1_prev_x_position(750-i) AND hPos<(p1_prev_x_position(750-i)+50) AND vPos>p1_prev_y_position(750-i) AND vPos<(p1_prev_y_position(750-i)+50))then
	--					RGB <= "100";
	--				elsif(h_Pos_array(i)>p1_prev_x_position(i) AND h_Pos_array(i)<(p1_prev_x_position(i)+25) AND v_Pos_array(i)>p1_prev_y_position(i) AND v_Pos_array(i)<(p1_prev_y_position(i)+25))then
	--					RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(0) AND hPos<(p1_prev_x_position(0)+25) AND vPos>p1_prev_y_position(0) AND vPos<(p1_prev_y_position(0)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(1) AND hPos<(p1_prev_x_position(1)+25) AND vPos>p1_prev_y_position(1) AND vPos<(p1_prev_y_position(1)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(2) AND hPos<(p1_prev_x_position(2)+25) AND vPos>p1_prev_y_position(2) AND vPos<(p1_prev_y_position(2)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(3) AND hPos<(p1_prev_x_position(3)+25) AND vPos>p1_prev_y_position(3) AND vPos<(p1_prev_y_position(3)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(4) AND hPos<(p1_prev_x_position(4)+25) AND vPos>p1_prev_y_position(4) AND vPos<(p1_prev_y_position(4)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(5) AND hPos<(p1_prev_x_position(5)+25) AND vPos>p1_prev_y_position(5) AND vPos<(p1_prev_y_position(5)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(6) AND hPos<(p1_prev_x_position(6)+25) AND vPos>p1_prev_y_position(6) AND vPos<(p1_prev_y_position(6)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(7) AND hPos<(p1_prev_x_position(7)+25) AND vPos>p1_prev_y_position(7) AND vPos<(p1_prev_y_position(7)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(8) AND hPos<(p1_prev_x_position(8)+25) AND vPos>p1_prev_y_position(8) AND vPos<(p1_prev_y_position(8)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(9) AND hPos<(p1_prev_x_position(9)+25) AND vPos>p1_prev_y_position(9) AND vPos<(p1_prev_y_position(9)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(10) AND hPos<(p1_prev_x_position(10)+25) AND vPos>p1_prev_y_position(10) AND vPos<(p1_prev_y_position(10)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(11) AND hPos<(p1_prev_x_position(11)+25) AND vPos>p1_prev_y_position(11) AND vPos<(p1_prev_y_position(11)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(12) AND hPos<(p1_prev_x_position(12)+25) AND vPos>p1_prev_y_position(12) AND vPos<(p1_prev_y_position(12)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(13) AND hPos<(p1_prev_x_position(13)+25) AND vPos>p1_prev_y_position(13) AND vPos<(p1_prev_y_position(13)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(14) AND hPos<(p1_prev_x_position(14)+25) AND vPos>p1_prev_y_position(14) AND vPos<(p1_prev_y_position(14)+25))then
						RGB_DRAWING_CONT <= "100";																								
					elsif(hPos>p1_prev_x_position(15) AND hPos<(p1_prev_x_position(15)+25) AND vPos>p1_prev_y_position(15) AND vPos<(p1_prev_y_position(15)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(16) AND hPos<(p1_prev_x_position(16)+25) AND vPos>p1_prev_y_position(16) AND vPos<(p1_prev_y_position(16)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(17) AND hPos<(p1_prev_x_position(17)+25) AND vPos>p1_prev_y_position(17) AND vPos<(p1_prev_y_position(17)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(18) AND hPos<(p1_prev_x_position(18)+25) AND vPos>p1_prev_y_position(18) AND vPos<(p1_prev_y_position(18)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(19) AND hPos<(p1_prev_x_position(19)+25) AND vPos>p1_prev_y_position(19) AND vPos<(p1_prev_y_position(19)+25))then
						RGB_DRAWING_CONT <= "100";																																															
					elsif(hPos>p1_prev_x_position(20) AND hPos<(p1_prev_x_position(20)+25) AND vPos>p1_prev_y_position(20) AND vPos<(p1_prev_y_position(20)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(21) AND hPos<(p1_prev_x_position(21)+25) AND vPos>p1_prev_y_position(21) AND vPos<(p1_prev_y_position(21)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(22) AND hPos<(p1_prev_x_position(22)+25) AND vPos>p1_prev_y_position(22) AND vPos<(p1_prev_y_position(22)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(23) AND hPos<(p1_prev_x_position(23)+25) AND vPos>p1_prev_y_position(23) AND vPos<(p1_prev_y_position(23)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(24) AND hPos<(p1_prev_x_position(24)+25) AND vPos>p1_prev_y_position(24) AND vPos<(p1_prev_y_position(24)+25))then
						RGB_DRAWING_CONT <= "100";												
					elsif(hPos>p1_prev_x_position(25) AND hPos<(p1_prev_x_position(25)+25) AND vPos>p1_prev_y_position(25) AND vPos<(p1_prev_y_position(25)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(26) AND hPos<(p1_prev_x_position(26)+25) AND vPos>p1_prev_y_position(26) AND vPos<(p1_prev_y_position(26)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(27) AND hPos<(p1_prev_x_position(27)+25) AND vPos>p1_prev_y_position(27) AND vPos<(p1_prev_y_position(27)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(28) AND hPos<(p1_prev_x_position(28)+25) AND vPos>p1_prev_y_position(28) AND vPos<(p1_prev_y_position(28)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(29) AND hPos<(p1_prev_x_position(29)+25) AND vPos>p1_prev_y_position(29) AND vPos<(p1_prev_y_position(29)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(30) AND hPos<(p1_prev_x_position(30)+25) AND vPos>p1_prev_y_position(30) AND vPos<(p1_prev_y_position(30)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(31) AND hPos<(p1_prev_x_position(31)+25) AND vPos>p1_prev_y_position(31) AND vPos<(p1_prev_y_position(31)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(32) AND hPos<(p1_prev_x_position(32)+25) AND vPos>p1_prev_y_position(32) AND vPos<(p1_prev_y_position(32)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(33) AND hPos<(p1_prev_x_position(33)+25) AND vPos>p1_prev_y_position(33) AND vPos<(p1_prev_y_position(33)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(34) AND hPos<(p1_prev_x_position(34)+25) AND vPos>p1_prev_y_position(34) AND vPos<(p1_prev_y_position(34)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(35) AND hPos<(p1_prev_x_position(35)+25) AND vPos>p1_prev_y_position(35) AND vPos<(p1_prev_y_position(35)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(36) AND hPos<(p1_prev_x_position(36)+25) AND vPos>p1_prev_y_position(36) AND vPos<(p1_prev_y_position(36)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(37) AND hPos<(p1_prev_x_position(37)+25) AND vPos>p1_prev_y_position(37) AND vPos<(p1_prev_y_position(37)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(38) AND hPos<(p1_prev_x_position(38)+25) AND vPos>p1_prev_y_position(38) AND vPos<(p1_prev_y_position(38)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(39) AND hPos<(p1_prev_x_position(39)+25) AND vPos>p1_prev_y_position(39) AND vPos<(p1_prev_y_position(39)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(40) AND hPos<(p1_prev_x_position(40)+25) AND vPos>p1_prev_y_position(40) AND vPos<(p1_prev_y_position(40)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(41) AND hPos<(p1_prev_x_position(41)+25) AND vPos>p1_prev_y_position(41) AND vPos<(p1_prev_y_position(41)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(42) AND hPos<(p1_prev_x_position(42)+25) AND vPos>p1_prev_y_position(42) AND vPos<(p1_prev_y_position(42)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(43) AND hPos<(p1_prev_x_position(43)+25) AND vPos>p1_prev_y_position(43) AND vPos<(p1_prev_y_position(43)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(44) AND hPos<(p1_prev_x_position(44)+25) AND vPos>p1_prev_y_position(44) AND vPos<(p1_prev_y_position(44)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(45) AND hPos<(p1_prev_x_position(45)+25) AND vPos>p1_prev_y_position(45) AND vPos<(p1_prev_y_position(45)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(46) AND hPos<(p1_prev_x_position(46)+25) AND vPos>p1_prev_y_position(46) AND vPos<(p1_prev_y_position(46)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(47) AND hPos<(p1_prev_x_position(47)+25) AND vPos>p1_prev_y_position(47) AND vPos<(p1_prev_y_position(47)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(48) AND hPos<(p1_prev_x_position(48)+25) AND vPos>p1_prev_y_position(48) AND vPos<(p1_prev_y_position(48)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(49) AND hPos<(p1_prev_x_position(49)+25) AND vPos>p1_prev_y_position(49) AND vPos<(p1_prev_y_position(49)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(50) AND hPos<(p1_prev_x_position(50)+25) AND vPos>p1_prev_y_position(50) AND vPos<(p1_prev_y_position(50)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(51) AND hPos<(p1_prev_x_position(51)+25) AND vPos>p1_prev_y_position(51) AND vPos<(p1_prev_y_position(51)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(52) AND hPos<(p1_prev_x_position(52)+25) AND vPos>p1_prev_y_position(52) AND vPos<(p1_prev_y_position(52)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(53) AND hPos<(p1_prev_x_position(53)+25) AND vPos>p1_prev_y_position(53) AND vPos<(p1_prev_y_position(53)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(54) AND hPos<(p1_prev_x_position(54)+25) AND vPos>p1_prev_y_position(54) AND vPos<(p1_prev_y_position(54)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(55) AND hPos<(p1_prev_x_position(55)+25) AND vPos>p1_prev_y_position(55) AND vPos<(p1_prev_y_position(55)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(56) AND hPos<(p1_prev_x_position(56)+25) AND vPos>p1_prev_y_position(56) AND vPos<(p1_prev_y_position(56)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(57) AND hPos<(p1_prev_x_position(57)+25) AND vPos>p1_prev_y_position(57) AND vPos<(p1_prev_y_position(57)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(58) AND hPos<(p1_prev_x_position(58)+25) AND vPos>p1_prev_y_position(58) AND vPos<(p1_prev_y_position(58)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(59) AND hPos<(p1_prev_x_position(59)+25) AND vPos>p1_prev_y_position(59) AND vPos<(p1_prev_y_position(59)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(60) AND hPos<(p1_prev_x_position(60)+25) AND vPos>p1_prev_y_position(60) AND vPos<(p1_prev_y_position(60)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(61) AND hPos<(p1_prev_x_position(61)+25) AND vPos>p1_prev_y_position(61) AND vPos<(p1_prev_y_position(61)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(62) AND hPos<(p1_prev_x_position(62)+25) AND vPos>p1_prev_y_position(62) AND vPos<(p1_prev_y_position(62)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(63) AND hPos<(p1_prev_x_position(63)+25) AND vPos>p1_prev_y_position(63) AND vPos<(p1_prev_y_position(63)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(64) AND hPos<(p1_prev_x_position(64)+25) AND vPos>p1_prev_y_position(64) AND vPos<(p1_prev_y_position(64)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(65) AND hPos<(p1_prev_x_position(65)+25) AND vPos>p1_prev_y_position(65) AND vPos<(p1_prev_y_position(65)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(66) AND hPos<(p1_prev_x_position(66)+25) AND vPos>p1_prev_y_position(66) AND vPos<(p1_prev_y_position(66)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(67) AND hPos<(p1_prev_x_position(67)+25) AND vPos>p1_prev_y_position(67) AND vPos<(p1_prev_y_position(67)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(68) AND hPos<(p1_prev_x_position(68)+25) AND vPos>p1_prev_y_position(68) AND vPos<(p1_prev_y_position(68)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(69) AND hPos<(p1_prev_x_position(69)+25) AND vPos>p1_prev_y_position(69) AND vPos<(p1_prev_y_position(69)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(70) AND hPos<(p1_prev_x_position(70)+25) AND vPos>p1_prev_y_position(70) AND vPos<(p1_prev_y_position(70)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(71) AND hPos<(p1_prev_x_position(71)+25) AND vPos>p1_prev_y_position(71) AND vPos<(p1_prev_y_position(71)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(72) AND hPos<(p1_prev_x_position(72)+25) AND vPos>p1_prev_y_position(72) AND vPos<(p1_prev_y_position(72)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(73) AND hPos<(p1_prev_x_position(73)+25) AND vPos>p1_prev_y_position(73) AND vPos<(p1_prev_y_position(73)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(74) AND hPos<(p1_prev_x_position(74)+25) AND vPos>p1_prev_y_position(74) AND vPos<(p1_prev_y_position(74)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(75) AND hPos<(p1_prev_x_position(75)+25) AND vPos>p1_prev_y_position(75) AND vPos<(p1_prev_y_position(75)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(76) AND hPos<(p1_prev_x_position(76)+25) AND vPos>p1_prev_y_position(76) AND vPos<(p1_prev_y_position(76)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(77) AND hPos<(p1_prev_x_position(77)+25) AND vPos>p1_prev_y_position(77) AND vPos<(p1_prev_y_position(77)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(78) AND hPos<(p1_prev_x_position(78)+25) AND vPos>p1_prev_y_position(78) AND vPos<(p1_prev_y_position(78)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(79) AND hPos<(p1_prev_x_position(79)+25) AND vPos>p1_prev_y_position(79) AND vPos<(p1_prev_y_position(79)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(80) AND hPos<(p1_prev_x_position(80)+25) AND vPos>p1_prev_y_position(80) AND vPos<(p1_prev_y_position(80)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(81) AND hPos<(p1_prev_x_position(81)+25) AND vPos>p1_prev_y_position(81) AND vPos<(p1_prev_y_position(81)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(82) AND hPos<(p1_prev_x_position(82)+25) AND vPos>p1_prev_y_position(82) AND vPos<(p1_prev_y_position(82)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(83) AND hPos<(p1_prev_x_position(83)+25) AND vPos>p1_prev_y_position(83) AND vPos<(p1_prev_y_position(83)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(84) AND hPos<(p1_prev_x_position(84)+25) AND vPos>p1_prev_y_position(84) AND vPos<(p1_prev_y_position(84)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(85) AND hPos<(p1_prev_x_position(85)+25) AND vPos>p1_prev_y_position(85) AND vPos<(p1_prev_y_position(85)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(86) AND hPos<(p1_prev_x_position(86)+25) AND vPos>p1_prev_y_position(86) AND vPos<(p1_prev_y_position(86)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(87) AND hPos<(p1_prev_x_position(87)+25) AND vPos>p1_prev_y_position(87) AND vPos<(p1_prev_y_position(87)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(88) AND hPos<(p1_prev_x_position(88)+25) AND vPos>p1_prev_y_position(88) AND vPos<(p1_prev_y_position(88)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(89) AND hPos<(p1_prev_x_position(89)+25) AND vPos>p1_prev_y_position(89) AND vPos<(p1_prev_y_position(89)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(90) AND hPos<(p1_prev_x_position(90)+25) AND vPos>p1_prev_y_position(90) AND vPos<(p1_prev_y_position(90)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(91) AND hPos<(p1_prev_x_position(91)+25) AND vPos>p1_prev_y_position(91) AND vPos<(p1_prev_y_position(91)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(92) AND hPos<(p1_prev_x_position(92)+25) AND vPos>p1_prev_y_position(92) AND vPos<(p1_prev_y_position(92)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(93) AND hPos<(p1_prev_x_position(93)+25) AND vPos>p1_prev_y_position(93) AND vPos<(p1_prev_y_position(93)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(94) AND hPos<(p1_prev_x_position(94)+25) AND vPos>p1_prev_y_position(94) AND vPos<(p1_prev_y_position(94)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(95) AND hPos<(p1_prev_x_position(95)+25) AND vPos>p1_prev_y_position(95) AND vPos<(p1_prev_y_position(95)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(96) AND hPos<(p1_prev_x_position(96)+25) AND vPos>p1_prev_y_position(96) AND vPos<(p1_prev_y_position(96)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(97) AND hPos<(p1_prev_x_position(97)+25) AND vPos>p1_prev_y_position(97) AND vPos<(p1_prev_y_position(97)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(98) AND hPos<(p1_prev_x_position(98)+25) AND vPos>p1_prev_y_position(98) AND vPos<(p1_prev_y_position(98)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(99) AND hPos<(p1_prev_x_position(99)+25) AND vPos>p1_prev_y_position(99) AND vPos<(p1_prev_y_position(99)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(100) AND hPos<(p1_prev_x_position(100)+25) AND vPos>p1_prev_y_position(100) AND vPos<(p1_prev_y_position(100)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(101) AND hPos<(p1_prev_x_position(101)+25) AND vPos>p1_prev_y_position(101) AND vPos<(p1_prev_y_position(101)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(102) AND hPos<(p1_prev_x_position(102)+25) AND vPos>p1_prev_y_position(102) AND vPos<(p1_prev_y_position(102)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(103) AND hPos<(p1_prev_x_position(103)+25) AND vPos>p1_prev_y_position(103) AND vPos<(p1_prev_y_position(103)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(104) AND hPos<(p1_prev_x_position(104)+25) AND vPos>p1_prev_y_position(104) AND vPos<(p1_prev_y_position(104)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(105) AND hPos<(p1_prev_x_position(105)+25) AND vPos>p1_prev_y_position(105) AND vPos<(p1_prev_y_position(105)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(106) AND hPos<(p1_prev_x_position(106)+25) AND vPos>p1_prev_y_position(106) AND vPos<(p1_prev_y_position(106)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(107) AND hPos<(p1_prev_x_position(107)+25) AND vPos>p1_prev_y_position(107) AND vPos<(p1_prev_y_position(107)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(108) AND hPos<(p1_prev_x_position(108)+25) AND vPos>p1_prev_y_position(108) AND vPos<(p1_prev_y_position(108)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(109) AND hPos<(p1_prev_x_position(109)+25) AND vPos>p1_prev_y_position(109) AND vPos<(p1_prev_y_position(109)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(110) AND hPos<(p1_prev_x_position(110)+25) AND vPos>p1_prev_y_position(110) AND vPos<(p1_prev_y_position(110)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(111) AND hPos<(p1_prev_x_position(111)+25) AND vPos>p1_prev_y_position(111) AND vPos<(p1_prev_y_position(111)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(112) AND hPos<(p1_prev_x_position(112)+25) AND vPos>p1_prev_y_position(112) AND vPos<(p1_prev_y_position(112)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(113) AND hPos<(p1_prev_x_position(113)+25) AND vPos>p1_prev_y_position(113) AND vPos<(p1_prev_y_position(113)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(114) AND hPos<(p1_prev_x_position(114)+25) AND vPos>p1_prev_y_position(114) AND vPos<(p1_prev_y_position(114)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(115) AND hPos<(p1_prev_x_position(115)+25) AND vPos>p1_prev_y_position(115) AND vPos<(p1_prev_y_position(115)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(116) AND hPos<(p1_prev_x_position(116)+25) AND vPos>p1_prev_y_position(116) AND vPos<(p1_prev_y_position(116)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(117) AND hPos<(p1_prev_x_position(117)+25) AND vPos>p1_prev_y_position(117) AND vPos<(p1_prev_y_position(117)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(118) AND hPos<(p1_prev_x_position(118)+25) AND vPos>p1_prev_y_position(118) AND vPos<(p1_prev_y_position(118)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(119) AND hPos<(p1_prev_x_position(119)+25) AND vPos>p1_prev_y_position(119) AND vPos<(p1_prev_y_position(119)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(120) AND hPos<(p1_prev_x_position(120)+25) AND vPos>p1_prev_y_position(120) AND vPos<(p1_prev_y_position(120)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(121) AND hPos<(p1_prev_x_position(121)+25) AND vPos>p1_prev_y_position(121) AND vPos<(p1_prev_y_position(121)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(122) AND hPos<(p1_prev_x_position(122)+25) AND vPos>p1_prev_y_position(122) AND vPos<(p1_prev_y_position(122)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(123) AND hPos<(p1_prev_x_position(123)+25) AND vPos>p1_prev_y_position(123) AND vPos<(p1_prev_y_position(123)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(124) AND hPos<(p1_prev_x_position(124)+25) AND vPos>p1_prev_y_position(124) AND vPos<(p1_prev_y_position(124)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(125) AND hPos<(p1_prev_x_position(125)+25) AND vPos>p1_prev_y_position(125) AND vPos<(p1_prev_y_position(125)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(126) AND hPos<(p1_prev_x_position(126)+25) AND vPos>p1_prev_y_position(126) AND vPos<(p1_prev_y_position(126)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(127) AND hPos<(p1_prev_x_position(127)+25) AND vPos>p1_prev_y_position(127) AND vPos<(p1_prev_y_position(127)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(128) AND hPos<(p1_prev_x_position(128)+25) AND vPos>p1_prev_y_position(128) AND vPos<(p1_prev_y_position(128)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(129) AND hPos<(p1_prev_x_position(129)+25) AND vPos>p1_prev_y_position(129) AND vPos<(p1_prev_y_position(129)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(130) AND hPos<(p1_prev_x_position(130)+25) AND vPos>p1_prev_y_position(130) AND vPos<(p1_prev_y_position(130)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(131) AND hPos<(p1_prev_x_position(131)+25) AND vPos>p1_prev_y_position(131) AND vPos<(p1_prev_y_position(131)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(132) AND hPos<(p1_prev_x_position(132)+25) AND vPos>p1_prev_y_position(132) AND vPos<(p1_prev_y_position(132)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(133) AND hPos<(p1_prev_x_position(133)+25) AND vPos>p1_prev_y_position(133) AND vPos<(p1_prev_y_position(133)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(134) AND hPos<(p1_prev_x_position(134)+25) AND vPos>p1_prev_y_position(134) AND vPos<(p1_prev_y_position(134)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(135) AND hPos<(p1_prev_x_position(135)+25) AND vPos>p1_prev_y_position(135) AND vPos<(p1_prev_y_position(135)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(136) AND hPos<(p1_prev_x_position(136)+25) AND vPos>p1_prev_y_position(136) AND vPos<(p1_prev_y_position(136)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(137) AND hPos<(p1_prev_x_position(137)+25) AND vPos>p1_prev_y_position(137) AND vPos<(p1_prev_y_position(137)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(138) AND hPos<(p1_prev_x_position(138)+25) AND vPos>p1_prev_y_position(138) AND vPos<(p1_prev_y_position(138)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(139) AND hPos<(p1_prev_x_position(139)+25) AND vPos>p1_prev_y_position(139) AND vPos<(p1_prev_y_position(139)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(140) AND hPos<(p1_prev_x_position(140)+25) AND vPos>p1_prev_y_position(140) AND vPos<(p1_prev_y_position(140)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(141) AND hPos<(p1_prev_x_position(141)+25) AND vPos>p1_prev_y_position(141) AND vPos<(p1_prev_y_position(141)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(142) AND hPos<(p1_prev_x_position(142)+25) AND vPos>p1_prev_y_position(142) AND vPos<(p1_prev_y_position(142)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(143) AND hPos<(p1_prev_x_position(143)+25) AND vPos>p1_prev_y_position(143) AND vPos<(p1_prev_y_position(143)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(144) AND hPos<(p1_prev_x_position(144)+25) AND vPos>p1_prev_y_position(144) AND vPos<(p1_prev_y_position(144)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(145) AND hPos<(p1_prev_x_position(145)+25) AND vPos>p1_prev_y_position(145) AND vPos<(p1_prev_y_position(145)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(146) AND hPos<(p1_prev_x_position(146)+25) AND vPos>p1_prev_y_position(146) AND vPos<(p1_prev_y_position(146)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(147) AND hPos<(p1_prev_x_position(147)+25) AND vPos>p1_prev_y_position(147) AND vPos<(p1_prev_y_position(147)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(148) AND hPos<(p1_prev_x_position(148)+25) AND vPos>p1_prev_y_position(148) AND vPos<(p1_prev_y_position(148)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(149) AND hPos<(p1_prev_x_position(149)+25) AND vPos>p1_prev_y_position(149) AND vPos<(p1_prev_y_position(149)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(150) AND hPos<(p1_prev_x_position(150)+25) AND vPos>p1_prev_y_position(150) AND vPos<(p1_prev_y_position(150)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(151) AND hPos<(p1_prev_x_position(151)+25) AND vPos>p1_prev_y_position(151) AND vPos<(p1_prev_y_position(151)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(152) AND hPos<(p1_prev_x_position(152)+25) AND vPos>p1_prev_y_position(152) AND vPos<(p1_prev_y_position(152)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(153) AND hPos<(p1_prev_x_position(153)+25) AND vPos>p1_prev_y_position(153) AND vPos<(p1_prev_y_position(153)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(154) AND hPos<(p1_prev_x_position(154)+25) AND vPos>p1_prev_y_position(154) AND vPos<(p1_prev_y_position(154)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(155) AND hPos<(p1_prev_x_position(155)+25) AND vPos>p1_prev_y_position(155) AND vPos<(p1_prev_y_position(155)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(156) AND hPos<(p1_prev_x_position(156)+25) AND vPos>p1_prev_y_position(156) AND vPos<(p1_prev_y_position(156)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(157) AND hPos<(p1_prev_x_position(157)+25) AND vPos>p1_prev_y_position(157) AND vPos<(p1_prev_y_position(157)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(158) AND hPos<(p1_prev_x_position(158)+25) AND vPos>p1_prev_y_position(158) AND vPos<(p1_prev_y_position(158)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(159) AND hPos<(p1_prev_x_position(159)+25) AND vPos>p1_prev_y_position(159) AND vPos<(p1_prev_y_position(159)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(160) AND hPos<(p1_prev_x_position(160)+25) AND vPos>p1_prev_y_position(160) AND vPos<(p1_prev_y_position(160)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(161) AND hPos<(p1_prev_x_position(161)+25) AND vPos>p1_prev_y_position(161) AND vPos<(p1_prev_y_position(161)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(162) AND hPos<(p1_prev_x_position(162)+25) AND vPos>p1_prev_y_position(162) AND vPos<(p1_prev_y_position(162)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(163) AND hPos<(p1_prev_x_position(163)+25) AND vPos>p1_prev_y_position(163) AND vPos<(p1_prev_y_position(163)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(164) AND hPos<(p1_prev_x_position(164)+25) AND vPos>p1_prev_y_position(164) AND vPos<(p1_prev_y_position(164)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(165) AND hPos<(p1_prev_x_position(165)+25) AND vPos>p1_prev_y_position(165) AND vPos<(p1_prev_y_position(165)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(166) AND hPos<(p1_prev_x_position(166)+25) AND vPos>p1_prev_y_position(166) AND vPos<(p1_prev_y_position(166)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(167) AND hPos<(p1_prev_x_position(167)+25) AND vPos>p1_prev_y_position(167) AND vPos<(p1_prev_y_position(167)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(168) AND hPos<(p1_prev_x_position(168)+25) AND vPos>p1_prev_y_position(168) AND vPos<(p1_prev_y_position(168)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(169) AND hPos<(p1_prev_x_position(169)+25) AND vPos>p1_prev_y_position(169) AND vPos<(p1_prev_y_position(169)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(170) AND hPos<(p1_prev_x_position(170)+25) AND vPos>p1_prev_y_position(170) AND vPos<(p1_prev_y_position(170)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(171) AND hPos<(p1_prev_x_position(171)+25) AND vPos>p1_prev_y_position(171) AND vPos<(p1_prev_y_position(171)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(172) AND hPos<(p1_prev_x_position(172)+25) AND vPos>p1_prev_y_position(172) AND vPos<(p1_prev_y_position(172)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(173) AND hPos<(p1_prev_x_position(173)+25) AND vPos>p1_prev_y_position(173) AND vPos<(p1_prev_y_position(173)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(174) AND hPos<(p1_prev_x_position(174)+25) AND vPos>p1_prev_y_position(174) AND vPos<(p1_prev_y_position(174)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(175) AND hPos<(p1_prev_x_position(175)+25) AND vPos>p1_prev_y_position(175) AND vPos<(p1_prev_y_position(175)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(176) AND hPos<(p1_prev_x_position(176)+25) AND vPos>p1_prev_y_position(176) AND vPos<(p1_prev_y_position(176)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(177) AND hPos<(p1_prev_x_position(177)+25) AND vPos>p1_prev_y_position(177) AND vPos<(p1_prev_y_position(177)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(178) AND hPos<(p1_prev_x_position(178)+25) AND vPos>p1_prev_y_position(178) AND vPos<(p1_prev_y_position(178)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(179) AND hPos<(p1_prev_x_position(179)+25) AND vPos>p1_prev_y_position(179) AND vPos<(p1_prev_y_position(179)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(180) AND hPos<(p1_prev_x_position(180)+25) AND vPos>p1_prev_y_position(180) AND vPos<(p1_prev_y_position(180)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(181) AND hPos<(p1_prev_x_position(181)+25) AND vPos>p1_prev_y_position(181) AND vPos<(p1_prev_y_position(181)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(182) AND hPos<(p1_prev_x_position(182)+25) AND vPos>p1_prev_y_position(182) AND vPos<(p1_prev_y_position(182)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(183) AND hPos<(p1_prev_x_position(183)+25) AND vPos>p1_prev_y_position(183) AND vPos<(p1_prev_y_position(183)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(184) AND hPos<(p1_prev_x_position(184)+25) AND vPos>p1_prev_y_position(184) AND vPos<(p1_prev_y_position(184)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(185) AND hPos<(p1_prev_x_position(185)+25) AND vPos>p1_prev_y_position(185) AND vPos<(p1_prev_y_position(185)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(186) AND hPos<(p1_prev_x_position(186)+25) AND vPos>p1_prev_y_position(186) AND vPos<(p1_prev_y_position(186)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(187) AND hPos<(p1_prev_x_position(187)+25) AND vPos>p1_prev_y_position(187) AND vPos<(p1_prev_y_position(187)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(188) AND hPos<(p1_prev_x_position(188)+25) AND vPos>p1_prev_y_position(188) AND vPos<(p1_prev_y_position(188)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(189) AND hPos<(p1_prev_x_position(189)+25) AND vPos>p1_prev_y_position(189) AND vPos<(p1_prev_y_position(189)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(190) AND hPos<(p1_prev_x_position(190)+25) AND vPos>p1_prev_y_position(190) AND vPos<(p1_prev_y_position(190)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(191) AND hPos<(p1_prev_x_position(191)+25) AND vPos>p1_prev_y_position(191) AND vPos<(p1_prev_y_position(191)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(192) AND hPos<(p1_prev_x_position(192)+25) AND vPos>p1_prev_y_position(192) AND vPos<(p1_prev_y_position(192)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(193) AND hPos<(p1_prev_x_position(193)+25) AND vPos>p1_prev_y_position(193) AND vPos<(p1_prev_y_position(193)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(194) AND hPos<(p1_prev_x_position(194)+25) AND vPos>p1_prev_y_position(194) AND vPos<(p1_prev_y_position(194)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(195) AND hPos<(p1_prev_x_position(195)+25) AND vPos>p1_prev_y_position(195) AND vPos<(p1_prev_y_position(195)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(196) AND hPos<(p1_prev_x_position(196)+25) AND vPos>p1_prev_y_position(196) AND vPos<(p1_prev_y_position(196)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(197) AND hPos<(p1_prev_x_position(197)+25) AND vPos>p1_prev_y_position(197) AND vPos<(p1_prev_y_position(197)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(198) AND hPos<(p1_prev_x_position(198)+25) AND vPos>p1_prev_y_position(198) AND vPos<(p1_prev_y_position(198)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(199) AND hPos<(p1_prev_x_position(199)+25) AND vPos>p1_prev_y_position(199) AND vPos<(p1_prev_y_position(199)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(200) AND hPos<(p1_prev_x_position(200)+25) AND vPos>p1_prev_y_position(200) AND vPos<(p1_prev_y_position(200)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(201) AND hPos<(p1_prev_x_position(201)+25) AND vPos>p1_prev_y_position(201) AND vPos<(p1_prev_y_position(201)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(202) AND hPos<(p1_prev_x_position(202)+25) AND vPos>p1_prev_y_position(202) AND vPos<(p1_prev_y_position(202)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(203) AND hPos<(p1_prev_x_position(203)+25) AND vPos>p1_prev_y_position(203) AND vPos<(p1_prev_y_position(203)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(204) AND hPos<(p1_prev_x_position(204)+25) AND vPos>p1_prev_y_position(204) AND vPos<(p1_prev_y_position(204)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(205) AND hPos<(p1_prev_x_position(205)+25) AND vPos>p1_prev_y_position(205) AND vPos<(p1_prev_y_position(205)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(206) AND hPos<(p1_prev_x_position(206)+25) AND vPos>p1_prev_y_position(206) AND vPos<(p1_prev_y_position(206)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(207) AND hPos<(p1_prev_x_position(207)+25) AND vPos>p1_prev_y_position(207) AND vPos<(p1_prev_y_position(207)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(208) AND hPos<(p1_prev_x_position(208)+25) AND vPos>p1_prev_y_position(208) AND vPos<(p1_prev_y_position(208)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(209) AND hPos<(p1_prev_x_position(209)+25) AND vPos>p1_prev_y_position(209) AND vPos<(p1_prev_y_position(209)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(210) AND hPos<(p1_prev_x_position(210)+25) AND vPos>p1_prev_y_position(210) AND vPos<(p1_prev_y_position(210)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(211) AND hPos<(p1_prev_x_position(211)+25) AND vPos>p1_prev_y_position(211) AND vPos<(p1_prev_y_position(211)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(212) AND hPos<(p1_prev_x_position(212)+25) AND vPos>p1_prev_y_position(212) AND vPos<(p1_prev_y_position(212)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(213) AND hPos<(p1_prev_x_position(213)+25) AND vPos>p1_prev_y_position(213) AND vPos<(p1_prev_y_position(213)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(214) AND hPos<(p1_prev_x_position(214)+25) AND vPos>p1_prev_y_position(214) AND vPos<(p1_prev_y_position(214)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(215) AND hPos<(p1_prev_x_position(215)+25) AND vPos>p1_prev_y_position(215) AND vPos<(p1_prev_y_position(215)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(216) AND hPos<(p1_prev_x_position(216)+25) AND vPos>p1_prev_y_position(216) AND vPos<(p1_prev_y_position(216)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(217) AND hPos<(p1_prev_x_position(217)+25) AND vPos>p1_prev_y_position(217) AND vPos<(p1_prev_y_position(217)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(218) AND hPos<(p1_prev_x_position(218)+25) AND vPos>p1_prev_y_position(218) AND vPos<(p1_prev_y_position(218)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(219) AND hPos<(p1_prev_x_position(219)+25) AND vPos>p1_prev_y_position(219) AND vPos<(p1_prev_y_position(219)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(220) AND hPos<(p1_prev_x_position(220)+25) AND vPos>p1_prev_y_position(220) AND vPos<(p1_prev_y_position(220)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(221) AND hPos<(p1_prev_x_position(221)+25) AND vPos>p1_prev_y_position(221) AND vPos<(p1_prev_y_position(221)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(222) AND hPos<(p1_prev_x_position(222)+25) AND vPos>p1_prev_y_position(222) AND vPos<(p1_prev_y_position(222)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(223) AND hPos<(p1_prev_x_position(223)+25) AND vPos>p1_prev_y_position(223) AND vPos<(p1_prev_y_position(223)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(224) AND hPos<(p1_prev_x_position(224)+25) AND vPos>p1_prev_y_position(224) AND vPos<(p1_prev_y_position(224)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(225) AND hPos<(p1_prev_x_position(225)+25) AND vPos>p1_prev_y_position(225) AND vPos<(p1_prev_y_position(225)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(226) AND hPos<(p1_prev_x_position(226)+25) AND vPos>p1_prev_y_position(226) AND vPos<(p1_prev_y_position(226)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(227) AND hPos<(p1_prev_x_position(227)+25) AND vPos>p1_prev_y_position(227) AND vPos<(p1_prev_y_position(227)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(220) AND hPos<(p1_prev_x_position(228)+25) AND vPos>p1_prev_y_position(228) AND vPos<(p1_prev_y_position(228)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(229) AND hPos<(p1_prev_x_position(229)+25) AND vPos>p1_prev_y_position(229) AND vPos<(p1_prev_y_position(229)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(230) AND hPos<(p1_prev_x_position(230)+25) AND vPos>p1_prev_y_position(230) AND vPos<(p1_prev_y_position(230)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(231) AND hPos<(p1_prev_x_position(231)+25) AND vPos>p1_prev_y_position(231) AND vPos<(p1_prev_y_position(231)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(232) AND hPos<(p1_prev_x_position(232)+25) AND vPos>p1_prev_y_position(232) AND vPos<(p1_prev_y_position(232)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(233) AND hPos<(p1_prev_x_position(233)+25) AND vPos>p1_prev_y_position(233) AND vPos<(p1_prev_y_position(233)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(234) AND hPos<(p1_prev_x_position(234)+25) AND vPos>p1_prev_y_position(234) AND vPos<(p1_prev_y_position(234)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(235) AND hPos<(p1_prev_x_position(235)+25) AND vPos>p1_prev_y_position(235) AND vPos<(p1_prev_y_position(235)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(236) AND hPos<(p1_prev_x_position(236)+25) AND vPos>p1_prev_y_position(236) AND vPos<(p1_prev_y_position(236)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(237) AND hPos<(p1_prev_x_position(237)+25) AND vPos>p1_prev_y_position(237) AND vPos<(p1_prev_y_position(237)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(238) AND hPos<(p1_prev_x_position(238)+25) AND vPos>p1_prev_y_position(238) AND vPos<(p1_prev_y_position(238)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(239) AND hPos<(p1_prev_x_position(239)+25) AND vPos>p1_prev_y_position(239) AND vPos<(p1_prev_y_position(239)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(240) AND hPos<(p1_prev_x_position(240)+25) AND vPos>p1_prev_y_position(240) AND vPos<(p1_prev_y_position(240)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(241) AND hPos<(p1_prev_x_position(241)+25) AND vPos>p1_prev_y_position(241) AND vPos<(p1_prev_y_position(241)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(242) AND hPos<(p1_prev_x_position(242)+25) AND vPos>p1_prev_y_position(242) AND vPos<(p1_prev_y_position(242)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(243) AND hPos<(p1_prev_x_position(243)+25) AND vPos>p1_prev_y_position(243) AND vPos<(p1_prev_y_position(243)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(244) AND hPos<(p1_prev_x_position(244)+25) AND vPos>p1_prev_y_position(244) AND vPos<(p1_prev_y_position(244)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(245) AND hPos<(p1_prev_x_position(245)+25) AND vPos>p1_prev_y_position(245) AND vPos<(p1_prev_y_position(245)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(246) AND hPos<(p1_prev_x_position(246)+25) AND vPos>p1_prev_y_position(246) AND vPos<(p1_prev_y_position(246)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(247) AND hPos<(p1_prev_x_position(247)+25) AND vPos>p1_prev_y_position(247) AND vPos<(p1_prev_y_position(247)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(248) AND hPos<(p1_prev_x_position(248)+25) AND vPos>p1_prev_y_position(248) AND vPos<(p1_prev_y_position(248)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(249) AND hPos<(p1_prev_x_position(249)+25) AND vPos>p1_prev_y_position(249) AND vPos<(p1_prev_y_position(249)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(250) AND hPos<(p1_prev_x_position(250)+25) AND vPos>p1_prev_y_position(250) AND vPos<(p1_prev_y_position(250)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(251) AND hPos<(p1_prev_x_position(251)+25) AND vPos>p1_prev_y_position(251) AND vPos<(p1_prev_y_position(251)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(252) AND hPos<(p1_prev_x_position(252)+25) AND vPos>p1_prev_y_position(252) AND vPos<(p1_prev_y_position(252)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(253) AND hPos<(p1_prev_x_position(253)+25) AND vPos>p1_prev_y_position(253) AND vPos<(p1_prev_y_position(253)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(254) AND hPos<(p1_prev_x_position(254)+25) AND vPos>p1_prev_y_position(254) AND vPos<(p1_prev_y_position(254)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(255) AND hPos<(p1_prev_x_position(255)+25) AND vPos>p1_prev_y_position(255) AND vPos<(p1_prev_y_position(255)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(256) AND hPos<(p1_prev_x_position(256)+25) AND vPos>p1_prev_y_position(256) AND vPos<(p1_prev_y_position(256)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(257) AND hPos<(p1_prev_x_position(257)+25) AND vPos>p1_prev_y_position(257) AND vPos<(p1_prev_y_position(257)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(258) AND hPos<(p1_prev_x_position(258)+25) AND vPos>p1_prev_y_position(258) AND vPos<(p1_prev_y_position(258)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(259) AND hPos<(p1_prev_x_position(259)+25) AND vPos>p1_prev_y_position(259) AND vPos<(p1_prev_y_position(259)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(260) AND hPos<(p1_prev_x_position(260)+25) AND vPos>p1_prev_y_position(260) AND vPos<(p1_prev_y_position(260)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(261) AND hPos<(p1_prev_x_position(261)+25) AND vPos>p1_prev_y_position(261) AND vPos<(p1_prev_y_position(261)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(262) AND hPos<(p1_prev_x_position(262)+25) AND vPos>p1_prev_y_position(262) AND vPos<(p1_prev_y_position(262)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(263) AND hPos<(p1_prev_x_position(263)+25) AND vPos>p1_prev_y_position(263) AND vPos<(p1_prev_y_position(263)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(264) AND hPos<(p1_prev_x_position(264)+25) AND vPos>p1_prev_y_position(264) AND vPos<(p1_prev_y_position(264)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(265) AND hPos<(p1_prev_x_position(265)+25) AND vPos>p1_prev_y_position(265) AND vPos<(p1_prev_y_position(265)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(266) AND hPos<(p1_prev_x_position(266)+25) AND vPos>p1_prev_y_position(266) AND vPos<(p1_prev_y_position(266)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(267) AND hPos<(p1_prev_x_position(267)+25) AND vPos>p1_prev_y_position(267) AND vPos<(p1_prev_y_position(267)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(268) AND hPos<(p1_prev_x_position(268)+25) AND vPos>p1_prev_y_position(268) AND vPos<(p1_prev_y_position(268)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(269) AND hPos<(p1_prev_x_position(269)+25) AND vPos>p1_prev_y_position(269) AND vPos<(p1_prev_y_position(269)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(270) AND hPos<(p1_prev_x_position(270)+25) AND vPos>p1_prev_y_position(270) AND vPos<(p1_prev_y_position(270)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(271) AND hPos<(p1_prev_x_position(271)+25) AND vPos>p1_prev_y_position(271) AND vPos<(p1_prev_y_position(271)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(272) AND hPos<(p1_prev_x_position(272)+25) AND vPos>p1_prev_y_position(272) AND vPos<(p1_prev_y_position(272)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(273) AND hPos<(p1_prev_x_position(273)+25) AND vPos>p1_prev_y_position(273) AND vPos<(p1_prev_y_position(273)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(274) AND hPos<(p1_prev_x_position(274)+25) AND vPos>p1_prev_y_position(274) AND vPos<(p1_prev_y_position(274)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(275) AND hPos<(p1_prev_x_position(275)+25) AND vPos>p1_prev_y_position(275) AND vPos<(p1_prev_y_position(275)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(276) AND hPos<(p1_prev_x_position(276)+25) AND vPos>p1_prev_y_position(276) AND vPos<(p1_prev_y_position(276)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(277) AND hPos<(p1_prev_x_position(277)+25) AND vPos>p1_prev_y_position(277) AND vPos<(p1_prev_y_position(277)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(278) AND hPos<(p1_prev_x_position(278)+25) AND vPos>p1_prev_y_position(278) AND vPos<(p1_prev_y_position(278)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(279) AND hPos<(p1_prev_x_position(279)+25) AND vPos>p1_prev_y_position(279) AND vPos<(p1_prev_y_position(279)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(280) AND hPos<(p1_prev_x_position(280)+25) AND vPos>p1_prev_y_position(280) AND vPos<(p1_prev_y_position(280)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(281) AND hPos<(p1_prev_x_position(281)+25) AND vPos>p1_prev_y_position(281) AND vPos<(p1_prev_y_position(281)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(282) AND hPos<(p1_prev_x_position(282)+25) AND vPos>p1_prev_y_position(282) AND vPos<(p1_prev_y_position(282)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(283) AND hPos<(p1_prev_x_position(283)+25) AND vPos>p1_prev_y_position(283) AND vPos<(p1_prev_y_position(283)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(284) AND hPos<(p1_prev_x_position(284)+25) AND vPos>p1_prev_y_position(284) AND vPos<(p1_prev_y_position(284)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(285) AND hPos<(p1_prev_x_position(285)+25) AND vPos>p1_prev_y_position(285) AND vPos<(p1_prev_y_position(285)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(286) AND hPos<(p1_prev_x_position(286)+25) AND vPos>p1_prev_y_position(286) AND vPos<(p1_prev_y_position(286)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(287) AND hPos<(p1_prev_x_position(287)+25) AND vPos>p1_prev_y_position(287) AND vPos<(p1_prev_y_position(287)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(288) AND hPos<(p1_prev_x_position(288)+25) AND vPos>p1_prev_y_position(288) AND vPos<(p1_prev_y_position(288)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(289) AND hPos<(p1_prev_x_position(289)+25) AND vPos>p1_prev_y_position(289) AND vPos<(p1_prev_y_position(289)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(290) AND hPos<(p1_prev_x_position(290)+25) AND vPos>p1_prev_y_position(290) AND vPos<(p1_prev_y_position(290)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(291) AND hPos<(p1_prev_x_position(291)+25) AND vPos>p1_prev_y_position(291) AND vPos<(p1_prev_y_position(291)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(292) AND hPos<(p1_prev_x_position(292)+25) AND vPos>p1_prev_y_position(292) AND vPos<(p1_prev_y_position(292)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(293) AND hPos<(p1_prev_x_position(293)+25) AND vPos>p1_prev_y_position(293) AND vPos<(p1_prev_y_position(293)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(294) AND hPos<(p1_prev_x_position(294)+25) AND vPos>p1_prev_y_position(294) AND vPos<(p1_prev_y_position(294)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(295) AND hPos<(p1_prev_x_position(295)+25) AND vPos>p1_prev_y_position(295) AND vPos<(p1_prev_y_position(295)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(296) AND hPos<(p1_prev_x_position(296)+25) AND vPos>p1_prev_y_position(296) AND vPos<(p1_prev_y_position(296)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(297) AND hPos<(p1_prev_x_position(297)+25) AND vPos>p1_prev_y_position(297) AND vPos<(p1_prev_y_position(297)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(298) AND hPos<(p1_prev_x_position(298)+25) AND vPos>p1_prev_y_position(298) AND vPos<(p1_prev_y_position(298)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(299) AND hPos<(p1_prev_x_position(299)+25) AND vPos>p1_prev_y_position(299) AND vPos<(p1_prev_y_position(299)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(300) AND hPos<(p1_prev_x_position(300)+25) AND vPos>p1_prev_y_position(300) AND vPos<(p1_prev_y_position(300)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(301) AND hPos<(p1_prev_x_position(301)+25) AND vPos>p1_prev_y_position(301) AND vPos<(p1_prev_y_position(301)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(302) AND hPos<(p1_prev_x_position(302)+25) AND vPos>p1_prev_y_position(302) AND vPos<(p1_prev_y_position(302)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(303) AND hPos<(p1_prev_x_position(303)+25) AND vPos>p1_prev_y_position(303) AND vPos<(p1_prev_y_position(303)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(304) AND hPos<(p1_prev_x_position(304)+25) AND vPos>p1_prev_y_position(304) AND vPos<(p1_prev_y_position(304)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(305) AND hPos<(p1_prev_x_position(305)+25) AND vPos>p1_prev_y_position(305) AND vPos<(p1_prev_y_position(305)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(306) AND hPos<(p1_prev_x_position(306)+25) AND vPos>p1_prev_y_position(306) AND vPos<(p1_prev_y_position(306)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(307) AND hPos<(p1_prev_x_position(307)+25) AND vPos>p1_prev_y_position(307) AND vPos<(p1_prev_y_position(307)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(308) AND hPos<(p1_prev_x_position(308)+25) AND vPos>p1_prev_y_position(308) AND vPos<(p1_prev_y_position(308)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(309) AND hPos<(p1_prev_x_position(309)+25) AND vPos>p1_prev_y_position(309) AND vPos<(p1_prev_y_position(309)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(310) AND hPos<(p1_prev_x_position(310)+25) AND vPos>p1_prev_y_position(310) AND vPos<(p1_prev_y_position(310)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(311) AND hPos<(p1_prev_x_position(311)+25) AND vPos>p1_prev_y_position(311) AND vPos<(p1_prev_y_position(311)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(312) AND hPos<(p1_prev_x_position(312)+25) AND vPos>p1_prev_y_position(312) AND vPos<(p1_prev_y_position(312)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(313) AND hPos<(p1_prev_x_position(313)+25) AND vPos>p1_prev_y_position(313) AND vPos<(p1_prev_y_position(313)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(314) AND hPos<(p1_prev_x_position(314)+25) AND vPos>p1_prev_y_position(314) AND vPos<(p1_prev_y_position(314)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(315) AND hPos<(p1_prev_x_position(315)+25) AND vPos>p1_prev_y_position(315) AND vPos<(p1_prev_y_position(315)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(316) AND hPos<(p1_prev_x_position(316)+25) AND vPos>p1_prev_y_position(316) AND vPos<(p1_prev_y_position(316)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(317) AND hPos<(p1_prev_x_position(317)+25) AND vPos>p1_prev_y_position(317) AND vPos<(p1_prev_y_position(317)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(318) AND hPos<(p1_prev_x_position(318)+25) AND vPos>p1_prev_y_position(318) AND vPos<(p1_prev_y_position(318)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(319) AND hPos<(p1_prev_x_position(319)+25) AND vPos>p1_prev_y_position(319) AND vPos<(p1_prev_y_position(319)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(320) AND hPos<(p1_prev_x_position(320)+25) AND vPos>p1_prev_y_position(320) AND vPos<(p1_prev_y_position(320)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(321) AND hPos<(p1_prev_x_position(321)+25) AND vPos>p1_prev_y_position(321) AND vPos<(p1_prev_y_position(321)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(322) AND hPos<(p1_prev_x_position(322)+25) AND vPos>p1_prev_y_position(322) AND vPos<(p1_prev_y_position(322)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(323) AND hPos<(p1_prev_x_position(323)+25) AND vPos>p1_prev_y_position(323) AND vPos<(p1_prev_y_position(323)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(324) AND hPos<(p1_prev_x_position(324)+25) AND vPos>p1_prev_y_position(324) AND vPos<(p1_prev_y_position(324)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(325) AND hPos<(p1_prev_x_position(325)+25) AND vPos>p1_prev_y_position(325) AND vPos<(p1_prev_y_position(325)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(326) AND hPos<(p1_prev_x_position(326)+25) AND vPos>p1_prev_y_position(326) AND vPos<(p1_prev_y_position(326)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(327) AND hPos<(p1_prev_x_position(327)+25) AND vPos>p1_prev_y_position(327) AND vPos<(p1_prev_y_position(327)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(328) AND hPos<(p1_prev_x_position(328)+25) AND vPos>p1_prev_y_position(328) AND vPos<(p1_prev_y_position(328)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(329) AND hPos<(p1_prev_x_position(329)+25) AND vPos>p1_prev_y_position(329) AND vPos<(p1_prev_y_position(329)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(330) AND hPos<(p1_prev_x_position(330)+25) AND vPos>p1_prev_y_position(330) AND vPos<(p1_prev_y_position(330)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(331) AND hPos<(p1_prev_x_position(331)+25) AND vPos>p1_prev_y_position(331) AND vPos<(p1_prev_y_position(331)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(332) AND hPos<(p1_prev_x_position(332)+25) AND vPos>p1_prev_y_position(332) AND vPos<(p1_prev_y_position(332)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(333) AND hPos<(p1_prev_x_position(333)+25) AND vPos>p1_prev_y_position(333) AND vPos<(p1_prev_y_position(333)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(334) AND hPos<(p1_prev_x_position(334)+25) AND vPos>p1_prev_y_position(334) AND vPos<(p1_prev_y_position(334)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(335) AND hPos<(p1_prev_x_position(335)+25) AND vPos>p1_prev_y_position(335) AND vPos<(p1_prev_y_position(335)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(336) AND hPos<(p1_prev_x_position(336)+25) AND vPos>p1_prev_y_position(336) AND vPos<(p1_prev_y_position(336)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(337) AND hPos<(p1_prev_x_position(337)+25) AND vPos>p1_prev_y_position(337) AND vPos<(p1_prev_y_position(337)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(338) AND hPos<(p1_prev_x_position(338)+25) AND vPos>p1_prev_y_position(338) AND vPos<(p1_prev_y_position(338)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(339) AND hPos<(p1_prev_x_position(339)+25) AND vPos>p1_prev_y_position(339) AND vPos<(p1_prev_y_position(339)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(340) AND hPos<(p1_prev_x_position(340)+25) AND vPos>p1_prev_y_position(340) AND vPos<(p1_prev_y_position(340)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(341) AND hPos<(p1_prev_x_position(341)+25) AND vPos>p1_prev_y_position(341) AND vPos<(p1_prev_y_position(341)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(342) AND hPos<(p1_prev_x_position(342)+25) AND vPos>p1_prev_y_position(342) AND vPos<(p1_prev_y_position(342)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(343) AND hPos<(p1_prev_x_position(343)+25) AND vPos>p1_prev_y_position(343) AND vPos<(p1_prev_y_position(343)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(344) AND hPos<(p1_prev_x_position(344)+25) AND vPos>p1_prev_y_position(344) AND vPos<(p1_prev_y_position(344)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(345) AND hPos<(p1_prev_x_position(345)+25) AND vPos>p1_prev_y_position(345) AND vPos<(p1_prev_y_position(345)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(346) AND hPos<(p1_prev_x_position(346)+25) AND vPos>p1_prev_y_position(346) AND vPos<(p1_prev_y_position(346)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(347) AND hPos<(p1_prev_x_position(347)+25) AND vPos>p1_prev_y_position(347) AND vPos<(p1_prev_y_position(347)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(348) AND hPos<(p1_prev_x_position(348)+25) AND vPos>p1_prev_y_position(348) AND vPos<(p1_prev_y_position(348)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(349) AND hPos<(p1_prev_x_position(349)+25) AND vPos>p1_prev_y_position(349) AND vPos<(p1_prev_y_position(349)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(350) AND hPos<(p1_prev_x_position(350)+25) AND vPos>p1_prev_y_position(350) AND vPos<(p1_prev_y_position(350)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(351) AND hPos<(p1_prev_x_position(351)+25) AND vPos>p1_prev_y_position(351) AND vPos<(p1_prev_y_position(351)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(352) AND hPos<(p1_prev_x_position(352)+25) AND vPos>p1_prev_y_position(352) AND vPos<(p1_prev_y_position(352)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(353) AND hPos<(p1_prev_x_position(353)+25) AND vPos>p1_prev_y_position(353) AND vPos<(p1_prev_y_position(353)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(354) AND hPos<(p1_prev_x_position(354)+25) AND vPos>p1_prev_y_position(354) AND vPos<(p1_prev_y_position(354)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(355) AND hPos<(p1_prev_x_position(355)+25) AND vPos>p1_prev_y_position(355) AND vPos<(p1_prev_y_position(355)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(356) AND hPos<(p1_prev_x_position(356)+25) AND vPos>p1_prev_y_position(356) AND vPos<(p1_prev_y_position(356)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(357) AND hPos<(p1_prev_x_position(357)+25) AND vPos>p1_prev_y_position(357) AND vPos<(p1_prev_y_position(357)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(358) AND hPos<(p1_prev_x_position(358)+25) AND vPos>p1_prev_y_position(358) AND vPos<(p1_prev_y_position(358)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(359) AND hPos<(p1_prev_x_position(359)+25) AND vPos>p1_prev_y_position(359) AND vPos<(p1_prev_y_position(359)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(360) AND hPos<(p1_prev_x_position(360)+25) AND vPos>p1_prev_y_position(360) AND vPos<(p1_prev_y_position(360)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(361) AND hPos<(p1_prev_x_position(361)+25) AND vPos>p1_prev_y_position(361) AND vPos<(p1_prev_y_position(361)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(362) AND hPos<(p1_prev_x_position(362)+25) AND vPos>p1_prev_y_position(362) AND vPos<(p1_prev_y_position(362)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(363) AND hPos<(p1_prev_x_position(363)+25) AND vPos>p1_prev_y_position(363) AND vPos<(p1_prev_y_position(363)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(364) AND hPos<(p1_prev_x_position(364)+25) AND vPos>p1_prev_y_position(364) AND vPos<(p1_prev_y_position(364)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(365) AND hPos<(p1_prev_x_position(365)+25) AND vPos>p1_prev_y_position(365) AND vPos<(p1_prev_y_position(365)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(366) AND hPos<(p1_prev_x_position(366)+25) AND vPos>p1_prev_y_position(366) AND vPos<(p1_prev_y_position(366)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(367) AND hPos<(p1_prev_x_position(367)+25) AND vPos>p1_prev_y_position(367) AND vPos<(p1_prev_y_position(367)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(368) AND hPos<(p1_prev_x_position(368)+25) AND vPos>p1_prev_y_position(368) AND vPos<(p1_prev_y_position(368)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(369) AND hPos<(p1_prev_x_position(369)+25) AND vPos>p1_prev_y_position(369) AND vPos<(p1_prev_y_position(369)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(370) AND hPos<(p1_prev_x_position(370)+25) AND vPos>p1_prev_y_position(370) AND vPos<(p1_prev_y_position(370)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(371) AND hPos<(p1_prev_x_position(371)+25) AND vPos>p1_prev_y_position(371) AND vPos<(p1_prev_y_position(371)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(372) AND hPos<(p1_prev_x_position(372)+25) AND vPos>p1_prev_y_position(372) AND vPos<(p1_prev_y_position(372)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(373) AND hPos<(p1_prev_x_position(373)+25) AND vPos>p1_prev_y_position(373) AND vPos<(p1_prev_y_position(373)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(374) AND hPos<(p1_prev_x_position(374)+25) AND vPos>p1_prev_y_position(374) AND vPos<(p1_prev_y_position(374)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(375) AND hPos<(p1_prev_x_position(375)+25) AND vPos>p1_prev_y_position(375) AND vPos<(p1_prev_y_position(375)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(376) AND hPos<(p1_prev_x_position(376)+25) AND vPos>p1_prev_y_position(376) AND vPos<(p1_prev_y_position(376)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(377) AND hPos<(p1_prev_x_position(377)+25) AND vPos>p1_prev_y_position(377) AND vPos<(p1_prev_y_position(377)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(378) AND hPos<(p1_prev_x_position(378)+25) AND vPos>p1_prev_y_position(378) AND vPos<(p1_prev_y_position(378)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(379) AND hPos<(p1_prev_x_position(379)+25) AND vPos>p1_prev_y_position(379) AND vPos<(p1_prev_y_position(379)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(380) AND hPos<(p1_prev_x_position(380)+25) AND vPos>p1_prev_y_position(380) AND vPos<(p1_prev_y_position(380)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(381) AND hPos<(p1_prev_x_position(381)+25) AND vPos>p1_prev_y_position(381) AND vPos<(p1_prev_y_position(381)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(382) AND hPos<(p1_prev_x_position(382)+25) AND vPos>p1_prev_y_position(382) AND vPos<(p1_prev_y_position(382)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(383) AND hPos<(p1_prev_x_position(383)+25) AND vPos>p1_prev_y_position(383) AND vPos<(p1_prev_y_position(383)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(384) AND hPos<(p1_prev_x_position(384)+25) AND vPos>p1_prev_y_position(384) AND vPos<(p1_prev_y_position(384)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(385) AND hPos<(p1_prev_x_position(385)+25) AND vPos>p1_prev_y_position(385) AND vPos<(p1_prev_y_position(385)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(386) AND hPos<(p1_prev_x_position(386)+25) AND vPos>p1_prev_y_position(386) AND vPos<(p1_prev_y_position(386)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(387) AND hPos<(p1_prev_x_position(387)+25) AND vPos>p1_prev_y_position(387) AND vPos<(p1_prev_y_position(387)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(388) AND hPos<(p1_prev_x_position(388)+25) AND vPos>p1_prev_y_position(388) AND vPos<(p1_prev_y_position(388)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(389) AND hPos<(p1_prev_x_position(389)+25) AND vPos>p1_prev_y_position(389) AND vPos<(p1_prev_y_position(389)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(390) AND hPos<(p1_prev_x_position(390)+25) AND vPos>p1_prev_y_position(390) AND vPos<(p1_prev_y_position(390)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(391) AND hPos<(p1_prev_x_position(391)+25) AND vPos>p1_prev_y_position(391) AND vPos<(p1_prev_y_position(391)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(392) AND hPos<(p1_prev_x_position(392)+25) AND vPos>p1_prev_y_position(392) AND vPos<(p1_prev_y_position(392)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(393) AND hPos<(p1_prev_x_position(393)+25) AND vPos>p1_prev_y_position(393) AND vPos<(p1_prev_y_position(393)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(394) AND hPos<(p1_prev_x_position(394)+25) AND vPos>p1_prev_y_position(394) AND vPos<(p1_prev_y_position(394)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(395) AND hPos<(p1_prev_x_position(395)+25) AND vPos>p1_prev_y_position(395) AND vPos<(p1_prev_y_position(395)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(396) AND hPos<(p1_prev_x_position(396)+25) AND vPos>p1_prev_y_position(396) AND vPos<(p1_prev_y_position(396)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(397) AND hPos<(p1_prev_x_position(397)+25) AND vPos>p1_prev_y_position(397) AND vPos<(p1_prev_y_position(397)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(398) AND hPos<(p1_prev_x_position(398)+25) AND vPos>p1_prev_y_position(398) AND vPos<(p1_prev_y_position(398)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(399) AND hPos<(p1_prev_x_position(399)+25) AND vPos>p1_prev_y_position(399) AND vPos<(p1_prev_y_position(399)+25))then
						RGB_DRAWING_CONT <= "100";
					elsif(hPos>p1_prev_x_position(400) AND hPos<(p1_prev_x_position(400)+25) AND vPos>p1_prev_y_position(400) AND vPos<(p1_prev_y_position(400)+25))then
						RGB_DRAWING_CONT <= "100";					
					else
						RGB_DRAWING_CONT <= "000";
					end if;
					--
				else
					RGB_DRAWING_CONT <= "000";
				end if;
				--
		end if;
--	end loop;	
				--
   END PROCEDURE SQ_NEW_0;
END DRAWING_CONT_0;
