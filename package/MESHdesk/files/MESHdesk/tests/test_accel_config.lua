#!/usr/bin/lua

--[[--

This test script will test the rdAccel object class's various methods

--]]--

-- Include libraries
package.path = "../libs/?.lua;" .. package.path

function main()
	require("rdAccel");
	local a = rdAccel();
	print("Version is " .. a:getVersion());
	print("Configure Accel-ppp from JSON file");
	local f = '/etc/MESHdesk/tests/sample_config_accel.json';
	a:configureFromJson(f);
	--w:configureFromTable()
end

main();
