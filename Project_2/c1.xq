for $x in db:open("shipsDB")//department
where $x/dname = "Research"
return data($x/@name)