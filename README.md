## pCourses
============================================

## Team Members

  * Peijie Li <li_paige@berkeley.edu>
  * Justin Bu <justinbu2@berkeley.edu>
  * Philip Yang <yangp18@berkeley.edu>

## Demo Link: pcourses.herokuapp.com
## Screencast Link: https://youtu.be/57P9l_G5l54

## Idea
  * An application where Users can create lessons and post notes (as a Teacher) and get accepted into classes and view notes (as a Student).

#### Models and Descriptions

  1. User Model
    * uid: integer var, User ID.
    * name: string var, username, specified when an account is created. 
    * email: string var, user email, specified when an account is created. Required for login and/or modification of username and other user information.
    * password: string var, used for signup and login, verification of authentication.
    * has_many: Student
    * has_many: Teacher

  2. Teacher Model
    * Sub-model of User 
    * tid: integer var, Teacher_id.
    * has_many: Lesson
    * Other vars inherited from User Model.

  3. Student Model
    * Sub-model of User
    * sid: integer var, Student_id.
    * has_many: Lesson
    * Other vars inherited from User Model.

  4. Lesson Model
    * lid: integer var, unique to each lesson
    * belong_to: Teacher
    * belong_to: Student
    * Title: string var, a title of the lesson
    * Intro: string var, summary of the lesson
    * has_many: Note

  5. Note Model: 
    * nid: integer var, used to differentiate each notes
    * timestamp: integer var, record of when the notes is updated/created
    * belong_to: Lesson
    * Title: string var, title of the note
    * Content: text var, actual content of the Note.

    
#### Pages
  1. Homepage
    * Welcome Page
  2. User
    * Signup/Login page

  3. User
    * show: show all the lessons this user is teaching and is taking
    * create: create a new lesson (User creates this as a teacher)
    * Creating a lesson requires specification which student is to be enrolled

  4. Lesson
    * Create a new note for this lesson
    * Note must specify title and content and Lesson ID.
    * Show all the existing notes for this lesson, sorted in chronological order
    * Lessons can only be deleted if the user deleting it is the lesson's teacher

  5. Notes
    * For each note, a show page will display its content. Should only allow enrolled students to see the notes.


#### Gems
  Devise, cancancan, simple_form_for, better_errors, pg, rails_12factor

#### Features
  * Users can log in
  * Teachers can create lessons for a specified Student
  * Teacher of a given class can create and delete notes
  * Teacher can delete the class that he/she is teaching
  * Students can access lessons and create own notes for that lesson

#### Division of Labor
  * Justin: Completed functionality on design doc for the app
  * Peijie: Created auxiliary functionalities/validations and seed file
  * Philip: Created all models, controllers and validations