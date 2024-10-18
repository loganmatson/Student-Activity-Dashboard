"# Student-Activity-Dashboard" 
<h1>Team 5 Mist 4610 Group Project 1</h1>

<h2>Team Name:</h2>
<p>4610Fa24Group5</p>

<h2>Team Members:</h2>
<ul>
  <li><a href="https://github.com/maadhavan23">Maadhavan Muthuselvan</a></li>
  <li><a href="https://github.com/kendallbabbs">Kendall Babbs</a></li>
  <li><a href="https://github.com/LoskiJin">Loski Jin</a></li>
  <li><a href="https://github.com/saishabadgujar">Saisha Badgujar</a></li>
  <li><a href="https://github.com/loganmatson">Logan Maston</a></li>
</ul>

<h2>Scenario Description:</h2>
<p>The scenario we chose to model was the organization of a University database, which includes a variety of information ranging from student enrollment to even a specific assignment in a particular course. Our central entity in the model is the Enrollment entity - Enrollment being each combination of students in a course. The Enrollment is operated in conjunction with the Student and Course Entities (Both Students and Courses as the Primary Keys to facilitate re-enrollment), along with faculty (which may change depending on the enrollment period). We are creating this model in hopes to reliably pinpoint Students' data in relation to their courses, assignments, and grades, as well as data to organize the faculty, their locations and how to contact them if problems arise. Last but not least, we are building this data model in hopes to gain perspicaciousness on the Education System, and give administrators a way to improve it.</p>


<h2>Data Model</h2>

