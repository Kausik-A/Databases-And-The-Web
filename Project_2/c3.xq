for $x in db:open("companyDB")//employee
    where count($x/dependents/dependent) >= 2
        return (concat($x/fname," ",$x/minit," ",$x/lname))