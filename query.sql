-- Select all reports from an employe 
SELECT *
FROM Report
WHERE id_rap IN (SELECT FK_report FROM Test WHERE FK_employe = :employe_id);

-- Select all the client actions from a report
SELECT action
FROM Client_Action
WHERE id_action IN (SELECT FK_action FROM Recomendation_Action WHERE FK_reco IN (SELECT FK_recomendation FROM Test WHERE FK_report = :id_report));

-- Select all reports with all information about the employe and his company
SELECT R.*, C.name_company, E.employe_first_name, E.employe_last_name
FROM Report R
JOIN Mission M ON R.FK_report = M.FK_report
JOIN Company C ON M.FK_company = C.id_company
JOIN Employe E ON M.FK_contact = E.id_employe;

-- Select all the employes from a specific company
SELECT *
FROM Employe
WHERE FK_employe_company = :company_id;

-- Select all recomendtions from a report
SELECT R.*
FROM Recomendation R
JOIN Test T ON R.id_recomendation = T.FK_recomendation
WHERE T.FK_report = :id_report;

-- Select all the tools used on a report
SELECT T.*
FROM Tool T
JOIN Test ON T.id_tool = Test.FK_tool
WHERE Test.FK_report = :id_report;

-- Select all the reports with associated employes and their recomended actions
SELECT R.*, E.employe_first_name, E.employe_last_name, CA.action
FROM Report R
JOIN Mission M ON R.FK_report = M.FK_report
JOIN Employe E ON M.FK_contact = E.id_employe
LEFT JOIN Test T ON R.id_rap = T.FK_report
LEFT JOIN Recomendation_Action RA ON T.FK_recomendation = RA.FK_reco
LEFT JOIN Client_Action CA ON RA.FK_action = CA.id_action;


## Sélectionner tous les rapports qui ont des recommandations avec des difficultés spécifiques :
-- Select all the reports with recomendations who has difficulty type 1
SELECT R.*
FROM Report R
JOIN Test T ON R.id_rap = T.FK_report
JOIN Recomendation Rm ON T.FK_recomendation = Rm.id_recomendation
JOIN Difficulty D ON T.FK_difficulty = D.id_difficulty
WHERE D.difficulty_title = 'difficulty type 1';

-- Select all the methodologies used on a report
SELECT M.*
FROM Methodology M
JOIN Test T ON M.id_methodology = T.FK_methodology
WHERE T.FK_report = :id_report;


## Sélectionner tous les rapports qui ont été testés avec un certain type de test :
-- Select all the reports which has test type 1
SELECT R.*
FROM Report R
JOIN Test T ON R.id_report = T.FK_report
JOIN Test_Type TT ON T.FK_test_type = TT.id_test_type
WHERE TT.test_type_name = 'test type 1';

