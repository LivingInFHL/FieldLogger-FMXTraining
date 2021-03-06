object dmFieldLogger: TdmFieldLogger
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 439
  Width = 528
  object conn: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Jim\Documents\EMBEDDEDIBLITE.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=IB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 112
    Top = 64
  end
  object qProjects: TFDQuery
    ActiveStoredUsage = []
    Connection = conn
    SQL.Strings = (
      'select * from projects')
    Left = 80
    Top = 120
    object qProjectsPROJ_ID: TIntegerField
      FieldName = 'PROJ_ID'
      Origin = 'PROJ_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProjectsPROJ_TITLE: TWideStringField
      FieldName = 'PROJ_TITLE'
      Origin = 'PROJ_TITLE'
      Size = 120
    end
    object qProjectsPROJ_DESC: TWideMemoField
      FieldName = 'PROJ_DESC'
      Origin = 'PROJ_DESC'
      BlobType = ftWideMemo
    end
  end
  object qLogEntries: TFDQuery
    ActiveStoredUsage = []
    AfterInsert = qLogEntriesAfterInsert
    MasterSource = dsProjects
    MasterFields = 'PROJ_ID'
    Connection = conn
    SQL.Strings = (
      'select * from log_Entries where proj_id = :proj_id'
      ''
      'order by TimeDateStamp')
    Left = 144
    Top = 120
    ParamData = <
      item
        Name = 'PROJ_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 2
        Value = 2
      end>
    object qLogEntriesLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Origin = 'LOG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLogEntriesPROJ_ID: TIntegerField
      FieldName = 'PROJ_ID'
      Origin = 'PROJ_ID'
      Required = True
    end
    object qLogEntriesPICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'PICTURE'
    end
    object qLogEntriesLONGITUDE: TSingleField
      FieldName = 'LONGITUDE'
      Origin = 'LONGITUDE'
    end
    object qLogEntriesLATITUDE: TSingleField
      FieldName = 'LATITUDE'
      Origin = 'LATITUDE'
    end
    object qLogEntriesTIMEDATESTAMP: TSQLTimeStampField
      FieldName = 'TIMEDATESTAMP'
      Origin = 'TIMEDATESTAMP'
    end
    object qLogEntriesOR_X: TSingleField
      FieldName = 'OR_X'
      Origin = 'OR_X'
    end
    object qLogEntriesOR_Y: TSingleField
      FieldName = 'OR_Y'
      Origin = 'OR_Y'
    end
    object qLogEntriesOR_Z: TSingleField
      FieldName = 'OR_Z'
      Origin = 'OR_Z'
    end
    object qLogEntriesOR_DISTANCE: TSingleField
      FieldName = 'OR_DISTANCE'
      Origin = 'OR_DISTANCE'
    end
    object qLogEntriesHEADING_X: TSingleField
      FieldName = 'HEADING_X'
      Origin = 'HEADING_X'
    end
    object qLogEntriesHEADING_Y: TSingleField
      FieldName = 'HEADING_Y'
      Origin = 'HEADING_Y'
    end
    object qLogEntriesHEADING_Z: TSingleField
      FieldName = 'HEADING_Z'
      Origin = 'HEADING_Z'
    end
    object qLogEntriesV_X: TSingleField
      FieldName = 'V_X'
      Origin = 'V_X'
    end
    object qLogEntriesV_Y: TSingleField
      FieldName = 'V_Y'
      Origin = 'V_Y'
    end
    object qLogEntriesV_Z: TSingleField
      FieldName = 'V_Z'
      Origin = 'V_Z'
    end
    object qLogEntriesANGLE_X: TSingleField
      FieldName = 'ANGLE_X'
      Origin = 'ANGLE_X'
    end
    object qLogEntriesANGLE_Y: TSingleField
      FieldName = 'ANGLE_Y'
      Origin = 'ANGLE_Y'
    end
    object qLogEntriesANGLE_Z: TSingleField
      FieldName = 'ANGLE_Z'
      Origin = 'ANGLE_Z'
    end
    object qLogEntriesMOTION: TSingleField
      FieldName = 'MOTION'
      Origin = 'MOTION'
    end
    object qLogEntriesSPEED: TSingleField
      FieldName = 'SPEED'
      Origin = 'SPEED'
    end
    object qLogEntriesNOTE: TWideMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftWideMemo
    end
  end
  object dsProjects: TDataSource
    DataSet = qProjects
    Left = 80
    Top = 176
  end
end
