object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 198
  Top = 143
  Height = 139
  Width = 207
  object db: TIBDatabase
    Connected = True
    DatabaseName = 'LocalHost:C:\liveparoquia\dados\LIVEPAROQUIA.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = Transacao
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 8
  end
  object Transacao: TIBTransaction
    Active = False
    DefaultDatabase = db
    AutoStopAction = saNone
    Left = 48
    Top = 8
  end
end
