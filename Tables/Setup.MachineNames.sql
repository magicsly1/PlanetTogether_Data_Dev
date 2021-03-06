CREATE TABLE [Setup].[MachineNames]
(
[MachineID] [int] NOT NULL IDENTITY(1, 1),
[MachineName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineGroupID] [int] NULL,
[ShareResource] [bit] NULL,
[timestamp] [timestamp] NULL,
[Grouping] [bit] NULL CONSTRAINT [DF_MachineNames_Grouping] DEFAULT ((1)),
[CapacityTypeID] [int] NULL,
[MachineRunEffeciency] [decimal] (5, 4) NULL,
[MachineSetupEffeciency] [decimal] (5, 4) NULL,
[ProdItemValueUUID] [uniqueidentifier] NULL,
[ManualSchedule] [bit] NULL CONSTRAINT [DF_MachineNames_ManualSchedule] DEFAULT ((0)),
[DepartmentID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Setup].[MachineNames] ADD CONSTRAINT [PK_MachineNames] PRIMARY KEY CLUSTERED  ([MachineID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MachineNames] ON [Setup].[MachineNames] ([MachineID], [MachineGroupID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MachineNames_2] ON [Setup].[MachineNames] ([MachineName]) ON [PRIMARY]
GO
ALTER TABLE [Setup].[MachineNames] ADD CONSTRAINT [FK_MachineNames_MachineCapacityType] FOREIGN KEY ([CapacityTypeID]) REFERENCES [Setup].[MachineCapacityType] ([CapacityTypeID]) ON DELETE SET NULL ON UPDATE CASCADE
GO
ALTER TABLE [Setup].[MachineNames] ADD CONSTRAINT [FK_MachineNames_MachineGroup] FOREIGN KEY ([MachineGroupID]) REFERENCES [Setup].[MachineGroup] ([MachineGroupID]) ON DELETE SET NULL ON UPDATE CASCADE
GO
ALTER TABLE [Setup].[MachineNames] ADD CONSTRAINT [FK_MachineNames_Plant] FOREIGN KEY ([DepartmentID]) REFERENCES [Setup].[Department] ([DepartmentID]) ON DELETE SET NULL ON UPDATE CASCADE
GO
