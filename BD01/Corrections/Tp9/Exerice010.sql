select count(ID_J) from SPJ where QTY < 350  and ID_S not in (select ID_S from SPJ join J on SPJ.ID_J = J.ID_J where J.CITY ="Paris")
