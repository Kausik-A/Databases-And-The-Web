for $x in db:open("shipsDB")//class
where count($x/ship) >= 3
return data($x/@name)