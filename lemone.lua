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
