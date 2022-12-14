
-- teacher
INSERT INTO `e_duo`.`user` (`user_id`, `password`, `name`, `phone`, `role`) VALUES('tlaxh000@naver.com','$2a$10$xvHtaAMzwF4KsprcZyqe8.Yx8w/MGW.voLniD4TgD9MRhGWqR9Fti','강사','01011122221','ROLE_TEACHER');
INSERT INTO `e_duo`.`teacher` (`user_id`, `subject`, `image_src`) VALUES('tlaxh000@naver.com', 'MATH', null);
INSERT INTO `e_duo`.`user` (`user_id`, `password`, `name`, `phone`, `role`) VALUES('teacher@eduo.com','$2a$10$Ua80PseIEvVjxUuXI/WIbugYr6ph7krxlQX6HxHSJi3R4PzwMnz5.','테스트선생','01044442221','ROLE_TEACHER');
INSERT INTO `e_duo`.`teacher` (`user_id`, `subject`, `image_src`) VALUES('teacher@eduo.com', 'ENG', './image/1365431sa0pas.jpg');

-- student					
INSERT INTO `e_duo`.`user` (`user_id`, `password`, `name`, `phone`, `role`) VALUES('one@naver.com','$2a$10$dm9QATDmRbDGx2/NSkcCfOltm6lUBNqxHkGTpjq9nFqccU9t5Emh.','원','01011111111','ROLE_STUDENT');
INSERT INTO `e_duo`.`student` (`user_id`, `birth_date`, `school_name`, `grade`, `parent`, `parent_phone`) VALUES('one@naver.com', '2003-07-25 00:00:00','사피고등학교', 1, '부', '01099998888');
INSERT INTO `e_duo`.`user` (`user_id`, `password`, `name`, `phone`, `role`) VALUES('three@naver.com','$2a$10$Re8Sncei82O1mJ9ux2R5FO4MdB83lBTm1xdSjbIyTHo8zhwVXtG4G','쓰리','01033333333','ROLE_STUDENT');
INSERT INTO `e_duo`.`student` (`user_id`, `birth_date`, `school_name`, `grade`, `parent`, `parent_phone`) VALUES('three@naver.com', '2003-11-25', '강남고등학교', 3, '모', '01065465465');
INSERT INTO `e_duo`.`user` (`user_id`, `password`, `name`, `phone`, `role`) VALUES('two@naver.com','$2a$10$11ND1w3/ddabA.Rq1tjqZ.akp3RdOZj/s1zPGhe7NspxQnOjm3Qf2','투','01022222222','ROLE_STUDENT');
INSERT INTO `e_duo`.`student` (`user_id`, `birth_date`, `school_name`, `grade`, `parent`, `parent_phone`) VALUES('two@naver.com', '2003-07-25 00:00:00','사피고등학교', 1, '부', '01099998888');

-- assistant


-- course
INSERT INTO `e_duo`.`course` (`course_id`, `user_id`, `course_name`, `academy_name`, `academy_address`, `start_date`, `end_date`, `description`) VALUES ('Mdk1-tla-5as1', 'tlaxh000@naver.com', 'Spring Boot', 'SSAFY', '역삼동', '2022-07-06', '2023-06-25', '싸피에서 진행하는 Spring Boot Class');
INSERT INTO `e_duo`.`course` (`course_id`, `user_id`, `course_name`, `academy_name`, `academy_address`, `start_date`, `end_date`, `description`) VALUES ('EOs5-teac-s86z', 'tlaxh000@naver.com', 'Vue 2.0', 'Multicampus', '대치동', '2022-11-01', '2023-08-15', '영차님이 진행하는 Vue 수업');
INSERT INTO `e_duo`.`course` (`course_id`, `user_id`, `course_name`, `academy_name`, `academy_address`, `start_date`, `end_date`, `description`) VALUES ('KsZ1-teac-9Zw1', 'teacher@eduo.com', 'Network', 'NICE', '강남동', '2022-09-25', '2023-01-15', '호준이형이 가르치는 네트워크');
INSERT INTO `e_duo`.`course` (`course_id`, `user_id`, `course_name`, `academy_name`, `academy_address`, `start_date`, `end_date`, `description`) VALUES ('MOZM-newt-9xAz', 'teacher@eduo.com', 'DB', 'NICE', '강남동', '2022-09-25', '2023-01-15', '정민이가 때려박아주는 DB');

