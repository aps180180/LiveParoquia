unit uRelTitulosPagarAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HintBalloon, DynamicSkinForm, StdCtrls, Mask, SkinBoxCtrls,
  SkinCtrls, DB, IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppReport, ppStrtch, ppSubRpt, ppClass, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppVar;

type
  TfRelTitulosPagarAberto = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    lbDtInicial: TspSkinLabel;
    EdtDtInicio: TspSkinMaskEdit;
    lbDtFinal: TspSkinLabel;
    EdtDtFinal: TspSkinMaskEdit;
    BoxTipoPgto: TspSkinCheckRadioBox;
    dbeTipo: TspSkinEdit;
    EdtTipo: TspSkinEdit;
    BoxFornecedor: TspSkinCheckRadioBox;
    EdtFornecedor: TspSkinEdit;
    DbeFornecedor: TspSkinEdit;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    IBRelatorio: TIBQuery;
    ppPgAberto: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBPipeline1: TppDBPipeline;
    DsRelatorio: TDataSource;
    rgOrdem: TspSkinRadioGroup;
    ppDBPipeline2: TppDBPipeline;
    IBSub1: TIBQuery;
    DataSource1: TDataSource;
    IBSub1PAROQUIA: TIntegerField;
    IBSub1CODIGO: TIntegerField;
    IBSub1FORNECEDOR: TIntegerField;
    IBSub1DTLANCAMENTO: TDateField;
    IBSub1DTVENCIMENTO: TDateField;
    IBSub1TIPO_PAGTO: TIntegerField;
    IBSub1VALORTOTAL: TFloatField;
    IBSub1VALORRESTANTE: TFloatField;
    IBSub1STATUS: TIBStringField;
    IBSub1NOTAFISCAL: TIBStringField;
    IBSub1DTALTERACAO: TDateTimeField;
    IBSub1OBS: TIBStringField;
    IBSub1DTULTPAGTO: TDateField;
    IBRelatorioCODIGO: TIntegerField;
    IBRelatorioPAROQUIA: TIntegerField;
    IBRelatorioDTCADASTRO: TDateField;
    IBRelatorioDTALTERACAO: TDateField;
    IBRelatorioSTATUS: TIBStringField;
    IBRelatorioNOME_FANTASIA: TIBStringField;
    IBRelatorioRAZAO_SOCIAL: TIBStringField;
    IBRelatorioTIPO: TIBStringField;
    IBRelatorioENDERECO: TIBStringField;
    IBRelatorioBAIRRO: TIBStringField;
    IBRelatorioCIDADE: TIBStringField;
    IBRelatorioUF: TIBStringField;
    IBRelatorioCEP: TIBStringField;
    IBRelatorioRG_INSCRICAO: TIBStringField;
    IBRelatorioCGC: TIBStringField;
    IBRelatorioCPF: TIBStringField;
    IBRelatorioTELEFONE: TIBStringField;
    IBRelatorioFAX: TIBStringField;
    IBRelatorioEMAIL: TIBStringField;
    IBRelatorioOBSERVACAO: TIBStringField;
    IBRelatorioCELULAR: TIBStringField;
    IBRelatorioPAROQUIA1: TIntegerField;
    IBRelatorioCODIGO1: TIntegerField;
    IBRelatorioFORNECEDOR: TIntegerField;
    IBRelatorioDTLANCAMENTO: TDateField;
    IBRelatorioDTVENCIMENTO: TDateField;
    IBRelatorioTIPO_PAGTO: TIntegerField;
    IBRelatorioVALORTOTAL: TFloatField;
    IBRelatorioVALORRESTANTE: TFloatField;
    IBRelatorioSTATUS1: TIBStringField;
    IBRelatorioNOTAFISCAL: TIBStringField;
    IBRelatorioDTALTERACAO1: TDateTimeField;
    IBRelatorioOBS: TIBStringField;
    IBRelatorioDTULTPAGTO: TDateField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc2: TppDBCalc;
    IBSub1CODIGO_TIPOPGTO: TIntegerField;
    IBSub1NOME_TIPOPGTO: TIBStringField;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    procedure btImprimirClick(Sender: TObject);
    procedure dbeTipoEnter(Sender: TObject);
    procedure dbeTipoExit(Sender: TObject);
    procedure dbeTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeTipoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BoxTipoPgtoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure BoxFornecedorClick(Sender: TObject);
    procedure DbeFornecedorEnter(Sender: TObject);
    procedure DbeFornecedorExit(Sender: TObject);
    procedure DbeFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbeFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MostrarContasPagar(pFornecedor : Integer);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    StrSql : String;
  end;

var
  fRelTitulosPagarAberto: TfRelTitulosPagarAberto;

implementation

uses Sistools, uDM1, uPrincipal, uConsultaTipoPgto, Math,
  uConsultaFornecedor;

{$R *.dfm}

