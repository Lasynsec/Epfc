select ID_P , count(ID_P) from SPJ group by ID_P having count(ID_P) > 2