-- schedule
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('Mdk1-tla-5as1', '1', '09:00', '18:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('Mdk1-tla-5as1', '3', '10:00', '22:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('Mdk1-tla-5as1', '5', '15:00', '21:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('EOs5-teac-s86z', '2', '12:00', '14:30');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('EOs5-teac-s86z', '4', '18:00', '22:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('KsZ1-teac-9Zw1', '1', '20:00', '23:30');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('KsZ1-teac-9Zw1', '4', '19:00', '22:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('MOZM-newt-9xAz', '1', '09:00', '18:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('MOZM-newt-9xAz', '2', '09:00', '18:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('MOZM-newt-9xAz', '4', '09:00', '18:00');
INSERT INTO `e_duo`.`schedule` (`course_id`, `day`, `start_time`, `end_time`) VALUES ('MOZM-newt-9xAz', '5', '09:00', '18:00');


-- lecture
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '1주차 1차 : Spring Boot', '2022-11-01 00:00:00', '09:00', '18:00', '개요');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '1주차 2차 : Spring Boot', '2022-11-03 00:00:00', '10:00', '22:00', '스캠');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '1주차 3차 : Spring Boot', '2022-11-05 00:00:00', '15:00', '21:00', '1주차');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '2주차 1차 : Spring Boot', '2022-11-08 00:00:00', '09:00', '18:00', '몰라');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '2주차 2차 : Spring Boot', '2022-11-10 00:00:00', '10:00', '22:00', '뭔데');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('Mdk1-tla-5as1', '2주차 3차 : Spring Boot', '2022-11-12 00:00:00', '15:00', '21:00', '');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('EOs5-teac-s86z', '1주차 1차 : Vue 2.0', '2022-07-06 00:00:00', '12:00', '14:30', '개요');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('EOs5-teac-s86z', '1주차 2차 : Vue 2.0', '2022-07-08 00:00:00', '18:00', '22:00', '흐어');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('EOs5-teac-s86z', '16주차 1차 : Vue 2.0', '2022-11-04 00:00:00', '12:00', '14:30', '뷰');
INSERT INTO `e_duo`.`lecture` (`course_id`, `lecture_name`, `lecture_date`, `start_time`, `end_time`, `description`) VALUES ('EOs5-teac-s86z', '16주차 2차 : Vue 2.0', '2022-11-06 00:00:00', '18:00', '22:00', '알고싶어?');


-- management
INSERT INTO `e_duo`.`management`(`course_id`, `user_id`) VALUES ('EOs5-teac-s86z', 'chaa@eduo.com');
INSERT INTO `e_duo`.`management`(`course_id`, `user_id`) VALUES ('Mdk1-tla-5as1', 'chaa@eduo.com');
INSERT INTO `e_duo`.`management`(`course_id`, `user_id`) VALUES ('Mdk1-tla-5as1', 'man@eduo.com');

-- sugang
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('one@naver.com', 'KsZ1-teac-9Zw1', '2022-09-25', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('one@naver.com', 'EOs5-teac-s86z', '2022-11-15', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('three@naver.com', 'MOZM-newt-9xAz', '2022-09-25', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('three@naver.com', 'EOs5-teac-s86z', '2022-11-05', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('two@naver.com', 'EOs5-teac-s86z', '2022-12-15', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('two@naver.com', 'Mdk1-tla-5as1', '2022-08-15', 'ACCEPTED');
INSERT INTO `e_duo`.`sugang` (`user_id`, `course_id`, `start_date`, `state`) VALUES ('two@naver.com', 'KsZ1-teac-9Zw1', '2022-09-25', 'ACCEPTED');
