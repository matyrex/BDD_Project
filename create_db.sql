CREATE SEQUENCE seq_report START WITH 1;

CREATE TABLE Report (
  id_report INT DEFAULT seq_report.NEXTVAL PRIMARY KEY,
  report_title VARCHAR2(50) NOT NULL,
  report_file BLOB
);

CREATE SEQUENCE seq_client_action START WITH 1;

CREATE TABLE Client_Action (
  id_action INT DEFAULT seq_client_action.NEXTVAL PRIMARY KEY,
  action LONG NOT NULL
);

CREATE SEQUENCE seq_recomendation START WITH 1;
CREATE SEQUENCE seq_recomendation_action START WITH 1;

CREATE TABLE Recomendation (
  id_recomendation INT DEFAULT seq_recomendation.NEXTVAL PRIMARY KEY,
  recomendation LONG NOT NULL
);

CREATE TABLE Recomendation_Action (
  FK_action INT REFERENCES Client_Action(id_action),
  FK_recomendation INT REFERENCES Recomendation(id_recomendation),
  PRIMARY KEY (FK_Action, FK_recomendation)
);

CREATE SEQUENCE seq_condition START WITH 1;
CREATE SEQUENCE seq_report_condition START WITH 1;

CREATE TABLE Condition (
  id_condition INT DEFAULT seq_condition.NEXTVAL PRIMARY KEY,
  condition CHAR(30) NOT NULL
);

CREATE TABLE Report_Condition (
  FK_condition INT REFERENCES Condition(id_condition),
  FK_report INT REFERENCES Report(id_report),
  PRIMARY KEY (FK_condition, FK_report)
);

CREATE SEQUENCE seq_location START WITH 1;
CREATE SEQUENCE seq_mission START WITH 1;

CREATE TABLE Location (
  id_location INT DEFAULT seq_location.NEXTVAL PRIMARY KEY,
  street VARCHAR2(100) NOT NULL,
  city VARCHAR2(30) NOT NULL,
  zip_code VARCHAR2(10) NOT NULL,
  country VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE seq_meeting START WITH 1;

CREATE TABLE Meeting (
  id_meeting INT DEFAULT seq_meeting.NEXTVAL PRIMARY KEY,
  meeting_timestamp TIMESTAMP,
  meeting_title LONG,
  meeting_debriefing BLOB,
  FK_location INT REFERENCES Location(id_location)
);

CREATE SEQUENCE seq_company START WITH 1;

CREATE TABLE Company (
  id_company INT DEFAULT seq_company.NEXTVAL PRIMARY KEY,
  company_name VARCHAR2(50) NOT NULL,
  FK_company_location INT REFERENCES Location(id_location)
);

CREATE SEQUENCE seq_employe START WITH 1;

CREATE TABLE Employe (
  id_employe INT DEFAULT seq_employe.NEXTVAL PRIMARY KEY,
  FK_employe_company INT REFERENCES Company(id_company),
  employe_first_name VARCHAR2(50),
  employe_last_name VARCHAR2(50),
  employe_email VARCHAR2(50),
  employe_phone VARCHAR2(20)
);

CREATE SEQUENCE seq_difficulty START WITH 1;
CREATE SEQUENCE seq_difficulty_type START WITH 1;

CREATE TABLE Difficulty (
  id_difficulty INT DEFAULT seq_difficulty.NEXTVAL PRIMARY KEY,
  difficulty_title VARCHAR2(50) NOT NULL,
  difficulty_description CLOB
);

CREATE TABLE Difficulty_Type (
  id_difficulty_type INT DEFAULT seq_difficulty_type.NEXTVAL PRIMARY KEY,
  difficulty_type_title VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE seq_methodology START WITH 1;

CREATE TABLE Methodology (
  id_methodology INT DEFAULT seq_methodology.NEXTVAL PRIMARY KEY,
  methodology_name VARCHAR2(50) NOT NULL,
  methodology_description CLOB
);

CREATE SEQUENCE seq_test_type START WITH 1;

CREATE TABLE Test_Type (
  id_test_type INT DEFAULT seq_test_type.NEXTVAL PRIMARY KEY,
  test_type_name VARCHAR2(50) NOT NULL,
  test_type_description CLOB
);

CREATE SEQUENCE seq_tool START WITH 1;

CREATE TABLE Tool (
  id_tool INT DEFAULT seq_tool.NEXTVAL PRIMARY KEY,
  tool_name VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE seq_test_result START WITH 1;

CREATE TABLE Test_Result (
  id_test_result INT DEFAULT seq_test_result.NEXTVAL PRIMARY KEY,
  log BLOB NOT NULL,
  test_state VARCHAR2(50)
);

CREATE TABLE Mission (
  mission_start TIMESTAMP,
  mission_end TIMESTAMP,
  FK_location INT REFERENCES Location(id_location),
  FK_company INT REFERENCES Company(id_company),
  FK_contact INT REFERENCES Employe(id_employe),
  FK_report INT REFERENCES Report(id_report),
  FK_meeting INT REFERENCES Meeting(id_meeting),
  PRIMARY KEY (mission_start, mission_end, FK_location, FK_company, FK_contact, FK_report, FK_meeting)
);

CREATE TABLE Test (
  test_start TIMESTAMP,
  test_end TIMESTAMP,
  FK_report INT REFERENCES Report(id_report),
  FK_tool INT REFERENCES Tool(id_tool),
  FK_test_type INT REFERENCES Test_Type(id_test_type),
  FK_methodology INT REFERENCES Methodology(id_methodology),
  FK_test_result INT REFERENCES Test_Result(id_test_result),
  FK_employe INT REFERENCES Employe(id_employe),
  FK_recomendation INT REFERENCES Recomendation(id_recomendation),
  FK_difficulty INT REFERENCES Difficulty(id_difficulty),
  FK_difficulty_type INT REFERENCES Difficulty_Type(id_difficulty_type),
  PRIMARY KEY (test_start, test_end, FK_report, FK_tool, FK_test_type, FK_methodology, FK_test_result, FK_employe, FK_recomendation, FK_difficulty, FK_difficulty_type)
);
