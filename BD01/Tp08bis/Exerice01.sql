select ID_S, count(ID_S) from SPJ group by ID_s having count(ID_S) >= 4;