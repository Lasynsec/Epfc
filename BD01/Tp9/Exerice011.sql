 select distinct ID_S from SPJ where id_S <> all (select ID_S from SPJ group by ID_S,ID_P having sum(QTY) > 650)