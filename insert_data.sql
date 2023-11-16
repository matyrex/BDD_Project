INSERT INTO Report (id_report, report_title) VALUES (1, 'Report number 1');
INSERT INTO Report (id_report, report_title) VALUES (2, 'Report number 2');
INSERT INTO Report (id_report, report_title) VALUES (3, 'Report number 3');
INSERT INTO Report (id_report, report_title) VALUES (4, 'Report number 4');
INSERT INTO Report (id_report, report_title) VALUES (5, 'Report number 5');

INSERT INTO Client_Action (id_action, action) VALUES (1, 'some actions 1 made by client');
INSERT INTO Client_Action (id_action, action) VALUES (2, 'some actions 2 made by client');
INSERT INTO Client_Action (id_action, action) VALUES (3, 'some actions 3 made by client');
INSERT INTO Client_Action (id_action, action) VALUES (4, 'some actions 4 made by client');
INSERT INTO Client_Action (id_action, action) VALUES (5, 'some actions 5 made by client');

INSERT INTO Recomendation (id_recomendation, recomendation) VALUES (1, 'some recomendations 1');
INSERT INTO Recomendation (id_recomendation, recomendation) VALUES (2, 'some recomendations 2');
INSERT INTO Recomendation (id_recomendation, recomendation) VALUES (3, 'some recomendations 3');
INSERT INTO Recomendation (id_recomendation, recomendation) VALUES (4, 'some recomendations 4');
INSERT INTO Recomendation (id_recomendation, recomendation) VALUES (5, 'some recomendations 5');

INSERT INTO Recomendation_Action (FK_action, FK_recomendation) VALUES (1, 1);
INSERT INTO Recomendation_Action (FK_action, FK_recomendation) VALUES (2, 2);
INSERT INTO Recomendation_Action (FK_action, FK_recomendation) VALUES (3, 3);
INSERT INTO Recomendation_Action (FK_action, FK_recomendation) VALUES (4, 4);
INSERT INTO Recomendation_Action (FK_action, FK_recomendation) VALUES (5, 5);

INSERT INTO Condition (id_condition, condition) VALUES (1, 'some conditions 1');
INSERT INTO Condition (id_condition, condition) VALUES (2, 'some conditions 2');
INSERT INTO Condition (id_condition, condition) VALUES (3, 'some conditions 3');
INSERT INTO Condition (id_condition, condition) VALUES (4, 'some conditions 4');
INSERT INTO Condition (id_condition, condition) VALUES (5, 'some conditions 5');

INSERT INTO Report_Condition (FK_condition, FK_report) VALUES (1, 1);
INSERT INTO Report_Condition (FK_condition, FK_report) VALUES (2, 2);
INSERT INTO Report_Condition (FK_condition, FK_report) VALUES (3, 3);
INSERT INTO Report_Condition (FK_condition, FK_report) VALUES (4, 4);
INSERT INTO Report_Condition (FK_condition, FK_report) VALUES (5, 5);

INSERT INTO Location (id_location, street, city, zip_code, country) VALUES (1, 'street 1', 'city 1', 'zip code 1', 'country 1');
INSERT INTO Location (id_location, street, city, zip_code, country) VALUES (2, 'street 2', 'city 2', 'zip code 2', 'country 2');
INSERT INTO Location (id_location, street, city, zip_code, country) VALUES (3, 'street 3', 'city 3', 'zip code 3', 'country 3');
INSERT INTO Location (id_location, street, city, zip_code, country) VALUES (4, 'street 4', 'city 4', 'zip code 4', 'country 4');
INSERT INTO Location (id_location, street, city, zip_code, country) VALUES (5, 'street 5', 'city 5', 'zip code 5', 'country 5');

