library ieee;
use ieee.std_logic_1164.all;


package share_pos_array_type is
	type store_x_position is array(0 to 750) of integer range 0 to 799;
	type store_y_position is array(0 to 750) of integer range 0 to 524;
end package share_pos_array_type;