select  PNAME  from P where COLOR != ALL (select COLOR from P group by COLOR having count(COLOR) > 1)