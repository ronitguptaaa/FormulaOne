CREATE PROCEDURE FormulaViews()
BEGIN
    DROP VIEW IF EXISTS vw_TotalRaceResults;
    DROP VIEW IF EXISTS vw_Status;
    DROP VIEW IF EXISTS vw_Seasons;
    DROP VIEW IF EXISTS vw_QualifyingDetails;
    DROP VIEW IF EXISTS vw_LapTimes;
    DROP VIEW IF EXISTS vw_LapTimeData;
    DROP VIEW IF EXISTS vw_DriverDetails;
    DROP VIEW IF EXISTS vw_ConstructorDetails;
    DROP VIEW IF EXISTS vw_CircuitDetails;

    CREATE OR REPLACE VIEW vw_TotalRaceResults AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/TotalRaceResults`;

    CREATE OR REPLACE VIEW vw_Status AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/StagingData/status`;

    CREATE OR REPLACE VIEW vw_Seasons AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/StagingData/seasons`;

    CREATE OR REPLACE VIEW vw_QualifyingDetails AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/QualifyingDetails`;

    CREATE OR REPLACE VIEW vw_LapTimes AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/StagingData/lap_times`;

    CREATE OR REPLACE VIEW vw_LapTimeData AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/LapTimeData`;

    CREATE OR REPLACE VIEW vw_DriverDetails AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/DriverDetails`;

    CREATE OR REPLACE VIEW vw_ConstructorDetails AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/ConstructorDetails`;

    CREATE OR REPLACE VIEW vw_CircuitDetails AS 
        SELECT * FROM PARQUET.`/Users/ronitguptaaa/Documents/FormulaOne/MartData/CircuitDetails`;
END
