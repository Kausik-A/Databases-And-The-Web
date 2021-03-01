for $x in db:open("shipsDB")//class
where(
    for $a in $x/ship, $b in $x/ship
    where  $a/@name != $b/@name and $a/@launched = $b/@launched 
        return $x/@name
)
return data($x/@name)