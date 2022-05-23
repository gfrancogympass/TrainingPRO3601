IMPORT $;

Crimes := $.chicago_crimes_optimized.File;
Crime2010_2020 := Crimes(Year>= 2010 AND Year <=2020);

R := RECORD
Crime2010_2020.Year;
cnt := COUNT(GROUP);
END;
Crimes_count := TABLE(Crime2010_2020, R, Year);

OUTPUT(Crimes_count); // o valor total de crimes para cada ano entre 2010 e 2020

R := RECORD
Crimes_count.Year;
cnt := AVE(GROUP);
END;
Crimes_ave := TABLE(Crimes_count, R, Year);

OUTPUT(Crimes_ave); // o valor médio de crimes entre os anos de 2010 e 2020

