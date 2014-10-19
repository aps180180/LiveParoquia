unit uAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, spdbctrls, StdCtrls, Mask, SkinBoxCtrls,
  DynamicSkinForm, DB, IBCustomDataSet, IBQuery, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache,
  HintBalloon;

type
  TfAniversariantes = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    lbDtInicial: TspSkinLabel;
    EdtDtInicio: TspSkinMaskEdit;
    lbDtFinal: TspSkinLabel;
    EdtDtFinal: TspSkinMaskEdit;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spSkinLabel12: TspSkinLabel;
    Edit1: TspSkinEdit;
    IBRelatorio: TIBQuery;
    boxComunidade: TspSkinCheckRadioBox;
    ppDBPipeline1: TppDBPipeline;
    DataSource1: TDataSource;
    ppRepAniversariantes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    label101: TspSkinLabel;
    dbeComunidade: TspSkinEdit;
    IBRelatorioCODIGO: TIntegerField;
    IBRelatorioPAROQUIA: TIntegerField;
    IBRelatorioDIZIMISTA: TIBStringField;
    IBRelatorioDT_NASCIMENTO: TDateField;
    IBRelatorioENDERECO: TIBStringField;
    IBRelatorioBAIRRO: TIBStringField;
    IBRelatorioCIDADE: TIBStringField;
    IBRelatorioUF: TIBStringField;
    IBRelatorioCEP: TIBStringField;
    IBRelatorioTELEFONE: TIBStringField;
    IBRelatorioCELULAR: TIBStringField;
    IBRelatorioEMAIL: TIBStringField;
    IBRelatorioOBS: TMemoField;
    IBRelatorioCOMUNIDADE: TIntegerField;
    IBRelatorioSTATUS: TIBStringField;
    IBRelatorioDTCADASTRO: TDateField;
    rgStatus: TspSkinRadioGroup;
    ppLabel12: TppLabel;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel11: TppLabel;
    ppLine6: TppLine;
    ppDBText6: TppDBText;
    HintBalloon1: THintBalloon;
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dbeComunidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeComunidadeEnter(Sender: TObject);
    procedure dbeComunidadeExit(Sender: TObject);
    procedure dbeComunidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure EdtDtInicioMouseEnter(Sender: TObject);
    procedure EdtDtFinalMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fAniversariantes: TfAniversariantes;

implementation

uses Sistools, uPrincipal, uDM1, uDMDados, uConsultaComunidade;

{$R *.dfm}

procedure TfAniversariantes.btImprimirClick(Sender: TObject);
begin
  if not DataValida(EdtDtInicio.Text +'/' + FormatDateTime('yyyy',Date)) then
    Begin
      Application.MessageBox('Informe a data Inicial antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtInicio.SetFocus;
      Exit;
     End;
  if not DataValida(EdtDtFinal .Text +'/' + FormatDateTime('yyyy',Date)) then
    Begin
      Application.MessageBox('Informe a data Final antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtFinal.SetFocus;
      Exit;
     End;
  if (boxComunidade.Checked) And (Edit1.Text = '') then
    Begin
      Application.MessageBox('Informe a Comunidade antes de visualizar!','Atenção',MB_OK+MB_ICONINFORMATION);
      dbeComunidade.SetFocus;
      Exit;
    End;

  IBRelatorio.Close;
  IBRelatorio.SQL.Clear;
  IBRelatorio.SQL.Add('SELECT * FROM DIZIMISTA');
  IBRelatorio.SQL.Add('WHERE PAROQUIA= :PPAROQUIA');
  IBRelatorio.SQL.Add('AND EXTRACT (DAY FROM DT_NASCIMENTO) >=:PDIA1 AND');
  IBRelatorio.SQL.Add('EXTRACT (MONTH FROM DT_NASCIMENTO) >=:PMES1');
  IBRelatorio.SQL.Add('AND EXTRACT (DAY FROM DT_NASCIMENTO) <=:PDIA2 AND');
  IBRelatorio.SQL.Add('EXTRACT (MONTH FROM DT_NASCIMENTO) <=:PMES2');


  Case rgStatus.ItemIndex of
    0: IBRelatorio.SQL.Add('AND STATUS = ''S''');
    1: IBRelatorio.SQL.Add('AND STATUS = ''N''');
  End;

  if boxComunidade.Checked then
    IBRelatorio.SQL.Add('AND DIZIMISTA.COMUNIDADE= :pCOMUNIDADE');

  IBRelatorio.ParamByName('PDIA1').AsInteger  := StrToInt (Copy(EdtDtInicio.Text,1,2));
  IBRelatorio.ParamByName('PMES1').AsInteger  := StrToInt (Copy(EdtDtInicio.Text,4,2));
  IBRelatorio.ParamByName('PDIA2').AsInteger  := StrToInt (Copy(EdtDtFinal.Text,1,2));
  IBRelatorio.ParamByName('PMES2').AsInteger  := StrToInt (Copy(EdtDtFinal.Text,4,2));


  IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;

  if boxComunidade.Checked then
    IBRelatorio.ParamByName('PCOMUNIDADE').AsInteger := StrToInt(dbeComunidade.Text);
  IBRelatorio.SQL.Add('ORDER BY EXTRACT(DAY FROM DT_NASCIMENTO), EXTRACT(MONTH FROM DT_NASCIMENTO)');
  IBRelatorio.Open;
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel12.Caption := 'Período ' + EdtDtInicio.Text + ' a ' + EdtDtFinal.Text;
  if Edit1.Text <> '' then
    ppLabel12.Caption := ppLabel12.Caption  + ' - Comunidade - ' + Edit1.Text
  else
    ppLabel12.Caption := ppLabel12.Caption  + ' - Todas as Comunidades' ;
  ppRepAniversariantes.PrintReport  ;
  IBRelatorio.Close;

end;

procedure TfAniversariantes.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  If fPrincipal.vImagensUsarCaminho then
   Begin
    if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP') then
      Begin
       ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
       ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
      End;
   End;
end;

procedure TfAniversariantes.btSairClick(Sender: TObject);
begin
  fAniversariantes.Close;
end;

procedure TfAniversariantes.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  IBRelatorio.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfAniversariantes.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
  
end;

procedure TfAniversariantes.dbeComunidadeKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fAniversariantes    ;
       fAniversariantes.Enabled := False;
       fConsultaComunidade.Show;
     End;
end;

procedure TfAniversariantes.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfAniversariantes.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfAniversariantes.dbeComunidadeKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key ,'I');
end;

procedure TfAniversariantes.FormCreate(Sender: TObject);
begin
  dbeComunidade.Clear;
  Edit1.Clear;
end;

procedure TfAniversariantes.EdtDtInicioMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Dia e mes do aniverssario.';
   HintBalloon1.AddToolInfo(Handle,EdtDtInicio.Handle);
end;

procedure TfAniversariantes.EdtDtFinalMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Dia e mes do aniverssario.';
   HintBalloon1.AddToolInfo(Handle,EdtDtFinal.Handle);
end;

procedure TfAniversariantes.FormShow(Sender: TObject);
begin
   Label101.Caption :=''
end;

procedure TfAniversariantes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (Shift = []) and (Key= vk_F8) then
    Begin
      if btImprimir.Enabled then
         btImprimir.OnClick(Self);
    End
   else if (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
         btSair.OnClick(Self);
    End
end;

end.
