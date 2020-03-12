-- DUMMY DATA
-- THIS QUERY MUST BE EXECUTED AFTER RUNNING THE SET-UP
-- USE THIS QUERY IF ONLY YOU NEED SIMPLE DATA TO SEE HOW THE PAGE WORKS

INSERT INTO lecture.user (id, user_id, user_pw, user_name) VALUES ('1', 'admin', '0000', 'admin');

INSERT INTO lecture.lecture (id, title, description, link, date, time, instructor_id) VALUES (
    '1', 'What is Spring Boot?'. 'Introduction to Spring Boot
 - What is Spring Boot and why it is so important.
 - Java EE
 - POJO
 - Spring features : POJO, Dependency Injection, MVC, REST, Security, Batch, Data, AOP,..
 - Spring integrates with Hibernate, Struts
 - JAR files
 - Configuration
 - Spring Boot
 - What does Spring Boot does and why it came
 - Server
 - Web server
 - Embedded Server
 - Spring boot starter web
 - Spring boot starter jdbc
 - Spring does not provide xml file
 - Application Property', 'https://www.youtube.com/watch?v=Ch163VfHtvA', '2020-03-31', '12:00:00', '1'
 );

 INSERT INTO lecture.lecture (id, title, description, link, date, time, instructor_id) VALUES (
     '2', 'ReactJS Tutorial', 'React is an open source javascript library for building user interfaces.
 React is a project created and maintained by Facebook.
 React has more than a 100 thousand stars on GitHub and a huge community behind it.
 React has become increasingly 
 popular among developers and is also one of the most sought out skill-sets by companies right now.
 
 React has a component based architecture. This lets you break down your application into small encapsulated parts which can then be composed to make more complex UI.
 React is declarative.
 React will make it painless for you to create complex UIs by abstracting away the difficult parts. 
 React will handle efficiently updating and rendering just the right components in your application when your data changes. 
 DOM updates which is one of the more expensive operations is handled gracefully in React.', 'https://www.youtube.com/watch?v=QFaFIcGhPoM&list=PLC3y8-rFHvwgg3vaYJgHGnModB54rxOk3',
 '2020-04-09', '12:00:00', '1'
 );

 INSERT INTO lecture.lecture (id, title, description, link, date, time, instructor_id) VALUES (
     '3', 'What is Kubernetes', 'You have a working knowledge of Docker and you are looking to take your container game to the next level. Time to take a look at Kubernetes. In this video, you will learn about what Kubernetes is and some of the main benefits that you can get from using it. We will talk about how Kubernetes makes deploying, scaling, and maintaining Docker containers (or rather just containers in general) easier in the wild and at scale.',
     'https://www.youtube.com/watch?v=R-3dfURb2hA', '2020-04-24', '12:00:00', '1'
 );