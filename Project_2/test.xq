for $z in db:open("companyDB")//employee
where $z/@snn = '987654321'
    return $z/@ssn
