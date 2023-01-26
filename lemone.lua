if not menu.is_trusted_mode_enabled(1 << 1) then --Trust dem globalz on
    menu.notify("turn dem globalz on")
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 0) then --Trust dem statz on
    menu.notify("turn dem statz on")
    menu.exit()
end

local function ezBan()
nlprice = gameplay.get_hash_key("MP0_PROP_NIGHTCLUB_VALUE")
nlprice2 = gameplay.get_hash_key("MP1_PROP_NIGHTCLUB_VALUE")

   local leplayer = script.get_global_i(1574918)
  if leplayer == 0 then
    stats.stat_set_int(nlprice, ((1000000000*2) + 4500000), true)
  else
    stats.stat_set_int(nlprice2, ((1000000000*2) + 4500000), true)
  end
 end

moneyManu = menu.add_feature("mone stuffz", "parent", 0)
menu.add_feature("READ ME", "action", moneyManu.id, function(f)
    menu.notify("CLICK THE FEATURE Real Estate Scam")
	system.wait(3000)
	menu.notify("GO TO MAZEBANK FORECLOSURE AND BUY ANOTHER NIGHTCLUB")
	system.wait(3000)
	menu.notify("VALUE SHOULD BE MODIFIED")
end)

menu.add_feature("Real Estate Scam", "toggle", moneyManu.id, function(f)
    while f.on do
	ezBan()
	system.wait(0)
  end
end)


menu.add_feature("Real Cargo Scam", "toggle", moneyManu.id, function(f)
  while f.on do
        for L4_2 = 22810, 22818, 1 do
            script.set_global_i(globals["Cargo"] + L4_2, 20000000)
        end
        system.wait(0)
    end
end)

-- Made by decco, thanks a lot
local function simulate_a_mouse_click()
    native.call(0x351220255D64C155, 2, 237, true)
    native.call(0xE8A25867FBA3B05E, 2, 237, 1.0)
    system.yield(25)
    native.call(0xE8A25867FBA3B05E, 2, 237, 0.0)
end
local function simulate_an_enter_press_1()
    native.call(0x351220255D64C155, 0, 176, true)
    native.call(0xE8A25867FBA3B05E, 0, 176, 1.0)
    system.yield(25)
    native.call(0xE8A25867FBA3B05E, 0, 176, 0.0)
end
local function simulate_an_enter_press_2()
    native.call(0x351220255D64C155, 2, 176, true)
    native.call(0xE8A25867FBA3B05E, 2, 176, 1.0)
    system.yield(25)
    native.call(0xE8A25867FBA3B05E, 2, 176, 0.0)
end
local positions = {
    {x = 0.474922, y = 0.555133},--to select first nightclub 
    {x = 0.363114, y = 0.729087}, --to enter purchase
    {x = 0.318704, y = 0.918251}, --to choose to buy
    {x = 0.782132, y = 0.912548},--to buy
    {x = 0.708464, y = 0.911597},--to return to the map
    {x = 0.465104, y = 0.452778},--to select 2nd nightclub
    {x = 0.356250, y = 0.675000},--to enter purchase
    {x = 0.318704, y = 0.918251},--to choose to buy
    {x = 0.782132, y = 0.912548},--to buy
    {x = 0.708464, y = 0.708464}--to return
}

menu.add_feature("READ ME for MOVE MOUSE", "action", moneyManu.id, function(f)
    menu.notify("CLICK THE FEATURE Real Estate Scam")
	system.wait(3000)
	menu.notify("GO TO MAZEBANK FORECLOSURE #FF0000FF#!DONT MOVE YOUR MAP!#DEFAULT#")
	system.wait(3000)
	menu.notify("ACTIVATE MOVE MOUSE")
end)

menu.add_feature("move mouse", "toggle", moneyManu.id, function(f)
    while f.on do
        for _, value in ipairs(positions) do
            native.call(0xFC695459D4D0E219, value.x, value.y)
            simulate_a_mouse_click()
            simulate_an_enter_press_1()
            simulate_an_enter_press_2()
        end
        system.wait()
    end
end)
--
