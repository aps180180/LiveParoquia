  unit uVisualizaContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HintBalloon, DynamicSkinForm, StdCtrls, Mask, SkinBoxCtrls,
  SkinCtrls, DB, IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppReport, ppStrtch, ppSubRpt, ppClass, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppVar, SkinGrids, spDBGrids;

type
  TfVisualizaContasPagar = class(TForm)
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
    DsRelatorio: TDataSource;
    rgOrdem: TspSkinRadioGroup;
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
    spSkinDBGrid1: TspSkinDBGrid;
    IBRelatorioNOME_TIPOPGTO: TIBStringField;
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
  fVisualizaContasPagar: TfVisualizaContasPagar;

implementation

uses Sistools, uDM1, uPrincipal, uConsultaTipoPgto, Math,
  uConsultaFornecedor;

{$R *.dfm}

procedure TfVisualizaContasPagar.btImprimirClick(Sender: TObject);
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

   IBRelatorio.Close;
   IBRelatorio.SQL.Clear;
   IBRelatorio.SQL.Add(StrSql);


   IBRelatorio.SQL.Add('SELECT FORNECEDOR.*,CONTASPAGAR.*, ');
   IBRelatorio.SQL.Add('(SELECT TIPOPGTO.NOME FROM TIPOPGTO WHERE TIPOPGTO.PAROQUIA=CONTASPAGAR.PAROQUIA AND TIPOPGTO.CODIGO=CONTASPAGAR.TIPO_PAGTO) AS NOME_TIPOPGTO,');
   IBRelatorio.SQL.Add('(SELECT TIPOPGTO.CODIGO FROM  TIPOPGTO WHERE TIPOPGTO.PAROQUIA=CONTASPAGAR.PAROQUIA AND TIPOPGTO.CODIGO=CONTASPAGAR.TIPO_PAGTO) AS CODIGO_TIPOPGTO');
   IBRelatorio.SQL.Add(' FROM FORNECEDOR LEFT JOIN CONTASPAGAR ON FORNECEDOR.CODIGO=CONTASPAGAR.FORNECEDOR ');
   IBRelatorio.SQL.Add(' WHERE FORNECEDOR.PAROQUIA= :PPAROQUIA');
   IBRelatorio.SQL.Add(' AND FORNECEDOR.PAROQUIA=CONTASPAGAR.PAROQUIA');
   IBRelatorio.SQL.Add(' AND CONTASPAGAR.DTVENCIMENTO >= :pDTINICIO AND CONTASPAGAR.DTVENCIMENTO <= :pDTFINAL');
   IBRelatorio.SQL.Add(' AND CONTASPAGAR.STATUS <> ''QT''');
   if BoxTipoPgto.Checked then
     IBRelatorio.SQL.Add(' AND CONTASPAGAR.TIPO_PAGTO= :PTIPOPGTO');
   if BoxFornecedor.Checked then
     IBRelatorio.SQL.Add(' AND CONTASPAGAR.FORNECEDOR= :PFORNECEDOR');

   Case rgOrdem.ItemIndex of
    0 :IBRelatorio.SQL.Add(' ORDER BY CONTASPAGAR.DTVENCIMENTO') ;
    1 : IBRelatorio.SQL.Add(' ORDER BY TIPOPGTO.NOME') ;
    2 : IBRelatorio.SQL.Add(' ORDER BY FORNECEDOR.RAZAO_SOCIAL') ;
  end;


   IBRelatorio.ParamByName('pDTINICIO').AsDateTime :=  StrToDateTime(EdtDtInicio.Text) ;
   IBRelatorio.ParamByName('pDTFINAL').AsDateTime :=   StrToDateTime(EdtDtFinal.Text)  ;
   If (BoxTipoPgto.Checked) then
     IBRelatorio.ParamByName('pTIPOPGTO').AsInteger    := strToInt(dbeTipo.Text);
   If (BoxFornecedor.Checked) then
     IBRelatorio.ParamByName('pFORNECEDOR').AsInteger   := strToInt(DbeFornecedor.Text);

   IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
   IBRelatorio.Open;

end;

procedure TfVisualizaContasPagar.dbeTipoEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfVisualizaContasPagar.dbeTipoExit(Sender: TObject);
begin
   EdtTipo.Text := RetornaTabela(DM1.TTipoPgto ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeTipo.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfVisualizaContasPagar.dbeTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaTipoPgto.fRetorno := fVisualizaContasPagar ;
       fVisualizaContasPagar.Enabled := False;
       fConsultaTipoPgto.Show;
     End;
end;

procedure TfVisualizaContasPagar.dbeTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := SoNumeros(Key ,'I');
end;

procedure TfVisualizaContasPagar.FormActivate(Sender: TObject);
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

procedure TfVisualizaContasPagar.FormShow(Sender: TObject);
begin
   label101.Caption   := ' ';
end;

procedure TfVisualizaContasPagar.FormCreate(Sender: TObject);
begin
   Entrando := True;
   xBuscar  := False;
   EdtTipo.Clear;
   EdtFornecedor.Clear;
end;

procedure TfVisualizaContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   IBRelatorio.Close;
   fRetorno.Enabled := True;
   fRetorno.Show;
end;

procedure TfVisualizaContasPagar.BoxTipoPgtoClick(Sender: TObject);
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

procedure TfVisualizaContasPagar.btSairClick(Sender: TObject);
begin
   fVisualizaContasPagar.Close;
end;

procedure TfVisualizaContasPagar.BoxFornecedorClick(Sender: TObject);
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

procedure TfVisualizaContasPagar.DbeFornecedorEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfVisualizaContasPagar.DbeFornecedorExit(Sender: TObject);
begin
   EdtFornecedor.Text := RetornaTabela(DM1.TFornecedor ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeFornecedor.Text ,'','','','','','','NOME_FANTASIA' );
   Label101.Caption := '';
end;

procedure TfVisualizaContasPagar.DbeFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaFornecedor.fRetorno := fVisualizaContasPagar;
       fVisualizaContasPagar.Enabled := False;
       fConsultaFornecedor.Show;
     End;
end;

procedure TfVisualizaContasPagar.DbeFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := SoNumeros(Key ,'I');
end;

procedure TfVisualizaContasPagar.FormKeyDown(Sender: TObject;
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


end.