INSERT INTO Meeting (id_meeting, meeting_timestamp, meeting_title, FK_location) VALUES (1, TIMESTAMP '2023-01-01 00:00:00', 'title 1', 1);
INSERT INTO Meeting (id_meeting, meeting_timestamp, meeting_title, FK_location) VALUES (2, TIMESTAMP '2023-02-01 00:00:00', 'title 2', 2);
INSERT INTO Meeting (id_meeting, meeting_timestamp, meeting_title, FK_location) VALUES (3, TIMESTAMP '2023-03-01 00:00:00', 'title 3', 3);
INSERT INTO Meeting (id_meeting, meeting_timestamp, meeting_title, FK_location) VALUES (4, TIMESTAMP '2023-04-01 00:00:00', 'title 4', 4);
INSERT INTO Meeting (id_meeting, meeting_timestamp, meeting_title, FK_location) VALUES (5, TIMESTAMP '2023-05-01 00:00:00', 'title 5', 5);

INSERT INTO Company (id_company, company_name, FK_company_location) VALUES (1, 'company name 1', 1);
INSERT INTO Company (id_company, company_name, FK_company_location) VALUES (2, 'company name 2', 2);
INSERT INTO Company (id_company, company_name, FK_company_location) VALUES (3, 'company name 3', 3);
INSERT INTO Company (id_company, company_name, FK_company_location) VALUES (4, 'company name 4', 4);
INSERT INTO Company (id_company, company_name, FK_company_location) VALUES (5, 'company name 5', 5);

INSERT INTO Employe (id_employe, FK_employe_company, employe_first_name, employe_last_name, employe_email, employe_phone) VALUES (1, 1, 'firstname 1', 'lastname 1', 'email 1', 'phone 1');
INSERT INTO Employe (id_employe, FK_employe_company, employe_first_name, employe_last_name, employe_email, employe_phone) VALUES (2, 2, 'firstname 2', 'lastname 2', 'email 2', 'phone 2');
INSERT INTO Employe (id_employe, FK_employe_company, employe_first_name, employe_last_name, employe_email, employe_phone) VALUES (3, 3, 'firstname 3', 'lastname 3', 'email 3', 'phone 3');
INSERT INTO Employe (id_employe, FK_employe_company, employe_first_name, employe_last_name, employe_email, employe_phone) VALUES (4, 4, 'firstname 4', 'lastname 4', 'email 4', 'phone 4');
INSERT INTO Employe (id_employe, FK_employe_company, employe_first_name, employe_last_name, employe_email, employe_phone) VALUES (5, 5, 'firstname 5', 'lastname 5', 'email 5', 'phone 5');

INSERT INTO Mission (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting) VALUES (TIMESTAMP '2023-01-01 00:00:00', TIMESTAMP '2023-02-01 00:00:00', 1, 1, 1, 1, 1);
INSERT INTO Mission (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting) VALUES (TIMESTAMP '2023-02-01 00:00:00', TIMESTAMP '2023-03-01 00:00:00', 2, 2, 2, 2, 2);
INSERT INTO Mission (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting) VALUES (TIMESTAMP '2023-03-01 00:00:00', TIMESTAMP '2023-04-01 00:00:00', 3, 3, 3, 3, 3);
INSERT INTO Mission (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting) VALUES (TIMESTAMP '2023-04-01 00:00:00', TIMESTAMP '2023-05-01 00:00:00', 4, 4, 4, 4, 4);
INSERT INTO Mission (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting) VALUES (TIMESTAMP '2023-05-01 00:00:00', TIMESTAMP '2023-06-01 00:00:00', 5, 5, 5, 5, 5);

INSERT INTO Difficulty (id_difficulty, difficulty_title, difficulty_description) VALUES (1, 'difficulty name 1', 'difficulty description 1');
INSERT INTO Difficulty (id_difficulty, difficulty_title, difficulty_description) VALUES (2, 'difficulty name 2', 'difficulty description 2');
INSERT INTO Difficulty (id_difficulty, difficulty_title, difficulty_description) VALUES (3, 'difficulty name 3', 'difficulty description 3');
INSERT INTO Difficulty (id_difficulty, difficulty_title, difficulty_description) VALUES (4, 'difficulty name 4', 'difficulty description 4');
INSERT INTO Difficulty (id_difficulty, difficulty_title, difficulty_description) VALUES (5, 'difficulty name 5', 'difficulty description 5');

