for $x in db:open("shipsDB")//class
where $x/@numGuns >= 10
return data($x/ship/@name)