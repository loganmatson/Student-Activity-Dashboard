"# Student-Activity-Dashboard" 
<h1>Team 5 Mist 4610 Group Project 1</h1>

<h2>Team Name:</h2>
<p>4610Fa24Group5</p>

<h2>Team Members:</h2>
<ul>
  <li>Maadhavan Muthuselvan @maadhavan23</li>
  <li>Kendall Babbs @kendallbabbs</li>
  <li>Loski Jin@LoskiJin</li>
  <li>Saisha Badgujar@saishabadgujar</li>
  <li>Logan Maston</li>
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
![assignemnt1](https://github.com/user-attachments/assets/f4cd4e40-21ef-48c6-a6f6-7de02e19663f)


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








