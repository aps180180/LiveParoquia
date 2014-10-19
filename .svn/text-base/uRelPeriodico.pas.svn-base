unit uRelPeriodico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, spdbctrls, StdCtrls, Mask, SkinBoxCtrls,
  DynamicSkinForm, DB, IBCustomDataSet, IBQuery, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache;

type
  TfRelPeriodico = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    lbDtInicial: TspSkinLabel;
    EdtDtInicio: TspSkinMaskEdit;
    lbDtFinal: TspSkinLabel;
    EdtDtFinal: TspSkinMaskEdit;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spSkinLabel12: TspSkinLabel;
    Edit1: TspSkinEdit;
    boxMesAno: TspSkinCheckRadioBox;
    spSkinLabel3: TspSkinLabel;
    edtMesAno1: TspSkinMaskEdit;
    spSkinLabel4: TspSkinLabel;
    edtMesAno2: TspSkinMaskEdit;
    IBRelatorio: TIBQuery;
    IBRelatorioPAROQUIA: TIntegerField;
    IBRelatorioCODIGO: TIntegerField;
    IBRelatorioMES: TIBStringField;
    IBRelatorioDIZIMISTA: TIntegerField;
    IBRelatorioDATA: TDateField;
    IBRelatorioVALOR: TIBBCDField;
    IBRelatorioPERIODO: TIBStringField;
    IBRelatorioANO: TIBStringField;
    IBRelatorioORIGEM: TIntegerField;
    IBRelatorioTOTPERIODO: TIBBCDField;
    IBRelatorioNOME: TIBStringField;
    IBRelatorioCOMUNIDADE: TIBStringField;
    boxComunidade: TspSkinCheckRadioBox;
    ppDBPipeline1: TppDBPipeline;
    DataSource1: TDataSource;
    ppRepPeriodico: TppReport;
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
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    IBRelatoriosMesAno: TStringField;
    ppDBText5: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    label101: TspSkinLabel;
    dbeComunidade: TspSkinEdit;
    ppDBCalc2: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    rgCampanha: TspSkinRadioGroup;
    ppLabel12: TppLabel;
    procedure btImprimirClick(Sender: TObject);
    procedure IBRelatorioCalcFields(DataSet: TDataSet);
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
  fRelPeriodico: TfRelPeriodico;

implementation

uses Sistools, uPrincipal, uDM1, uDMDados, uConsultaComunidade;

{$R *.dfm}

procedure TfRelPeriodico.btImprimirClick(Sender: TObject);
Var
  zAux : String;
