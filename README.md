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

<p>The data model presented is designed to support the storage of academic data related to courses, students, faculty, and assessments within a university setting.</p>

<h3>1. Student:</h3>
<p>Stores basic information about each student, such as their ID, name, email, enrollment date, and major. Each student can enroll in multiple courses, creating a many-to-many relationship with the Course entity, managed through the Enrollment entity.</p>

<h3>2. Course:</h3>
<p>Represents individual courses with details like course ID, name, description, credits, and type. Each course is linked to a courseType, which categorizes the course (e.g., lecture, lab). Courses can have multiple Class Sessions, each taught by a professor and attended by students.</p>

<h3>3. CourseType:</h3>
<p>Provides a way to categorize courses by type (e.g., lecture, seminar, lab) and includes a description. Each Course is assigned a single course type.</p>

<h3>4. Enrollment:</h3>
<p>Functions as a link between Student and Course, representing each student's enrollment in specific courses. Contains additional details about the enrollment, such as enrollment date and status. Through this entity, students are associated with Assignments, Exams, and Quizzes, which are further connected to specific courses.</p>

<h3>5. Class Session:</h3>
<p>Represents individual class sessions, capturing details like the date, topic, and attendance status. Each session is tied to a specific Course and a unique Professor.</p>

<h3>6. Professor:</h3>
<p>Holds information about professors, including their ID, name, email, and their faculty affiliation. Professors can teach multiple courses and are linked to the Faculty entity to indicate their department or college.</p>

<h3>7. Teaching Assistant (TA):</h3>
<p>Stores details about TAs and connects them with both a Course and a supervising Professor. TAs are assigned to specific courses to assist with course-related activities.</p>

<h3>8. Faculty:</h3>
<p>Represents faculty departments, such as "Science" or "Humanities," with which Professors are affiliated. Helps categorize professors and organize them under specific academic divisions.</p>

<h3>9. Course Materials:</h3>
<p>Includes information about materials used for each course, like textbooks, slides, or other resources. Links directly to specific courses and includes material type and title.</p>

<h3>10. Assignment, Exam, and Quiz:</h3>
<p>Store details about assessments, including titles, points possible, and dates. Linked to the Enrollment entity, allowing each assessment to be associated with a particular student’s course enrollment.</p>

<h2>Supported Data:</h2>
<p>Student data, including academic details and course enrollments. Also mentioned are course-related information, including course types, sessions, and materials necessary for each class. Faculty and staff details, including their affiliations and roles within courses and departments. Assessment data, like assignments, exams, and quizzes, tied to specific students and courses.</p>

<h2>Unsupported Data:</h2>
<p>The model does not store non-academic personal information, such as student financial details or personal identifiers beyond basic contact info. Administrative data related to course scheduling, room assignments, or faculty payroll is not included. Non-course-related student activities, such as extracurricular involvement, internships, or personal counseling records, are not supported.</p>

