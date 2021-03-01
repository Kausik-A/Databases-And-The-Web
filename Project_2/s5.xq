for $x in db:open("shipsDB")//class
where count($x/ship/battle) = 0
return data($x/@name)