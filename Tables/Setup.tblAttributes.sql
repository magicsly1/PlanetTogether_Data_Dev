CREATE TABLE [Setup].[tblAttributes]
(
[AttributeID] [int] NOT NULL,
[ProcessID] [int] NOT NULL,
[AttrIneffectiveDate] [datetime2] (0) NOT NULL,
[AttrEffectiveDate] [datetime2] (0) NULL,
[AttributeGroupID] [int] NULL,
[AttributeDesc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttributeName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttributeUOM] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LimitToList] [bit] NULL,
[Active] [bit] NULL,
[ListSource] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttributeViewOrder] [int] NULL,
[AttributeDataType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ListSourceColumnCount] [int] NULL,
[AttributeComments] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ToleranceReq] [bit] NULL,
[ToleranceUOM] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultValue] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultMinTol] [float] NULL,
[DefaultMaxTol] [float] NULL,
[DefaultMinValue] [float] NULL,
[DefaultMaxValue] [float] NULL,
[DefaultMinValueTol] [float] NULL,
[DefaultMaxValueTol] [float] NULL,
[DefaultPrintOnSetup] [bit] NULL,
[AddToDesc] [bit] NULL,
[ApprovalReq] [bit] NULL,
[ScheduleNotice] [bit] NULL,
[OracleNotice] [bit] NULL,
[EditAllowed] [bit] NULL,
[RecordResults] [bit] NULL,
[SigDigits] [int] NULL,
[ReferenceOnly] [bit] NULL,
[FormulaBased] [bit] NULL,
[ToleranceType] [int] NULL,
[SSMA_TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Setup].[tblAttributes] ADD CONSTRAINT [PK_tblAttributes] PRIMARY KEY CLUSTERED  ([AttributeID], [ProcessID], [AttrIneffectiveDate]) ON [PRIMARY]
GO