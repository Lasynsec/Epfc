select JNAME, sum(QTY) from SPJ join J on SPJ.ID_J = J.ID_J group by spj.ID_J;