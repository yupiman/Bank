
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/12/2022 22:53:09
-- Generated from EDMX file: C:\WS\Bank\BankAccount\BankModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE Bank;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CustomerSet'
CREATE TABLE [dbo].[CustomerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Addresse] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [SVNumber] nvarchar(max)  NOT NULL,
    [Bank_Id] int  NOT NULL,
    [TypCustomer_Id] int  NOT NULL,
    [Gender_Id] int  NOT NULL
);
GO

-- Creating table 'BankSet'
CREATE TABLE [dbo].[BankSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Addresse] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AccountSet'
CREATE TABLE [dbo].[AccountSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Saldo] nvarchar(max)  NOT NULL,
    [Rate] nvarchar(max)  NOT NULL,
    [Payrent] nvarchar(max)  NOT NULL,
    [CreateTime] nvarchar(max)  NOT NULL,
    [CardNumber] nvarchar(max)  NOT NULL,
    [ValidTo] nvarchar(max)  NOT NULL,
    [Iban] nvarchar(max)  NOT NULL,
    [TypeAccountAccount_Account_Id] int  NOT NULL
);
GO

-- Creating table 'CustomerAccountSet'
CREATE TABLE [dbo].[CustomerAccountSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateTime] nvarchar(max)  NOT NULL,
    [Customer_Id] int  NOT NULL,
    [Account_Id] int  NOT NULL
);
GO