procedure TfRelTitulosPagarAberto.btImprimirClick(Sender: TObject);
begin
   If not DataValida(EdtDtInicio.Text) then
      Begin
         Application.MessageBox('Informe a data Inicial para Consultar!','Atenção',MB_OK + MB_ICONINFORMATION);
         EdtDtInicio.SetFocus;
         Exit;
      End;
   If not DataValida(EdtDtFinal.Text) then
      Begin
         Application.MessageBox('Informe a data Final para Consultar!','Atenção',MB_OK + MB_ICONINFORMATION);
         EdtDtFinal.SetFocus;
         Exit;
      End;
   If (BoxTipoPgto.Checked) and (dbeTipo.Text='') then
      Begin
         Application.MessageBox('Informe o Tipo de Pagamento para Consultar !','Atenção',MB_OK+MB_ICONINFORMATION);
         dbeTipo.SetFocus;
         Exit;
      End;
   If (BoxFornecedor.Checked) and (DbeFornecedor.Text='') then
      Begin
         Application.MessageBox('Informe o Fornecedor para Consultar !','Atenção',MB_OK+MB_ICONINFORMATION);
         DbeFornecedor.SetFocus;
         Exit;
      End;
   StrSql:=('SELECT FORNECEDOR.*,CONTASPAGAR.* ');
   StrSql:=(StrSql+'FROM FORNECEDOR LEFT JOIN CONTASPAGAR ON FORNECEDOR.CODIGO=CONTASPAGAR.FORNECEDOR ');
   StrSql:=(StrSql+' WHERE FORNECEDOR.PAROQUIA=:PPAROQUIA AND CONTASPAGAR.PAROQUIA=FORNECEDOR.PAROQUIA');
   //StrSql:=(StrSql+' AND TIPOPGTO.CODIGO=CONTASPAGAR.TIPO_PAGTO');
   StrSql:=(StrSql+' AND CONTASPAGAR.DTVENCIMENTO >= :pDTINICIO AND CONTASPAGAR.DTVENCIMENTO <= :pDTFINAL');
   StrSql:=(StrSql+' AND CONTASPAGAR.STATUS=''AB''');
   
   IBRelatorio.Close;
   IBRelatorio.SQL.Clear;
   IBRelatorio.SQL.Add(StrSql);
   IBRelatorio.ParamByName('pDTINICIO').AsDateTime :=  StrToDateTime(EdtDtInicio.Text) ;
   IBRelatorio.ParamByName('pDTFINAL').AsDateTime :=   StrToDateTime(EdtDtFinal.Text)  ;
   {If (BoxTipoPgto.Checked) then
      Begin
         IBRelatorio.SQL.Add('AND CONTASPAGAR.TIPO_PAGTO =:pTIPOPGTO ');
         IBRelatorio.ParamByName('pTIPOPGTO').AsString   := dbeTipo.Text;
      End;}
   If (BoxFornecedor.Checked) then
      Begin
         IBRelatorio.SQL.Add('AND CONTASPAGAR.FORNECEDOR =:pFORNECEDOR');
         IBRelatorio.ParamByName('pFORNECEDOR').AsString := DbeFornecedor.Text;
      End;
   Case rgOrdem.ItemIndex of
      //0 : IBRelatorio.SQL.Add('ORDER BY CONTASPAGAR.DTVENCIMENTO');
      //1 : IBRelatorio.SQL.Add('ORDER BY TIPOPGTO.NOME');
      2 : IBRelatorio.SQL.Add('ORDER BY FORNECEDOR.NOME_FANTASIA');
   End;   

   
   IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
   IBRelatorio.Open;
   IBSub1.Open;
   ppLabel1.Caption := DM1.mNomeArquidiocese;
   ppLabel2.Caption := DM1.mNomeParoquia;
   ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
   ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
   ppLabel11.Caption := 'Período ' + EdtDtInicio.Text + ' a ' + EdtDtFinal.Text;
   ppPgAberto.PrintReport;
end;

