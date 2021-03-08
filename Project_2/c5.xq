for $x in db:open("companyDB")/companyDB/employees/employee
where every $y in db:open("companyDB")/companyDB/projects/project[@controllingDepartment="5"] 
    satisfies (some $f in $x/projects/worksOn satisfies $y/@pnumber = $f/@pno)
    return ($x/fname, $x/lname )