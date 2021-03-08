for $x in db:open("companyDB")//department
    where $x/dname = "Research"
        let $temp := tokenize($x/employees/@essns)
        for $z in $temp
        for $y in db:open("companyDB")//employee
            where $y/@ssn = $z
                return (concat($y/fname," ",$y/minit," ",$y/lname))
        
    

        
 


        

       

