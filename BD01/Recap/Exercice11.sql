select Hamburger.Nom from Hamburger where Hamburger.Calories not in (select max(Hamburger.Calories) from Hamburger)