procedure TfRelTitulosPagarAberto.dbeTipoEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfRelTitulosPagarAberto.dbeTipoExit(Sender: TObject);
begin
   EdtTipo.Text := RetornaTabela(DM1.TTipoPgto ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeTipo.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfRelTitulosPagarAberto.dbeTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaTipoPgto.fRetorno := fRelTitulosPagarAberto;
       fRelTitulosPagarAberto.Enabled := False;
       fConsultaTipoPgto.Show;
     End;
end;

procedure TfRelTitulosPagarAberto.dbeTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := SoNumeros(Key ,'I');
end;

procedure TfRelTitulosPagarAberto.FormActivate(Sender: TObject);
begin
   If (xBuscar) and (xNumDevolucao = 1) then
      Begin
         DbeTipo.Text := IntToStr( fPrincipal.ValorRetornoInteger);
         fPrincipal.ValorRetornoInteger := 0;
      end;
   If (xBuscar) and (xNumDevolucao=2) then
      Begin
         DbeFornecedor.Text := IntToStr(fPrincipal.ValorRetornoInteger);
         fPrincipal.ValorRetornoInteger := 0;
      End;
end;

procedure TfRelTitulosPagarAberto.FormShow(Sender: TObject);
begin
   label101.Caption   := ' ';
end;

procedure TfRelTitulosPagarAberto.FormCreate(Sender: TObject);
begin
   Entrando := True;
   xBuscar  := False;
   EdtTipo.Clear;
   EdtFornecedor.Clear;
end;

procedure TfRelTitulosPagarAberto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   IBRelatorio.Close;
   fRetorno.Enabled := True;
   fRetorno.Show;
end;

procedure TfRelTitulosPagarAberto.BoxTipoPgtoClick(Sender: TObject);
begin
   If  BoxTipoPgto.Checked then
      Begin
         dbeTipo.Enabled:=True;
         dbeTipo.SetFocus;
      End
   Else
      Begin
         dbeTipo.Clear;
         EdtTipo.Clear;
         dbeTipo.Enabled:=False;
      End;

end;

procedure TfRelTitulosPagarAberto.btSairClick(Sender: TObject);
begin
   fRelTitulosPagarAberto.Close;
end;

procedure TfRelTitulosPagarAberto.BoxFornecedorClick(Sender: TObject);
begin
   If BoxFornecedor.Checked then
      Begin
         DbeFornecedor.Enabled:=True;
         DbeFornecedor.SetFocus;
      End
   Else
      Begin
         DbeFornecedor.Clear;
         EdtFornecedor.Clear;
         DbeFornecedor.Enabled:=False;
      End;
end;

procedure TfRelTitulosPagarAberto.DbeFornecedorEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfRelTitulosPagarAberto.DbeFornecedorExit(Sender: TObject);
begin
   EdtFornecedor.Text := RetornaTabela(DM1.TFornecedor ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeFornecedor.Text ,'','','','','','','NOME_FANTASIA' );
   Label101.Caption := '';
end;

procedure TfRelTitulosPagarAberto.DbeFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaFornecedor.fRetorno := fRelTitulosPagarAberto;
       fRelTitulosPagarAberto.Enabled := False;
       fConsultaFornecedor.Show;
     End;
end;

procedure TfRelTitulosPagarAberto.DbeFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := SoNumeros(Key ,'I');
end;

procedure TfRelTitulosPagarAberto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If (Shift = []) and (Key = VK_F8 ) then
      Begin
         if btImprimir.Enabled then
         btImprimir.OnClick(Self); ;
      End
   else if (Shift = []) and (Key = VK_ESCAPE  ) then
      Begin
         if btSair.Enabled then
         btSair.onClick(Self);
    End
end;
procedure TfRelTitulosPagarAberto.MostrarContasPagar(pFornecedor: Integer);
begin
  IBSub1.Close;
  IBSub1.SQL.Clear;
  IBSub1.SQL.Add('SELECT CONTASPAGAR.*,TIPOPGTO.CODIGO AS CODIGO_TIPOPGTO,TIPOPGTO.NOME AS NOME_TIPOPGTO ');
  IBSub1.SQL.Add('FROM CONTASPAGAR LEFT JOIN TIPOPGTO ON CONTASPAGAR.TIPO_PAGTO=TIPOPGTO.CODIGO ');
  IBSub1.SQL.Add('WHERE CONTASPAGAR.PAROQUIA=:PPAROQUIA');
  IBSub1.SQL.Add('AND CONTASPAGAR.FORNECEDOR=:PFORNECEDOR');
  IBSub1.SQL.Add('AND CONTASPAGAR.STATUS=''AB''');
     If (BoxTipoPgto.Checked) then
      Begin
         IBSub1.SQL.Add('AND CONTASPAGAR.TIPO_PAGTO =:pTIPOPGTO ');
         IBSub1.ParamByName('pTIPOPGTO').AsString   := dbeTipo.Text;
      End;
     If (BoxFornecedor.Checked) then
      Begin
         IBSub1.SQL.Add('AND CONTASPAGAR.FORNECEDOR =:pFORNECEDOR');
         IBSub1.ParamByName('pFORNECEDOR').AsString := DbeFornecedor.Text;
      End;
     Case rgOrdem.ItemIndex of
      0 : IBSub1.SQL.Add('ORDER BY CONTASPAGAR.DTVENCIMENTO');
      1 : IBSub1.SQL.Add('ORDER BY TIPOPGTO.NOME');
      //2 : IBRelatorio.SQL.Add('ORDER BY FORNECEDOR.NOME_FANTASIA');
     End;

  IBSub1.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  IBSub1.ParamByName('PFORNECEDOR').AsInteger := pFornecedor;
  IBSub1.Open;
end;
procedure TfRelTitulosPagarAberto.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
   MostrarContasPagar(IBRelatorioCODIGO.AsInteger);
end;

end.
