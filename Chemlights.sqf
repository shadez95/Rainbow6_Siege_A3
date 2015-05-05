/*

AUTHOR: DOM.STB

Add permenant lit chemlights at trigger positions. (Creates a new chemlight every time the old one dies out - hence the "sleep 898" line)

USAGE: add triggers with radius = 0 (so the editor doessn't get too crowded) and name them something sequential e.g. L1,L2,L3,L4,L5...

Add the following line to a unit 'init' or to one of the trigger's 'on act' (make sure to set the condition to 'true' if you use a trigger):

	nul = ["COLOUR",trigger1name,trigger2name,trigger3name,...] execVM "Lighting\Chemlights_red.sqf";
	
	COLOUR -> "red", "blue", "green", "yellow", "white"

	e.g. for blue chemlights at triggers named L1,L2,L3,L4 and L5:
		
		nul = [2,L1,L2,L3,L4,L5] execVM "Chemlights_red.sqf";
		
Call the script multiple times for different colours.
	
*/


//light colour

_colour = _this select 0;

//spawn chemlights

 switch (_colour) do {
 
	case "red":

		{
		
			for [{_j=1},{_j<=100},{_j=_j+1}] do 
				
			{	
			
				for [{_i=1},{_i<=count _this},{_i=_i+1}] do 	

					{	_L = _this select _i;	
						chem =  "Chemlight_red" createVehicle[(getPos _L) select 0,(getPos _L) select 1,25];
					};	
						
				sleep 898;
				
			};
		};	 
	
	
	
	case "blue":

		{
		
			for [{_j=1},{_j<=100},{_j=_j+1}] do 
				
			{	
			
				for [{_i=1},{_i<=count _this},{_i=_i+1}] do 	

					{	_L = _this select _i;	
						chem =  "Chemlight_blue" createVehicle[(getPos _L) select 0,(getPos _L) select 1,25];
					};	
						
				sleep 898;
				
			};
		};	 
	
	
	
	case "green":

		{
		
			for [{_j=1},{_j<=100},{_j=_j+1}] do 
				
			{	
			
				for [{_i=1},{_i<=count _this},{_i=_i+1}] do 	

					{	_L = _this select _i;	
						chem =  "Chemlight_green" createVehicle[(getPos _L) select 0,(getPos _L) select 1,25];
					};	
						
				sleep 898;
				
			};
		};	 
	
	
	
	case "yellow":

		{
		
			for [{_j=1},{_j<=100},{_j=_j+1}] do 
				
			{	
			
				for [{_i=1},{_i<=count _this},{_i=_i+1}] do 	

					{	_L = _this select _i;	
						chem =  "Chemlight_yellow" createVehicle[(getPos _L) select 0,(getPos _L) select 1,25];
					};	
						
				sleep 898;
				
			};
		};	 
	
	
	
	case "white":

		{
		
			for [{_j=1},{_j<=100},{_j=_j+1}] do 
				
			{	
			
				for [{_i=1},{_i<=count _this},{_i=_i+1}] do 	

					{	_L = _this select _i;	
						chem =  "Chemlight_white" createVehicle[(getPos _L) select 0,(getPos _L) select 1,25];
					};	
						
				sleep 898;
				
			};
		};

	default
	{hint "Chemlights.sqf - invalid colour name"};
	
	};
