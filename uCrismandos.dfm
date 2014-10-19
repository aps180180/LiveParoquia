object fCrismandos: TfCrismandos
  Left = 192
  Top = 114
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'fCrismandos-CADASTRO DE CRISMANDOS'
  ClientHeight = 420
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TspSkinGroupBox
    Left = 8
    Top = 8
    Width = 665
    Height = 321
    HintImageIndex = 0
    TabOrder = 0
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'groupbox'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    RibbonStyle = False
    ImagePosition = spipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    NumGlyphs = 1
    Spacing = 2
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    object dbeNome: TspSkinDBEdit
      Left = 64
      Top = 92
      Width = 433
      Height = 18
      Text = 'DBENOME'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 0
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'NOME'
      DataSource = DsCrismandos
    end
    object spSkinLabel2: TspSkinLabel
      Left = 64
      Top = 72
      Width = 55
      Height = 19
      HintImageIndex = 0
      TabOrder = 12
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Crismando'
      AutoSize = True
    end
    object dbeCodigo: TspSkinDBEdit
      Left = 64
      Top = 52
      Width = 65
      Height = 18
      Text = 'dbeCodigo'
      DefaultColor = 12711919
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Enabled = False
      ParentFont = False
      TabOrder = 13
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'CODIGO'
      DataSource = DsCrismandos
    end
    object spSkinLabel1: TspSkinLabel
      Left = 64
      Top = 29
      Width = 37
      Height = 21
      HintImageIndex = 0
      TabOrder = 14
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'C'#243'digo'
      AutoSize = True
    end
    object DbeNascimento: TspSkinDBEdit
      Left = 504
      Top = 92
      Width = 97
      Height = 18
      Text = 'DBENASCIMENTO'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'DT_NASCIMENTO'
      DataSource = DsCrismandos
    end
    object spSkinLabel3: TspSkinLabel
      Left = 504
      Top = 72
      Width = 85
      Height = 19
      HintImageIndex = 0
      TabOrder = 15
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Data Nascimento'
      AutoSize = True
    end
    object DbeEndereco: TspSkinDBEdit
      Left = 64
      Top = 132
      Width = 433
      Height = 18
      Text = 'DBEENDERECO'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 2
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'ENDERECO'
      DataSource = DsCrismandos
    end
    object spSkinLabel4: TspSkinLabel
      Left = 64
      Top = 112
      Width = 65
      Height = 19
      HintImageIndex = 0
      TabOrder = 16
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Endere'#231'o/N'#186
      AutoSize = True
    end
    object DbeBairro: TspSkinDBEdit
      Left = 504
      Top = 132
      Width = 97
      Height = 18
      Text = 'DBEBAIRRO'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 3
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'BAIRRO'
      DataSource = DsCrismandos
    end
    object spSkinLabel5: TspSkinLabel
      Left = 504
      Top = 112
      Width = 33
      Height = 19
      HintImageIndex = 0
      TabOrder = 17
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Bairro'
      AutoSize = True
    end
    object DbeCidade: TspSkinDBEdit
      Left = 64
      Top = 172
      Width = 385
      Height = 18
      Text = 'DBECIDADE'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 4
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'CIDADE'
      DataSource = DsCrismandos
    end
    object spSkinLabel6: TspSkinLabel
      Left = 64
      Top = 152
      Width = 37
      Height = 19
      HintImageIndex = 0
      TabOrder = 18
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Cidade'
      AutoSize = True
    end
    object DbeUf: TspSkinDBEdit
      Left = 456
      Top = 172
      Width = 41
      Height = 18
      Text = 'DBEUF'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 5
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'UF'
      DataSource = DsCrismandos
    end
    object spSkinLabel7: TspSkinLabel
      Left = 456
      Top = 152
      Width = 15
      Height = 19
      HintImageIndex = 0
      TabOrder = 19
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Uf'
      AutoSize = True
    end
    object DbeCep: TspSkinDBEdit
      Left = 504
      Top = 172
      Width = 97
      Height = 18
      Text = 'DBECEP'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 6
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'CEP'
      DataSource = DsCrismandos
    end
    object spSkinLabel8: TspSkinLabel
      Left = 504
      Top = 152
      Width = 23
      Height = 19
      HintImageIndex = 0
      TabOrder = 20
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Cep'
      AutoSize = True
    end
    object spSkinLabel9: TspSkinLabel
      Left = 248
      Top = 194
      Width = 17
      Height = 19
      HintImageIndex = 0
      TabOrder = 21
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Rg'
      AutoSize = True
    end
    object DBERG: TspSkinDBEdit
      Left = 248
      Top = 215
      Width = 177
      Height = 18
      Text = 'DBERG'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 8
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'RG'
      DataSource = DsCrismandos
    end
    object spSkinLabel10: TspSkinLabel
      Left = 432
      Top = 194
      Width = 21
      Height = 19
      HintImageIndex = 0
      TabOrder = 22
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Cpf'
      AutoSize = True
    end
    object spSkinDBEdit1: TspSkinDBEdit
      Left = 432
      Top = 215
      Width = 169
      Height = 18
      Text = 'SPSKINDBEDIT1'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 9
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'CPF'
      DataSource = DsCrismandos
    end
    object spSkinLabel11: TspSkinLabel
      Left = 64
      Top = 234
      Width = 18
      Height = 19
      HintImageIndex = 0
      TabOrder = 23
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Pai'
      AutoSize = True
    end
    object Dbepai: TspSkinDBEdit
      Left = 64
      Top = 255
      Width = 353
      Height = 18
      Text = 'DBEPAI'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 10
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'PAI'
      DataSource = DsCrismandos
    end
    object spSkinLabel12: TspSkinLabel
      Left = 64
      Top = 274
      Width = 24
      Height = 19
      HintImageIndex = 0
      TabOrder = 24
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Mae'
      AutoSize = True
    end
    object DbeMae: TspSkinDBEdit
      Left = 64
      Top = 295
      Width = 353
      Height = 18
      Text = 'DBEMAE'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 11
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'MAE'
      DataSource = DsCrismandos
    end
    object DbeTelefone: TspSkinLabel
      Left = 64
      Top = 194
      Width = 46
      Height = 19
      HintImageIndex = 0
      TabOrder = 25
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'label'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Caption = 'Telefone'
      AutoSize = True
    end
    object spSkinDBEdit2: TspSkinDBEdit
      Left = 64
      Top = 215
      Width = 177
      Height = 18
      Text = 'SPSKINDBEDIT2'
      DefaultColor = clWhite
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'edit'
      AlphaBlend = False
      AlphaBlendValue = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 7
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'TELEFONE'
      DataSource = DsCrismandos
    end
  end
  object btNovo: TspSkinButton
    Left = 8
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Incluir Arquidiocese'
    HintImageIndex = 0
    TabOrder = 1
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Incluir - F2'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA05F2F2F20DF2F2
      F20DF9F9F906FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA05DFDFDF20BCBCBC43B6B6
      B649C4C4C43BCFCFCF30D7D7D728DEDEDE21E6E6E619EDEDED12F4F4F40BFBFB
      FB04FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9E916C5BFBBA091918DAA7575
      73A86A6A6A957373738C7F7F7F808C8C8C739D9D9D62ACACAC53B9B9B946C7C7
      C738D1D1D12EDADADA25E0E0E01FE7E7E718EDEDED12F4F4F40BFBFBFB04FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0BDBD8BE9DFD3FFF1F2E4FFF1F2
      E4FFF2F3E6FFD0D1C7F3C7C9BFEDA0A09CD891928EC9828380B96E6E6EA06B6B
      6B947575758A8383837C9191916E9E9E9E61ACACAC53B9B9B946D3D3D32CF2F2
      F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C89090F3E9DFD4FFF1F2E4FFF2F3
      E6FFF2F3E6FFF2F4E8FFF3F4E9FFF3F4EAFFF4F5EBFFF4F5EBFFF5F6EDFFF5F6
      EEFFC9CAC5EEC0C1BBE8A3A4A1D7939492C9848583B96E6F6EA08F8F8F70DBDB
      DB24FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEADFD5FFF2F3E5FF797A
      73FF6A6B66FF797A74FF7A7A75FF6B6B67FFF4F5EBFFF5F6EDFFF5F6EDFFF6F7
      F0FFF6F7F1FFF7F8F2FFF8F9F3FFF9FAF4FFFAFBF6FFFAFBF7FF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEAE0D6FFF2F3E6FFF2F4
      E7FFF2F4E8FFF3F4EAFFF3F4EAFFF4F5EBFFF5F6ECFFF5F6EDFFF6F7EFFFF6F7
      F0FFF7F8F2FFF8F9F3FFF9FAF4FFFAFBF6FFFAFBF7FFFCFCF9FF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEAE0D6FFF2F4E7FF797A
      74FF797A75FF7A7A75FF6B6B67FF999993FFF5F6EDFFF6F7EFFFF6F7F0FFF7F8
      F2FFF7F8F2FFF9FAF4FFF9FAF5FFFAFBF7FFFBFCF8FFFCFCF9FF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEAE0D7FFF2F4E8FFF3F4
      E9FFF3F4EAFFF4F5EBFFF4F5EBFFF5F6EDFFF5F6EEFFF6F7F0FFF7F8F1FFF7F8
      F2FFF9FAF4FFF9FAF5FFFAFBF7FFFBFBF8FFFCFCF9FFFDFDFBFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEAE1D8FFF2F4E9FFF3F4
      EAFFF4F5EBFFF4F5EBFFF5F6EDFFF5F6EDFFF6F7F0FFF6F7F1FFF7F8F2FFF8F9
      F3FFF9FAF4FFFAFBF6FFFAFBF7FFFCFCF9FFFCFDFAFFFDFEFCFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEAE1D8FFF3F4EAFFF3F4
      EAFFF4F5EBFFF5F6ECFFF5F6EDFFF6F7EFFFF6F7F0FFF7F8F2FFF8F9F3FFF9FA
      F4FFFAFBF6FFFAFBF7FFFCFCF9FFFCFCFAFFFDFEFCFFFEFEFDFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEBE1D9FFE4E5DBFFB7B8
      B0FFD6D7CEFFF5F6EDFFF6F7EFFFF6F7F0FFF7F8F2FFF7F8F2FFF9FAF4FFF9FA
      F5FFFAFBF7FFFBFCF8FFFCFCF9FFFDFEFCFFFEFEFDFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEBE1D9FFE5E6DCFFB7B8
      B1FF8A8A85FF7B7B77FF6C6C69FF7B7C79FF7C7C79FF6D6D6BFF7D7D7AFF9C9D
      9AFFBCBDBAFFBDBDBBFFFDFDFBFFFDFEFCFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFECE1DAFFF4F5EBFFF5F6
      EDFFF5F6EEFFF6F7F0FFF6F7F1FFF7F8F2FFF8F9F3FFF9FAF4FFFAFBF7FFCCCC
      C9FFBDBDBBFFAEAEACFF7F7F7EFFFFFFFEFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFECE2DAFFF5F6ECFF7B7B
      77FF6C6C69FF7B7C78FF7B7C79FF6C6D6AFF7D7D7AFF8C8D8AFFBCBCB9FFBDBD
      BBFFEDEDEAFFFDFEFCFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFECE2DBFFF5F6EDFFF6F7
      EFFFF6F7F0FFF7F8F2FFF7F8F2FFF9FAF4FFF9FAF5FFDBDCD8FFBDBDBAFFBDBD
      BBFF7F7F7EFF7F7F7FFF707070FFDFDFDFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEDE2DCFFF5F6EEFF9A9A
      96FF7B7C79FF6C6D6AFF7C7D7AFF7D7D7AFFACADAAFFBCBDBAFFBDBDBBFFFDFE
      FBFFFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEDE2DCFFF6F7F0FFF6F7
      F1FFF7F8F2FFF8F9F3FFF9FAF4FFFAFBF7FFBCBDBAFFBDBDBBFFAEAEACFF7F7F
      7EFF7F7F7FFF707070FF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEDE3DEFFF6F7F0FFF7F8
      F2FFF8F9F3FFF9FAF4FFFAFBF6FFFAFBF7FFFCFCF9FFFCFDFAFFFDFEFCFFFEFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEDE3DEFFF7F8F2FFF7F8
      F2FFF9FAF4FFFAFBF6FFFAFBF7FFFCFCF9FFFCFCF9FFFDFEFCFFFEFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEEE4DFFFF7F8F2FFBBBB
      B7FFBBBCB7FFCBCCC9FFFBFCF8FFFCFCF9FFFDFEFBFFFDFEFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEEE4DFFFF9FAF4FFBBBC
      B7FFBCBCB9FF9D9D9BFF7E7E7DFF7E7F7EFFDDDEDDFFFFFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFEFE5E0FFF9FAF4FFDBDB
      D7FFFAFBF7FFFCFCF9FFFCFDFAFFFDFEFCFFFEFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFF0E5E1FFFAFBF6FF8D8D
      8BFF7E7E7DFF7E7E7DFF7F7F7EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFF0E6E2FFFAFBF7FFFBFC
      F8FFFCFCF9FFFDFEFBFFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C98F8FFFF0E6E3FF8A8593FFAEB8
      C3FFFDFDFBFFD9C7C8FFB5C1CEFFFBF7F7FFFAF3F3FFEAD1D1FFFFFFFFFFFFFF
      FFFFF5E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070708FD0D0
      D02FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C88C8CFFE6CCCAFF416886FF1994
      B8FFE8CECCFF416886FF2BA4C5FFB6A9B3FFEFDCDCFF416886FF5A92AAFFFFFF
      FFFF816C7BFF408AA9FFF1DFDFFF416886FF47A2C0FFE8E5E8FF7C7C7C83D6D6
      D629FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D19B9BFFBD8689FFC17474FF009E
      C1FFBF6F6FFFBF6F6FFF5F8497FF8F6D7AFFC27777FFBD8689FF318AA9FFD095
      95FFD09797FF3397B3FFBB9BA1FFD29B9BFF5098B2FF8AA2B2FF9F9F9F60E7E7
      E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000FAECAF03CC1D6F231BC
      CFCE50B0C7BE49BFD3E51CC0D5FF7F98ABC44DA2B6F3699FB3EA3BACBFEB7782
      90F4BB9699DF17A2BDFF967D8AFFAD7D83FF538EA0FF5491A2B7CECECE31F8F8
      F807FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEAF121BBD4E144E8EE
      F117EAF0F3158BCFDE74A5D5E05AF2F2F20D6CCFDE9349CBDBB6BBD6DD4495D3
      DF6A2CB0CAD363BBCF9C9DCDD8620EB5CEF10EADC9F1CFD5D830F3F3F30CFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btNovoClick
  end
  object btSalvar: TspSkinButton
    Left = 120
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Salvar Arquidiocese'
    HintImageIndex = 0
    TabOrder = 2
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Salvar - F3'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F807B6B6B6499B9B9B64ADADAD52D7D7D728EAEA
      EA15F3F3F30CFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AFAFAF604D4D4DCB424242D04D4D4DB55B5B5BA47676
      76899F9F9F60C9C9C936E4E4E41BF0F0F00FF6F6F609FEFEFE01FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00666666FF5F5F5FFF434343FF393939FF343434F33C3C
      3CDD474747C1555555AA676767988C8C8C73B3B3B34CD8D8D827EAEAEA15F3F3
      F30CFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00818181FF6F6F6FFF525252FF0033FFFF183CC8FF233A
      93FF363C56FF383838FB373737E7404040D14D4D4DB55B5B5BA4767676899F9F
      9F60C9C9C936E4E4E41BF0F0F00FF6F6F609FEFEFE01FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00828282FF6F6F6FFF515151FF009CFFFF0093FFFF006C
      FFFF003DFFFF0B38EAFF203DAFFF2D3D7DFF373B47FF343434F33C3C3CDD4747
      47C1555555AA676767988C8C8C73B3B3B34CD8D8D827EAEAEA15F3F3F30CFBFB
      FB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484FF707070FF505050FF00A6FFFF00CCFFFF00CC
      FFFF00CCFFFF00AFFFFF0080FFFF0050FFFF0033FFFF173DD6FF273D97FF343E
      64FF393939FB373737E7404040D14D4D4DB55B5B5BA4767676899F9F9F60C9C9
      C936E4E4E41BF0F0F00FFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00868686FF717171FF4E4E4EFF1D9CCFFF00CCFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00C2FFFF0093FFFF0063FFFF003D
      FFFF0C39EBFF1E3EBEFF2B3E8BFF3C3F4CFF383838F33C3C3CDD474747C15555
      55AA676767989292926DDEDEDE21FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00878787FF717171FF4D4D4DFF993300FF936040FF606C
      60FF309CAFFF1AC6EFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF009CFFFF0033FFFF0033FFFF0033FFFF133CE2FF263FA5FF394369FF3D3D
      3DFB373737E7565656AFC6C6C639F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00898989FF727272FF4B4B4BFFBF8060FFF9F2EFFFDFBF
      AFFFD2A68FFFD9B39FFF968370FF567670FF309CAFFF0AC2EFFF00CCFFFF00CC
      FFFF00CCFFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF334C
      B2FF595959FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008A8A8AFF737373FF4A4A4AFFC68C70FFD2A68FFFECD9
      CFFFFFFFFFFFF9F2EFFFF9F2EFFFECD9CFFFD2A68FFFBF8060FF796650FF4D80
      80FF26A6BFFF1D33CFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF324B
      B1FF585858FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008C8C8CFF737373FF494949FFB36640FFECD9CFFFF2E6
      DFFFFFFFFFFFFFFFFFFFF9F2EFFFFFFFFFFFE6CCBFFFF2E6DFFFD9B39FFFF9F2
      EFFFD2A68FFFB97350FF794050FF0033FFFF0033FFFF0033FFFF0033FFFF314B
      B1FF575757FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008D8D8DFF747474FF484848FF693350FFBC8C80FF9933
      00FFA64D20FFBF8060FFD2A68FFFF2E6DFFFF2E6DFFFF2E6DFFFF2E6DFFFF9F2
      EFFFFFFFFFFFFFFFFFFFAF7360FF0033FFFF0033FFFF0033FFFF0033FFFF314A
      B0FF565656FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008F8F8FFF757575FF464646FF0033FFFF0033FFFF1D33
      CFFF43338FFF603360FF863320FF993300FFA64D20FFF9F2EFFFECD9CFFFFFFF
      FFFFF9F2EFFFF2E6DFFFCC9980FF0A33EFFF0033FFFF0033FFFF0033FFFF3049
      AFFF555555FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00909090FF767676FF454545FF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF1333DFFF39339FFF664070FFA67370FFB973
      50FF9F4010FFD9B39FFFAC5930FF2633BFFF0033FFFF0033FFFF0033FFFF2F49
      AFFF545454FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00929292FF767676FF444444FF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF1333
      DFFF39339FFF6C4D80FF7C3330FF43338FFF0033FFFF0033FFFF0033FFFF2F48
      AEFF535353FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00939393FF777777FF424242FF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF2E48
      AEFF525252FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00959595FF787878FF414141FF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF2D47
      ADFF515151FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00979797FF787878FF3F3F3FFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF2D46
      ACFF505050FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00989898FF797979FF3E3E3EFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF2C46
      ACFF505050FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009A9A9AFF7A7A7AFF3D3D3DFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF1D33D9FF693373FF4D3399FF2633CCFF0A33F2FF0033
      FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF0033FFFF2B45
      ABFF4E4E4EFF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009B9B9BFF7A7A7AFF3C3C3CFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF2633CCFF993333FF993333FF993333FF993333FF8633
      4DFF603380FF4333A6FF1D33D9FF0033FFFF0033FFFF0033FFFF0033FFFF2B44
      AAFF4D4D4DFF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C9C9CFF7B7B7BFF3B3B3BFF0033FFFF0033FFFF0033
      FFFF0033FFFF0033FFFF2633CCFF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF733366FF0033FFFF0033FFFF0033FFFF0033FFFF2A43
      A9FF4D4D4DFF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009F9F9FFF7C7C7CFF393939FF003DFFFF0080FFFF008C
      FFFF006FF5FF0049F5FF2633CCFF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF733366FF0033FFFF0033FFFF0033FFFF0033FFFF2A43
      A9FF4B4B4BFF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A0FF7D7D7DFF383838FF0040FFFF0099FFFF00E6
      FFFF00F0D9FF00DBA6FF269E59FF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF733366FF0033FFFF0033FFFF0033FFFF0033FFFF2942
      A8FF4B4B4BFF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A1A1A1FF7D7D7DFF363636FF0040FFFF0099FFFF00E6
      FFFF00F0D9FF00DBA6FF269E59FF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF7D3456FF1E35CFFF0033FFFF0033FFFF0033FFFF2842
      A8FF494949FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A3A3A3FF7E7E7EFF353535FF0040FFFF0099FFFF00E6
      FFFF00F0D9FF00DBA6FF269E59FF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF9D3726FFA03A00FF90300AFF48256BFF1D20A9FF2734
      8DFF494949FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A4A4A4FF7F7F7FFF343434FF353535FF294F68FF237C
      83FF19A092FF0FB38BFF2A9657FF993333FF993333FF993333FF993333FF9933
      33FF993333FF993333FF9D3726FFA03A00FF90300AFF60203AFF30106AFF2727
      73FF474747FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A3A3A3FF939393FF666666FF545454FF4E4E4EFF3636
      36FF383838FF393939FF3B3B3BFF533A3AFF5F3939FF713838FF833636FF9434
      34FF993333FF993333FF9D3726FFA03A00FF90300AFF60203AFF30106AFF2626
      73FF474747FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CBCBCB40B5B5B573A1A1A193969696C2808080F08383
      83FF939393FF878787FF6F6F6FFF626262FF565656FF424242FF3F3F3FFF4040
      40FF474040FF583E3EFF6B3F36FF723F22FF7D3519FF5D223CFF30106AFF2525
      72FF454545FF494949C2C3C3C33CF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CBCBCB40B6B6B664B4B4B484A6A6A6B39E9E9ED2939393FFA5A5A5FF9898
      98FF818181FF7D7D7DFF5F5F5FFF515151FF444444FF474747FF46444BFF4040
      53FF454545FF585858B3C9C9C936F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8D830C8C8
      C843B8B8B883AFAFAFA4A7A7A7C3AAAAAAF0A9A9A9FFA3A3A3FF9F9F9FFF8787
      87FF4F4F4FFFA4A4A467F5F5F50AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2F210CACACA41CBCBCB64A0A0
      A075D0D0D038FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btSalvarClick
  end
  object btAlterar: TspSkinButton
    Left = 232
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Alterar Arquidiocese'
    HintImageIndex = 0
    TabOrder = 3
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Alterar - F4'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEDEB14DBD7D52CD0CBC83ACFCAC73CD3CFCD36DEDADA29E9E7E61BE9E8
      E71AE1DEDD25D7D3D032D0CAC73BCDC8C63DD3CECB37E0DDDC26FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DBD7D52C897A74936F5E55B36C5C53B8776962AA93898486BDB6B352C0BA
      B64E9F9691777C6F69A36D5D54B66A584FBA75655DAC9D938F7AFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00252C30FF424242FF353435FB292727F8372D27EF533E34D75F4F45C75248
      43D1322F2FEE25272AF9413F3FFF37373AFF37322FEA877C7695FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00424245FFFFB4B4FFFFB2B2FFEEA5A5FF6F6563FF2A2A2BFD262424FB5650
      4EFFD78C8CFFFF9F9FFFFF9C9CFF996666FF37322FEA877C7695FEFEFE01FEFE
      FE01FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFD
      FD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFDFD02FDFD
      FD02424244FFFFB6B6FFFFB4B4FFFFB2B2FFFFAFAFFFE29B9BFF826161FFFFA6
      A6FFFFA4A4FFFFA1A1FFFF9F9FFF996767FF484343D69C928E7BFAFAFA05F6F4
      F40BF4F2F10EF2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0
      EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0EF10F2F0
      EF10252C30FF424244FF565254FF997373FFF9AEAEFFFFAFAFFFFFACACFFFFA9
      A9FFD79090FF554545FF403F40FF363739FF727274A1DCDAD82AEFEDEB14DBD7
      D52CD0CBC83ACCC6C33FCBC5C240CBC5C240CBC5C240CBC5C240CBC5C240CBC5
      C240CBC5C240CBC5C240CBC5C240CBC5C240CBC5C240CBC5C240CBC5C240CBC5
      C240C8C2BE44C4BDBA49AAA5A266676667AF5A4C4CFFFFB2B2FFFFAFAFFFBB84
      84FF2B2A2AF4786E6BA3AFA5A064C1BBB64DD2CDCA38E7E5E31DDBD7D52C897A
      73936D5D53B567544ABE665349BF665349BF665349BF665349BF665349BF6653
      49BF665349BF665349BF665349BF665349BF665349BF665349BF665349BF6653
      49BF665349BF665349BF665349BF665349BF3F3F3FFDFFB4B4FFFFB2B2FF5547
      47FF453329F2574438D1624E44C46B5B51B7887A7294DAD6D42D000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF464748FFFFB6B6FFFFB4B4FF5548
      48FF26140AFF0D0603FF030201FF000000FF000000FFD0C9C73B000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525354FFFFB9B9FFFFB6B6FF5548
      48FF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCCC6C33F000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFBCBCFFFFB9B9FF5549
      49FF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFBFBFFFFFBCBCFF5549
      49FF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFC1C1FFFFBFBFFF554A
      4AFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFC5C5FFFFC1C1FF554A
      4AFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFC7C7FFFFC5C5FF554B
      4BFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFC9C9FFFFC7C7FF554B
      4BFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFCCCCFFFFC9C9FF554B
      4BFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFCFCFFFFFCCCCFF554C
      4CFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFD2D2FFFFCFCFFF554C
      4CFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFD4D4FFFFD2D2FF554D
      4DFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFD8D8FFFFD4D4FF554D
      4DFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCBC5C240000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFDADAFFFFD8D8FF554E
      4EFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFCCC6C33F000000FFFFFF
      FFFFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB03602FFB036
      02FFB03602FFB03602FFB03602FFFFFFFFFF525354FFFFDCDCFFFFDADAFF554E
      4EFF66534AFFCCC6C2FFFFFFFFFFFFFFFFFF000000FFD0C9C73B000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525354FFFFDFDFFFFFDCDCFF554E
      4EFF645248FFCAC3C0FFFFFFFFFFFFFFFFFF000000FFDBD7D52C000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF010000FF010101FF020101FF050302FF464748FFFFE2E2FFFFDFDFFF554F
      4FFF28140BFF0F0805FF000000FF020201FF020101FFEBEAE818FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F5F40BE9E8E71ADFDCDB27D0CCC93A505152F5FFE5E5FFFFE2E2FF554F
      4FFF553F35D59E938F79CAC5C241DBD9D82BE5E3E220EFEEED14FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E4E31EB7B0AD5A9F969177877B7596404141FEFFE7E7FFFFE5E5FF776D
      6DFF3D2B21EE5B493FCD7F726BA09B918C7DAAA29E6AC9C4C243FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A8A6A665655B58B9433A36DF272729F7827B7BFFFFEAEAFFFFE7E7FFE2CC
      CCFF3B3B3BFF302723F53F312AE9453932E05D4F49C6948B8784FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0031373BFF999595FF999494FFD7CCCCFFFFEFEFFFF9E8E8FFE2D0D0FFFFE7
      E7FFF9E0E0FF998A8AFF998989FF665D5DFF37302EEC84797498FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00484D50FFFFFAFAFFFFF8F8FFFFF4F4FFEEE2E2FF4F4D4DFF3E3D3DFFD7C6
      C6FFFFE7E7FFFFE5E5FFFFE2E2FF998989FF352E2DEE8378729AFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00484D50FF999797FF999696FF777474FF5A5A5AFF5E5D5EBA8585858D5D5E
      5EFE5A5656FF998D8DFF998B8BFF665E5EFF373332EA8C837E8EFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00545A5EBF545A5EBF7175799F9B9EA170E2E3E420FFFFFF00FFFFFF00F0F1
      F110A9ACAE607F83868F545A5EBF545A5EBFA9ACAE60FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btAlterarClick
  end
  object btCancelar: TspSkinButton
    Left = 344
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Cancelar o cadastro da Arquidiocese'
    HintImageIndex = 0
    TabOrder = 4
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Cancelar - F5'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC03F3F3F30CE9E9E916E0E0E01FDDDDDD22DCDCDC23DEDE
      DE21E5E5E51AEFEFEF10F8F8F807FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F8F8
      F807E8E8E817D1D1D12EB9B9B946A1A1A15E9191916E89898976888888778C8C
      8C739A9A9A65ADADAD52C4C4C43BDCDCDC23F1F1F10EFCFCFC03FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA05E9E9E916C9C9
      C936A1A1A15E787C9EB95B64AAE64451AEF63947AEFA3947ADFA3947ADFA515C
      A8F05F669ADE656778B66E6E6E918C8C8C73B5B5B54ADADADA25F4F4F40BFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F6F6F609D8D8D827A2A3AC6C6169
      AEE11627A7FF0A1EB7FF0C21C1FF0E24CCFF0E24CCFF0E24CCFF0B20BCFF091D
      B2FF0719A2FF0719A2FF3946ADFB5D6184D3676767988F8F8F70C2C2C23DEAEA
      EA15FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01F3F3F30CCCCCCC336F77B3D1192CBCFF0F26
      D6FF132DF0FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF122BEBFF0E25D1FF091CACFF0719A2FF3946ADFB5C5E6FC077777788B0B0
      B04FE3E3E31CFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F708C4C5CE4A4A57BDF21129E0FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF0E25D1FF081AA7FF1627A7FF5B618DDC6D6D
      6D92ADADAD52E7E7E718FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFBFB04CFD0D93F3748CEFA132DF0FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF122BEBFF091DB2FF0719A2FF5B62
      95E27373738CBBBBBB44F1F1F10EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01E9E9E9165C6BD8E7142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF132DF0FF091DB2FF1627
      A7FF5B5F78CC8484847BD1D1D12EF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F40B8E97E2B4142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF3D52F4F87E8CEFCAB6BCEF7DBBC2F478AEB7F58D7887F5D13047
      F6FB142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF132DF0FF091C
      ACFF2232AAFE5C5C5CA3A3A3A35CE9E9E916FFFFFF00FFFFFF00FFFFFF00FCFC
      FC03C5C8E258223BF5EF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF4E62
      F7BFE1E4FD20FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD02F0F0
      F00F98A0DBA2142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF122A
      E5FF0719A2FF545DA2EE7B7B7B84D0D0D02FFBFBFB04FFFFFF00FFFFFF00F2F2
      F20D4E62F7BF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF97A3FA70FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF0
      F910394CE3FA142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF0D22C6FF1627A7FF6262629DB3B3B34CF1F1F10EFFFFFF00FFFFFF00C4CA
      FC40142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF8894F480FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D3ED303D51
      E7CF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF132DF0FF0719A2FF606590D897979768E3E3E31CFFFFFF00FFFFFF006C7C
      F89F142EF5FF142EF5FF142EF5FF142EF5FF1F37E5EFEFF0F910FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D3ED301E34DBEF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF0C21C1FF4A55ABF58282827DD9D9D926FFFFFF00FFFFFF00223B
      F5EF142EF5FF142EF5FF142EF5FF142EF5FF6672CF9FFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D3ED301E34DBEF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF223BF5FF6272EDE6142EF5FF142EF5FF142E
      F5FF142EF5FF0F26D6FF2E3DACFD7474748BD2D2D22DFFFFFF00D2D7FD30142E
      F5FF142EF5FF142EF5FF142EF5FF122AE5FFA1A8DB60FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D0D3ED301E34DBEF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF223BF5EFA4A9CF85DEE0EC31142EF5FF142EF5FF142E
      F5FF142EF5FF122BEBFF0719A2FF7070708FD0D0D02FFFFFFF00C4CAFC40142E
      F5FF142EF5FF142EF5FF142EF5FF0E24CCFFC0C5E740FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D0D3ED301E34DBEF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF223BF5EFD2D7FD30ECECEC13FDFDFD023E53F5F7142EF5FF142E
      F5FF142EF5FF142EF5FF0719A2FF7070708FD0D0D02FFFFFFF008996F980142E
      F5FF142EF5FF142EF5FF142EF5FF0C21C1FFC0C5E740FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D0D3ED301E34DBEF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF223BF5EFD2D7FD30FFFFFF00FDFDFD02FFFFFF004D60F5F1142EF5FF142E
      F5FF142EF5FF142EF5FF0719A2FF76767689D3D3D32CFFFFFF008996F980142E
      F5FF142EF5FF142EF5FF142EF5FF0B20BCFF9299D670FFFFFF00FFFFFF00FFFF
      FF00D0D3ED301E34DBEF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF223B
      F5EFD2D7FD30FFFFFF00FFFFFF00FFFFFF00FEFEFE014C60F4F1142EF5FF142E
      F5FF142EF5FF142EF5FF0719A2FF86868679DBDBDB24FFFFFF00B5BDFB50142E
      F5FF142EF5FF142EF5FF142EF5FF0E24CCFF5461BFAFFFFFFF00FFFFFF00D1D5
      F2301E34DBEF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF223BF5EFD2D7
      FD30FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F9064B5FF4F2142EF5FF142E
      F5FF142EF5FF142EF5FF3A48AEF99E9E9E61E7E7E718FFFFFF00C4CAFC40142E
      F5FF142EF5FF142EF5FF142EF5FF1027DBFF0719A2FFDFE2F320D1D5F2302038
      EBEF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF223BF5EFD2D7FD30FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01DDDEEB32142EF5FF142EF5FF142E
      F5FF142EF5FF132DF0FF5660ADEBBCBCBC43F5F5F50AFFFFFF00FFFFFF00142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF091CACFF4554BEBF2038EBEF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF223BF5EFD2D7FD30FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F3F3F30C8F99E4B3142EF5FF142EF5FF142E
      F5FF142EF5FF1027DBFF81849EA6D8D8D827FDFDFD02FFFFFF00FFFFFF005D6F
      F8AF142EF5FF142EF5FF142EF5FF142EF5FF1027DBFF122AE5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF223BF5EFD2D7FD30FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BBBCC9542F46F4FD142EF5FF142EF5FF142E
      F5FF142EF5FF3546CCFBB1B1B14EEFEFEF10FFFFFF00FFFFFF00FFFFFF00B5BD
      FB50142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF223BF5EFD2D7FD30FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFF0F910394CE2FB142EF5FF142EF5FF142EF5FF142E
      F5FF132DF0FF7E85B3BADBDBDB24FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003148F6DF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF223BF5EFD2D7FD30FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A1A8DB601E34DBEF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF4E5FDBF2C8C8C837F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C4CAFC40142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF132DF0FF091DB2FF3544B3CF828BD080B1B6E150C0C5E7409299D670646F
      C59F182AB2EF1027DBFF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF2E45
      F4FDB0B1BE5FEEEEEE11FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008996F980142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF132DF0FF0E25D1FF0A1EB7FF091CACFF0719A2FF091DB2FF0C21C1FF0F26
      D6FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF949A
      CCA0E5E5E51AFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006C7CF89F142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF8690DBBCE2E2
      E21DFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B89F98F142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF213AF5FE8E97E2B4E9E9E916FBFB
      FB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5BDFB503148F6DF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF142EF5FF142EF5FF4A5DF2F4C5C8E258F4F4F40BFEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F1FE1097A3FA703148
      F6DF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142EF5FF142E
      F5FF142EF5FF4E62F7BFC4CAFC40F1F1F10EFCFCFC03FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D2D7FD3097A3FA708996F9804E62F7BF4E62F7BF5D6FF8AF8996F980A6B0
      FB60E1E4FD20FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btCancelarClick
  end
  object btExcluir: TspSkinButton
    Left = 457
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Excluir Arquidiocese'
    HintImageIndex = 0
    TabOrder = 5
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Excluir - F6'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      0000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000080808000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000080808000FF000000FF000000FF000000FF000000FF000000FF0000000000
      FF00FF000000FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808080000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF008080800080808000808080000000
      0000808080000000FF000000FF00FF000000FF0000000000FF000000FF00FF00
      0000FF000000FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00C0C0C00080808000FF00
      0000FF000000FF0000000000FF000000FF000000FF00FF000000FF000000FF00
      0000FF000000FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000C0C0C00080808000FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00FF000000FF00
      00000000FF000000FF000000FF00FF000000FF0000000000FF00FF000000FF00
      0000FF000000FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF000000FF000000FF000000
      FF000000FF00FF000000FF000000FF000000FF000000FF000000FF0000000000
      FF000000FF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
      FF008080800080808000808080000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btExcluirClick
  end
  object btSair: TspSkinButton
    Left = 565
    Top = 335
    Width = 113
    Height = 39
    Hint = 'Sair do cadastro da Arquidiocese'
    HintImageIndex = 0
    TabOrder = 6
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'button'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = False
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    ShowHint = True
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Sair - ESC'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F609F6F6F609C2C2C23DC2C2
      C23DC9C9C936C9C9C936F2F2F20DF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F609F6F6F609C2C2C23DC2C2
      C23DC9C9C936C9C9C936F2F2F20DF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0098BE986798BE98678B9E8B748B9E
      8B747474748B7474748BADADAD52ADADAD52EDEDED12EDEDED12FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0098BE986798BE98678B9E8B748B9E
      8B747474748B7474748BADADAD52ADADAD52EDEDED12EDEDED12FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03FCFCFC03FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0083B9868283B986823FB959F23FB9
      59F2355B35CA355B35CA5E5E5EA15E5E5EA1ABABAB54ABABAB54F0F0F00FF0F0
      F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03FCFCFC03FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0083B9868283B986823FB959F23FB9
      59F2355B35CA355B35CA5E5E5EA15E5E5EA1ABABAB54ABABAB54F0F0F00FF0F0
      F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC03FCFCFC03DBDBDB24DBDBDB24F3F3F30CF3F3
      F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00CEE1CE31CEE1CE3144CD67FF44CD
      67FF53E27CFF53E27CFF2E5832D72E5832D76161619E6161619EBDBDBD42BDBD
      BD42F9F9F906F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC03FCFCFC03DBDBDB24DBDBDB24F3F3F30CF3F3
      F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00CEE1CE31CEE1CE3144CD67FF44CD
      67FF53E27CFF53E27CFF2E5832D72E5832D76161619E6161619EBDBDBD42BDBD
      BD42F9F9F906F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CAD6CA35CAD6CA357C7C7C837C7C7C83ABABAB54ABAB
      AB54E9E9E916E9E9E916FFFFFF00FFFFFF00E6ECE619E6ECE61934B751FF34B7
      51FF62FB95FF62FB95FF46CF69FF46CF69FF344D34CB344D34CB8282827D8282
      827DEDEDED12EDEDED12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CAD6CA35CAD6CA357C7C7C837C7C7C83ABABAB54ABAB
      AB54E9E9E916E9E9E916FFFFFF00FFFFFF00E6ECE619E6ECE61934B751FF34B7
      51FF62FB95FF62FB95FF46CF69FF46CF69FF344D34CB344D34CB8282827D8282
      827DEDEDED12EDEDED12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00118721FF118721FF3A633EC83A633EC8595959A65959
      59A69A9A9A659A9A9A65E1E1E11EE1E1E11E82A8827D82A8827D47D670FF47D6
      70FF5CF58FFF5CF58FFF62FB95FF62FB95FF23782CEF23782CEF5E5E5EA15E5E
      5EA1E7E7E718E7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00118721FF118721FF3A633EC83A633EC8595959A65959
      59A69A9A9A659A9A9A65E1E1E11EE1E1E11E82A8827D82A8827D47D670FF47D6
      70FF5CF58FFF5CF58FFF62FB95FF62FB95FF23782CEF23782CEF5E5E5EA15E5E
      5EA1E7E7E718E7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001A9933FF1A9933FF2BBA54FF2BBA54FF1F5C23E31F5C
      23E3535353AC535353AC787E7887787E78872B963DF12B963DF152EB85FF52EB
      85FF57F08AFF57F08AFF5CF58FFF5CF58FFF30B04AFF30B04AFF595959A65959
      59A6E7E7E718E7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001A9933FF1A9933FF2BBA54FF2BBA54FF1F5C23E31F5C
      23E3535353AC535353AC787E7887787E78872B963DF12B963DF152EB85FF52EB
      85FF57F08AFF57F08AFF5CF58FFF5CF58FFF30B04AFF30B04AFF595959A65959
      59A6E7E7E718E7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0017972EFF17972EFF33CC65FF33CC65FF2BBA54FF2BBA
      54FF1B5E1FE71B5E1FE71A7623F11A7623F142D872FF42D872FF4CE57FFF4CE5
      7FFF51EA84FF51EA84FF57F08AFF57F08AFF2DAC46FF2DAC46FF676767986767
      6798E9E9E916E9E9E916FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0017972EFF17972EFF33CC65FF33CC65FF2BBA54FF2BBA
      54FF1B5E1FE71B5E1FE71A7623F11A7623F142D872FF42D872FF4CE57FFF4CE5
      7FFF51EA84FF51EA84FF57F08AFF57F08AFF2DAC46FF2DAC46FF676767986767
      6798E9E9E916E9E9E916FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00159429FF159429FF2DC65AFF2DC65AFF33CC65FF33CC
      65FF2BBA54FF2BBA54FF33C660FF33C660FF41DA74FF41DA74FF46DF79FF46DF
      79FF4CE57FFF4CE57FFF51EA84FF51EA84FF2AA040FA2AA040FA9494946B9494
      946BF0F0F00FF0F0F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00159429FF159429FF2DC65AFF2DC65AFF33CC65FF33CC
      65FF2BBA54FF2BBA54FF33C660FF33C660FF41DA74FF41DA74FF46DF79FF46DF
      79FF4CE57FFF4CE57FFF51EA84FF51EA84FF2AA040FA2AA040FA9494946B9494
      946BF0F0F00FF0F0F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00129124FF129124FF27C04EFF27C04EFF2DC65AFF2DC6
      5AFF33CC65FF33CC65FF35CE68FF35CE68FF3AD36DFF3AD36DFF41DA74FF41DA
      74FF46DF79FF46DF79FF47DD77FF47DD77FF2F7132D52F7132D5D4D4D42BD4D4
      D42BFEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00129124FF129124FF27C04EFF27C04EFF2DC65AFF2DC6
      5AFF33CC65FF33CC65FF35CE68FF35CE68FF3AD36DFF3AD36DFF41DA74FF41DA
      74FF46DF79FF46DF79FF47DD77FF47DD77FF2F7132D52F7132D5D4D4D42BD4D4
      D42BFEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000F8E1DFF0F8E1DFF21BA43FF21BA43FF27C04EFF27C0
      4EFF2DC65AFF2DC65AFF33CC65FF33CC65FF35CE68FF35CE68FF3AD36DFF3AD3
      6DFF40D973FF40D973FF239939FA239939FAA5ABA55AA5ABA55AF9F9F906F9F9
      F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000F8E1DFF0F8E1DFF21BA43FF21BA43FF27C04EFF27C0
      4EFF2DC65AFF2DC65AFF33CC65FF33CC65FF35CE68FF35CE68FF3AD36DFF3AD3
      6DFF40D973FF40D973FF239939FA239939FAA5ABA55AA5ABA55AF9F9F906F9F9
      F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000B8B17FF0B8B17FF1BB437FF1BB437FF21BA42FF21BA
      42FF27C04DFF27C04DFF2CC558FF2CC558FF32CB63FF32CB63FF35CE68FF35CE
      68FF28B14BFF28B14BFF3B4E3BC43B4E3BC48F8F8F708F8F8F70E1E1E11EE1E1
      E11EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000B8B17FF0B8B17FF1BB437FF1BB437FF21BA42FF21BA
      42FF27C04DFF27C04DFF2CC558FF2CC558FF32CB63FF32CB63FF35CE68FF35CE
      68FF28B14BFF28B14BFF3B4E3BC43B4E3BC48F8F8F708F8F8F70E1E1E11EE1E1
      E11EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0008870FFF08870FFF15AE29FF15AE29FF1AB335FF1AB3
      35FF20B940FF20B940FF26BF4CFF26BF4CFF2CC557FF2CC557FF32CB63FF32CB
      63FF31C761FF31C761FF226B2BE7226B2BE7525252AD525252AD9494946B9494
      946BE1E1E11EE1E1E11EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0008870FFF08870FFF15AE29FF15AE29FF1AB335FF1AB3
      35FF20B940FF20B940FF26BF4CFF26BF4CFF2CC557FF2CC557FF32CB63FF32CB
      63FF31C761FF31C761FF226B2BE7226B2BE7525252AD525252AD9494946B9494
      946BE1E1E11EE1E1E11EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005850AFF05850AFF0FA81DFF0FA81DFF15AE29FF15AE
      29FF1AB335FF1AB335FF20B940FF20B940FF26BF4CFF26BF4CFF2CC557FF2CC5
      57FF32CB63FF32CB63FF31C660FF31C660FF277030E2277030E25E5E5EA15E5E
      5EA1A0A0A05FA0A0A05FF0F0F00FF0F0F00FFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005850AFF05850AFF0FA81DFF0FA81DFF15AE29FF15AE
      29FF1AB335FF1AB335FF20B940FF20B940FF26BF4CFF26BF4CFF2CC557FF2CC5
      57FF32CB63FF32CB63FF31C660FF31C660FF277030E2277030E25E5E5EA15E5E
      5EA1A0A0A05FA0A0A05FF0F0F00FF0F0F00FFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00028205FF028205FF09A212FF09A212FF0FA81DFF0FA8
      1DFF15AE29FF15AE29FF1AB335FF1AB335FF20B940FF20B940FF26BF4CFF26BF
      4CFF2CC557FF2CC557FF32CB63FF32CB63FF31C660FF31C660FF468F4FC3468F
      4FC3B4B4B44BB4B4B44BF3F3F30CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00028205FF028205FF09A212FF09A212FF0FA81DFF0FA8
      1DFF15AE29FF15AE29FF1AB335FF1AB335FF20B940FF20B940FF26BF4CFF26BF
      4CFF2CC557FF2CC557FF32CB63FF32CB63FF31C660FF31C660FF468F4FC3468F
      4FC3B4B4B44BB4B4B44BF3F3F30CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008FBB8F708FBB8F707AAD7A857AAD7A8579AC798679AC
      798679AC798679AC798679AC798679AC798679AC798679AC798679AC798679AC
      798679AC798679AC798679AC798679AC798679AC798679AC798679AC798679AC
      7986F3F3F30CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008FBB8F708FBB8F707AAD7A857AAD7A8579AC798679AC
      798679AC798679AC798679AC798679AC798679AC798679AC798679AC798679AC
      798679AC798679AC798679AC798679AC798679AC798679AC798679AC798679AC
      7986F3F3F30CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btSairClick
  end
  object label101: TspSkinLabel
    Left = 0
    Top = 383
    Width = 682
    Height = 21
    HintImageIndex = 0
    TabOrder = 7
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'label'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ShadowEffect = False
    ShadowColor = clBlack
    ShadowOffset = 0
    ShadowSize = 3
    ReflectionEffect = False
    ReflectionOffset = -5
    EllipsType = spetNoneEllips
    UseSkinSize = True
    UseSkinFontColor = True
    BorderStyle = bvFrame
    Alignment = taCenter
    Align = alBottom
    Caption = 'LABEL101'
    AutoSize = True
  end
  object StatusBar: TspSkinStatusBar
    Left = 0
    Top = 404
    Width = 682
    Height = 16
    HintImageIndex = 0
    TabOrder = 8
    DrawDefault = True
    SkinData = fPrincipal.spSkinData1
    SkinDataName = 'statusbar'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = BALTIC_CHARSET
    DefaultFont.Color = clMenuHighlight
    DefaultFont.Height = -21
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    RibbonStyle = False
    ImagePosition = spipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    NumGlyphs = 1
    Spacing = 2
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    Align = alBottom
    SizeGrip = False
    object StatusPanel1: TspSkinStatusPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 16
      HintImageIndex = 0
      TabOrder = 0
      DrawDefault = True
      SkinData = fPrincipal.spSkinData1
      SkinDataName = 'statuspanel'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = spetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Align = alLeft
      AutoSize = False
      ImageIndex = -1
      NumGlyphs = 1
    end
  end
  object spDynamicSkinForm1: TspDynamicSkinForm
    QuickButtons = <>
    QuickButtonsShowHint = False
    ClientInActiveEffect = False
    ClientInActiveEffectType = spieSemiTransparent
    DisableSystemMenu = False
    PositionInMonitor = sppDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    ShowObjectHint = False
    UseDefaultObjectHint = True
    UseSkinCursors = False
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SupportNCArea = True
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    AlphaBlend = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    SkinData = fPrincipal.spSkinData1
    MenusSkinData = fPrincipal.spSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Sizeable = True
    DraggAble = False
    Magnetic = False
    MagneticSize = 10
    BorderIcons = [biSystemMenu, biRollUp]
    Left = 632
    Top = 80
  end
  object DsCrismandos: TDataSource
    DataSet = DM1.TCrismandos
    OnStateChange = DsCrismandosStateChange
    Left = 632
    Top = 48
  end
end