-- Creating table 'TypCustomerSet'
CREATE TABLE [dbo].[TypCustomerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TypeAccountSet'
CREATE TABLE [dbo].[TypeAccountSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmployeesSet1'
CREATE TABLE [dbo].[EmployeesSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [SVNumber] nvarchar(max)  NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL,
    [Bank_Id] int  NOT NULL,
    [Gender1_Id] int  NOT NULL,
    [Position_Id] int  NOT NULL
);
GO

-- Creating table 'TransactionSet'
CREATE TABLE [dbo].[TransactionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AccountTransactionSet'
CREATE TABLE [dbo].[AccountTransactionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ExecutionTime] nvarchar(max)  NOT NULL,
    [Saldo] nvarchar(max)  NOT NULL,
    [Account_Id] int  NOT NULL,
    [Transaction_Id] int  NOT NULL
);
GO

-- Creating table 'GenderSet'
CREATE TABLE [dbo].[GenderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PositionSet'
CREATE TABLE [dbo].[PositionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [PK_CustomerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BankSet'
ALTER TABLE [dbo].[BankSet]
ADD CONSTRAINT [PK_BankSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AccountSet'
ALTER TABLE [dbo].[AccountSet]
ADD CONSTRAINT [PK_AccountSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CustomerAccountSet'
ALTER TABLE [dbo].[CustomerAccountSet]
ADD CONSTRAINT [PK_CustomerAccountSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypCustomerSet'
ALTER TABLE [dbo].[TypCustomerSet]
ADD CONSTRAINT [PK_TypCustomerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeAccountSet'
ALTER TABLE [dbo].[TypeAccountSet]
ADD CONSTRAINT [PK_TypeAccountSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmployeesSet1'
ALTER TABLE [dbo].[EmployeesSet1]
ADD CONSTRAINT [PK_EmployeesSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TransactionSet'
ALTER TABLE [dbo].[TransactionSet]
ADD CONSTRAINT [PK_TransactionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AccountTransactionSet'
ALTER TABLE [dbo].[AccountTransactionSet]
ADD CONSTRAINT [PK_AccountTransactionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GenderSet'
ALTER TABLE [dbo].[GenderSet]
ADD CONSTRAINT [PK_GenderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PositionSet'
ALTER TABLE [dbo].[PositionSet]
ADD CONSTRAINT [PK_PositionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Bank_Id] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [FK_BankCustomer]
    FOREIGN KEY ([Bank_Id])
    REFERENCES [dbo].[BankSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BankCustomer'
CREATE INDEX [IX_FK_BankCustomer]
ON [dbo].[CustomerSet]
    ([Bank_Id]);
GO

-- Creating foreign key on [Customer_Id] in table 'CustomerAccountSet'
ALTER TABLE [dbo].[CustomerAccountSet]
ADD CONSTRAINT [FK_CustomerTypeAccount]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[CustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerTypeAccount'
CREATE INDEX [IX_FK_CustomerTypeAccount]
ON [dbo].[CustomerAccountSet]
    ([Customer_Id]);
GO

-- Creating foreign key on [TypeAccountAccount_Account_Id] in table 'AccountSet'
ALTER TABLE [dbo].[AccountSet]
ADD CONSTRAINT [FK_TypeAccountAccount]
    FOREIGN KEY ([TypeAccountAccount_Account_Id])
    REFERENCES [dbo].[TypeAccountSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TypeAccountAccount'
CREATE INDEX [IX_FK_TypeAccountAccount]
ON [dbo].[AccountSet]
    ([TypeAccountAccount_Account_Id]);
GO

-- Creating foreign key on [Bank_Id] in table 'EmployeesSet1'
ALTER TABLE [dbo].[EmployeesSet1]
ADD CONSTRAINT [FK_BankEmployees]
    FOREIGN KEY ([Bank_Id])
    REFERENCES [dbo].[BankSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BankEmployees'
CREATE INDEX [IX_FK_BankEmployees]
ON [dbo].[EmployeesSet1]
    ([Bank_Id]);
GO

-- Creating foreign key on [TypCustomer_Id] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [FK_TypCustomerCustomer]
    FOREIGN KEY ([TypCustomer_Id])
    REFERENCES [dbo].[TypCustomerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TypCustomerCustomer'
CREATE INDEX [IX_FK_TypCustomerCustomer]
ON [dbo].[CustomerSet]
    ([TypCustomer_Id]);
GO

-- Creating foreign key on [Account_Id] in table 'AccountTransactionSet'
ALTER TABLE [dbo].[AccountTransactionSet]
ADD CONSTRAINT [FK_AccountAccountTransaction]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[AccountSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountAccountTransaction'
CREATE INDEX [IX_FK_AccountAccountTransaction]
ON [dbo].[AccountTransactionSet]
    ([Account_Id]);
GO

-- Creating foreign key on [Transaction_Id] in table 'AccountTransactionSet'
ALTER TABLE [dbo].[AccountTransactionSet]
ADD CONSTRAINT [FK_TransactionAccountTransaction]
    FOREIGN KEY ([Transaction_Id])
    REFERENCES [dbo].[TransactionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransactionAccountTransaction'
CREATE INDEX [IX_FK_TransactionAccountTransaction]
ON [dbo].[AccountTransactionSet]
    ([Transaction_Id]);
GO

-- Creating foreign key on [Gender_Id] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [FK_GenderCustomer]
    FOREIGN KEY ([Gender_Id])
    REFERENCES [dbo].[GenderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GenderCustomer'
CREATE INDEX [IX_FK_GenderCustomer]
ON [dbo].[CustomerSet]
    ([Gender_Id]);
GO

-- Creating foreign key on [Gender1_Id] in table 'EmployeesSet1'
ALTER TABLE [dbo].[EmployeesSet1]
ADD CONSTRAINT [FK_GenderEmployees]
    FOREIGN KEY ([Gender1_Id])
    REFERENCES [dbo].[GenderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GenderEmployees'
CREATE INDEX [IX_FK_GenderEmployees]
ON [dbo].[EmployeesSet1]
    ([Gender1_Id]);
GO

-- Creating foreign key on [Position_Id] in table 'EmployeesSet1'
ALTER TABLE [dbo].[EmployeesSet1]
ADD CONSTRAINT [FK_PositionEmployees]
    FOREIGN KEY ([Position_Id])
    REFERENCES [dbo].[PositionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PositionEmployees'
CREATE INDEX [IX_FK_PositionEmployees]
ON [dbo].[EmployeesSet1]
    ([Position_Id]);
GO

-- Creating foreign key on [Account_Id] in table 'CustomerAccountSet'
ALTER TABLE [dbo].[CustomerAccountSet]
ADD CONSTRAINT [FK_AccountCustomerAccount]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[AccountSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountCustomerAccount'
CREATE INDEX [IX_FK_AccountCustomerAccount]
ON [dbo].[CustomerAccountSet]
    ([Account_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------