![hbjpg](https://github.com/user-attachments/assets/4b30a78a-b0ec-4cf8-a86c-a22375b9e21c)





<p>The data model presented is designed to support the storage of academic data related to courses, students, faculty, and assessments within a university setting.</p>

<h3>1. Student:</h3>
<p>Stores basic information about each student, such as their ID, name, email, enrollment date, and major. Each student can enroll in multiple courses, creating a many-to-many relationship with the Course entity, managed through the Enrollment associative entity.</p>

<h3>2. Course:</h3>
<p>Represents individual courses with details like course ID, name, description, credits, and type. Each course has a courseType, which categorizes the course (e.g., lecture, lab). Courses can have multiple Class Sessions, each taught by a professor and attended by students. Each Course can also have multiple TA's.</p>

<h3>3. CourseType:</h3>
<p>Provides a way to categorize courses by type/medium (e.g., lecture, seminar, lab) and includes a description. Each Course is assigned a single course type.</p>

<h3>4. Course Materials:</h3>
<p>An entity used to associate certain materials with certain courses, managed through an unique material ID, and an identifying relationship from Course, carrying with it are Foreign Keys, courseID and courseTypeID. The reasoning behind this composite key set is due to different mediums of a course may require different materials, and different courses through a similar medium may require the same material, and a course with a given medium may require different materials.</p>


<h3>5. Enrollment:</h3>
<p>Functions as a associative entity between the Student and Course many-to-many relationship, representing each student's enrollment in specific courses. Contains additional details about the enrollment, such as enrollment date and status. Through this entity, students are associated with Assignments, Exams, and Quizzes, which are further connected to specific courses. With a unique ID for each enrollment, this entity supports withdrawls and re-enrollment.</p>

<h3>6. Class Session:</h3>
<p>Represents individual class sessions, capturing details like the date, topic, and attendance status. Each session is tied to a unique Course and a unique Professor.</p>

<h3>6. Professor:</h3>
<p>Holds information about professors, including their ID, name, email, and their faculty affiliation. Professors can teach multiple courses and are linked to the Faculty entity to indicate their department or college.</p>

<h3>7. Teaching Assistant (TA):</h3>
<p>Stores details about TAs and connects them with both a Course and a supervising Professor. TAs are assigned to specific courses to assist with course-related activities.</p>

<h3>8. Faculty:</h3>
<p>Represents faculty departments, such as "Science" or "Humanities," with which Professors are affiliated. Helps categorize professors and organize them under specific academic divisions. Also can help seperate their administrative duties versus their teaching ones</p>

<h3>9. Assignment, Exam, and Quiz:</h3>
<p>Store details about assessments, including titles, points possible, and dates. Linked to the Enrollment entity, allowing each assessment to be associated with a particular student’s course enrollment.</p>

<h2>Supported Data:</h2>

<p>Student data, including academic details and course enrollments. Also mentioned are course-related information, including course types, sessions, and materials necessary for each class. Faculty and staff details, including their affiliations and roles within courses and departments. Assessment data, like assignments, exams, and quizzes, tied to specific students and courses.</p>

<h2>Unsupported Data:</h2>
<p>The model does not store non-academic personal information, such as student financial details or personal identifiers beyond basic contact info. Administrative data related to course scheduling, room assignments, or faculty payroll is not included. Non-course-related student activities, such as extracurricular involvement, internships, or personal counseling records, are not supported.</p>

<h2> Data Dictionary</h2>


![class session](https://github.com/user-attachments/assets/0ab1ba3d-592b-4a4c-a88c-98896960046c)


![Course](https://github.com/user-attachments/assets/22bd3ed7-7ca9-4380-896d-0f5c08a518da)


![courseMaterials](https://github.com/user-attachments/assets/da2d5085-d4f8-4973-90fe-2ea554598760)

![courseType](https://github.com/user-attachments/assets/d4d4ba01-cd9f-4205-b07a-dde584f553f0)




![Enrollment](https://github.com/user-attachments/assets/fa03bb76-318b-4311-84cb-2c8520ac3bf2)

![exam](https://github.com/user-attachments/assets/9b0076be-1cbc-4edb-9c6b-d9d424ad9cd1)
![faculty](https://github.com/user-attachments/assets/e8364d4d-a1c3-4bc6-87d7-eded23cbf316)
![prof](https://github.com/user-attachments/assets/4c80eac7-63df-4e42-9fbf-477339fa9420)


![quiz1](https://github.com/user-attachments/assets/107cc6fb-9805-4dbc-bdbc-044701609f41)
![quiz2](https://github.com/user-attachments/assets/c8ae3b79-2c67-4028-a9c5-74a5bf20ab18)
![Student](https://github.com/user-attachments/assets/92832cff-188a-486f-aa63-9127091ce155)

![ta1](https://github.com/user-attachments/assets/e37f2f00-10af-40ea-baed-1379d8f9287b)


<h1>10 Queries:</h1>
<p>

<img width="683" alt="Screenshot 2024-10-17 at 2 32 48 PM" src="https://github.com/user-attachments/assets/9e10a421-1b20-4eb3-8296-fde2531e9a69">

**Q1**
**What the query does: **
This query calculates each student’s weighted exam grade by summing the points they received and dividing it by the total possible points for all their exams. It lists students with an average exam grade below 70%, ordered by their grade in descending order.
**Why is this relevant?**
Provides information regarding what portion of our student population is struggling in class, specifically on exams, and which students would benefit with extra faculty support or intervention.
***Which students have an average exam grade under 70%?***
```ruby
SELECT Student.studentID, Student.firstName, Student.lastName,
(SUM(Exam.pointsReceived) / SUM(Exam.pointsPossible)) * 100 AS weighted_exam_grade
FROM Student
JOIN Enrollment ON Student.studentID = Enrollment.Student_studentID
JOIN Exam ON Enrollment.EnrollmentID = Exam.Enrollment_EnrollmentID
GROUP BY Student.studentID, Student.firstName, Student.lastName
HAVING weighted_exam_grade < 70
ORDER BY weighted_exam_grade DESC;
```

**Results:**
<img width="311" alt="Screenshot 2024-10-17 at 1 56 55 PM" src="https://github.com/user-attachments/assets/c3b01aa3-437d-4737-bf6a-03d2d08f9389">


**Q2**
**What the query does:**
This query retrieves a list of students, along with the courses they are enrolled in and the professor teaching the course. The results are sorted by student name.
**Why is this relevant?**
This query allows universities to monitor which professors are teaching specific courses and which students are enrolled in them. By analyzing this information, universities can better understand faculty workloads, student distribution across courses, and potentially identify correlations between student performance and the professors teaching the courses. This can support data-driven decisions regarding course offerings and faculty assignments.
***Which students are enrolled in what courses, and which professors are teaching said courses?***
```ruby
SELECT DISTINCT CONCAT(Student.firstName,' ', Student.lastName) AS studentName, Course.courseName, Professor.profFirstName, Professor.profLastName
FROM Enrollment
JOIN Student ON Enrollment.Student_studentID = Student.studentID
JOIN Course ON Enrollment.Course_courseID = Course.courseID
JOIN ClassSession ON Course.courseID = ClassSession.Course_courseID
JOIN Professor ON ClassSession.Professor_professorID = Professor.professorID
ORDER BY CONCAT(Student.firstName,' ',Student.lastName);
```

**Results:**
<img width="480" alt="Screenshot 2024-10-17 at 1 57 07 PM" src="https://github.com/user-attachments/assets/30b03a42-d83d-4b05-80d1-d740917a7913">


**Q3**
**What the query does:**
This query shows the total number of exams taken and the total points earned by each student, grouped by course. It lists the students with the highest total points earned across all exams in each course.
**Why is this relevant?**
This query is significant because it provides a detailed view of student performance by tracking how many exams each student has taken in a specific course and the total points they have earned. By analyzing this data, universities can identify high-performing students, evaluate exam participation, and detect potential issues where students may be struggling. This information can be used to improve teaching strategies, adjust course content, or offer additional academic support, ultimately enhancing student success and academic outcomes.
***How many exams have students taken in specific courses and what is the total number of points they have earned on those exams?***
```ruby
SELECT DISTINCT CONCAT(Student.firstName,' ', Student.lastName) AS studentName, Course.courseName, 
       COUNT(Exam.examID) AS total_exams_taken, 
       SUM(Exam.pointsReceived) AS total_points_earned
FROM Enrollment
JOIN Student ON Enrollment.Student_studentID = Student.studentID
JOIN Course ON Enrollment.Course_courseID = Course.courseID
JOIN Exam ON Enrollment.Student_studentID = Exam.Enrollment_Student_studentID 
           AND Enrollment.Course_courseID = Exam.Enrollment_Course_courseID
GROUP BY Student.studentID, Course.courseID
ORDER BY total_points_earned DESC;
```
**Results:**
<img width="530" alt="Screenshot 2024-10-17 at 1 57 19 PM" src="https://github.com/user-attachments/assets/d914903d-f6a8-4b94-b147-9e2e852391be">


**Q4**
**What the query does:**
This query provides a summary of the number of students enrolled in each course, the average exam score for the course, and the professor teaching the course. It ranks courses based on the average exam score.
**Why is this relevant?**
This query is significant because it gives a comprehensive view of how well students are performing in different courses and which professors are teaching them. By analyzing the average exam scores alongside student enrollment numbers, universities can identify high-achieving courses, evaluate the effectiveness of teaching methods, and make data-driven decisions on resource allocation. This helps improve the quality of education, ensuring that courses with lower average scores receive the necessary attention to enhance student learning outcomes.
***What is the average exam score for each course, and what is the total number of students enrolled in that course, as well as the professor teaching the course?***
```ruby
SELECT Course.courseName, 
       Professor.profFirstName, 
       Professor.profLastName, 
       COUNT(DISTINCT Enrollment.Student_studentID) AS total_students, 
       (ROUND(AVG(Exam.pointsReceived) / (SELECT AVG(Exam.pointsPossible) FROM Exam) * 100,2)) AS average_exam_score
FROM Enrollment
JOIN Course ON Enrollment.Course_courseID = Course.courseID
JOIN ClassSession ON Course.courseID = ClassSession.Course_courseID
JOIN Professor ON ClassSession.Professor_professorID = Professor.professorID
JOIN Exam ON Enrollment.Student_studentID = Exam.Enrollment_Student_studentID 
           AND Enrollment.Course_courseID = Exam.Enrollment_Course_courseID
GROUP BY Course.courseName, Professor.profFirstName, Professor.profLastName
ORDER BY average_exam_score DESC;
```

**Results:**
 <img width="562" alt="Screenshot 2024-10-17 at 1 57 33 PM" src="https://github.com/user-attachments/assets/4e1cfe29-d8ef-487d-b030-03ba5db98143">


**Q5**
**What the query does:**
This query returns the number of students who scored above 80 points on exams in each course, along with the professor teaching the course. It ranks courses by the number of high-performing students.
**Why is this relevant?**
This query is significant because it helps identify courses where students are performing exceptionally well on exams. By understanding which courses have the most students scoring above a certain threshold, universities can recognize successful teaching practices and course content that lead to better student outcomes. Additionally, this information can help identify which professors may be particularly effective in fostering student success, providing a basis for recognizing and rewarding impactful teaching methods.
***Which courses have students that have scored above 80 points on their exams, and which professors are teaching said courses?***
```ruby
SELECT Course.courseName, 
       Professor.profFirstName, 
       Professor.profLastName, 
       COUNT(DISTINCT Enrollment.Student_studentID) AS students_above_80
FROM Enrollment
JOIN Course ON Enrollment.Course_courseID = Course.courseID
JOIN ClassSession ON Course.courseID = ClassSession.Course_courseID
JOIN Professor ON ClassSession.Professor_professorID = Professor.professorID
JOIN Exam ON Enrollment.Student_studentID = Exam.Enrollment_Student_studentID 
           AND Enrollment.Course_courseID = Exam.Enrollment_Course_courseID
WHERE Exam.pointsReceived > 80
GROUP BY Course.courseName, Professor.profFirstName, Professor.profLastName
ORDER BY students_above_80 DESC;
```

**Results:**
<img width="471" alt="Screenshot 2024-10-17 at 1 57 42 PM" src="https://github.com/user-attachments/assets/f6bcbae6-f285-40c1-8520-2d510c2b170d">


**Q6**
**What the query does:**
This query calculates how many courses each professor has taught, as well as the average number of students per course. It ranks professors based on the total number of courses taught.
**Why is this relevant?**
This query is significant because it gives universities a clear view of the distribution of teaching responsibilities among professors and the student-to-course ratio in each professor’s classes. It helps to identify which professors have the heaviest teaching loads and which ones manage the largest classes. This information is useful for making equitable teaching assignments, improving faculty workload management, and ensuring students have an optimal learning environment.
***How many courses is each professor teaching, and what is the average number of students enrolled in those courses?***
```ruby
SELECT Professor.profFirstName, 
       Professor.profLastName, 
       COUNT(DISTINCT Course.courseID) AS total_courses_taught, 
       AVG(COUNT(Enrollment.Student_studentID)) OVER (PARTITION BY Professor.professorID) AS average_students_per_course
FROM ClassSession
JOIN Professor ON ClassSession.Professor_professorID = Professor.professorID
JOIN Course ON ClassSession.Course_courseID = Course.courseID
JOIN Enrollment ON Course.courseID = Enrollment.Course_courseID
GROUP BY Professor.professorID, Professor.profFirstName, Professor.profLastName
ORDER BY total_courses_taught DESC;
```

**Results:**
<img width="502" alt="Screenshot 2024-10-17 at 1 57 52 PM" src="https://github.com/user-attachments/assets/e666415d-2501-4471-967a-edb29401001f">


**Q7**
**What the query does:**
This query lists all courses that use textbooks as their course material.
**Why is this relevant?**
Universities must manage their inventory and need to ensure that the required textbooks are available on campus or through online resources. This also allows universities to potentially look at cheaper alternatives for students, such as digital versions to reduce costs. 
***Which courses have a textbook as one of their course materials?***
```ruby
SELECT materialType, Course.courseID, Course.courseName
FROM CourseMaterials
JOIN Course ON CourseMaterials.Course_courseID = Course.courseID
WHERE materialType = 'Textbook';
```

**Results:**
<img width="273" alt="Screenshot 2024-10-17 at 1 58 02 PM" src="https://github.com/user-attachments/assets/18536e20-582f-4510-861c-7f74e388f1f3">


**Q8**
**What the query does:**
This query retrieves all assignments that are due between October 18, 2024, and November 20, 2024.
**Why is this relevant?**
By tracking assignment deadlines, specifically ones in the heat of midterms and before Thanksgiving Break, the university can identify when students might need additional support and offer resources to help reduce student stress.
***Which assignments are due in between October 18th and November 20th?**
```ruby
SELECT assignmentID, assignmentTitle
FROM Assignment
WHERE dueDate BETWEEN '2024-10-18' AND '2024-11-20';
```

**Results:**
<img width="203" alt="Screenshot 2024-10-17 at 1 58 11 PM" src="https://github.com/user-attachments/assets/652e0cb6-3c46-4094-96ed-9a9d52b2735e">


**Q9**
**What the query does:**
This query calculates the total credit hours students have accumulated, grouped by major, and orders the majors by the total credit hours earned.
**Why is this relevant?**
This query helps universities manage course offerings and resources, while also ensuring students are meeting the minimum number of hours for scholarships, financial aid, and even graduation.
***What is the total number of credit hours taken by students of different majors?***
```ruby
SELECT Student.major, SUM(Course.courseCredits) AS total_credit_hours
FROM Enrollment
JOIN Student ON Enrollment.Student_studentID = Student.studentID
JOIN Course ON Enrollment.Course_courseID = Course.courseID
GROUP BY Student.major
ORDER BY total_credit_hours DESC;
```

**Results:** 
<img width="258" alt="Screenshot 2024-10-17 at 1 58 20 PM" src="https://github.com/user-attachments/assets/14276965-ae11-47ea-9335-0ab6bbd6dcff">


**Q10**
**What the query does:**
This query retrieves a list of teaching assistants (TAs), their associated professors, and their contact information (email addresses).
**Why is this relevant?**
This query helps universities manage communication, responsibilities, and expectations of both professors and teaching assistants. Having a list of TAs and professors can facilitate a balanced workload for courses and ensure smooth communication between the University and its instructors. 
***Which TA’s are associated with each professor? Include their contact information.***
```ruby
SELECT CONCAT(TeachingAssistant.taFirstName,' ', TeachingAssistant.taLastName) AS taName, CONCAT(
Professor.profFirstName,' ', Professor.profLastname) AS professorName, 
TeachingAssistant.taEmail, Professor.profEmail
FROM TeachingAssistant
JOIN Professor ON TeachingAssistant.Professor_professorID = Professor.professorID;
```

**Results:**
<img width="449" alt="Screenshot 2024-10-17 at 1 58 31 PM" src="https://github.com/user-attachments/assets/7c069173-5c54-4b1c-ac8c-0956b5b9502b">
  
  .</p>

<h2>Database Information</h2>

<p>
**Name of the Database:** ns_4610Fa2024Group5
  .</p>

<h2>Slide Deck</h2>
<p>https://docs.google.com/presentation/d/1OWlBuYYSYPyEmiUCNr9bvBfdD6okKhJojko2jZ9CBJM/edit?usp=sharing<ahref>https://docs.google.com/presentation/d/1OWlBuYYSYPyEmiUCNr9bvBfdD6okKhJojko2jZ9CBJM/edit?usp=sharing</ahref></p>






