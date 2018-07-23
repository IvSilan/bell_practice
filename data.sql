INSERT ALL
   INTO doc values (1, 'Свидетельство о рождении', '03')
   INTO doc values (2, 'Военный билет', '07')
   INTO doc values (3, 'Временное удостоверение, выданное взамен военного билета', '08')
   INTO doc values (4, 'Паспорт иностранного гражданина', '10')
   INTO doc values (5, 'Свидетельство о рассмотрении ходатайства о признании лица      
беженцем на территории Российской Федерации по существу', '11')
   INTO doc values (6, 'Вид на жительство в Российской Федерации', '12')
   INTO doc values (7, 'Удостоверение беженца', '13')
   INTO doc values (8, 'Разрешение на временное проживание в Российской Федерации', '15')
   INTO doc values (9, 'Свидетельство о предоставлении временного убежища на территории
Российской Федерации', '18')
   INTO doc values (10, 'Паспорт гражданина Российской Федерации', '21')
   INTO doc values (11, 'Свидетельство о рождении, выданное уполномоченным органом      
иностранного государства', '23')
   INTO doc values (12, 'Удостоверение личности военнослужащего Российской Федерации', '24')
   INTO doc values (13, 'Иные документы', '91')
   
   INTO country values (1, 'Afghanistan', '93')
   INTO country values (2, 'Albania', '255')
   INTO country values (3, 'Antarctica', '672')
   INTO country values (4, 'Argentina', '54')
   INTO country values (5, 'Armenia', '374')
   INTO country values (6, 'Australia', '61')
   INTO country values (7, 'Austria', '43')
   INTO country values (8, 'Azerbaijan', '994')
   INTO country values (9, 'Algeria', '213')
   INTO country values (10, 'Canada', '1')
   INTO country values (11, 'Central African Republic', '236')
   INTO country values (12, 'China', '86')
   INTO country values (13, 'Czech Republic', '420')
   INTO country values (14, 'France', '33')
   INTO country values (15, 'Germany', '49')
   INTO country values (16, 'Hong Kong', '852')
   INTO country values (17, 'Japan', '81')
   INTO country values (18, 'Kazakhstan', '7')
   INTO country values (19, 'United Kingdom', '44')
   INTO country values (20, 'United States', '1')
   INTO country values (21, 'Belarus', '375')
   INTO country values (22, 'Russia', '7')
   
   INTO organization values (1, 'PPAP', 'PineappleApple', '0000000001', '000000001', 'Russia, Saratov, Astrahanskaya, 40', 'phone', 'true' )
   
   INTO office values (1, '1', 'Apple office', 'Russia, Saratov, Yablochnaya, 23', '88002000600', 'true')
   INTO office values (2, '1', 'Pineapple office', 'Russia, Moscow, Moskovskaya, 123A', '82754505006', 'true')
  
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (1, 1, 21, 4, 'Vladimir', 'pos 1', 'true')
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (2, 1, 22, 10, 'Mihail', 'pos 2', 'true')
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (3, 1, 21, 4, 'Elena', 'pos 3', 'true')
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (4, 2, 22, 10, 'Petr', 'pos 1', 'true')
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (5, 2, 22, 10, 'Vladimir', 'pos 2', 'true')
   INTO employee (id, office_id, country_id, doc_id, firstname, position, isIdentified) values (6, 2, 22, 10, 'Alexander', 'pos 3', 'true')
   
SELECT 1 FROM DUAL;