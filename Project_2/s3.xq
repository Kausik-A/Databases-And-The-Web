for $x in db:open("shipsDB")//class//ship
where $x/battle/@outcome = "sunk"
return data($x/@name)