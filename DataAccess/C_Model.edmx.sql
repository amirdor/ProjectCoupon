
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/24/2015 15:42:41
-- Generated from EDMX file: Z:\Dropbox (BGU)\Projects\WebProjects\ProjectCoupon\DataAccess\C_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CouponDB];
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

-- Creating table 'Coupons'
CREATE TABLE [dbo].[Coupons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [originalPrice] float  NOT NULL,
    [discountPrice] float  NOT NULL,
    [aggregatedRank] float  NOT NULL,
    [lastDateForUse] datetime  NOT NULL,
    [reaminingQuantity] int  NOT NULL,
    [User_Id] int  NOT NULL,
    [CouponOrder_Id] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Firms'
CREATE TABLE [dbo].[Firms] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [address] nvarchar(max)  NOT NULL,
    [longitude] float  NOT NULL,
    [latitude] float  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [city] nvarchar(max)  NOT NULL,
    [FirmOwner_Id] int  NOT NULL,
    [SystemAdmin_Id] int  NOT NULL
);
GO

-- Creating table 'CouponAlerts'
CREATE TABLE [dbo].[CouponAlerts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [alerType] int  NOT NULL,
    [text] nvarchar(max)  NOT NULL,
    [Coupon_Id] int  NULL
);
GO

-- Creating table 'CouponOrders'
CREATE TABLE [dbo].[CouponOrders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [serialKey] nvarchar(max)  NOT NULL,
    [date] datetime  NOT NULL,
    [recipt] nvarchar(max)  NOT NULL,
    [isUsed] bit  NOT NULL,
    [creditApproval] nvarchar(max)  NOT NULL,
    [rank] float  NOT NULL,
    [QR] nvarchar(max)  NOT NULL,
    [quantity] int  NOT NULL,
    [Costumer_Id] int  NOT NULL
);
GO

-- Creating table 'SocialNetworkProfiles1'
CREATE TABLE [dbo].[SocialNetworkProfiles1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [sendData] nvarchar(max)  NOT NULL,
    [recivedDData] nvarchar(max)  NOT NULL,
    [authToken] nvarchar(max)  NOT NULL,
    [Costumer_Id] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [category] int  NOT NULL
);
GO

-- Creating table 'Users_SystemAdmin'
CREATE TABLE [dbo].[Users_SystemAdmin] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Users_FirmOwner'
CREATE TABLE [dbo].[Users_FirmOwner] (
    [Id] int  NOT NULL,
    [SystemAdmin_Id] int  NOT NULL
);
GO

