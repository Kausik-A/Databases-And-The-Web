for $x in db:open("companyDB")//project
    where $x/plocation = "Stafford"
        let $temp1 := $x/@pnumber
        let $temp2 := $x/@controllingDepartment
        for $y in db:open("companyDB")//department
            where $y/@dno = $temp2
                let $temp3 := $y/manager/@mssn
                    for $z in db:open("companyDB")//employee
                    where $z/@ssn = $temp3
                        return ($temp1,$temp2,data($z/lname),data($z/address),data($z/dob))
                        
        
