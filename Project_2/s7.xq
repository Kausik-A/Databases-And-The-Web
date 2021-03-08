for $x in distinct-values(data(db:open("shipsDB")//battle))
    return <battle name = "{$x}">
    {
        for $y in db:open("shipsDB")//ship[battle]
            where $x = $y/battle
            return <ship name = "{data($y/@name)}" />
            
    }</battle>