create database TFMS;
use TFMS;
Drop table if exists trainer;
create table trainer(
trainer_id varchar(10) PRIMARY KEY,
trainer_name varchar(255),
trainer_track enum('Java','dotnet','mainframe','testing'),
trainer_qual varchar(255),
trainer_exp varchar(3)
);

Drop table if exists trainee;
create table trainee(
trainee_id varchar(10) PRIMARY KEY,
trainee_name varchar(255),
trainee_track enum('Java','dotnet','mainframe','testing'),
trainee_qual varchar(255),
trainee_exp varchar(3)
);

Drop table if exists batch;
create table batch(
topic_name varchar(255),
batch_duration integer, 
start_date date,
end_date date,
trainer_id varchar(10),
FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
trainee_id varchar(10),
FOREIGN KEY (trainee_id) REFERENCES trainee(trainee_id)
);


Drop table if exists question_management;
create table question_management(
question_id varchar(10) primary key,
question_section enum('Instructor','Course Material','Learning Effectiveness','Environment','Job Impact'),
question_text varchar(300)
);


Drop table if exists capture_feedback;
create table capture_feedback(
trainer_id varchar(10),
FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
trainee_id varchar(10),
FOREIGN KEY (trainee_id) REFERENCES trainee(trainee_id),
topic_name varchar(255),
question_id varchar(10),
foreign key (question_id) references question_management(question_id),
question_section enum('Instructor','Course Material','Learning Effectiveness','Environment','Job Impact'),
question_text varchar(255),
rating int
);