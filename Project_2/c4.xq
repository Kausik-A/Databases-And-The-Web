for $x in db:open("companyDB")//department
    let $temp := $x/manager/@mssn
    for $y in db:open("companyDB")//employee
        where $y/@ssn = $temp
            where count($y/dependents/dependent) >= 1
                return concat($y/fname," ",$y/minit," ",$y/lname)
