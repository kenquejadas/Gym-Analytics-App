# Gym Workout Analytics App
Under development
[Web App](https://gymworkoutdatabase.netlify.app)

## Scope
Web application that allows user(s) to log gym workout data onto interface which will store data in a relational database. Afterwards, the user(s) can query historical data from the database through the front-end interface for summarization and analysis.

## Components
- Front-End Interface website for Data Input and Inquiries
    - Hosted by Netlify
- Back-End SQL database
    - Hosted by Microsoft Azure 

## Background
I didn't want to pay for mobile apps to track gym workouts, got tired of typing long lists in my notes app, and figured a spreadsheet would hold unnecessary duplicate values. A relational database would display only the relevant workout data I want to see at a given time.

For example, I may want to look up my history of cardio workouts, which include the attributes Incline for treadmills and Level for Elliptical machines. Not all exercises will measure the same attributes; Incline and Level are irrelevant to weight lifting, yet they would be displayed as columns on a spreadsheet for all workouts. Even with separate tabs for exercise categories, I would be looking more data than I need at a given time. 

Through a SQL database, I am looking to find just the exercises and related attributes I am interested in at a given time while sharpening my database-related skillset.

## Database 
### Visualization
![ERD](https://github.com/kenquejadas/Gym-Workout-Relational-Database/blob/main/Gym%20Workouts%20Database%20ERD.png)
Entity Relationship Diagram made with Lucidchart
### Definitions

**__Workout__** - Session of one or multiple exercises, usually focused around one area of exercise (WorkoutType) such as cardio, abdominals, chest, etc.

**__Exercise__** - Specific physical activity focused on one area 