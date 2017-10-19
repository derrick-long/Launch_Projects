
SELECT * FROM ingredients
WHERE ingredients.name = 'Brussels Sprouts';

[#1 BEFORE INDEX](http://i.imgur.com/T9ykiDT.png)

CREATE INDEX ON ingredients(name);

[#1 AFTER INDEX](http://i.imgur.com/UYvejba.png)

SELECT COUNT(*) FROM ingredients WHERE ingredients.name = 'Brussels sprouts';

[#2 BEFORE INDEX](http://i.imgur.com/YjO3FnU.png)

CREATE INDEX ON ingredients(unit);

[#2 AFTER INDEX](http://i.imgur.com/saIMZFV.png)

SELECT * FROM ingredients WHERE ingredients.name = 'Brussels sprouts' AND  ingredients.unit ='gallon(s)';

[#3 BEFORE INDEX](http://i.imgur.com/F1lABf0.png)

DROP INDEX ingredients_name_idx;

[#3 AFTER INDEX](http://i.imgur.com/jEvcOyu.png)


SELECT * FROM ingredients WHERE ingredients.name = 'Brussels sprouts' OR ingredients.unit = 'gallon(s)' OR  ingredients.name LIKE '%j%';

[#4 BEFORE INDEX](http://i.imgur.com/zfnAgq6.png)


[#4 AFTER INDEX](http://i.imgur.com/dyfdeQt.png)

#The index here just made my search worse, I'm assuming this is a result of the "like J requirement"
