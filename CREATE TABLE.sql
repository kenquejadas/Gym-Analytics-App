/* Short Description: Relational database for gym workout data */

CREATE TABLE Log (
    LogID INT,
    LogDateTime DATETIME,
    LogType VARCHAR(10), /* Log either exercise set or rest time */
    MatchID INT,
    Log_Sets INT,
    Log_Reps INT,
    Log_Weight INT,
    Log_Time VARCHAR(10), /* Format: 12:34:56.78 */
    Log_Incline INT, /* Treadmill incline */
    Log_Level INT, /* Level for elliptical and stair master */
    PRIMARY KEY (LogID),
    FOREIGN KEY (MatchID) REFERENCES Categorize(MatchID)
);

/* Workout = Category of either cardio or muscles worked */
CREATE TABLE Workout (
    WorkoutID INT,
    WorkoutName VARCHAR(20) NOT NULL, /* Cardio, Push, Pull, Abs, Leg Day */
    ExerciseID INT,
    PRIMARY KEY (WorkoutID),
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
);

CREATE TABLE Exercise (
    ExerciseID INT,
    ExerciseName VARCHAR(20) NOT NULL, /* Weights, Treadmill, Stair Master, Elliptical*/
    MatchID INT,
    ExerciseType VARCHAR(10),
    Equipment VARCHAR(10),
    PRIMARY KEY (ExerciseID),
    FOREIGN KEY (MatchID) REFERENCES Categorize(MatchID),
    FOREIGN KEY (ExerciseType) REFERENCES ExerciseType(ExerciseType),
    FOREIGN KEY (Equipment) REFERENCES Equipment(Equipment)
);

/* Separate table for exercise type so that each exercise has their respective type
	and prevent duplicates */
CREATE TABLE ExerciseType( 
	ExerciseType VARCHAR(10) /* Weights, Walk, Run, Climb */
);

/* Separate table for equipment so that each exercise has their respective equipment
	and prevent duplicates */
CREATE TABLE Equipment( 
    Equipment VARCHAR(10) /* Machine, Dumbbells, Barbells, Band */
);

CREATE TABLE Categorize ( /* Categorize exercises by matching them with workout type */
	MatchID INT,
    WorkoutType VARCHAR(10),
    ExerciseName VARCHAR(20),
    PRIMARY KEY (MatchID),
    FOREIGN KEY (WorkoutName) REFERENCES Workout(WorkoutName),
    FOREIGN KEY (ExerciseName) REFERENCES Exercise(ExerciseName)
);

/* Example Query: Find out what exercises were done last Monday
    
    SELECT ExerciseName
 */
