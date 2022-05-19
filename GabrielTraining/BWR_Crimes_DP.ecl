IMPORT $,STD;

Crimes := $.File_crime_raw.File;

profileResults := STD.DataPatterns.Profile(Crimes);

OUTPUT(profileResults, ALL, NAMED('profileResults'));


