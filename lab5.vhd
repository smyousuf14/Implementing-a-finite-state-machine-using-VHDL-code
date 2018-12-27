library ieee;
use ieee.std_logic_1164.all;
entity lab5 is 
	port 
	(
		clk    : in std_logic;
		w : in std_logic; --- This is the data in.
		reset   :  in std_logic;
		student_id: out std_logic_vector(3 downto 0);
		current_state: out std_logic_vector(3 downto 0)
		
	);
end entity;


architecture fsm of lab5 is

	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	
	signal yfsm: state_type;
	
	begin
		
		process(clk, reset)
		begin 
			if reset = '0' then 
				yfsm <= s0;
			elsif (clk'Event and  clk = '1') then
			
			
			case yfsm is
			
				when s0 =>
				
					if w = '0' then
					
						yfsm <= s0;
						
					elsif w = '1' then
					
						yfsm <= s1;
						
					end if;
				
				when s1 =>
					
					if w = '0' then
					
						yfsm <= s1;
						
					elsif w = '1' then
							yfsm <= s2;
						
					end if;
				
				
				when s2 =>
					
					if w = '0' then
					
						yfsm <= s2;
						
					elsif w = '1' then
					
						yfsm <= s3;
					end if;
					
				
				when s3 =>
			
					if w = '0' then
						
						yfsm <= s3;
						
					elsif w = '1' then
					
						yfsm <= s4;
					end if;
					
				
				when s4 =>
					
					if w = '0' then
						
						yfsm <= s4;
						
					elsif w = '1' then
					
						yfsm <= s5;
						
					end if;
				
				when s5 =>
					
					if w = '0' then
						
						yfsm <= s5;
						
					elsif w = '1' then
					
						yfsm <= s6;
						
					end if;
				
				when s6 =>
				
				   if w = '0' then
						
						yfsm <= s6;
						
					elsif w = '1' then
					
						yfsm <= s7;
						
					end if;
				
				when s7 =>
				
			    	if w = '0' then
						
						yfsm <= s7;
						
					elsif w = '1' then
					
						yfsm <= s8;
						
					end if;
				
				when s8 =>
				
					if w = '0' then
						
						yfsm <= s8;
						
					elsif w = '1' then
					
						yfsm <= s0;
						
					end if;
				
			end case;
		end if;
	end process;
	--500833920
	process(yfsm, w)
	begin 
		case yfsm is
			
			when s0 =>
			
				current_state <= "0000";
				student_id <= "0101";
			
			when s1 =>
			
				current_state <= "0001";
				student_id <= "0000";
			
			when s2 =>
			
				current_state <= "0010";
				student_id <= "0000";
			
			when s3 =>
				
				current_state <= "0011";
				student_id <= "1000";
			
			when s4 =>
			
				current_state <= "0100";
				student_id <= "0011";
			
			when s5 =>
			
				current_state <= "0101";
				student_id <= "0011";
			
			when s6 =>
			
				current_state <= "0110";
				student_id <= "1001";
				
			
			when s7 =>
			
				current_state <= "0111";
				student_id <= "0010";
			
			when s8 =>
			
				current_state <= "1000";
				student_id <= "0000";
			
		end case;
end process;
end architecture;