use TFMS;
insert into trainer values
('T001','Bharat','Java','MS','10'),
('T002','Satish','dotnet','M.Tech','6'),
('T003','Sabitha','mainframe','MBA','9'),
('T004','Vaishnavi','testing','B.Tech','5');

insert into trainee values
('A001','Nikhitha','Java','B.tech',1),
('A002','Vinith','testing','BE',2),
('A003','Leela','dotnet','MBA',2),
('A004','Saneeth','mainframe','M.Tech',1);

insert into batch values
('Core Java','4600','2022-12-12','2023-03-12','T001','A002'),
('MAven','3400','2022-12-12','2023-03-12','T003','A004'),
('Angular','2200','2022-12-12','2023-03-12','T002','A001'),
('Sprint','2500','2022-12-12','2023-03-12','T004','A003');

insert into question_management values
('Q001','Instructor','How does instructor communicate with the class'),
('Q002','Course Material','Have instructor provided proper course study material'),
('Q003','Learning Effectiveness','Are your all doubts being addressed and solved by the instructor'),
('Q004','Environment','How is the environment of the class'),
('Q005','Job Impact','How did the course help you in your job or project');

insert into capture_feedback values 
('T001','A003','Core Java','Q001','Instructor','How does instructor communicate with the class',4),
('T001','A003','Core Java','Q002','Course Material','Have instructor provided proper course study material',3),
('T001','A003','Core Java','Q003','Learning Effectiveness','Are your all doubts being addressed and solved by the instructor',4),
('T001','A003','Core Java','Q004','Environment','How is the environment of the class',5),
('T001','A003','Core Java','Q005','Job Impact','How did the course help you in your job or project',3);






