INSERT INTO Difficulty_Type (id_difficulty_type, difficulty_type_title) VALUES (1, 'difficulty type 1');
INSERT INTO Difficulty_Type (id_difficulty_type, difficulty_type_title) VALUES (2, 'difficulty type 2');
INSERT INTO Difficulty_Type (id_difficulty_type, difficulty_type_title) VALUES (3, 'difficulty type 3');
INSERT INTO Difficulty_Type (id_difficulty_type, difficulty_type_title) VALUES (4, 'difficulty type 4');
INSERT INTO Difficulty_Type (id_difficulty_type, difficulty_type_title) VALUES (5, 'difficulty type 5');

INSERT INTO Methodology (id_methodology, methodology_name, methodology_description) VALUES (1, 'methodology name 1', 'methodology description 1');
INSERT INTO Methodology (id_methodology, methodology_name, methodology_description) VALUES (2, 'methodology name 2', 'methodology description 2');
INSERT INTO Methodology (id_methodology, methodology_name, methodology_description) VALUES (3, 'methodology name 3', 'methodology description 3');
INSERT INTO Methodology (id_methodology, methodology_name, methodology_description) VALUES (4, 'methodology name 4', 'methodology description 4');
INSERT INTO Methodology (id_methodology, methodology_name, methodology_description) VALUES (5, 'methodology name 5', 'methodology description 5');

INSERT INTO Test_Type (id_test_type, test_type_name, test_type_description) VALUES (1, 'test type 1', 'test description 1');
INSERT INTO Test_Type (id_test_type, test_type_name, test_type_description) VALUES (2, 'test type 2', 'test description 2');
INSERT INTO Test_Type (id_test_type, test_type_name, test_type_description) VALUES (3, 'test type 3', 'test description 3');
INSERT INTO Test_Type (id_test_type, test_type_name, test_type_description) VALUES (4, 'test type 4', 'test description 4');
INSERT INTO Test_Type (id_test_type, test_type_name, test_type_description) VALUES (5, 'test type 5', 'test description 5');

INSERT INTO Tool (id_tool, tool_name) VALUES (1, 'tool 1');
INSERT INTO Tool (id_tool, tool_name) VALUES (2, 'tool 2');
INSERT INTO Tool (id_tool, tool_name) VALUES (3, 'tool 3');
INSERT INTO Tool (id_tool, tool_name) VALUES (4, 'tool 4');
INSERT INTO Tool (id_tool, tool_name) VALUES (5, 'tool 5');

INSERT INTO Test_Result (id_test_result, test_state) VALUES (1, 'test state 1');
INSERT INTO Test_Result (id_test_result, test_state) VALUES (2, 'test state 2');
INSERT INTO Test_Result (id_test_result, test_state) VALUES (3, 'test state 3');
INSERT INTO Test_Result (id_test_result, test_state) VALUES (4, 'test state 4');
INSERT INTO Test_Result (id_test_result, test_state) VALUES (5, 'test state 5');

INSERT INTO Test (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type) VALUES (TIMESTAMP '2023-01-01 00:00:00', TIMESTAMP '2023-02-01 00:00:00', 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO Test (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type) VALUES (TIMESTAMP '2023-02-01 00:00:00', TIMESTAMP '2023-03-01 00:00:00', 2, 2, 2, 2, 2, 2, 2, 2, 2);
INSERT INTO Test (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type) VALUES (TIMESTAMP '2023-03-01 00:00:00', TIMESTAMP '2023-04-01 00:00:00', 3, 3, 3, 3, 3, 3, 3, 3, 3);
INSERT INTO Test (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type) VALUES (TIMESTAMP '2023-04-01 00:00:00', TIMESTAMP '2023-05-01 00:00:00', 4, 4, 4, 4, 4, 4, 4, 4, 4);
INSERT INTO Test (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type) VALUES (TIMESTAMP '2023-05-01 00:00:00', TIMESTAMP '2023-06-01 00:00:00', 5, 5, 5, 5, 5, 5, 5, 5, 5);