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

local function ezBanCustom()
nlprice = gameplay.get_hash_key("MP0_PROP_NIGHTCLUB_VALUE")
nlprice2 = gameplay.get_hash_key("MP1_PROP_NIGHTCLUB_VALUE")
        local input_stat, input_val = input.get("Enter value (Max 2147483647)", "", 10, 3)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
   local leplayer = script.get_global_i(1574918)
  if leplayer == 0 then
    stats.stat_set_int(nlprice, ((input_val*2) + 4500000), true)
  else
    stats.stat_set_int(nlprice2, ((input_val*2) + 4500000), true)
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

menu.add_feature("Real Estate Scam", "action", moneyManu.id, function(f)
    ezBan()
end)

menu.add_feature("Real Estate Scam CUSTOM", "action", moneyManu.id, function(f)
    ezBanCustom()
end)

menu.add_feature("Real Cargo Scam", "toggle", moneyManu.id, function(f)
  while f.on do
        for L4_2 = 22810, 22818, 1 do
            script.set_global_i(globals["Cargo"] + L4_2, 20000000)
        end
        system.wait(0)
    end
end)