begin
  if not DataValida(EdtDtInicio.Text) then
    Begin
      Application.MessageBox('Informe a data Inicial antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtInicio.SetFocus;
      Exit;
     End;
  if not DataValida(EdtDtFinal.Text) then
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

  if boxMesAno.Checked then
    Begin
      if not DataValida('01/' + edtMesAno1.Text) then
        Begin
          Application.MessageBox('Informe o Período Inicial Antes de Visualizar!','Atenção',MB_OK+ MB_ICONINFORMATION);
          edtMesAno1.SetFocus;
          Exit
         End;
      if not DataValida('01/' + edtMesAno2.Text) then
        Begin
          Application.MessageBox('Informe o Período Final Antes de Visualizar!','Atenção',MB_OK+ MB_ICONINFORMATION);
          edtMesAno2.SetFocus;
          Exit
        End;
    End;
  IBRelatorio.Close;
  IBRelatorio.SQL.Clear;
  IBRelatorio.SQL.Add('SELECT DIZIMO.*,  DIZIMISTA.DIZIMISTA AS NOME,COMUNIDADE.COMUNIDADE');
  IBRelatorio.SQL.Add('FROM DIZIMO LEFT JOIN DIZIMISTA ON DIZIMO.PAROQUIA=DIZIMISTA.PAROQUIA');
  IBRelatorio.SQL.Add('AND DIZIMO.DIZIMISTA=DIZIMISTA.CODIGO');
  IBRelatorio.SQL.Add('LEFT JOIN COMUNIDADE ON DIZIMISTA.PAROQUIA=COMUNIDADE.PAROQUIA AND');
  IBRelatorio.SQL.Add('DIZIMISTA.COMUNIDADE=COMUNIDADE.CODIGO');
  IBRelatorio.SQL.Add('WHERE DIZIMO.PAROQUIA= :pPAROQUIA');
  if boxComunidade.Checked then
    IBRelatorio.SQL.Add('AND DIZIMISTA.COMUNIDADE= :pCOMUNIDADE');
    IBRelatorio.SQL.Add('AND DIZIMO.DATA >= :PDATA1 AND DIZIMO.DATA <=:PDATA2');

    IBRelatorio.ParamByName('PDATA1').AsDateTime := StrToDateTime(EdtDtInicio.Text);
    IBRelatorio.ParamByName('PDATA2').AsDateTime := StrToDateTime(EdtDtFinal.Text);

  Case rgCampanha.ItemIndex of
    0 : IBRelatorio.SQL.Add(' AND DIZIMO.CAMPANHA = ''S'' ');
    1 : IBRelatorio.SQL.Add(' AND DIZIMO.CAMPANHA = ''N'' ');

  end;

  If boxMesAno.Checked then
    Begin
      IBRelatorio.SQL.Add(' AND DIZIMO.MES >= :PMES1 AND DIZIMO.ANO >= :PANO1');
      IBRelatorio.SQL.Add(' AND DIZIMO.MES <= :PMES2 AND DIZIMO.ANO <= :PANO2');
      IBRelatorio.ParamByName('PMES1').AsString := Copy(edtMesAno1.Text,1,2);
      IBRelatorio.ParamByName('PMES2').AsString := Copy(edtMesAno2.Text,1,2);
      IBRelatorio.ParamByName('PANO1').AsString := Copy(edtMesAno1.Text,4,4);
      IBRelatorio.ParamByName('PANO2').AsString := Copy(edtMesAno2.Text,4,4);

    End;
  IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  if boxComunidade.Checked then
    IBRelatorio.ParamByName('PCOMUNIDADE').AsInteger := StrToInt(dbeComunidade.Text);
  IBRelatorio.SQL.Add('ORDER BY DIZIMISTA.DIZIMISTA ASC, DIZIMO.ANO DESC, DIZIMO.MES DESC');
  IBRelatorio.Open;
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel12.Caption := 'Período ' + EdtDtInicio.Text + ' a ' + EdtDtFinal.Text;
  if rgCampanha.ItemIndex = 0 then
    zAux := ' - Dízimos/Ofertas de Campanha'
  else
    zAux := ' - Dízimos/Ofertas Normais';

  if Edit1.Text <> '' then
    ppLabel12.Caption := ppLabel12.Caption  + ' - Comunidade - ' + Edit1.Text + zAux
  else
    ppLabel12.Caption := ppLabel12.Caption  + ' - Todas as Comunidades' + zAux  ;

  ppRepPeriodico.PrintReport;
  IBRelatorio.Close;

end;

procedure TfRelPeriodico.IBRelatorioCalcFields(DataSet: TDataSet);
begin
IBRelatoriosMesAno.AsString := IBRelatorioMES.AsString + '/'+ IBRelatorioANO.AsString;
end;

procedure TfRelPeriodico.ppHeaderBand1BeforePrint(Sender: TObject);
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

procedure TfRelPeriodico.btSairClick(Sender: TObject);
begin
  fRelPeriodico.Close;
end;

procedure TfRelPeriodico.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  IBRelatorio.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfRelPeriodico.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
  
end;

procedure TfRelPeriodico.dbeComunidadeKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fRelPeriodico    ;
       fRelPeriodico.Enabled := False;
       fConsultaComunidade.Show;
     End;
end;

procedure TfRelPeriodico.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfRelPeriodico.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfRelPeriodico.dbeComunidadeKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key ,'I');
end;

procedure TfRelPeriodico.FormCreate(Sender: TObject);
begin
  dbeComunidade.Clear;
  Edit1.Clear;
end;

procedure TfRelPeriodico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
        btSair.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_F8  ) then
    Begin
      if btImprimir.Enabled then
        btImprimir.onClick(Self);
    End;
end;

end.
