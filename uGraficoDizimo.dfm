object fGraficoDizimo: TfGraficoDizimo
  Left = 197
  Top = 194
  AutoScroll = False
  BorderIcons = []
  Caption = 'fGraficoDizimo--GR'#193'FICO DE DIZIMO'
  ClientHeight = 429
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Ano:'
  end
  object MskMes: TspSkinMaskEdit
    Left = 24
    Top = 32
    Width = 61
    Height = 18
    Hint = 'Dia Doa'#231#227'o/Mes e Ano Ofertados'
    EditMask = '!99/0000;1;_'
    Text = '  /    '
    DefaultColor = clWindow
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
    MaxLength = 7
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object btImprimir: TspSkinButton
    Left = 184
    Top = 365
    Width = 113
    Height = 42
    Hint = 'Imprimir a Certid'#227'o de Batismo'
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
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Imprimir - F8'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01EDEDED12C6C6C639ADADAD52D5D5D52AEFEFEF10F8F8F807FBFB
      FB04E7E7E718C0C0C03FB4B4B44BE1E1E11EF5F5F50AFEFEFE01FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3
      F30CD5D5D52A848484844B4B4BCA4A4A4AB75F5F5FA08C8C8C73B6B6B649BCBC
      BC436E6E6E9D494949C8525252AD7171718EA7A7A758D8D8D827F0F0F00FFCFC
      FC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F906E1E1E11EA0A0
      A0624D4D4DD04D4D4DFF5C5C5CFF353535FF393939E7434343CD4A4A4ABE4441
      41EA806666FFB0A6A6FF666666F73C3C3CD94D4D4DB56767679898989867CECE
      CE31EDEDED12FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03E9E9E916BCBCBC435E5E5EB94444
      44FA969696FFF2F2F2FFC0C0C0FFA3A3A3FF6E6E6EFF504D4DFF806666FFC293
      93FFB89292FFDAD4D4FFFFFFFFFFE6E6E6FF818181FB464646E2474747BE5E5E
      5EA18F8F8F70C6C6C639E9E9E916F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE01F0F0F00FCCCCCC3376767697404040EE828282FFEAEA
      EAFFF2F2F2FFEEEEEEFFBDBDBDFFB0B0B0FFB3B3B3FFBBAEAEFFAD8686FF7A6D
      6DFF6F6F6FFF7E7E7EFF9B9B9BFFD2D2D2FFF3F3F3FFF2F2F2FFA6A6A6FF5151
      51E7444444C4595959A68282827DC3C3C33CF9F9F906FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01E1E1E11E92929274494949DF6D6D6DFFD6D6D6FFF6F6F6FFF2F2
      F2FFEEEEEEFFEAEAEAFFBABABAFFADADADFFB0B0B0FFABABABFF3D3D3DFF5050
      50FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF9D9D9DFFC5C5C5FFEAEAEAFFFFFF
      FFFFCCCCCCFF767676EF454545C68B8B8B74EDEDED12FFFFFF00FFFFFF00FFFF
      FF00E8E8E81B757575AA595959F9C3C3C3FFFBFBFBFFF6F6F6FFF2F2F2FFEEEE
      EEFFEAEAEAFFE6E6E6FFB6B6B6FFAAAAAAFFADADADFFB0B0B0FF8B8B8BFF6D6D
      6DFF575757FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF9D9D9DFFAFAFAFFFC6C6
      C6FFE6E6E6FFFAFAFAFF6B6B6BED8E8E8E71F0F0F00FFFFFFF00FFFFFF00FFFF
      FF009A9A9A86A1A1A1FFFEFEFEFFFBFBFBFFF6F6F6FFF2F2F2FFEEEEEEFFEAEA
      EAFFE6E6E6FFE2E2E2FFABABABFFA7A7A7FFAAAAAAFFADADADFFB0B0B0FFB3B3
      B3FFB6B6B6FF999999FF848484FF757575FF7E7E7EFF8E8E8EFF9D9D9DFFA7A7
      A7FF8D8D8DFF717171FF494949E29C9C9C63F3F3F30CFFFFFF00FFFFFF00FFFF
      FF009C9C9C86D0D0D0FFFBFBFBFFF6F6F6FFF2F2F2FFEEEEEEFFEAEAEAFFE6E6
      E6FFB4B4B4FF757575FF666666FF7A7A7AFF8B8B8BFFA2A2A2FFADADADFFB0B0
      B0FFB3B3B3FFB6B6B6FFB9B9B9FFB7B7B7FFA2A2A2FF909090FF4E4E4EFF3333
      33FFB9B9B9FF787878FF484848D99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
      FF009D9D9D86CECECEFFF6F6F6FFF2F2F2FFEEEEEEFFE1E1E1FFA7A7A7FF7676
      76FF929292FFC3C3C3FFADADADFF8F8F8FFF818181FF6E6E6EFF737373FF8F8F
      8FFFA7A7A7FFB3B3B3FFB6B6B6FFB9B9B9FFBCBCBCFFBFBFBFFFC3C3C3FFA1A1
      A1FFC8C8C8FF898989FF4A4A4AD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
      FF009D9D9D88CBCBCBFFF2F2F2FFE5E5E5FFA9A9A9FF767676FF949494FFCECE
      CEFFDADADAFFD6D6D6FFB3B3B3FF9E9E9EFFA2A2A2FFA4A4A4FF9A9A9AFF8383
      83FF737373FF747474FF888888FFA7A7A7FFB9B9B9FFBCBCBCFFBFBFBFFF70A0
      80FF59AF76FF777777FF4C4C4CD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
      FF007F7F7FB5B7B7B7FF999999FF6E6E6EFFA5A5A5FFDADADAFFDEDEDEFFDADA
      DAFFD6D6D6FFD3D3D3FFEBEBEBFFE1E1E1FFCECECEFFB8B8B8FFA8A8A8FFA7A7
      A7FFAAAAAAFFA4A4A4FF8F8F8FFF747474FF707070FF8B8B8BFFACACACFF6E9E
      7EFF56BF79FF656565FF4D4D4DD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
      FF00777777C4777777FFB8B8B8FFE6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6
      D6FFD1D1D1FFDEDEDEFFEEEEEEFFE2E2E2FFEBEBEBFFEAEAEAFFE8E8E8FFDADA
      DAFFC7C7C7FFB5B5B5FFADADADFFB0B0B0FFAEAEAEFF979797FF808080FF6363
      63FF656565FF797979FF4E4E4ED99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
      FF007A7A7AC4D7D7D7FFE6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6D6FFD1D1
      D1FFD4D4D4FFF1F1F1FFBFBFBFFFB9B9B9FFB3B3B3FFB8B8B8FFD1D1D1FFE3E3
      E3FFE7E7E7FFE6E6E6FFE1E1E1FFCFCFCFFFC3C3C3FFB6B6B6FFB6B6B6FFB4B4
      B4FFA1A1A1FF737373FF4F4F4FD9A2A2A25DF3F3F30CFFFFFF00FFFFFF00FFFF
      FF007D7D7DC3E6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6D6FFD1D1D1FFCFCF
      CFFFEFEFEFFFD1D1D1FFC5C5C5FFEFEFEFFFEEEEEEFFE8E8E8FFD2D2D2FFBDBD
      BDFFB2B2B2FFBBBBBBFFCECECEFFE0E0E0FFE3E3E3FFE1E1E1FFD8D8D8FFCDCD
      CDFFC3C3C3FF898989FF545454D6B7B7B748F6F6F609FFFFFF00FFFFFF00FFFF
      FF008B8B8BB1D9D9D9FFDEDEDEFFDADADAFFD6D6D6FFD1D1D1FFD0D0D0FFEFEF
      EFFFD3D3D3FFBBBBBBFFF2F2F2FFF1F1F1FFEFEFEFFFEEEEEEFFEDEDEDFFEBEB
      EBFFEAEAEAFFDFDFDFFFCACACAFFB6B6B6FFB1B1B1FFBEBEBEFFCFCFCFFFE0E0
      E0FFDEDEDEFF888888FF6F6F6FB1E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D6408D8D8DFFDADADAFFD6D6D6FFD1D1D1FFD6D6D6FFDFDFDFFFB0B0
      B0FF9A9A9AFFD1D1D1FFF4F4F4FFF2F2F2FFF1F1F1FFEFEFEFFFEEEEEEFFEDED
      EDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6E6FFDBDBDBFFBEBEBEFFABAB
      ABFFD0D0D0FF606060EAC3C3C33CFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C2C2C2607F7F7FF0969696FF979797FFAAAAAAFF9B9B9BFFB0B0
      B0FFAFAFAFFF949494FF8A8A8AFF969696FFA3A3A3FFBDBDBDFFD5D5D5FFEEEE
      EEFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6E6FFB5B5B5FFC8C8
      C8FF787878F8ADADAD63F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F5F5F510D6D6D6419E9E9ED4EAEAEAFFEAEAEAFFEAEA
      EAFFB6B6B6FFABABABFFB2B2B2FFB9B9B9FFBFBFBFFFADADADFF9F9F9FFF8E8E
      8EFF9D9D9DFFA1A1A1FFC1C1C1FFE2E2E2FFDEDEDEFFB6B6B6FFC5C5C5FF7C7C
      7CF7B7B7B75AF8F8F807FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999E2F7F7F7FFF8F8F8FFFAFA
      FAFFDADADAFFC7C7C7FFC1C1C1FFB2B2B2FFB9B9B9FFBFBFBFFFC6C6C6FFCDCD
      CDFFD3D3D3FFD3D3D3FFA2A2A2FFABABABFFB1B1B1FFA2A2A2FF868686CBD9D9
      D932FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00969696DFB9B3B3FFE6B6ADFFFFB3
      A6FFFFB3A6FFFFC5B9FFFFD6CCFFFFE6DFFFF1E3DEFFEAEAEAFFE0E0E0FFD5D5
      D5FFD3D3D3FFD5D5D5FFA0A0A0FF6E6E6EC4A8A8A883E2E2E229FCFCFC03FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3AAAA88E6BA9BFFFFD6
      ADFFFFD0AAFFFFCCA8FFFFC8A5FFFFC5A2FFFFC29FFFFFBC99FFFFCAACFFFFD3
      B9FFF2D4C6FFD6CCCCFF848484F4E1E1E11EFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B08E8EB7F9D4B2FFFFDB
      B7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDAB5FFFFD7
      B0FFE6BA9BFF695858C6CECECE31FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03AC827EE5FFDFBEFFFFDF
      BEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDF
      BEFFCCA292FF685E5EB3E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E2E229BF958BFFFFE4C8FFFFE4
      C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4
      C8FFBF958AFF7D7D7D82EDEDED12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7B1B17AD9B7A8FFFFE7CFFFFFE7
      CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7
      CFFF916E6BECA7A7A758F5F5F50AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01AB8989BCF2DBCAFFFFECD9FFFFEC
      D9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFF2DB
      CAFF745E5ECECBCBCB34FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ECE9E91CAC807DFFFFF0E0FFFFF0E0FFFFF0
      E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFD9BC
      B2FF7E75759DE7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01B69C9C96D9BFB8FFFFF5EAFFFFF5EAFFFFF5
      EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFA587
      83EFB0B0B04FF6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E3E322A67C7BF5FFF8F1FFFFF8F1FFFFF8F1FFFFF8
      F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFF2E6DFFF8976
      76AFE3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC03B18E8EB6ECE1DFFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFAD908FE7D2D2
      D22DFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F2EBEB20D6C3C362C7AEAE84C5ACAC86DFD2D286C8AFAFC2C6AD
      ADC4CDB6B6C4DCCBCBD2CCB3B3FFCCB3B3FFCCB3B3FFC6ADADD4E6E3E322FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btImprimirClick
  end
  object btSair: TspSkinButton
    Left = 295
    Top = 365
    Width = 113
    Height = 42
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
    Cancel = True
  end
  object ChtGrafico: TChart
    Left = 8
    Top = 104
    Width = 400
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.Visible = True
    MarginBottom = 2
    MarginLeft = 2
    MarginRight = 2
    MarginTop = 2
    Title.Text.Strings = (
      'TChart')
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.500000000000000000
    Legend.Visible = False
    TabOrder = 3
    object Dizimo: TBarSeries
      Marks.ArrowLength = 5
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -11
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsBold]
      Marks.Frame.Visible = False
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clSkyBlue
      Title = 'VENDAS'
      ValueFormat = '#,##0.000'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series1: TBarSeries
      Active = False
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clGreen
      Title = 'vendas'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object boxComunidade: TspSkinCheckRadioBox
    Left = 6
    Top = 64
    Width = 156
    Height = 14
    HintImageIndex = 0
    TabOrder = 4
    DrawDefault = True
    SkinDataName = 'checkbox'
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
    WordWrap = False
    AllowGrayed = False
    State = cbUnchecked
    ImageIndex = 0
    UseSkinFontColor = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Flat = True
    Caption = 'Filtrar por Comunidade'
  end
  object spSkinLabel12: TspSkinLabel
    Left = 6
    Top = 80
    Width = 63
    Height = 19
    HintImageIndex = 0
    TabOrder = 5
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
    Caption = 'Comunidade'
    AutoSize = True
  end
  object dbeComunidade: TspSkinEdit
    Left = 73
    Top = 81
    Width = 32
    Height = 18
    Text = 'dbeComunidade'
    DefaultColor = clWindow
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
    Font.Color = clGrayText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Enabled = False
    ParentFont = False
    TabOrder = 6
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object Edit1: TspSkinEdit
    Left = 107
    Top = 81
    Width = 269
    Height = 18
    TabStop = False
    Text = 'Edit1'
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
    SkinData = fPrincipal.spSkinData1
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
    TabOrder = 7
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object QryDizimo: TIBQuery
    Database = dmDados.db
    Transaction = dmDados.Transacao
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM DIZIMO WHERE PAROQUIA=:PPAROQUIA ')
    Left = 288
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPAROQUIA'
        ParamType = ptUnknown
      end>
    object QryDizimoPAROQUIA: TIntegerField
      FieldName = 'PAROQUIA'
      Origin = 'DIZIMO.PAROQUIA'
      Required = True
    end
    object QryDizimoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DIZIMO.CODIGO'
      Required = True
    end
    object QryDizimoMES: TIBStringField
      FieldName = 'MES'
      Origin = 'DIZIMO.MES'
      FixedChar = True
      Size = 2
    end
    object QryDizimoDIZIMISTA: TIntegerField
      FieldName = 'DIZIMISTA'
      Origin = 'DIZIMO.DIZIMISTA'
    end
    object QryDizimoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DIZIMO.DATA'
    end
    object QryDizimoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'DIZIMO.VALOR'
      Precision = 18
      Size = 2
    end
    object QryDizimoPERIODO: TIBStringField
      FieldName = 'PERIODO'
      Origin = 'DIZIMO.PERIODO'
    end
    object QryDizimoANO: TIBStringField
      FieldName = 'ANO'
      Origin = 'DIZIMO.ANO'
      Size = 4
    end
    object QryDizimoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'DIZIMO.ORIGEM'
    end
    object QryDizimoTOTPERIODO: TIBBCDField
      FieldName = 'TOTPERIODO'
      Origin = 'DIZIMO.TOTPERIODO'
      Precision = 18
      Size = 2
    end
    object QryDizimoCAMPANHA: TIBStringField
      FieldName = 'CAMPANHA'
      Origin = 'DIZIMO.CAMPANHA'
      FixedChar = True
      Size = 1
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Sizeable = False
    DraggAble = False
    Magnetic = False
    MagneticSize = 10
    BorderIcons = [biSystemMenu]
    Left = 320
    Top = 16
  end
end
