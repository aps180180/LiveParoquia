unit uExtratoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, spdbctrls, StdCtrls, Mask, SkinBoxCtrls,
  DynamicSkinForm, DB, IBCustomDataSet, IBQuery, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache,
  ppStrtch, ppSubRpt;

type
  TfExtratoGeral = class(TForm)
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
    boxComunidade: TspSkinCheckRadioBox;
    ppDBPipeline1: TppDBPipeline;
    DataSource1: TDataSource;
    ppExtratoGeral: TppReport;
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
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
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
    IBRelatorioNOMECOMUNIDADE: TIBStringField;
    IBSub1: TIBQuery;
    IBSub1PAROQUIA: TIntegerField;
    IBSub1CODIGO: TIntegerField;
    IBSub1MES: TIBStringField;
    IBSub1DIZIMISTA: TIntegerField;
    IBSub1DATA: TDateField;
    IBSub1VALOR: TIBBCDField;
    IBSub1PERIODO: TIBStringField;
    IBSub1ANO: TIBStringField;
    IBSub1ORIGEM: TIntegerField;
    IBSub1TOTPERIODO: TIBBCDField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText1: TppDBText;
    IBSub1sMesAno: TStringField;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    rgCampanha: TspSkinRadioGroup;
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
    procedure MostrarDizimos(pDizimista : Integer);
    procedure IBSub1CalcFields(DataSet: TDataSet);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fExtratoGeral: TfExtratoGeral;

implementation

uses Sistools, uPrincipal, uDM1, uDMDados, uConsultaComunidade;

{$R *.dfm}

procedure TfExtratoGeral.btImprimirClick(Sender: TObject);
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
  IBRelatorio.SQL.Add('SELECT  DIZIMISTA.*, COMUNIDADE. COMUNIDADE AS NOMECOMUNIDADE ');
  IBRelatorio.SQL.Add('FROM DIZIMO, DIZIMISTA LEFT JOIN COMUNIDADE');
  IBRelatorio.SQL.Add('ON DIZIMISTA.PAROQUIA=COMUNIDADE.PAROQUIA');
  IBRelatorio.SQL.Add('AND DIZIMISTA.COMUNIDADE=COMUNIDADE.CODIGO');
  IBRelatorio.SQL.Add('WHERE DIZIMISTA.PAROQUIA= :PPAROQUIA');
  IBRelatorio.SQL.Add('AND DIZIMO.PAROQUIA=DIZIMISTA.PAROQUIA');
  IBRelatorio.SQL.Add('AND DIZIMO.DATA >= :PDATA1 AND DIZIMO.DATA <= :PDATA2');

  Case rgCampanha.ItemIndex of
    0 : IBRelatorio.SQL.Add(' AND DIZIMO.CAMPANHA = ''S'' ');
    1 : IBRelatorio.SQL.Add(' AND DIZIMO.CAMPANHA = ''N'' ');

  end;

  if boxComunidade.Checked then
    IBRelatorio.SQL.Add('AND DIZIMISTA.COMUNIDADE= :pCOMUNIDADE');

  IBRelatorio.ParamByName('PDATA1').AsDateTime := StrToDateTime(EdtDtInicio.Text);
  IBRelatorio.ParamByName('PDATA2').AsDateTime := StrToDateTime(EdtDtFinal.Text);
  IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  if boxComunidade.Checked then
    IBRelatorio.ParamByName('PCOMUNIDADE').AsInteger := StrToInt(dbeComunidade.Text);
  IBRelatorio.SQL.Add('ORDER BY DIZIMISTA.DIZIMISTA ');
  IBRelatorio.Open;
  IBSub1.Open;
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel11.Caption := 'Período ' + EdtDtInicio.Text + ' a ' + EdtDtFinal.Text;

  if rgCampanha.ItemIndex = 0 then
    zAux := ' - Dízimos/Ofertas de Campanha'
  else
    zAux := ' - Dízimos/Ofertas Normais';

  if Edit1.Text <> '' then
    ppLabel11.Caption := ppLabel11.Caption  + ' - Comunidade - ' + Edit1.Text + zAux
  else
    ppLabel11.Caption := ppLabel11.Caption  + ' - Todas as Comunidades' + zAux  ;


  ppExtratoGeral.PrintReport;
  IBRelatorio.Close;

end;

procedure TfExtratoGeral.ppHeaderBand1BeforePrint(Sender: TObject);
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

procedure TfExtratoGeral.btSairClick(Sender: TObject);
begin
  fExtratoGeral.Close;
end;

procedure TfExtratoGeral.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  IBRelatorio.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfExtratoGeral.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;

end;

procedure TfExtratoGeral.dbeComunidadeKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fExtratoGeral    ;
       fExtratoGeral.Enabled := False;
       fConsultaComunidade.Show;
     End;
end;

procedure TfExtratoGeral.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfExtratoGeral.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfExtratoGeral.dbeComunidadeKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key ,'I');
end;

procedure TfExtratoGeral.FormCreate(Sender: TObject);
begin
  dbeComunidade.Clear;
  Edit1.Clear;
end;

procedure TfExtratoGeral.MostrarDizimos(pDizimista: Integer);
begin
  IBSub1.Close;
  IBSub1.SQL.Clear;
  IBSub1.SQL.Add('SELECT * FROM DIZIMO WHERE PAROQUIA= :PPAROQUIA');
  IBSub1.SQL.Add('AND DIZIMO.DIZIMISTA= :PDIZIMISTA');

  Case rgCampanha.ItemIndex of
    0 : IBSub1.SQL.Add(' AND DIZIMO.CAMPANHA = ''S'' ');
    1 : IBSub1.SQL.Add(' AND DIZIMO.CAMPANHA = ''N'' ');

  end;
    If boxMesAno.Checked then
    Begin
      IBSub1.SQL.Add(' AND DIZIMO.MES >= :PMES1 AND DIZIMO.ANO >= :PANO1');
      IBSub1.SQL.Add(' AND DIZIMO.MES <= :PMES2 AND DIZIMO.ANO <= :PANO2');
      IBSub1.ParamByName('PMES1').AsString := Copy(edtMesAno1.Text,1,2);
      IBSub1.ParamByName('PMES2').AsString := Copy(edtMesAno2.Text,1,2);
      IBSub1.ParamByName('PANO1').AsString := Copy(edtMesAno1.Text,4,4);
      IBSub1.ParamByName('PANO2').AsString := Copy(edtMesAno2.Text,4,4);

    End;

  IBSub1.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  IBSub1.ParamByName('PDIZIMISTA').AsInteger := pDizimista;
  IBSub1.Open;
end;

procedure TfExtratoGeral.IBSub1CalcFields(DataSet: TDataSet);
begin
  IBSub1sMesAno.AsString := IBSub1MES.AsString + '/' + IBSub1ANO.AsString ;


end;

procedure TfExtratoGeral.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  MostrarDizimos(IBRelatorioCODIGO.AsInteger);
end;

end.
