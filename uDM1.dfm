object DM1: TDM1
  OldCreateOrder = False
  Left = 111
  Top = 213
  Height = 369
  Width = 816
  object TPAROQUIA: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from PAROQUIA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PAROQUIA'
      
        '  (CODIGO, NOME, ENDERECO, BAIRRO, CIDADE, UF, CEP, TELEFONE, FA' +
        'X, ARQUIDIOCESE, '
      '   EMAIL)'
      'values'
      
        '  (:CODIGO, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :TELE' +
        'FONE, :FAX, '
      '   :ARQUIDIOCESE, :EMAIL)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  FAX,'
      '  ARQUIDIOCESE,'
      '  EMAIL'
      'from PAROQUIA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM PAROQUIA WHERE CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update PAROQUIA'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  TELEFONE = :TELEFONE,'
      '  FAX = :FAX,'
      '  ARQUIDIOCESE = :ARQUIDIOCESE,'
      '  EMAIL = :EMAIL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 104
    Top = 8
    object TPAROQUIACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PAROQUIA.CODIGO'
      Required = True
    end
    object TPAROQUIANOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PAROQUIA.NOME'
      Size = 60
    end
    object TPAROQUIAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'PAROQUIA.ENDERECO'
      Size = 40
    end
    object TPAROQUIABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'PAROQUIA.BAIRRO'
      Size = 25
    end
    object TPAROQUIACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'PAROQUIA.CIDADE'
      Size = 30
    end
    object TPAROQUIAUF: TIBStringField
      FieldName = 'UF'
      Origin = 'PAROQUIA.UF'
      Size = 10
    end
    object TPAROQUIACEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'PAROQUIA.CEP'
      EditMask = '#####-###'
      Size = 10
    end
    object TPAROQUIATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'PAROQUIA.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TPAROQUIAFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'PAROQUIA.FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TPAROQUIAARQUIDIOCESE: TIntegerField
      FieldName = 'ARQUIDIOCESE'
      Origin = 'PAROQUIA.ARQUIDIOCESE'
    end
    object TPAROQUIAEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'PAROQUIA.EMAIL'
      Size = 60
    end
  end
  object TArquidiocese: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from ARQUIDIOCESE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ARQUIDIOCESE'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME'
      'from ARQUIDIOCESE '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ARQUIDIOCESE WHERE CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update ARQUIDIOCESE'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 24
    Top = 8
    object TArquidioceseCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ARQUIDIOCESE.CODIGO'
      Required = True
    end
    object TArquidioceseNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ARQUIDIOCESE.NOME'
      Size = 60
    end
  end
  object TComunidade: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from COMUNIDADE'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into COMUNIDADE'
      '  (CODIGO, COMUNIDADE, CORDENADOR, TELEFONE, PAROQUIA)'
      'values'
      '  (:CODIGO, :COMUNIDADE, :CORDENADOR, :TELEFONE, :PAROQUIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  COMUNIDADE,'
      '  CORDENADOR,'
      '  TELEFONE,'
      '  PAROQUIA'
      'from COMUNIDADE '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM COMUNIDADE WHERE PAROQUIA = :PPAROQUIA'
      'AND  CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update COMUNIDADE'
      'set'
      '  CODIGO = :CODIGO,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  CORDENADOR = :CORDENADOR,'
      '  TELEFONE = :TELEFONE,'
      '  PAROQUIA = :PAROQUIA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 208
    Top = 8
    object TComunidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'COMUNIDADE.CODIGO'
      Required = True
    end
    object TComunidadeCOMUNIDADE: TIBStringField
      FieldName = 'COMUNIDADE'
      Origin = 'COMUNIDADE.COMUNIDADE'
      Size = 60
    end
    object TComunidadeCORDENADOR: TIBStringField
      FieldName = 'CORDENADOR'
      Origin = 'COMUNIDADE.CORDENADOR'
      Size = 60
    end
    object TComunidadeTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'COMUNIDADE.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TComunidadePAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'COMUNIDADE.PAROQUIA'
    end
  end
  object TCatequista: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from CATEQUISTA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into CATEQUISTA'
      '  (CODIGO, NOME, TELEFONE, COMUNIDADE, PAROQUIA)'
      'values'
      '  (:CODIGO, :NOME, :TELEFONE, :COMUNIDADE, :PAROQUIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  TELEFONE,'
      '  COMUNIDADE,'
      '  PAROQUIA'
      'from CATEQUISTA '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM CATEQUISTA WHERE PAROQUIA = :PPAROQUIA'
      'AND '
      ' CODIGO=:pCODIGO ')
    ModifySQL.Strings = (
      'update CATEQUISTA'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  PAROQUIA = :PAROQUIA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 296
    Top = 8
    object TCatequistaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CATEQUISTA.CODIGO'
      Required = True
    end
    object TCatequistaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CATEQUISTA.NOME'
      Size = 60
    end
    object TCatequistaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CATEQUISTA.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TCatequistaCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'CATEQUISTA.COMUNIDADE'
    end
    object TCatequistaPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CATEQUISTA.PAROQUIA'
    end
  end
  object TDizimista: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TDizimistaAfterScroll
    BeforePost = TDizimistaBeforePost
    DeleteSQL.Strings = (
      'delete from DIZIMISTA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into DIZIMISTA'
      
        '  (BAIRRO, CELULAR, CEP, CIDADE, CODIGO, COMUNIDADE, DIA_DOACAO,' +
        ' DIZIMISTA, '
      
        '   DIZIMISTA_CAMPANHA, DT_NASCIMENTO, DTCADASTRO, EMAIL, ENDEREC' +
        'O, OBS, '
      '   PAROQUIA, STATUS, TELEFONE, UF, VALOR)'
      'values'
      
        '  (:BAIRRO, :CELULAR, :CEP, :CIDADE, :CODIGO, :COMUNIDADE, :DIA_' +
        'DOACAO, '
      
        '   :DIZIMISTA, :DIZIMISTA_CAMPANHA, :DT_NASCIMENTO, :DTCADASTRO,' +
        ' :EMAIL, '
      '   :ENDERECO, :OBS, :PAROQUIA, :STATUS, :TELEFONE, :UF, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DIZIMISTA,'
      '  DT_NASCIMENTO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CELULAR,'
      '  EMAIL,'
      '  OBS,'
      '  COMUNIDADE,'
      '  STATUS,'
      '  DTCADASTRO,'
      '  DIA_DOACAO,'
      '  VALOR,'
      '  DIZIMISTA_CAMPANHA'
      'from DIZIMISTA '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM DIZIMISTA WHERE PAROQUIA= :PPAROQUIA  '
      'AND'
      'CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update DIZIMISTA'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CODIGO = :CODIGO,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  DIA_DOACAO = :DIA_DOACAO,'
      '  DIZIMISTA = :DIZIMISTA,'
      '  DIZIMISTA_CAMPANHA = :DIZIMISTA_CAMPANHA,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  OBS = :OBS,'
      '  PAROQUIA = :PAROQUIA,'
      '  STATUS = :STATUS,'
      '  TELEFONE = :TELEFONE,'
      '  UF = :UF,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 384
    Top = 8
    object TDizimistaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DIZIMISTA.CODIGO'
      Required = True
    end
    object TDizimistaDIZIMISTA: TIBStringField
      FieldName = 'DIZIMISTA'
      Origin = 'DIZIMISTA.DIZIMISTA'
      Size = 60
    end
    object TDizimistaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'DIZIMISTA.DT_NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object TDizimistaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'DIZIMISTA.ENDERECO'
      Size = 40
    end
    object TDizimistaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'DIZIMISTA.BAIRRO'
      Size = 25
    end
    object TDizimistaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'DIZIMISTA.CIDADE'
      Size = 30
    end
    object TDizimistaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'DIZIMISTA.UF'
      Size = 10
    end
    object TDizimistaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'DIZIMISTA.CEP'
      EditMask = '#####-###;1;_'
      Size = 10
    end
    object TDizimistaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'DIZIMISTA.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TDizimistaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'DIZIMISTA.CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TDizimistaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'DIZIMISTA.EMAIL'
      Size = 60
    end
    object TDizimistaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'DIZIMISTA.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object TDizimistaCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'DIZIMISTA.COMUNIDADE'
    end
    object TDizimistaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'DIZIMISTA.STATUS'
      FixedChar = True
      Size = 1
    end
    object TDizimistaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DIZIMISTA.DTCADASTRO'
    end
    object TDizimistaPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'DIZIMISTA.PAROQUIA'
    end
    object TDizimistaDIA_DOACAO: TIBStringField
      FieldName = 'DIA_DOACAO'
      Origin = '"DIZIMISTA"."DIA_DOACAO"'
      FixedChar = True
      Size = 2
    end
    object TDizimistaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"DIZIMISTA"."VALOR"'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object TDizimistaDIZIMISTA_CAMPANHA: TIBStringField
      FieldName = 'DIZIMISTA_CAMPANHA'
      Origin = '"DIZIMISTA"."DIZIMISTA_CAMPANHA"'
      FixedChar = True
      Size = 1
    end
  end
  object TMinistrosPadres: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from MINISTROS_PADRES'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into MINISTROS_PADRES'
      '  (CODIGO, NOME, TELEFONE, PAROQUIA, COMUNIDADE)'
      'values'
      '  (:CODIGO, :NOME, :TELEFONE, :PAROQUIA, :COMUNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  TELEFONE,'
      '  PAROQUIA,'
      '  COMUNIDADE'
      'from MINISTROS_PADRES '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM MINISTROS_PADRES WHERE'
      'PAROQUIA= :PPAROQUIA'
      'AND'
      ' CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update MINISTROS_PADRES'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE,'
      '  PAROQUIA = :PAROQUIA,'
      '  COMUNIDADE = :COMUNIDADE'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 472
    Top = 8
    object TMinistrosPadresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MINISTROS_PADRES.CODIGO'
      Required = True
    end
    object TMinistrosPadresNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'MINISTROS_PADRES.NOME'
      Size = 60
    end
    object TMinistrosPadresTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'MINISTROS_PADRES.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TMinistrosPadresPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'MINISTROS_PADRES.PAROQUIA'
    end
    object TMinistrosPadresCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'MINISTROS_PADRES.COMUNIDADE'
    end
  end
  object QUERYLogin: TIBQuery
    Database = dmDados.db
    Transaction = dmDados.Transacao
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      'WHERE NOME= :vNome'
      'AND Senha = :vSenha')
    Left = 664
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vNome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vSenha'
        ParamType = ptUnknown
      end>
    object QUERYLoginCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'USUARIOS.CODIGO'
      Required = True
    end
    object QUERYLoginSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'USUARIOS.STATUS'
      Size = 1
    end
    object QUERYLoginDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'USUARIOS.DTCADASTRO'
    end
    object QUERYLoginDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
      Origin = 'USUARIOS.DTALTERACAO'
    end
    object QUERYLoginNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'USUARIOS.NOME'
      Size = 30
    end
    object QUERYLoginDPTO: TIBStringField
      FieldName = 'DPTO'
      Origin = 'USUARIOS.DPTO'
    end
    object QUERYLoginSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Size = 50
    end
  end
  object TintencoesMissas: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TintencoesMissasAfterScroll
    BeforePost = TintencoesMissasBeforePost
    DeleteSQL.Strings = (
      'delete from INTENCOES_MISSAS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into INTENCOES_MISSAS'
      '  (CODIGO, DTCADASTRO, INTENCOES, PAROQUIA)'
      'values'
      '  (:CODIGO, :DTCADASTRO, :INTENCOES, :PAROQUIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DTCADASTRO,'
      '  INTENCOES,'
      '  PAROQUIA'
      'from INTENCOES_MISSAS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM INTENCOES_MISSAS WHERE PAROQUIA = :PPAROQUIA'
      'AND '
      ' CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update INTENCOES_MISSAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  INTENCOES = :INTENCOES,'
      '  PAROQUIA = :PAROQUIA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 560
    Top = 8
    object TintencoesMissasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'INTENCOES_MISSAS.CODIGO'
      Required = True
    end
    object TintencoesMissasINTENCOES: TIBStringField
      FieldName = 'INTENCOES'
      Origin = 'INTENCOES_MISSAS.INTENCOES'
      Size = 100
    end
    object TintencoesMissasPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'INTENCOES_MISSAS.PAROQUIA'
    end
    object TintencoesMissasDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'INTENCOES_MISSAS.DTCADASTRO'
    end
  end
  object TMarca: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from MARCAPRODUTO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into MARCAPRODUTO'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME'
      'from MARCAPRODUTO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM MARCAPRODUTO WHERE CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update MARCAPRODUTO'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 24
    Top = 72
    object TMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MARCAPRODUTO.CODIGO'
      Required = True
    end
    object TMarcaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'MARCAPRODUTO.NOME'
      Size = 60
    end
  end
  object TGrupo: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from GRUPOPRODUTO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GRUPOPRODUTO'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME'
      'from GRUPOPRODUTO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM GRUPOPRODUTO WHERE CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update GRUPOPRODUTO'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 96
    Top = 72
    object TGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'GRUPOPRODUTO.CODIGO'
      Required = True
    end
    object TGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'GRUPOPRODUTO.NOME'
      Size = 60
    end
  end
  object TCrismandos: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TCrismandosAfterScroll
    BeforePost = TCrismandosBeforePost
    DeleteSQL.Strings = (
      'delete from CRISMANDOS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into CRISMANDOS'
      
        '  (CODIGO, NOME, DT_NASCIMENTO, CPF, RG, ENDERECO, BAIRRO, CIDAD' +
        'E, TELEFONE, '
      '   MAE, PAI, DTCADASTRO, PAROQUIA, CEP, UF)'
      'values'
      
        '  (:CODIGO, :NOME, :DT_NASCIMENTO, :CPF, :RG, :ENDERECO, :BAIRRO' +
        ', :CIDADE, '
      '   :TELEFONE, :MAE, :PAI, :DTCADASTRO, :PAROQUIA, :CEP, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  DT_NASCIMENTO,'
      '  CPF,'
      '  RG,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  MAE,'
      '  PAI,'
      '  DTCADASTRO,'
      '  PAROQUIA,'
      '  CEP,'
      '  UF'
      'from CRISMANDOS '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM CRISMANDOS WHERE PAROQUIA = :PPAROQUIA'
      'AND '
      ' CODIGO=:pCODIGO')
    ModifySQL.Strings = (
      'update CRISMANDOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  CPF = :CPF,'
      '  RG = :RG,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  TELEFONE = :TELEFONE,'
      '  MAE = :MAE,'
      '  PAI = :PAI,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  PAROQUIA = :PAROQUIA,'
      '  CEP = :CEP,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 160
    Top = 72
    object TCrismandosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CRISMANDOS.CODIGO'
      Required = True
    end
    object TCrismandosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CRISMANDOS.NOME'
      Size = 60
    end
    object TCrismandosDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'CRISMANDOS.DT_NASCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object TCrismandosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CRISMANDOS.CPF'
      EditMask = '999.999.999.999;1;-'
      Size = 18
    end
    object TCrismandosRG: TIBStringField
      FieldName = 'RG'
      Origin = 'CRISMANDOS.RG'
      Size = 15
    end
    object TCrismandosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CRISMANDOS.ENDERECO'
      Size = 40
    end
    object TCrismandosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CRISMANDOS.BAIRRO'
      Size = 25
    end
    object TCrismandosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CRISMANDOS.CIDADE'
      Size = 30
    end
    object TCrismandosTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CRISMANDOS.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;-'
      Size = 15
    end
    object TCrismandosMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'CRISMANDOS.MAE'
      Size = 60
    end
    object TCrismandosDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'CRISMANDOS.DTCADASTRO'
    end
    object TCrismandosPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CRISMANDOS.PAROQUIA'
    end
    object TCrismandosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CRISMANDOS.CEP'
      EditMask = '00000-000;1;_'
      Size = 10
    end
    object TCrismandosUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CRISMANDOS.UF'
      Size = 10
    end
    object TCrismandosPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'CRISMANDOS.PAI'
      Size = 60
    end
  end
  object TBatizados: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TBatizadosAfterScroll
    BeforePost = TBatizadosBeforePost
    DeleteSQL.Strings = (
      'delete from BATIZADOS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into BATIZADOS'
      
        '  (CODIGO, NOME, DT_NASCIMENTO, CPF, RG, ENDERECO, BAIRRO, CIDAD' +
        'E, TELEFONE, '
      '   MAE, PAI, DTCADASTRO, PAROQUIA, CEP, UF)'
      'values'
      
        '  (:CODIGO, :NOME, :DT_NASCIMENTO, :CPF, :RG, :ENDERECO, :BAIRRO' +
        ', :CIDADE, '
      '   :TELEFONE, :MAE, :PAI, :DTCADASTRO, :PAROQUIA, :CEP, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  DT_NASCIMENTO,'
      '  CPF,'
      '  RG,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  MAE,'
      '  PAI,'
      '  DTCADASTRO,'
      '  PAROQUIA,'
      '  CEP,'
      '  UF'
      'from BATIZADOS '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM BATIZADOS WHERE PAROQUIA=:pPAROQUIA AND CODIGO=:pC' +
        'ODIGO')
    ModifySQL.Strings = (
      'update BATIZADOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  CPF = :CPF,'
      '  RG = :RG,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  TELEFONE = :TELEFONE,'
      '  MAE = :MAE,'
      '  PAI = :PAI,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  PAROQUIA = :PAROQUIA,'
      '  CEP = :CEP,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 240
    Top = 72
    object TBatizadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BATIZADOS.CODIGO'
      Required = True
    end
    object TBatizadosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'BATIZADOS.NOME'
      Size = 60
    end
    object TBatizadosDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'BATIZADOS.DT_NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object TBatizadosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'BATIZADOS.CPF'
      EditMask = '999.999.999.999;1;-'
      Size = 18
    end
    object TBatizadosRG: TIBStringField
      FieldName = 'RG'
      Origin = 'BATIZADOS.RG'
      Size = 15
    end
    object TBatizadosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'BATIZADOS.ENDERECO'
      Size = 40
    end
    object TBatizadosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'BATIZADOS.BAIRRO'
      Size = 25
    end
    object TBatizadosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'BATIZADOS.CIDADE'
      Size = 30
    end
    object TBatizadosTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'BATIZADOS.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;-'
      Size = 15
    end
    object TBatizadosMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'BATIZADOS.MAE'
      Size = 60
    end
    object TBatizadosPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'BATIZADOS.PAI'
      Size = 60
    end
    object TBatizadosPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'BATIZADOS.PAROQUIA'
    end
    object TBatizadosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'BATIZADOS.CEP'
      EditMask = '00000-000;1;_'
      Size = 10
    end
    object TBatizadosUF: TIBStringField
      FieldName = 'UF'
      Origin = 'BATIZADOS.UF'
      Size = 10
    end
    object TBatizadosDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'BATIZADOS.DTCADASTRO'
    end
  end
  object TEucaristia: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TEucaristiaAfterScroll
    BeforePost = TEucaristiaBeforePost
    DeleteSQL.Strings = (
      'delete from EUCARISTIA'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EUCARISTIA'
      
        '  (NOME, DT_NASCIMENTO, CPF, RG, ENDERECO, BAIRRO, CIDADE, TELEF' +
        'ONE, MAE, '
      '   PAI, DTCADASTRO, PAROQUIA, CEP, UF, CODIGO)'
      'values'
      
        '  (:NOME, :DT_NASCIMENTO, :CPF, :RG, :ENDERECO, :BAIRRO, :CIDADE' +
        ', :TELEFONE, '
      '   :MAE, :PAI, :DTCADASTRO, :PAROQUIA, :CEP, :UF, :CODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME,'
      '  DT_NASCIMENTO,'
      '  CPF,'
      '  RG,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  MAE,'
      '  PAI,'
      '  DTCADASTRO,'
      '  PAROQUIA,'
      '  CEP,'
      '  UF,'
      '  CODIGO'
      'from EUCARISTIA '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'SELECT * FROM EUCARISTIA WHERE PAROQUIA=:pPAROQUIA AND CODIGO=:p' +
        'CODIGO')
    ModifySQL.Strings = (
      'update EUCARISTIA'
      'set'
      '  NOME = :NOME,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  CPF = :CPF,'
      '  RG = :RG,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  TELEFONE = :TELEFONE,'
      '  MAE = :MAE,'
      '  PAI = :PAI,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  PAROQUIA = :PAROQUIA,'
      '  CEP = :CEP,'
      '  UF = :UF,'
      '  CODIGO = :CODIGO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 312
    Top = 72
    object TEucaristiaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'EUCARISTIA.NOME'
      Size = 60
    end
    object TEucaristiaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'EUCARISTIA.DT_NASCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object TEucaristiaCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'EUCARISTIA.CPF'
      EditMask = '999.999.999.999;1;-'
      Size = 18
    end
    object TEucaristiaRG: TIBStringField
      FieldName = 'RG'
      Origin = 'EUCARISTIA.RG'
      Size = 15
    end
    object TEucaristiaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'EUCARISTIA.ENDERECO'
      Size = 40
    end
    object TEucaristiaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'EUCARISTIA.BAIRRO'
      Size = 25
    end
    object TEucaristiaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'EUCARISTIA.CIDADE'
      Size = 30
    end
    object TEucaristiaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'EUCARISTIA.TELEFONE'
      EditMask = '!\(99\)0000-0000;1;-'
      Size = 15
    end
    object TEucaristiaMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'EUCARISTIA.MAE'
      Size = 60
    end
    object TEucaristiaPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'EUCARISTIA.PAI'
      Size = 60
    end
    object TEucaristiaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'EUCARISTIA.DTCADASTRO'
    end
    object TEucaristiaPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'EUCARISTIA.PAROQUIA'
    end
    object TEucaristiaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'EUCARISTIA.CEP'
      EditMask = '00000-000;1;_'
      Size = 10
    end
    object TEucaristiaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'EUCARISTIA.UF'
      Size = 10
    end
    object TEucaristiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'EUCARISTIA.CODIGO'
      Required = True
    end
  end
  object tConfig: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from CONFIGURACAO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CONFIGCONTA = :OLD_CONFIGCONTA and'
      '  MODULO = :OLD_MODULO')
    InsertSQL.Strings = (
      'insert into CONFIGURACAO'
      '  (PAROQUIA, CONFIGCONTA, DESCCONFIG, TIPO, VALOR, MODULO)'
      'values'
      '  (:PAROQUIA, :CONFIGCONTA, :DESCCONFIG, :TIPO, :VALOR, :MODULO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CONFIGCONTA,'
      '  DESCCONFIG,'
      '  TIPO,'
      '  VALOR,'
      '  MODULO'
      'from CONFIGURACAO '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CONFIGCONTA = :CONFIGCONTA and'
      '  MODULO = :MODULO')
    SelectSQL.Strings = (
      'SELECT * FROM CONFIGURACAO WHERE PAROQUIA= :PPAROQUIA'
      'AND MODULO= :PMODULO')
    ModifySQL.Strings = (
      'update CONFIGURACAO'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  CONFIGCONTA = :CONFIGCONTA,'
      '  DESCCONFIG = :DESCCONFIG,'
      '  TIPO = :TIPO,'
      '  VALOR = :VALOR,'
      '  MODULO = :MODULO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CONFIGCONTA = :OLD_CONFIGCONTA and'
      '  MODULO = :OLD_MODULO')
    Left = 368
    Top = 72
    object tConfigPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CONFIGURACAO.PAROQUIA'
      Required = True
    end
    object tConfigCONFIGCONTA: TIntegerField
      FieldName = 'CONFIGCONTA'
      Origin = 'CONFIGURACAO.CONFIGCONTA'
      Required = True
    end
    object tConfigDESCCONFIG: TIBStringField
      FieldName = 'DESCCONFIG'
      Origin = 'CONFIGURACAO.DESCCONFIG'
      Size = 200
    end
    object tConfigTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'CONFIGURACAO.TIPO'
      FixedChar = True
      Size = 1
    end
    object tConfigMODULO: TIntegerField
      FieldName = 'MODULO'
      Origin = 'CONFIGURACAO.MODULO'
    end
    object tConfigVALOR: TIBStringField
      DisplayWidth = 20
      FieldName = 'VALOR'
      Origin = '"CONFIGURACAO"."VALOR"'
      Size = 250
    end
  end
  object TBatisterio: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TBatisterioAfterScroll
    BeforePost = TBatisterioBeforePost
    DeleteSQL.Strings = (
      'delete from BATISTERIO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into BATISTERIO'
      
        '  (PAROQUIA, CODIGO, CODBATIZANDO, NOMEBATIZANDO, DTNASC, NATURA' +
        'LIDADE, '
      
        '   PAI, MAE, PADRINHO, MADRINHA, DTBATISMO, PADRE, COMUNIDADE, O' +
        'BSERVACAO, '
      '   LIVRO, FOLHA, NUMERO, DTCADASTRO)'
      'values'
      
        '  (:PAROQUIA, :CODIGO, :CODBATIZANDO, :NOMEBATIZANDO, :DTNASC, :' +
        'NATURALIDADE, '
      
        '   :PAI, :MAE, :PADRINHO, :MADRINHA, :DTBATISMO, :PADRE, :COMUNI' +
        'DADE, :OBSERVACAO, '
      '   :LIVRO, :FOLHA, :NUMERO, :DTCADASTRO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  CODBATIZANDO,'
      '  NOMEBATIZANDO,'
      '  DTNASC,'
      '  NATURALIDADE,'
      '  PAI,'
      '  MAE,'
      '  PADRINHO,'
      '  MADRINHA,'
      '  DTBATISMO,'
      '  PADRE,'
      '  COMUNIDADE,'
      '  OBSERVACAO,'
      '  LIVRO,'
      '  FOLHA,'
      '  NUMERO,'
      '  DTCADASTRO'
      'from BATISTERIO '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM BATISTERIO WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO=  :PCODIGO')
    ModifySQL.Strings = (
      'update BATISTERIO'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  CODIGO = :CODIGO,'
      '  CODBATIZANDO = :CODBATIZANDO,'
      '  NOMEBATIZANDO = :NOMEBATIZANDO,'
      '  DTNASC = :DTNASC,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  PAI = :PAI,'
      '  MAE = :MAE,'
      '  PADRINHO = :PADRINHO,'
      '  MADRINHA = :MADRINHA,'
      '  DTBATISMO = :DTBATISMO,'
      '  PADRE = :PADRE,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  LIVRO = :LIVRO,'
      '  FOLHA = :FOLHA,'
      '  NUMERO = :NUMERO,'
      '  DTCADASTRO = :DTCADASTRO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 416
    Top = 73
    object TBatisterioPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'BATISTERIO.PAROQUIA'
      Required = True
    end
    object TBatisterioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BATISTERIO.CODIGO'
      Required = True
    end
    object TBatisterioCODBATIZANDO: TIntegerField
      FieldName = 'CODBATIZANDO'
      Origin = 'BATISTERIO.CODBATIZANDO'
    end
    object TBatisterioNOMEBATIZANDO: TIBStringField
      FieldName = 'NOMEBATIZANDO'
      Origin = 'BATISTERIO.NOMEBATIZANDO'
      Size = 60
    end
    object TBatisterioDTNASC: TDateField
      FieldName = 'DTNASC'
      Origin = 'BATISTERIO.DTNASC'
      EditMask = '99/99/9999'
    end
    object TBatisterioNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = 'BATISTERIO.NATURALIDADE'
      Size = 60
    end
    object TBatisterioPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'BATISTERIO.PAI'
      Size = 60
    end
    object TBatisterioMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'BATISTERIO.MAE'
      Size = 60
    end
    object TBatisterioPADRINHO: TIBStringField
      FieldName = 'PADRINHO'
      Origin = 'BATISTERIO.PADRINHO'
      Size = 60
    end
    object TBatisterioMADRINHA: TIBStringField
      FieldName = 'MADRINHA'
      Origin = 'BATISTERIO.MADRINHA'
      Size = 60
    end
    object TBatisterioDTBATISMO: TDateField
      FieldName = 'DTBATISMO'
      Origin = 'BATISTERIO.DTBATISMO'
      EditMask = '99/99/9999;1;_'
    end
    object TBatisterioPADRE: TIntegerField
      FieldName = 'PADRE'
      Origin = 'BATISTERIO.PADRE'
    end
    object TBatisterioCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'BATISTERIO.COMUNIDADE'
    end
    object TBatisterioOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'BATISTERIO.OBSERVACAO'
      Size = 250
    end
    object TBatisterioLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = 'BATISTERIO.LIVRO'
      Size = 10
    end
    object TBatisterioFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = 'BATISTERIO.FOLHA'
      Size = 10
    end
    object TBatisterioNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'BATISTERIO.NUMERO'
      Size = 10
    end
    object TBatisterioDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'BATISTERIO.DTCADASTRO'
    end
  end
  object TCrisma: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TCrismaAfterScroll
    BeforePost = TCrismaBeforePost
    DeleteSQL.Strings = (
      'delete from CRISMA'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRISMA'
      
        '  (PAROQUIA, CODIGO, CODCRISMANDO, NOMECRISMANDO, DTNASC, NATURA' +
        'LIDADE, '
      
        '   PAI, MAE, PADRINHO, MADRINHA, DTCRISMA, PADRE, COMUNIDADE, OB' +
        'SERVACAO, '
      '   LIVRO, FOLHA, NUMERO, DTCADASTRO)'
      'values'
      
        '  (:PAROQUIA, :CODIGO, :CODCRISMANDO, :NOMECRISMANDO, :DTNASC, :' +
        'NATURALIDADE, '
      
        '   :PAI, :MAE, :PADRINHO, :MADRINHA, :DTCRISMA, :PADRE, :COMUNID' +
        'ADE, :OBSERVACAO, '
      '   :LIVRO, :FOLHA, :NUMERO, :DTCADASTRO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  CODCRISMANDO,'
      '  NOMECRISMANDO,'
      '  DTNASC,'
      '  NATURALIDADE,'
      '  PAI,'
      '  MAE,'
      '  PADRINHO,'
      '  MADRINHA,'
      '  DTCRISMA,'
      '  PADRE,'
      '  COMUNIDADE,'
      '  OBSERVACAO,'
      '  LIVRO,'
      '  FOLHA,'
      '  NUMERO,'
      '  DTCADASTRO'
      'from CRISMA '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM CRISMA WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO=:PCODIGO')
    ModifySQL.Strings = (
      'update CRISMA'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  CODIGO = :CODIGO,'
      '  CODCRISMANDO = :CODCRISMANDO,'
      '  NOMECRISMANDO = :NOMECRISMANDO,'
      '  DTNASC = :DTNASC,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  PAI = :PAI,'
      '  MAE = :MAE,'
      '  PADRINHO = :PADRINHO,'
      '  MADRINHA = :MADRINHA,'
      '  DTCRISMA = :DTCRISMA,'
      '  PADRE = :PADRE,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  LIVRO = :LIVRO,'
      '  FOLHA = :FOLHA,'
      '  NUMERO = :NUMERO,'
      '  DTCADASTRO = :DTCADASTRO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 472
    Top = 72
    object TCrismaPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CRISMA.PAROQUIA'
      Required = True
    end
    object TCrismaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CRISMA.CODIGO'
      Required = True
    end
    object TCrismaCODCRISMANDO: TIntegerField
      FieldName = 'CODCRISMANDO'
      Origin = 'CRISMA.CODCRISMANDO'
    end
    object TCrismaNOMECRISMANDO: TIBStringField
      FieldName = 'NOMECRISMANDO'
      Origin = 'CRISMA.NOMECRISMANDO'
      Size = 60
    end
    object TCrismaDTNASC: TDateField
      FieldName = 'DTNASC'
      Origin = 'CRISMA.DTNASC'
      EditMask = '99/99/9999'
    end
    object TCrismaNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = 'CRISMA.NATURALIDADE'
      Size = 60
    end
    object TCrismaPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'CRISMA.PAI'
      Size = 60
    end
    object TCrismaMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'CRISMA.MAE'
      Size = 60
    end
    object TCrismaPADRINHO: TIBStringField
      FieldName = 'PADRINHO'
      Origin = 'CRISMA.PADRINHO'
      Size = 60
    end
    object TCrismaMADRINHA: TIBStringField
      FieldName = 'MADRINHA'
      Origin = 'CRISMA.MADRINHA'
      Size = 60
    end
    object TCrismaDTCRISMA: TDateField
      FieldName = 'DTCRISMA'
      Origin = 'CRISMA.DTCRISMA'
      EditMask = '99/99/9999'
    end
    object TCrismaPADRE: TIntegerField
      FieldName = 'PADRE'
      Origin = 'CRISMA.PADRE'
    end
    object TCrismaCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'CRISMA.COMUNIDADE'
    end
    object TCrismaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'CRISMA.OBSERVACAO'
      Size = 250
    end
    object TCrismaLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = 'CRISMA.LIVRO'
      Size = 10
    end
    object TCrismaFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = 'CRISMA.FOLHA'
      Size = 10
    end
    object TCrismaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CRISMA.NUMERO'
      Size = 10
    end
    object TCrismaDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'CRISMA.DTCADASTRO'
    end
  end
  object tEucaristico: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = tEucaristicoAfterScroll
    BeforePost = tEucaristicoBeforePost
    DeleteSQL.Strings = (
      'delete from EUCARISTICO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EUCARISTICO'
      
        '  (PAROQUIA, COMUNIDADE, CODIGO, CODEUCARISTIA, NOMEEUCARISTIA, ' +
        'DTNASC, '
      
        '   NATURALIDADE, PAI, MAE, PADRINHO, MADRINHA, DTEUCARISTIA, PAD' +
        'RE, CATEQUISTA, '
      '   OBSERVACAO, LIVRO, FOLHA, NUMERO, DTCADASTRO)'
      'values'
      
        '  (:PAROQUIA, :COMUNIDADE, :CODIGO, :CODEUCARISTIA, :NOMEEUCARIS' +
        'TIA, :DTNASC, '
      
        '   :NATURALIDADE, :PAI, :MAE, :PADRINHO, :MADRINHA, :DTEUCARISTI' +
        'A, :PADRE, '
      
        '   :CATEQUISTA, :OBSERVACAO, :LIVRO, :FOLHA, :NUMERO, :DTCADASTR' +
        'O)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  COMUNIDADE,'
      '  CODIGO,'
      '  CODEUCARISTIA,'
      '  NOMEEUCARISTIA,'
      '  DTNASC,'
      '  NATURALIDADE,'
      '  PAI,'
      '  MAE,'
      '  PADRINHO,'
      '  MADRINHA,'
      '  DTEUCARISTIA,'
      '  PADRE,'
      '  CATEQUISTA,'
      '  OBSERVACAO,'
      '  LIVRO,'
      '  FOLHA,'
      '  NUMERO,'
      '  DTCADASTRO'
      'from EUCARISTICO '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM EUCARISTICO WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO=  :PCODIGO')
    ModifySQL.Strings = (
      'update EUCARISTICO'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  COMUNIDADE = :COMUNIDADE,'
      '  CODIGO = :CODIGO,'
      '  CODEUCARISTIA = :CODEUCARISTIA,'
      '  NOMEEUCARISTIA = :NOMEEUCARISTIA,'
      '  DTNASC = :DTNASC,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  PAI = :PAI,'
      '  MAE = :MAE,'
      '  PADRINHO = :PADRINHO,'
      '  MADRINHA = :MADRINHA,'
      '  DTEUCARISTIA = :DTEUCARISTIA,'
      '  PADRE = :PADRE,'
      '  CATEQUISTA = :CATEQUISTA,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  LIVRO = :LIVRO,'
      '  FOLHA = :FOLHA,'
      '  NUMERO = :NUMERO,'
      '  DTCADASTRO = :DTCADASTRO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 544
    Top = 72
    object tEucaristicoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'EUCARISTICO.PAROQUIA'
      Required = True
    end
    object tEucaristicoCOMUNIDADE: TIntegerField
      FieldName = 'COMUNIDADE'
      Origin = 'EUCARISTICO.COMUNIDADE'
    end
    object tEucaristicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'EUCARISTICO.CODIGO'
      Required = True
    end
    object tEucaristicoCODEUCARISTIA: TIntegerField
      FieldName = 'CODEUCARISTIA'
      Origin = 'EUCARISTICO.CODEUCARISTIA'
    end
    object tEucaristicoNOMEEUCARISTIA: TIBStringField
      FieldName = 'NOMEEUCARISTIA'
      Origin = 'EUCARISTICO.NOMEEUCARISTIA'
      Size = 60
    end
    object tEucaristicoDTNASC: TDateField
      FieldName = 'DTNASC'
      Origin = 'EUCARISTICO.DTNASC'
      EditMask = '99/99/9999'
    end
    object tEucaristicoNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = 'EUCARISTICO.NATURALIDADE'
      Size = 60
    end
    object tEucaristicoPAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'EUCARISTICO.PAI'
      Size = 60
    end
    object tEucaristicoMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'EUCARISTICO.MAE'
      Size = 60
    end
    object tEucaristicoPADRINHO: TIBStringField
      FieldName = 'PADRINHO'
      Origin = 'EUCARISTICO.PADRINHO'
      Size = 60
    end
    object tEucaristicoMADRINHA: TIBStringField
      FieldName = 'MADRINHA'
      Origin = 'EUCARISTICO.MADRINHA'
      Size = 60
    end
    object tEucaristicoDTEUCARISTIA: TDateField
      FieldName = 'DTEUCARISTIA'
      Origin = 'EUCARISTICO.DTEUCARISTIA'
      EditMask = '99/99/9999'
    end
    object tEucaristicoPADRE: TIntegerField
      FieldName = 'PADRE'
      Origin = 'EUCARISTICO.PADRE'
    end
    object tEucaristicoCATEQUISTA: TIntegerField
      FieldName = 'CATEQUISTA'
      Origin = 'EUCARISTICO.CATEQUISTA'
    end
    object tEucaristicoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'EUCARISTICO.OBSERVACAO'
      Size = 250
    end
    object tEucaristicoLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = 'EUCARISTICO.LIVRO'
      Size = 10
    end
    object tEucaristicoFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = 'EUCARISTICO.FOLHA'
      Size = 10
    end
    object tEucaristicoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'EUCARISTICO.NUMERO'
      Size = 10
    end
    object tEucaristicoDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'EUCARISTICO.DTCADASTRO'
    end
  end
  object TDizimo: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from DIZIMO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into DIZIMO'
      
        '  (ANO, CAMPANHA, CODIGO, DATA, DIZIMISTA, MES, ORIGEM, PAROQUIA' +
        ', PERIODO, '
      '   TOTPERIODO, VALOR)'
      'values'
      
        '  (:ANO, :CAMPANHA, :CODIGO, :DATA, :DIZIMISTA, :MES, :ORIGEM, :' +
        'PAROQUIA, '
      '   :PERIODO, :TOTPERIODO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  MES,'
      '  DIZIMISTA,'
      '  DATA,'
      '  VALOR,'
      '  PERIODO,'
      '  ANO,'
      '  ORIGEM,'
      '  TOTPERIODO,'
      '  CAMPANHA'
      'from DIZIMO '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM DIZIMO WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update DIZIMO'
      'set'
      '  ANO = :ANO,'
      '  CAMPANHA = :CAMPANHA,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DIZIMISTA = :DIZIMISTA,'
      '  MES = :MES,'
      '  ORIGEM = :ORIGEM,'
      '  PAROQUIA = :PAROQUIA,'
      '  PERIODO = :PERIODO,'
      '  TOTPERIODO = :TOTPERIODO,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 608
    Top = 72
    object TDizimoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"DIZIMO"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TDizimoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"DIZIMO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TDizimoMES: TIBStringField
      FieldName = 'MES'
      Origin = '"DIZIMO"."MES"'
      FixedChar = True
      Size = 2
    end
    object TDizimoDIZIMISTA: TIntegerField
      FieldName = 'DIZIMISTA'
      Origin = '"DIZIMO"."DIZIMISTA"'
    end
    object TDizimoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DIZIMO"."DATA"'
      EditMask = '99/99/9999'
    end
    object TDizimoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"DIZIMO"."VALOR"'
      Precision = 18
      Size = 2
    end
    object TDizimoANO: TIBStringField
      FieldName = 'ANO'
      Origin = '"DIZIMO"."ANO"'
      Size = 4
    end
    object TDizimoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"DIZIMO"."ORIGEM"'
    end
    object TDizimoPERIODO: TIBStringField
      FieldName = 'PERIODO'
      Origin = '"DIZIMO"."PERIODO"'
    end
    object TDizimoTOTPERIODO: TIBBCDField
      FieldName = 'TOTPERIODO'
      Origin = '"DIZIMO"."TOTPERIODO"'
      Precision = 18
      Size = 2
    end
    object TDizimoCAMPANHA: TIBStringField
      FieldName = 'CAMPANHA'
      Origin = '"DIZIMO"."CAMPANHA"'
      FixedChar = True
      Size = 1
    end
  end
  object TUsuario: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TUsuarioAfterScroll
    BeforePost = TUsuarioBeforePost
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (ALTERACAO, CODIGO, DPTO, DTALTERACAO, DTCADASTRO, EXCLUSAO, H' +
        'ABILITAMENU, '
      '   INCLUSAO, NOME, PAROQUIA, SENHA, STATUS)'
      'values'
      
        '  (:ALTERACAO, :CODIGO, :DPTO, :DTALTERACAO, :DTCADASTRO, :EXCLU' +
        'SAO, :HABILITAMENU, '
      '   :INCLUSAO, :NOME, :PAROQUIA, :SENHA, :STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  SENHA,'
      '  STATUS,'
      '  DTCADASTRO,'
      '  DTALTERACAO,'
      '  DPTO,'
      '  PAROQUIA,'
      '  HABILITAMENU,'
      '  INCLUSAO,'
      '  ALTERACAO,'
      '  EXCLUSAO'
      'from USUARIOS '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM USUARIOS WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO=:PCODIGO ')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  ALTERACAO = :ALTERACAO,'
      '  CODIGO = :CODIGO,'
      '  DPTO = :DPTO,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  EXCLUSAO = :EXCLUSAO,'
      '  HABILITAMENU = :HABILITAMENU,'
      '  INCLUSAO = :INCLUSAO,'
      '  NOME = :NOME,'
      '  PAROQUIA = :PAROQUIA,'
      '  SENHA = :SENHA,'
      '  STATUS = :STATUS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 670
    Top = 72
    object TUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"USUARIOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"USUARIOS"."NOME"'
      Size = 30
    end
    object TUsuarioSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"USUARIOS"."STATUS"'
      Size = 1
    end
    object TUsuarioDPTO: TIBStringField
      FieldName = 'DPTO'
      Origin = '"USUARIOS"."DPTO"'
    end
    object TUsuarioPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"USUARIOS"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuarioHABILITAMENU: TIBStringField
      FieldName = 'HABILITAMENU'
      Origin = '"USUARIOS"."HABILITAMENU"'
      Size = 1
    end
    object TUsuarioINCLUSAO: TIBStringField
      FieldName = 'INCLUSAO'
      Origin = '"USUARIOS"."INCLUSAO"'
      Size = 1
    end
    object TUsuarioALTERACAO: TIBStringField
      FieldName = 'ALTERACAO'
      Origin = '"USUARIOS"."ALTERACAO"'
      Size = 1
    end
    object TUsuarioEXCLUSAO: TIBStringField
      FieldName = 'EXCLUSAO'
      Origin = '"USUARIOS"."EXCLUSAO"'
      Size = 1
    end
    object TUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Size = 50
    end
    object TUsuarioDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'USUARIOS.DTCADASTRO'
    end
    object TUsuarioDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'USUARIOS.DTALTERACAO'
    end
  end
  object TPermissao: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from PERMISSOES'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into PERMISSOES'
      
        '  (ALTERACAO, CODIGO, DESCRICAO, EXCLUSAO, FORM, IMPRESSAO, INCL' +
        'USAO, MENU, '
      '   PAROQUIA, USUARIO, VISUALIZAR)'
      'values'
      
        '  (:ALTERACAO, :CODIGO, :DESCRICAO, :EXCLUSAO, :FORM, :IMPRESSAO' +
        ', :INCLUSAO, '
      '   :MENU, :PAROQUIA, :USUARIO, :VISUALIZAR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  USUARIO,'
      '  FORM,'
      '  MENU,'
      '  VISUALIZAR,'
      '  INCLUSAO,'
      '  EXCLUSAO,'
      '  ALTERACAO,'
      '  IMPRESSAO,'
      '  DESCRICAO'
      'from PERMISSOES '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'SELECT * FROM PERMISSOES WHERE PAROQUIA= :PPAROQUIA'
      'AND USUARIO= :PUSUARIO')
    ModifySQL.Strings = (
      'update PERMISSOES'
      'set'
      '  ALTERACAO = :ALTERACAO,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  EXCLUSAO = :EXCLUSAO,'
      '  FORM = :FORM,'
      '  IMPRESSAO = :IMPRESSAO,'
      '  INCLUSAO = :INCLUSAO,'
      '  MENU = :MENU,'
      '  PAROQUIA = :PAROQUIA,'
      '  USUARIO = :USUARIO,'
      '  VISUALIZAR = :VISUALIZAR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  USUARIO = :OLD_USUARIO')
    Left = 728
    Top = 72
    object TPermissaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PERMISSOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPermissaoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"PERMISSOES"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPermissaoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"PERMISSOES"."USUARIO"'
    end
    object TPermissaoFORM: TIBStringField
      FieldName = 'FORM'
      Origin = '"PERMISSOES"."FORM"'
      Size = 30
    end
    object TPermissaoMENU: TIBStringField
      FieldName = 'MENU'
      Origin = '"PERMISSOES"."MENU"'
      Size = 30
    end
    object TPermissaoVISUALIZAR: TIBStringField
      FieldName = 'VISUALIZAR'
      Origin = '"PERMISSOES"."VISUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object TPermissaoINCLUSAO: TIBStringField
      FieldName = 'INCLUSAO'
      Origin = '"PERMISSOES"."INCLUSAO"'
      FixedChar = True
      Size = 1
    end
    object TPermissaoEXCLUSAO: TIBStringField
      FieldName = 'EXCLUSAO'
      Origin = '"PERMISSOES"."EXCLUSAO"'
      FixedChar = True
      Size = 1
    end
    object TPermissaoALTERACAO: TIBStringField
      FieldName = 'ALTERACAO'
      Origin = '"PERMISSOES"."ALTERACAO"'
      FixedChar = True
      Size = 1
    end
    object TPermissaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PERMISSOES"."DESCRICAO"'
      Size = 250
    end
    object TPermissaoIMPRESSAO: TIBStringField
      FieldName = 'IMPRESSAO'
      Origin = '"PERMISSOES"."IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
  end
  object TFornecedor: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (BAIRRO, CELULAR, CEP, CGC, CIDADE, CODIGO, CPF, DTALTERACAO, ' +
        'DTCADASTRO, '
      
        '   EMAIL, ENDERECO, FAX, NOME_FANTASIA, OBSERVACAO, PAROQUIA, RA' +
        'ZAO_SOCIAL, '
      '   RG_INSCRICAO, STATUS, TELEFONE, TIPO, UF)'
      'values'
      
        '  (:BAIRRO, :CELULAR, :CEP, :CGC, :CIDADE, :CODIGO, :CPF, :DTALT' +
        'ERACAO, '
      
        '   :DTCADASTRO, :EMAIL, :ENDERECO, :FAX, :NOME_FANTASIA, :OBSERV' +
        'ACAO, :PAROQUIA, '
      '   :RAZAO_SOCIAL, :RG_INSCRICAO, :STATUS, :TELEFONE, :TIPO, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DTCADASTRO,'
      '  DTALTERACAO,'
      '  STATUS,'
      '  NOME_FANTASIA,'
      '  RAZAO_SOCIAL,'
      '  TIPO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  RG_INSCRICAO,'
      '  CGC,'
      '  CPF,'
      '  TELEFONE,'
      '  FAX,'
      '  EMAIL,'
      '  OBSERVACAO,'
      '  CELULAR'
      'from FORNECEDOR '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM FORNECEDOR WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CGC = :CGC,'
      '  CIDADE = :CIDADE,'
      '  CODIGO = :CODIGO,'
      '  CPF = :CPF,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  FAX = :FAX,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PAROQUIA = :PAROQUIA,'
      '  RAZAO_SOCIAL = :RAZAO_SOCIAL,'
      '  RG_INSCRICAO = :RG_INSCRICAO,'
      '  STATUS = :STATUS,'
      '  TELEFONE = :TELEFONE,'
      '  TIPO = :TIPO,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 24
    Top = 123
    object TFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FORNECEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFornecedorPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"FORNECEDOR"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = '"FORNECEDOR"."DTCADASTRO"'
    end
    object TFornecedorDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
      Origin = '"FORNECEDOR"."DTALTERACAO"'
    end
    object TFornecedorSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"FORNECEDOR"."STATUS"'
      Size = 1
    end
    object TFornecedorNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"FORNECEDOR"."NOME_FANTASIA"'
      Size = 60
    end
    object TFornecedorRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"FORNECEDOR"."RAZAO_SOCIAL"'
      Size = 60
    end
    object TFornecedorTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FORNECEDOR"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object TFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FORNECEDOR"."ENDERECO"'
      Size = 40
    end
    object TFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Size = 25
    end
    object TFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"FORNECEDOR"."CIDADE"'
      Size = 30
    end
    object TFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FORNECEDOR"."UF"'
      Size = 10
    end
    object TFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
      EditMask = '99999-999;1;_'
      Size = 10
    end
    object TFornecedorRG_INSCRICAO: TIBStringField
      FieldName = 'RG_INSCRICAO'
      Origin = '"FORNECEDOR"."RG_INSCRICAO"'
      Size = 15
    end
    object TFornecedorCGC: TIBStringField
      FieldName = 'CGC'
      Origin = '"FORNECEDOR"."CGC"'
      EditMask = '99.999.999/9999-99'
      Size = 18
    end
    object TFornecedorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"FORNECEDOR"."CPF"'
      EditMask = '999.999.999-99'
      Size = 18
    end
    object TFornecedorTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FORNECEDOR"."TELEFONE"'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"FORNECEDOR"."FAX"'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
      Size = 60
    end
    object TFornecedorOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FORNECEDOR"."OBSERVACAO"'
      Size = 250
    end
    object TFornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FORNECEDOR"."CELULAR"'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
  end
  object TNoivos: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TNoivosAfterScroll
    BeforePost = TNoivosBeforePost
    DeleteSQL.Strings = (
      'delete from NOIVOS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into NOIVOS'
      
        '  (CODIGO, PAROQUIA, DTALTERACAO, DTCADASTRO, NOME_NOIVO, DTNASC' +
        'NOIVO, '
      
        '   CPF_NOIVO, RG_NOIVO, ENDERECO_NOIVO, BAIRRO_NOIVO, CIDADE_NOI' +
        'VO, TELEFONE_NOIVO, '
      
        '   MAE_NOIVO, PAI_NOIVO, CEP_NOIVO, UF_NOIVO, NOME_NOIVA, DTNASC' +
        'NOIVA, '
      
        '   CPF_NOIVA, RG_NOIVA, ENDERECO_NOIVA, BAIRRO_NOIVA, CIDADE_NOI' +
        'VA, TELEFONE_NOIVA, '
      '   MAE_NOIVA, PAI_NOIVA, CEP_NOIVA, UF_NOIVA)'
      'values'
      
        '  (:CODIGO, :PAROQUIA, :DTALTERACAO, :DTCADASTRO, :NOME_NOIVO, :' +
        'DTNASCNOIVO, '
      
        '   :CPF_NOIVO, :RG_NOIVO, :ENDERECO_NOIVO, :BAIRRO_NOIVO, :CIDAD' +
        'E_NOIVO, '
      
        '   :TELEFONE_NOIVO, :MAE_NOIVO, :PAI_NOIVO, :CEP_NOIVO, :UF_NOIV' +
        'O, :NOME_NOIVA, '
      
        '   :DTNASCNOIVA, :CPF_NOIVA, :RG_NOIVA, :ENDERECO_NOIVA, :BAIRRO' +
        '_NOIVA, '
      
        '   :CIDADE_NOIVA, :TELEFONE_NOIVA, :MAE_NOIVA, :PAI_NOIVA, :CEP_' +
        'NOIVA, '
      '   :UF_NOIVA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DTALTERACAO,'
      '  DTCADASTRO,'
      '  NOME_NOIVO,'
      '  DTNASCNOIVO,'
      '  CPF_NOIVO,'
      '  RG_NOIVO,'
      '  ENDERECO_NOIVO,'
      '  BAIRRO_NOIVO,'
      '  CIDADE_NOIVO,'
      '  TELEFONE_NOIVO,'
      '  MAE_NOIVO,'
      '  PAI_NOIVO,'
      '  CEP_NOIVO,'
      '  UF_NOIVO,'
      '  NOME_NOIVA,'
      '  DTNASCNOIVA,'
      '  CPF_NOIVA,'
      '  RG_NOIVA,'
      '  ENDERECO_NOIVA,'
      '  BAIRRO_NOIVA,'
      '  CIDADE_NOIVA,'
      '  TELEFONE_NOIVA,'
      '  MAE_NOIVA,'
      '  PAI_NOIVA,'
      '  CEP_NOIVA,'
      '  UF_NOIVA'
      'from NOIVOS '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM NOIVOS WHERE PAROQUIA=:pPAROQUIA  AND CODIGO=:pCOD' +
        'IGO')
    ModifySQL.Strings = (
      'update NOIVOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  PAROQUIA = :PAROQUIA,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  NOME_NOIVO = :NOME_NOIVO,'
      '  DTNASCNOIVO = :DTNASCNOIVO,'
      '  CPF_NOIVO = :CPF_NOIVO,'
      '  RG_NOIVO = :RG_NOIVO,'
      '  ENDERECO_NOIVO = :ENDERECO_NOIVO,'
      '  BAIRRO_NOIVO = :BAIRRO_NOIVO,'
      '  CIDADE_NOIVO = :CIDADE_NOIVO,'
      '  TELEFONE_NOIVO = :TELEFONE_NOIVO,'
      '  MAE_NOIVO = :MAE_NOIVO,'
      '  PAI_NOIVO = :PAI_NOIVO,'
      '  CEP_NOIVO = :CEP_NOIVO,'
      '  UF_NOIVO = :UF_NOIVO,'
      '  NOME_NOIVA = :NOME_NOIVA,'
      '  DTNASCNOIVA = :DTNASCNOIVA,'
      '  CPF_NOIVA = :CPF_NOIVA,'
      '  RG_NOIVA = :RG_NOIVA,'
      '  ENDERECO_NOIVA = :ENDERECO_NOIVA,'
      '  BAIRRO_NOIVA = :BAIRRO_NOIVA,'
      '  CIDADE_NOIVA = :CIDADE_NOIVA,'
      '  TELEFONE_NOIVA = :TELEFONE_NOIVA,'
      '  MAE_NOIVA = :MAE_NOIVA,'
      '  PAI_NOIVA = :PAI_NOIVA,'
      '  CEP_NOIVA = :CEP_NOIVA,'
      '  UF_NOIVA = :UF_NOIVA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 104
    Top = 128
    object TNoivosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'NOIVOS.CODIGO'
      Required = True
    end
    object TNoivosPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'NOIVOS.PAROQUIA'
      Required = True
    end
    object TNoivosDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'NOIVOS.DTALTERACAO'
    end
    object TNoivosDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'NOIVOS.DTCADASTRO'
    end
    object TNoivosNOME_NOIVO: TIBStringField
      FieldName = 'NOME_NOIVO'
      Origin = 'NOIVOS.NOME_NOIVO'
      Size = 60
    end
    object TNoivosDTNASCNOIVO: TDateField
      FieldName = 'DTNASCNOIVO'
      Origin = 'NOIVOS.DTNASCNOIVO'
      EditMask = '!99/99/9999;_'
    end
    object TNoivosCPF_NOIVO: TIBStringField
      FieldName = 'CPF_NOIVO'
      Origin = 'NOIVOS.CPF_NOIVO'
      EditMask = '999.999.999.999;1;-'
      Size = 18
    end
    object TNoivosRG_NOIVO: TIBStringField
      FieldName = 'RG_NOIVO'
      Origin = 'NOIVOS.RG_NOIVO'
      Size = 15
    end
    object TNoivosENDERECO_NOIVO: TIBStringField
      FieldName = 'ENDERECO_NOIVO'
      Origin = 'NOIVOS.ENDERECO_NOIVO'
      Size = 40
    end
    object TNoivosBAIRRO_NOIVO: TIBStringField
      FieldName = 'BAIRRO_NOIVO'
      Origin = 'NOIVOS.BAIRRO_NOIVO'
      Size = 25
    end
    object TNoivosCIDADE_NOIVO: TIBStringField
      FieldName = 'CIDADE_NOIVO'
      Origin = 'NOIVOS.CIDADE_NOIVO'
      Size = 30
    end
    object TNoivosTELEFONE_NOIVO: TIBStringField
      FieldName = 'TELEFONE_NOIVO'
      Origin = 'NOIVOS.TELEFONE_NOIVO'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 15
    end
    object TNoivosMAE_NOIVO: TIBStringField
      FieldName = 'MAE_NOIVO'
      Origin = 'NOIVOS.MAE_NOIVO'
      Size = 60
    end
    object TNoivosPAI_NOIVO: TIBStringField
      FieldName = 'PAI_NOIVO'
      Origin = 'NOIVOS.PAI_NOIVO'
      Size = 60
    end
    object TNoivosCEP_NOIVO: TIBStringField
      FieldName = 'CEP_NOIVO'
      Origin = 'NOIVOS.CEP_NOIVO'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TNoivosUF_NOIVO: TIBStringField
      FieldName = 'UF_NOIVO'
      Origin = 'NOIVOS.UF_NOIVO'
      Size = 10
    end
    object TNoivosNOME_NOIVA: TIBStringField
      FieldName = 'NOME_NOIVA'
      Origin = 'NOIVOS.NOME_NOIVA'
      Size = 60
    end
    object TNoivosDTNASCNOIVA: TDateField
      FieldName = 'DTNASCNOIVA'
      Origin = 'NOIVOS.DTNASCNOIVA'
      EditMask = '!99/99/9999;_'
    end
    object TNoivosCPF_NOIVA: TIBStringField
      FieldName = 'CPF_NOIVA'
      Origin = 'NOIVOS.CPF_NOIVA'
      EditMask = '999.999.999.999;1;-'
      Size = 18
    end
    object TNoivosRG_NOIVA: TIBStringField
      FieldName = 'RG_NOIVA'
      Origin = 'NOIVOS.RG_NOIVA'
      Size = 15
    end
    object TNoivosENDERECO_NOIVA: TIBStringField
      FieldName = 'ENDERECO_NOIVA'
      Origin = 'NOIVOS.ENDERECO_NOIVA'
      Size = 40
    end
    object TNoivosBAIRRO_NOIVA: TIBStringField
      FieldName = 'BAIRRO_NOIVA'
      Origin = 'NOIVOS.BAIRRO_NOIVA'
      Size = 25
    end
    object TNoivosCIDADE_NOIVA: TIBStringField
      FieldName = 'CIDADE_NOIVA'
      Origin = 'NOIVOS.CIDADE_NOIVA'
      Size = 30
    end
    object TNoivosTELEFONE_NOIVA: TIBStringField
      FieldName = 'TELEFONE_NOIVA'
      Origin = 'NOIVOS.TELEFONE_NOIVA'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 15
    end
    object TNoivosMAE_NOIVA: TIBStringField
      FieldName = 'MAE_NOIVA'
      Origin = 'NOIVOS.MAE_NOIVA'
      Size = 60
    end
    object TNoivosPAI_NOIVA: TIBStringField
      FieldName = 'PAI_NOIVA'
      Origin = 'NOIVOS.PAI_NOIVA'
      Size = 60
    end
    object TNoivosCEP_NOIVA: TIBStringField
      FieldName = 'CEP_NOIVA'
      Origin = 'NOIVOS.CEP_NOIVA'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TNoivosUF_NOIVA: TIBStringField
      FieldName = 'UF_NOIVA'
      Origin = 'NOIVOS.UF_NOIVA'
      Size = 10
    end
  end
  object TMatrimonio: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TMatrimonioAfterScroll
    BeforePost = TMatrimonioBeforePost
    DeleteSQL.Strings = (
      'delete from MATRIMONIO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into MATRIMONIO'
      
        '  (CODIGO, PAROQUIA, DTCADASTRO, ARQUIDIOCESE_NOME, PAROQUIANOME' +
        '_NOME, '
      
        '   LIVRO, FOLHA, NUMERO, DTCELEBRACAO, LOCALCELEBRACAO, TESTEMUN' +
        'HA, TESTEMUNHA1, '
      
        '   TESTEMUNHA2, OBSERVACAO, CODIGONOIVO, NOMENOIVO, DTNASCNOIVO,' +
        ' NATURALIDADENOIVO, '
      
        '   NATURALIDADE_UF_NOIVO, ENDNOIVO, CIADADENOIVO, MAENOIVO, PAIN' +
        'OIVO, CODIGONOIVA, '
      
        '   NOMENOIVA, DTNASCNOIVA, NATURALIDADENOIVA, NATURALIDADE_UF_NO' +
        'IVA, ENDNOIVA, '
      
        '   CIADADENOIVA, MAENOIVA, PAINOIVA, UF_END_NOIVA, UF_END_NOIVO,' +
        ' DTALTERACAO)'
      'values'
      
        '  (:CODIGO, :PAROQUIA, :DTCADASTRO, :ARQUIDIOCESE_NOME, :PAROQUI' +
        'ANOME_NOME, '
      
        '   :LIVRO, :FOLHA, :NUMERO, :DTCELEBRACAO, :LOCALCELEBRACAO, :TE' +
        'STEMUNHA, '
      
        '   :TESTEMUNHA1, :TESTEMUNHA2, :OBSERVACAO, :CODIGONOIVO, :NOMEN' +
        'OIVO, :DTNASCNOIVO, '
      
        '   :NATURALIDADENOIVO, :NATURALIDADE_UF_NOIVO, :ENDNOIVO, :CIADA' +
        'DENOIVO, '
      
        '   :MAENOIVO, :PAINOIVO, :CODIGONOIVA, :NOMENOIVA, :DTNASCNOIVA,' +
        ' :NATURALIDADENOIVA, '
      
        '   :NATURALIDADE_UF_NOIVA, :ENDNOIVA, :CIADADENOIVA, :MAENOIVA, ' +
        ':PAINOIVA, '
      '   :UF_END_NOIVA, :UF_END_NOIVO, :DTALTERACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DTCADASTRO,'
      '  ARQUIDIOCESE_NOME,'
      '  PAROQUIANOME_NOME,'
      '  LIVRO,'
      '  FOLHA,'
      '  NUMERO,'
      '  DTCELEBRACAO,'
      '  LOCALCELEBRACAO,'
      '  TESTEMUNHA,'
      '  TESTEMUNHA1,'
      '  TESTEMUNHA2,'
      '  OBSERVACAO,'
      '  CODIGONOIVO,'
      '  NOMENOIVO,'
      '  DTNASCNOIVO,'
      '  NATURALIDADENOIVO,'
      '  NATURALIDADE_UF_NOIVO,'
      '  ENDNOIVO,'
      '  CIADADENOIVO,'
      '  MAENOIVO,'
      '  PAINOIVO,'
      '  CODIGONOIVA,'
      '  NOMENOIVA,'
      '  DTNASCNOIVA,'
      '  NATURALIDADENOIVA,'
      '  NATURALIDADE_UF_NOIVA,'
      '  ENDNOIVA,'
      '  CIADADENOIVA,'
      '  MAENOIVA,'
      '  PAINOIVA,'
      '  UF_END_NOIVA,'
      '  UF_END_NOIVO,'
      '  DTALTERACAO'
      'from MATRIMONIO '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM MATRIMONIO WHERE PAROQUIA=:pPAROQUIA AND  CODIGO=:' +
        'pCODIGO')
    ModifySQL.Strings = (
      'update MATRIMONIO'
      'set'
      '  CODIGO = :CODIGO,'
      '  PAROQUIA = :PAROQUIA,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  ARQUIDIOCESE_NOME = :ARQUIDIOCESE_NOME,'
      '  PAROQUIANOME_NOME = :PAROQUIANOME_NOME,'
      '  LIVRO = :LIVRO,'
      '  FOLHA = :FOLHA,'
      '  NUMERO = :NUMERO,'
      '  DTCELEBRACAO = :DTCELEBRACAO,'
      '  LOCALCELEBRACAO = :LOCALCELEBRACAO,'
      '  TESTEMUNHA = :TESTEMUNHA,'
      '  TESTEMUNHA1 = :TESTEMUNHA1,'
      '  TESTEMUNHA2 = :TESTEMUNHA2,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  CODIGONOIVO = :CODIGONOIVO,'
      '  NOMENOIVO = :NOMENOIVO,'
      '  DTNASCNOIVO = :DTNASCNOIVO,'
      '  NATURALIDADENOIVO = :NATURALIDADENOIVO,'
      '  NATURALIDADE_UF_NOIVO = :NATURALIDADE_UF_NOIVO,'
      '  ENDNOIVO = :ENDNOIVO,'
      '  CIADADENOIVO = :CIADADENOIVO,'
      '  MAENOIVO = :MAENOIVO,'
      '  PAINOIVO = :PAINOIVO,'
      '  CODIGONOIVA = :CODIGONOIVA,'
      '  NOMENOIVA = :NOMENOIVA,'
      '  DTNASCNOIVA = :DTNASCNOIVA,'
      '  NATURALIDADENOIVA = :NATURALIDADENOIVA,'
      '  NATURALIDADE_UF_NOIVA = :NATURALIDADE_UF_NOIVA,'
      '  ENDNOIVA = :ENDNOIVA,'
      '  CIADADENOIVA = :CIADADENOIVA,'
      '  MAENOIVA = :MAENOIVA,'
      '  PAINOIVA = :PAINOIVA,'
      '  UF_END_NOIVA = :UF_END_NOIVA,'
      '  UF_END_NOIVO = :UF_END_NOIVO,'
      '  DTALTERACAO = :DTALTERACAO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 184
    Top = 128
    object TMatrimonioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MATRIMONIO.CODIGO'
      Required = True
    end
    object TMatrimonioPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'MATRIMONIO.PAROQUIA'
      Required = True
    end
    object TMatrimonioDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'MATRIMONIO.DTCADASTRO'
    end
    object TMatrimonioARQUIDIOCESE_NOME: TIBStringField
      FieldName = 'ARQUIDIOCESE_NOME'
      Origin = 'MATRIMONIO.ARQUIDIOCESE_NOME'
      Size = 30
    end
    object TMatrimonioPAROQUIANOME_NOME: TIBStringField
      FieldName = 'PAROQUIANOME_NOME'
      Origin = 'MATRIMONIO.PAROQUIANOME_NOME'
      Size = 30
    end
    object TMatrimonioLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = 'MATRIMONIO.LIVRO'
      Size = 10
    end
    object TMatrimonioFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = 'MATRIMONIO.FOLHA'
      Size = 10
    end
    object TMatrimonioNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'MATRIMONIO.NUMERO'
      Size = 10
    end
    object TMatrimonioDTCELEBRACAO: TDateTimeField
      FieldName = 'DTCELEBRACAO'
      Origin = 'MATRIMONIO.DTCELEBRACAO'
      EditMask = '99/99/9999'
    end
    object TMatrimonioLOCALCELEBRACAO: TIBStringField
      FieldName = 'LOCALCELEBRACAO'
      Origin = 'MATRIMONIO.LOCALCELEBRACAO'
      Size = 60
    end
    object TMatrimonioTESTEMUNHA: TIBStringField
      FieldName = 'TESTEMUNHA'
      Origin = 'MATRIMONIO.TESTEMUNHA'
      Size = 60
    end
    object TMatrimonioTESTEMUNHA1: TIBStringField
      FieldName = 'TESTEMUNHA1'
      Origin = 'MATRIMONIO.TESTEMUNHA1'
      Size = 60
    end
    object TMatrimonioTESTEMUNHA2: TIBStringField
      FieldName = 'TESTEMUNHA2'
      Origin = 'MATRIMONIO.TESTEMUNHA2'
      Size = 60
    end
    object TMatrimonioOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'MATRIMONIO.OBSERVACAO'
      Size = 250
    end
    object TMatrimonioCODIGONOIVO: TIntegerField
      FieldName = 'CODIGONOIVO'
      Origin = 'MATRIMONIO.CODIGONOIVO'
    end
    object TMatrimonioNOMENOIVO: TIBStringField
      FieldName = 'NOMENOIVO'
      Origin = 'MATRIMONIO.NOMENOIVO'
      Size = 60
    end
    object TMatrimonioDTNASCNOIVO: TDateField
      FieldName = 'DTNASCNOIVO'
      Origin = 'MATRIMONIO.DTNASCNOIVO'
      EditMask = '99/99/9999'
    end
    object TMatrimonioNATURALIDADENOIVO: TIBStringField
      FieldName = 'NATURALIDADENOIVO'
      Origin = 'MATRIMONIO.NATURALIDADENOIVO'
      Size = 50
    end
    object TMatrimonioNATURALIDADE_UF_NOIVO: TIBStringField
      FieldName = 'NATURALIDADE_UF_NOIVO'
      Origin = 'MATRIMONIO.NATURALIDADE_UF_NOIVO'
      Size = 10
    end
    object TMatrimonioENDNOIVO: TIBStringField
      FieldName = 'ENDNOIVO'
      Origin = 'MATRIMONIO.ENDNOIVO'
      Size = 40
    end
    object TMatrimonioCIADADENOIVO: TIBStringField
      FieldName = 'CIADADENOIVO'
      Origin = 'MATRIMONIO.CIADADENOIVO'
      Size = 30
    end
    object TMatrimonioMAENOIVO: TIBStringField
      FieldName = 'MAENOIVO'
      Origin = 'MATRIMONIO.MAENOIVO'
      Size = 60
    end
    object TMatrimonioPAINOIVO: TIBStringField
      FieldName = 'PAINOIVO'
      Origin = 'MATRIMONIO.PAINOIVO'
      Size = 60
    end
    object TMatrimonioCODIGONOIVA: TIntegerField
      FieldName = 'CODIGONOIVA'
      Origin = 'MATRIMONIO.CODIGONOIVA'
    end
    object TMatrimonioNOMENOIVA: TIBStringField
      FieldName = 'NOMENOIVA'
      Origin = 'MATRIMONIO.NOMENOIVA'
      Size = 60
    end
    object TMatrimonioDTNASCNOIVA: TDateField
      FieldName = 'DTNASCNOIVA'
      Origin = 'MATRIMONIO.DTNASCNOIVA'
      EditMask = '99/99/9999'
    end
    object TMatrimonioNATURALIDADENOIVA: TIBStringField
      FieldName = 'NATURALIDADENOIVA'
      Origin = 'MATRIMONIO.NATURALIDADENOIVA'
      Size = 50
    end
    object TMatrimonioNATURALIDADE_UF_NOIVA: TIBStringField
      FieldName = 'NATURALIDADE_UF_NOIVA'
      Origin = 'MATRIMONIO.NATURALIDADE_UF_NOIVA'
      Size = 10
    end
    object TMatrimonioENDNOIVA: TIBStringField
      FieldName = 'ENDNOIVA'
      Origin = 'MATRIMONIO.ENDNOIVA'
      Size = 40
    end
    object TMatrimonioCIADADENOIVA: TIBStringField
      FieldName = 'CIADADENOIVA'
      Origin = 'MATRIMONIO.CIADADENOIVA'
      Size = 30
    end
    object TMatrimonioMAENOIVA: TIBStringField
      FieldName = 'MAENOIVA'
      Origin = 'MATRIMONIO.MAENOIVA'
      Size = 60
    end
    object TMatrimonioPAINOIVA: TIBStringField
      FieldName = 'PAINOIVA'
      Origin = 'MATRIMONIO.PAINOIVA'
      Size = 60
    end
    object TMatrimonioUF_END_NOIVA: TIBStringField
      FieldName = 'UF_END_NOIVA'
      Origin = 'MATRIMONIO.UF_END_NOIVA'
      Size = 10
    end
    object TMatrimonioUF_END_NOIVO: TIBStringField
      FieldName = 'UF_END_NOIVO'
      Origin = 'MATRIMONIO.UF_END_NOIVO'
      Size = 10
    end
    object TMatrimonioDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'MATRIMONIO.DTALTERACAO'
    end
  end
  object TContaBanco: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TContaBancoAfterScroll
    BeforePost = TContaBancoBeforePost
    DeleteSQL.Strings = (
      'delete from CONTABANCO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into CONTABANCO'
      
        '  (CODIGO, PAROQUIA, DTALTERACAO, DTCADASTRO, NOME, CATEGORIA, D' +
        'TABERTURA)'
      'values'
      
        '  (:CODIGO, :PAROQUIA, :DTALTERACAO, :DTCADASTRO, :NOME, :CATEGO' +
        'RIA, :DTABERTURA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DTALTERACAO,'
      '  DTCADASTRO,'
      '  NOME,'
      '  CATEGORIA,'
      '  DTABERTURA'
      'from CONTABANCO '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM CONTABANCO WHERE PAROQUIA=:pPAROQUIA AND CODIGO=:p' +
        'CODIGO')
    ModifySQL.Strings = (
      'update CONTABANCO'
      'set'
      '  CODIGO = :CODIGO,'
      '  PAROQUIA = :PAROQUIA,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  NOME = :NOME,'
      '  CATEGORIA = :CATEGORIA,'
      '  DTABERTURA = :DTABERTURA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 264
    Top = 128
    object TContaBancoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTABANCO.CODIGO'
      Required = True
    end
    object TContaBancoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CONTABANCO.PAROQUIA'
      Required = True
    end
    object TContaBancoDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'CONTABANCO.DTALTERACAO'
    end
    object TContaBancoDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'CONTABANCO.DTCADASTRO'
    end
    object TContaBancoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CONTABANCO.NOME'
      Size = 60
    end
    object TContaBancoCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = 'CONTABANCO.CATEGORIA'
    end
    object TContaBancoDTABERTURA: TDateTimeField
      FieldName = 'DTABERTURA'
      Origin = 'CONTABANCO.DTABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object TTipoPgto: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TTipoPgtoAfterScroll
    BeforePost = TTipoPgtoBeforePost
    DeleteSQL.Strings = (
      'delete from TIPOPGTO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into TIPOPGTO'
      
        '  (CODIGO, PAROQUIA, DTALTERACAO, DTCADASTRO, NOME, TIPOOPERACAO' +
        ')'
      'values'
      
        '  (:CODIGO, :PAROQUIA, :DTALTERACAO, :DTCADASTRO, :NOME, :TIPOOP' +
        'ERACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PAROQUIA,'
      '  DTALTERACAO,'
      '  DTCADASTRO,'
      '  NOME,'
      '  TIPOOPERACAO'
      'from TIPOPGTO '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM TIPOPGTO WHERE PAROQUIA=:pPAROQUIA AND CODIGO=:pCO' +
        'DIGO')
    ModifySQL.Strings = (
      'update TIPOPGTO'
      'set'
      '  CODIGO = :CODIGO,'
      '  PAROQUIA = :PAROQUIA,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  NOME = :NOME,'
      '  TIPOOPERACAO = :TIPOOPERACAO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 336
    Top = 128
    object TTipoPgtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TIPOPGTO.CODIGO'
      Required = True
    end
    object TTipoPgtoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'TIPOPGTO.PAROQUIA'
      Required = True
    end
    object TTipoPgtoDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'TIPOPGTO.DTALTERACAO'
    end
    object TTipoPgtoDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'TIPOPGTO.DTCADASTRO'
    end
    object TTipoPgtoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'TIPOPGTO.NOME'
      Size = 60
    end
    object TTipoPgtoTIPOOPERACAO: TIBStringField
      FieldName = 'TIPOOPERACAO'
      Origin = 'TIPOPGTO.TIPOOPERACAO'
      FixedChar = True
      Size = 1
    end
  end
  object TLancIntencao: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from LANCAMENTOINTENCAO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into LANCAMENTOINTENCAO'
      
        '  (CELEBRANTE, CODIGO, DATACELEBRACAO, HORACELEBRACAO, NOME, OBS' +
        'ERVACAO, '
      '   PAROQUIA, TIPOINTENCAO)'
      'values'
      
        '  (:CELEBRANTE, :CODIGO, :DATACELEBRACAO, :HORACELEBRACAO, :NOME' +
        ', :OBSERVACAO, '
      '   :PAROQUIA, :TIPOINTENCAO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  NOME,'
      '  DATACELEBRACAO,'
      '  HORACELEBRACAO,'
      '  TIPOINTENCAO,'
      '  CELEBRANTE,'
      '  OBSERVACAO'
      'from LANCAMENTOINTENCAO '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT * FROM LANCAMENTOINTENCAO'
      'WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update LANCAMENTOINTENCAO'
      'set'
      '  CELEBRANTE = :CELEBRANTE,'
      '  CODIGO = :CODIGO,'
      '  DATACELEBRACAO = :DATACELEBRACAO,'
      '  HORACELEBRACAO = :HORACELEBRACAO,'
      '  NOME = :NOME,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PAROQUIA = :PAROQUIA,'
      '  TIPOINTENCAO = :TIPOINTENCAO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 416
    Top = 128
    object TLancIntencaoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"LANCAMENTOINTENCAO"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLancIntencaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"LANCAMENTOINTENCAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLancIntencaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"LANCAMENTOINTENCAO"."NOME"'
      Size = 60
    end
    object TLancIntencaoDATACELEBRACAO: TDateField
      FieldName = 'DATACELEBRACAO'
      Origin = '"LANCAMENTOINTENCAO"."DATACELEBRACAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object TLancIntencaoHORACELEBRACAO: TDateTimeField
      FieldName = 'HORACELEBRACAO'
      Origin = '"LANCAMENTOINTENCAO"."HORACELEBRACAO"'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object TLancIntencaoTIPOINTENCAO: TIntegerField
      FieldName = 'TIPOINTENCAO'
      Origin = '"LANCAMENTOINTENCAO"."TIPOINTENCAO"'
    end
    object TLancIntencaoCELEBRANTE: TIBStringField
      FieldName = 'CELEBRANTE'
      Origin = '"LANCAMENTOINTENCAO"."CELEBRANTE"'
      Size = 60
    end
    object TLancIntencaoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"LANCAMENTOINTENCAO"."OBSERVACAO"'
      Size = 250
    end
  end
  object TContasPagar: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from CONTASPAGAR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into CONTASPAGAR'
      
        '  (CODIGO, DTALTERACAO, DTLANCAMENTO, DTULTPAGTO, DTVENCIMENTO, ' +
        'FORNECEDOR, '
      
        '   NOTAFISCAL, OBS, PAROQUIA, STATUS, TIPO_PAGTO, VALORRESTANTE,' +
        ' VALORTOTAL)'
      'values'
      
        '  (:CODIGO, :DTALTERACAO, :DTLANCAMENTO, :DTULTPAGTO, :DTVENCIME' +
        'NTO, :FORNECEDOR, '
      
        '   :NOTAFISCAL, :OBS, :PAROQUIA, :STATUS, :TIPO_PAGTO, :VALORRES' +
        'TANTE, '
      '   :VALORTOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  FORNECEDOR,'
      '  DTLANCAMENTO,'
      '  DTVENCIMENTO,'
      '  TIPO_PAGTO,'
      '  VALORTOTAL,'
      '  VALORRESTANTE,'
      '  STATUS,'
      '  NOTAFISCAL,'
      '  DTALTERACAO,'
      '  OBS,'
      '  DTULTPAGTO'
      'from CONTASPAGAR '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      
        'SELECT * FROM CONTASPAGAR WHERE PAROQUIA=:PPAROQUIA AND CODIGO=:' +
        'PCODIGO')
    ModifySQL.Strings = (
      'update CONTASPAGAR'
      'set'
      '  CODIGO = :CODIGO,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTLANCAMENTO = :DTLANCAMENTO,'
      '  DTULTPAGTO = :DTULTPAGTO,'
      '  DTVENCIMENTO = :DTVENCIMENTO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  OBS = :OBS,'
      '  PAROQUIA = :PAROQUIA,'
      '  STATUS = :STATUS,'
      '  TIPO_PAGTO = :TIPO_PAGTO,'
      '  VALORRESTANTE = :VALORRESTANTE,'
      '  VALORTOTAL = :VALORTOTAL'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 504
    Top = 128
    object TContasPagarPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CONTASPAGAR.PAROQUIA'
      Required = True
    end
    object TContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTASPAGAR.CODIGO'
      Required = True
    end
    object TContasPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'CONTASPAGAR.FORNECEDOR'
    end
    object TContasPagarDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
      Origin = 'CONTASPAGAR.DTLANCAMENTO'
      EditMask = '99/99/9999'
    end
    object TContasPagarDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'CONTASPAGAR.DTVENCIMENTO'
      EditMask = '99/99/9999'
    end
    object TContasPagarTIPO_PAGTO: TIntegerField
      FieldName = 'TIPO_PAGTO'
      Origin = 'CONTASPAGAR.TIPO_PAGTO'
    end
    object TContasPagarVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'CONTASPAGAR.VALORTOTAL'
      DisplayFormat = ',0.00'
      currency = True
    end
    object TContasPagarVALORRESTANTE: TFloatField
      FieldName = 'VALORRESTANTE'
      Origin = 'CONTASPAGAR.VALORRESTANTE'
    end
    object TContasPagarSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'CONTASPAGAR.STATUS'
    end
    object TContasPagarNOTAFISCAL: TIBStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'CONTASPAGAR.NOTAFISCAL'
      Size = 15
    end
    object TContasPagarDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'CONTASPAGAR.DTALTERACAO'
    end
    object TContasPagarOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CONTASPAGAR.OBS'
      Size = 200
    end
    object TContasPagarDTULTPAGTO: TDateField
      FieldName = 'DTULTPAGTO'
      Origin = '"CONTASPAGAR"."DTULTPAGTO"'
      DisplayFormat = '99/99/9999'
    end
  end
  object TAgendaTelefones: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    AfterScroll = TAgendaTelefonesAfterScroll
    BeforePost = TAgendaTelefonesBeforePost
    DeleteSQL.Strings = (
      'delete from AGENDA_TELEFONES'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into AGENDA_TELEFONES'
      
        '  (PAROQUIA, DTCADASTRO, DTALTERACAO, CODIGO, NOME, FONE1, FONE2' +
        ', FONE3, '
      '   FONE4)'
      'values'
      
        '  (:PAROQUIA, :DTCADASTRO, :DTALTERACAO, :CODIGO, :NOME, :FONE1,' +
        ' :FONE2, '
      '   :FONE3, :FONE4)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  DTCADASTRO,'
      '  DTALTERACAO,'
      '  CODIGO,'
      '  NOME,'
      '  FONE1,'
      '  FONE2,'
      '  FONE3,'
      '  FONE4'
      'from AGENDA_TELEFONES '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'SELECT * FROM AGENDA_TELEFONES WHERE PAROQUIA=:PPAROQUIA AND COD' +
        'IGO=:PCODIGO')
    ModifySQL.Strings = (
      'update AGENDA_TELEFONES'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FONE3 = :FONE3,'
      '  FONE4 = :FONE4'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 600
    Top = 128
    object TAgendaTelefonesPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'AGENDA_TELEFONES.PAROQUIA'
      Required = True
    end
    object TAgendaTelefonesDTCADASTRO: TDateTimeField
      FieldName = 'DTCADASTRO'
      Origin = 'AGENDA_TELEFONES.DTCADASTRO'
    end
    object TAgendaTelefonesDTALTERACAO: TDateTimeField
      FieldName = 'DTALTERACAO'
      Origin = 'AGENDA_TELEFONES.DTALTERACAO'
    end
    object TAgendaTelefonesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'AGENDA_TELEFONES.CODIGO'
      Required = True
    end
    object TAgendaTelefonesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'AGENDA_TELEFONES.NOME'
      Size = 60
    end
    object TAgendaTelefonesFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = 'AGENDA_TELEFONES.FONE1'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TAgendaTelefonesFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = 'AGENDA_TELEFONES.FONE2'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TAgendaTelefonesFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = 'AGENDA_TELEFONES.FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TAgendaTelefonesFONE4: TIBStringField
      FieldName = 'FONE4'
      Origin = 'AGENDA_TELEFONES.FONE4'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
  end
  object TControleBancario: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from CONTROLEBANCOS'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTROLEBANCOS'
      
        '  (PAROQUIA, CODIGO, DTMOVIMENTO, HISTORICO, OPERACAO, VALORMOVI' +
        'MENTO, '
      '   SALDOATUAL, DTALTERACAO, DTCADASTRO, CODIGOBANCO)'
      'values'
      
        '  (:PAROQUIA, :CODIGO, :DTMOVIMENTO, :HISTORICO, :OPERACAO, :VAL' +
        'ORMOVIMENTO, '
      '   :SALDOATUAL, :DTALTERACAO, :DTCADASTRO, :CODIGOBANCO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  DTMOVIMENTO,'
      '  HISTORICO,'
      '  OPERACAO,'
      '  VALORMOVIMENTO,'
      '  SALDOATUAL,'
      '  DTALTERACAO,'
      '  DTCADASTRO,'
      '  CODIGOBANCO'
      'from CONTROLEBANCOS '
      'where'
      '  PAROQUIA = :PAROQUIA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'SELECT * FROM CONTROLEBANCOS WHERE PAROQUIA=:PPAROQUIA AND CODIG' +
        'O=:PCODIGO')
    ModifySQL.Strings = (
      'update CONTROLEBANCOS'
      'set'
      '  PAROQUIA = :PAROQUIA,'
      '  CODIGO = :CODIGO,'
      '  DTMOVIMENTO = :DTMOVIMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  OPERACAO = :OPERACAO,'
      '  VALORMOVIMENTO = :VALORMOVIMENTO,'
      '  SALDOATUAL = :SALDOATUAL,'
      '  DTALTERACAO = :DTALTERACAO,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  CODIGOBANCO = :CODIGOBANCO'
      'where'
      '  PAROQUIA = :OLD_PAROQUIA and'
      '  CODIGO = :OLD_CODIGO')
    Left = 696
    Top = 128
    object TControleBancarioPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'CONTROLEBANCOS.PAROQUIA'
      Required = True
    end
    object TControleBancarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTROLEBANCOS.CODIGO'
      Required = True
    end
    object TControleBancarioDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
      Origin = 'CONTROLEBANCOS.DTMOVIMENTO'
      EditMask = '99/99/9999'
    end
    object TControleBancarioHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CONTROLEBANCOS.HISTORICO'
      Size = 50
    end
    object TControleBancarioOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = 'CONTROLEBANCOS.OPERACAO'
      FixedChar = True
      Size = 1
    end
    object TControleBancarioVALORMOVIMENTO: TFloatField
      FieldName = 'VALORMOVIMENTO'
      Origin = 'CONTROLEBANCOS.VALORMOVIMENTO'
      DisplayFormat = '###,##0.00'
    end
    object TControleBancarioSALDOATUAL: TFloatField
      FieldName = 'SALDOATUAL'
      Origin = 'CONTROLEBANCOS.SALDOATUAL'
      DisplayFormat = '###,##0.00'
    end
    object TControleBancarioDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
      Origin = 'CONTROLEBANCOS.DTALTERACAO'
    end
    object TControleBancarioDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'CONTROLEBANCOS.DTCADASTRO'
    end
    object TControleBancarioCODIGOBANCO: TIntegerField
      FieldName = 'CODIGOBANCO'
      Origin = 'CONTROLEBANCOS.CODIGOBANCO'
    end
  end
  object tCaixa: TIBDataSet
    Database = dmDados.db
    Transaction = dmDados.Transacao
    DeleteSQL.Strings = (
      'delete from MOVCAIXA'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    InsertSQL.Strings = (
      'insert into MOVCAIXA'
      
        '  (CODIGO, CONTA, DATAMOV, DTALT, DTLANC, HISTORICO, PAROQUIA, T' +
        'IPOMOV, '
      '   USERALT, USERLANC, VALORMOV)'
      'values'
      
        '  (:CODIGO, :CONTA, :DATAMOV, :DTALT, :DTLANC, :HISTORICO, :PARO' +
        'QUIA, :TIPOMOV, '
      '   :USERALT, :USERLANC, :VALORMOV)')
    RefreshSQL.Strings = (
      'Select '
      '  PAROQUIA,'
      '  CODIGO,'
      '  DATAMOV,'
      '  TIPOMOV,'
      '  VALORMOV,'
      '  HISTORICO,'
      '  DTLANC,'
      '  USERLANC,'
      '  DTALT,'
      '  USERALT,'
      '  CONTA'
      'from MOVCAIXA '
      'where'
      '  CODIGO = :CODIGO and'
      '  PAROQUIA = :PAROQUIA')
    SelectSQL.Strings = (
      'SELECT* FROM MOVCAIXA WHERE PAROQUIA= :PPAROQUIA'
      'AND CODIGO= :PCODIGO')
    ModifySQL.Strings = (
      'update MOVCAIXA'
      'set'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA,'
      '  DATAMOV = :DATAMOV,'
      '  DTALT = :DTALT,'
      '  DTLANC = :DTLANC,'
      '  HISTORICO = :HISTORICO,'
      '  PAROQUIA = :PAROQUIA,'
      '  TIPOMOV = :TIPOMOV,'
      '  USERALT = :USERALT,'
      '  USERLANC = :USERLANC,'
      '  VALORMOV = :VALORMOV'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  PAROQUIA = :OLD_PAROQUIA')
    Left = 24
    Top = 176
    object tCaixaPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = '"MOVCAIXA"."PAROQUIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"MOVCAIXA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tCaixaDATAMOV: TDateField
      FieldName = 'DATAMOV'
      Origin = '"MOVCAIXA"."DATAMOV"'
    end
    object tCaixaTIPOMOV: TIntegerField
      FieldName = 'TIPOMOV'
      Origin = '"MOVCAIXA"."TIPOMOV"'
    end
    object tCaixaVALORMOV: TIBBCDField
      FieldName = 'VALORMOV'
      Origin = '"MOVCAIXA"."VALORMOV"'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"MOVCAIXA"."HISTORICO"'
      Size = 250
    end
    object tCaixaDTLANC: TDateField
      FieldName = 'DTLANC'
      Origin = '"MOVCAIXA"."DTLANC"'
    end
    object tCaixaUSERLANC: TIntegerField
      FieldName = 'USERLANC'
      Origin = '"MOVCAIXA"."USERLANC"'
    end
    object tCaixaDTALT: TDateField
      FieldName = 'DTALT'
      Origin = '"MOVCAIXA"."DTALT"'
    end
    object tCaixaUSERALT: TIntegerField
      FieldName = 'USERALT'
      Origin = '"MOVCAIXA"."USERALT"'
    end
    object tCaixaCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"MOVCAIXA"."CONTA"'
    end
  end
end
