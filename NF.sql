CREATE TABLE [dbo].[1NF] (
    [Id]         VARCHAR (50) NOT NULL,
    [Firstname]  NCHAR (10)   NULL,
    [LastName]   NCHAR (10)   NULL,
    [City]       VARCHAR (50) NULL,
    [Salary]     INT          NULL,
    [YearSalary] INT          NULL
);


-------------------------------------
CREATE TABLE [dbo].[Dept1NF] (
    [DeptId]   INT        NOT NULL,
    [DeptName] NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([DeptId] ASC)
);


------------Emp1NF
CREATE TABLE [dbo].[Emp1NF] (
    [DeptId]   INT        NOT NULL,
    [Employee] NCHAR (10) NULL,
    CONSTRAINT [FK_Emp1NF_ToDept1NF] FOREIGN KEY ([DeptId]) REFERENCES [dbo].[Dept1NF] ([DeptId])
);