-- Creating table 'Users_Costumer'
CREATE TABLE [dbo].[Users_Costumer] (
    [age] float  NOT NULL,
    [gender] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Coupons_SocialCoupon'
CREATE TABLE [dbo].[Coupons_SocialCoupon] (
    [Id] int  NOT NULL,
    [Costumer_Id] int  NOT NULL
);
GO

-- Creating table 'CostumerCouponAlert'
CREATE TABLE [dbo].[CostumerCouponAlert] (
    [Costumer_Id] int  NOT NULL,
    [CouponAlerts_Id] int  NOT NULL
);
GO

-- Creating table 'CouponOrderCategories'
CREATE TABLE [dbo].[CouponOrderCategories] (
    [CouponOrder_Id] int  NOT NULL,
    [Categories_Id] int  NOT NULL
);
GO

-- Creating table 'CostumerCategories'
CREATE TABLE [dbo].[CostumerCategories] (
    [Costumer_Id] int  NOT NULL,
    [Categories_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Coupons'
ALTER TABLE [dbo].[Coupons]
ADD CONSTRAINT [PK_Coupons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Firms'
ALTER TABLE [dbo].[Firms]
ADD CONSTRAINT [PK_Firms]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CouponAlerts'
ALTER TABLE [dbo].[CouponAlerts]
ADD CONSTRAINT [PK_CouponAlerts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CouponOrders'
ALTER TABLE [dbo].[CouponOrders]
ADD CONSTRAINT [PK_CouponOrders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialNetworkProfiles1'
ALTER TABLE [dbo].[SocialNetworkProfiles1]
ADD CONSTRAINT [PK_SocialNetworkProfiles1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_SystemAdmin'
ALTER TABLE [dbo].[Users_SystemAdmin]
ADD CONSTRAINT [PK_Users_SystemAdmin]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_FirmOwner'
ALTER TABLE [dbo].[Users_FirmOwner]
ADD CONSTRAINT [PK_Users_FirmOwner]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Costumer'
ALTER TABLE [dbo].[Users_Costumer]
ADD CONSTRAINT [PK_Users_Costumer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Coupons_SocialCoupon'
ALTER TABLE [dbo].[Coupons_SocialCoupon]
ADD CONSTRAINT [PK_Coupons_SocialCoupon]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Costumer_Id], [CouponAlerts_Id] in table 'CostumerCouponAlert'
ALTER TABLE [dbo].[CostumerCouponAlert]
ADD CONSTRAINT [PK_CostumerCouponAlert]
    PRIMARY KEY CLUSTERED ([Costumer_Id], [CouponAlerts_Id] ASC);
GO

-- Creating primary key on [CouponOrder_Id], [Categories_Id] in table 'CouponOrderCategories'
ALTER TABLE [dbo].[CouponOrderCategories]
ADD CONSTRAINT [PK_CouponOrderCategories]
    PRIMARY KEY CLUSTERED ([CouponOrder_Id], [Categories_Id] ASC);
GO

-- Creating primary key on [Costumer_Id], [Categories_Id] in table 'CostumerCategories'
ALTER TABLE [dbo].[CostumerCategories]
ADD CONSTRAINT [PK_CostumerCategories]
    PRIMARY KEY CLUSTERED ([Costumer_Id], [Categories_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SystemAdmin_Id] in table 'Users_FirmOwner'
ALTER TABLE [dbo].[Users_FirmOwner]
ADD CONSTRAINT [FK_SystemAdminFirmOwner]
    FOREIGN KEY ([SystemAdmin_Id])
    REFERENCES [dbo].[Users_SystemAdmin]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SystemAdminFirmOwner'
CREATE INDEX [IX_FK_SystemAdminFirmOwner]
ON [dbo].[Users_FirmOwner]
    ([SystemAdmin_Id]);
GO

-- Creating foreign key on [Costumer_Id] in table 'Coupons_SocialCoupon'
ALTER TABLE [dbo].[Coupons_SocialCoupon]
ADD CONSTRAINT [FK_CostumerSocialCoupon]
    FOREIGN KEY ([Costumer_Id])
    REFERENCES [dbo].[Users_Costumer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostumerSocialCoupon'
CREATE INDEX [IX_FK_CostumerSocialCoupon]
ON [dbo].[Coupons_SocialCoupon]
    ([Costumer_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Coupons'
ALTER TABLE [dbo].[Coupons]
ADD CONSTRAINT [FK_UserCoupon]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCoupon'
CREATE INDEX [IX_FK_UserCoupon]
ON [dbo].[Coupons]
    ([User_Id]);
GO

-- Creating foreign key on [FirmOwner_Id] in table 'Firms'
ALTER TABLE [dbo].[Firms]
ADD CONSTRAINT [FK_FirmOwnerFirm]
    FOREIGN KEY ([FirmOwner_Id])
    REFERENCES [dbo].[Users_FirmOwner]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FirmOwnerFirm'
CREATE INDEX [IX_FK_FirmOwnerFirm]
ON [dbo].[Firms]
    ([FirmOwner_Id]);
GO

-- Creating foreign key on [SystemAdmin_Id] in table 'Firms'
ALTER TABLE [dbo].[Firms]
ADD CONSTRAINT [FK_SystemAdminFirm]
    FOREIGN KEY ([SystemAdmin_Id])
    REFERENCES [dbo].[Users_SystemAdmin]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SystemAdminFirm'
CREATE INDEX [IX_FK_SystemAdminFirm]
ON [dbo].[Firms]
    ([SystemAdmin_Id]);
GO

-- Creating foreign key on [Coupon_Id] in table 'CouponAlerts'
ALTER TABLE [dbo].[CouponAlerts]
ADD CONSTRAINT [FK_CouponCouponAlert]
    FOREIGN KEY ([Coupon_Id])
    REFERENCES [dbo].[Coupons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponCouponAlert'
CREATE INDEX [IX_FK_CouponCouponAlert]
ON [dbo].[CouponAlerts]
    ([Coupon_Id]);
GO

-- Creating foreign key on [CouponOrder_Id] in table 'Coupons'
ALTER TABLE [dbo].[Coupons]
ADD CONSTRAINT [FK_CouponOrderCoupon]
    FOREIGN KEY ([CouponOrder_Id])
    REFERENCES [dbo].[CouponOrders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponOrderCoupon'
CREATE INDEX [IX_FK_CouponOrderCoupon]
ON [dbo].[Coupons]
    ([CouponOrder_Id]);
GO

-- Creating foreign key on [Costumer_Id] in table 'CouponOrders'
ALTER TABLE [dbo].[CouponOrders]
ADD CONSTRAINT [FK_CostumerCouponOrder]
    FOREIGN KEY ([Costumer_Id])
    REFERENCES [dbo].[Users_Costumer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostumerCouponOrder'
CREATE INDEX [IX_FK_CostumerCouponOrder]
ON [dbo].[CouponOrders]
    ([Costumer_Id]);
GO

-- Creating foreign key on [Costumer_Id] in table 'CostumerCouponAlert'
ALTER TABLE [dbo].[CostumerCouponAlert]
ADD CONSTRAINT [FK_CostumerCouponAlert_Costumer]
    FOREIGN KEY ([Costumer_Id])
    REFERENCES [dbo].[Users_Costumer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CouponAlerts_Id] in table 'CostumerCouponAlert'
ALTER TABLE [dbo].[CostumerCouponAlert]
ADD CONSTRAINT [FK_CostumerCouponAlert_CouponAlert]
    FOREIGN KEY ([CouponAlerts_Id])
    REFERENCES [dbo].[CouponAlerts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostumerCouponAlert_CouponAlert'
CREATE INDEX [IX_FK_CostumerCouponAlert_CouponAlert]
ON [dbo].[CostumerCouponAlert]
    ([CouponAlerts_Id]);
GO

-- Creating foreign key on [Costumer_Id] in table 'SocialNetworkProfiles1'
ALTER TABLE [dbo].[SocialNetworkProfiles1]
ADD CONSTRAINT [FK_CostumerSocialNetworkProfile]
    FOREIGN KEY ([Costumer_Id])
    REFERENCES [dbo].[Users_Costumer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostumerSocialNetworkProfile'
CREATE INDEX [IX_FK_CostumerSocialNetworkProfile]
ON [dbo].[SocialNetworkProfiles1]
    ([Costumer_Id]);
GO

-- Creating foreign key on [CouponOrder_Id] in table 'CouponOrderCategories'
ALTER TABLE [dbo].[CouponOrderCategories]
ADD CONSTRAINT [FK_CouponOrderCategories_CouponOrder]
    FOREIGN KEY ([CouponOrder_Id])
    REFERENCES [dbo].[CouponOrders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categories_Id] in table 'CouponOrderCategories'
ALTER TABLE [dbo].[CouponOrderCategories]
ADD CONSTRAINT [FK_CouponOrderCategories_Categories]
    FOREIGN KEY ([Categories_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CouponOrderCategories_Categories'
CREATE INDEX [IX_FK_CouponOrderCategories_Categories]
ON [dbo].[CouponOrderCategories]
    ([Categories_Id]);
GO

-- Creating foreign key on [Costumer_Id] in table 'CostumerCategories'
ALTER TABLE [dbo].[CostumerCategories]
ADD CONSTRAINT [FK_CostumerCategories_Costumer]
    FOREIGN KEY ([Costumer_Id])
    REFERENCES [dbo].[Users_Costumer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categories_Id] in table 'CostumerCategories'
ALTER TABLE [dbo].[CostumerCategories]
ADD CONSTRAINT [FK_CostumerCategories_Categories]
    FOREIGN KEY ([Categories_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CostumerCategories_Categories'
CREATE INDEX [IX_FK_CostumerCategories_Categories]
ON [dbo].[CostumerCategories]
    ([Categories_Id]);
GO

-- Creating foreign key on [Id] in table 'Users_SystemAdmin'
ALTER TABLE [dbo].[Users_SystemAdmin]
ADD CONSTRAINT [FK_SystemAdmin_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_FirmOwner'
ALTER TABLE [dbo].[Users_FirmOwner]
ADD CONSTRAINT [FK_FirmOwner_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Costumer'
ALTER TABLE [dbo].[Users_Costumer]
ADD CONSTRAINT [FK_Costumer_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Coupons_SocialCoupon'
ALTER TABLE [dbo].[Coupons_SocialCoupon]
ADD CONSTRAINT [FK_SocialCoupon_inherits_Coupon]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Coupons]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------