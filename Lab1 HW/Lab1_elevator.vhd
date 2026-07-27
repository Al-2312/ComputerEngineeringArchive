--Allan Yunayev
--LAB 1 
--Updated 9/26/2024
library ieee;
use ieee.std_logic_1164.all;

entity Lab1_elevator is 
	port(
	UpButton: in std_logic_vector(3 downto 0);

	DownButton: in std_logic_vector(3 downto 0);
	
	
	Up: out std_logic;
	Down: out std_logic;
	F0: out std_logic;
	F1: out std_logic
);
end;

architecture dataflow of Lab1_elevator is
signal UpBoth: std_logic;-- we cant add Up in an output unless it is a buffer
signal F0up: std_logic; 
signal F1up: std_logic; 
signal F0down: std_logic; 
signal F1down: std_logic; 
begin 
 UpBoth <= UpButton(0) or UpButton(1) or UpButton(2) or UpButton(3);
 Down <= ( DownButton(0) or DownButton(1) or DownButton(2) or DownButton(3)) and (not UpBoth);

 Up <= UpBoth;
 F0up <= (UpButton(1) and not UpButton(2))  or UpButton(3); 
 F1up <= UpButton(2) or UpButton(3);
 
 F0down <= (DownButton(1) and not DownButton(2))  or DownButton(3);
 F1down <= DownButton(2) or DownButton(3);
 
 F0 <= F0up or (F0down and not (F1up or  F1down));-- we add the not(f1up and f1down) so it would give piority to up floors
 F1<= F1up or F1down;
 end;