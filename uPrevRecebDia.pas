unit uPrevRecebDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, spdbctrls, StdCtrls, Mask, SkinBoxCtrls,
  DynamicSkinForm, DB, IBCustomDataSet, IBQuery, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache,
  IBSQL,DateUtils, HintBalloon, ppVar;

type
  TfPrevRecebDia = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spSkinLabel12: TspSkinLabel;
    Edit1: TspSkinEdit;
    IBRelatorio: TIBQuery;
    boxComunidade: TspSkinCheckRadioBox;
    ppDBPipeline1: TppDBPipeline;
    DataSource1: TDataSource;
    ppRepDiaDoacao: TppReport;
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
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    label101: TspSkinLabel;
    dbeComunidade: TspSkinEdit;
    tTempPrevRec: TIBDataSet;
    IBApaga: TIBSQL;
    tTempPrevRecAUXPC: TIBStringField;
    tTempPrevRecAUXCONTADOR: TIntegerField;
    tTempPrevRecAUXDIZIMISTA: TIntegerField;
    tTempPrevRecAUXMESANO: TIBStringField;
    tTempPrevRecAUXDIA: TIBStringField;
    tTempPrevRecAUXVALOR: TIBBCDField;
    IbVerificaOferta: TIBQuery;
    IbVerificaOfertaPAROQUIA: TIntegerField;
    IbVerificaOfertaCODIGO: TIntegerField;
    IbVerificaOfertaMES: TIBStringField;
    IbVerificaOfertaDIZIMISTA: TIntegerField;
    IbVerificaOfertaDATA: TDateField;
    IbVerificaOfertaVALOR: TIBBCDField;
    IbVerificaOfertaPERIODO: TIBStringField;
    IbVerificaOfertaANO: TIBStringField;
    IbVerificaOfertaORIGEM: TIntegerField;
    IbVerificaOfertaTOTPERIODO: TIBBCDField;
    IbRel2: TIBQuery;
    IbRel2AUXPC: TIBStringField;
    IbRel2AUXCONTADOR: TIntegerField;
    IbRel2AUXDIZIMISTA: TIntegerField;
    IbRel2AUXMESANO: TIBStringField;
    IbRel2AUXDIA: TIBStringField;
    IbRel2AUXVALOR: TIBBCDField;
    IbRel2DIZIMISTA: TIBStringField;
    IbRel2ENDERECO: TIBStringField;
    IbRel2BAIRRO: TIBStringField;
    IbRel2CIDADE: TIBStringField;
    IbRel2TELEFONE: TIBStringField;
    ppLine6: TppLine;
    ppLabel12: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    IbRel2pEnderecoCompleto: TStringField;
    ppDBText4: TppDBText;
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
    IBRelatorioDIA_DOACAO: TIBStringField;
    IBRelatorioVALOR: TIBBCDField;
    IBRelatorioNOMECOMUNIDADE: TIBStringField;
    rgCampanha: TspSkinRadioGroup;
    lbDtInicial: TspSkinLabel;
    lbDtFinal: TspSkinLabel;
    IBRelatorioDIZIMISTA_CAMPANHA: TIBStringField;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    HintBalloon1: THintBalloon;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel17: TppLabel;
    dbeDiaInicio: TspSkinComboBox;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    DbeDiaFinal: TspSkinComboBox;
    spSkinLabel3: TspSkinLabel;
    EdtDtInicio: TspSkinMaskEdit;
    EdtDtFinal: TspSkinMaskEdit;
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
    function TemOferta(pDizimista : Integer) : Boolean;
    procedure IbRel2CalcFields(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure boxComunidadeClick(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure EdtDtInicioMouseEnter(Sender: TObject);
    procedure rgCampanhaMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeDiaInicioMouseEnter(Sender: TObject);
    procedure DbeDiaFinalMouseEnter(Sender: TObject);
    procedure VerificarMesDias;
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno                                                      : TForm;
    Entrando,xBuscar,xOrigemConsulta                              : Boolean;
    xNumDevolucao                                                 : Integer;
    xVetor                                                        : array of String;
    xContador                                                     : Integer;
    xDT                                                           : TDateTime;
    xStrDataInicio,xStrDataFinal,xStrDias,xStrInicio,xStrFim      : String;
    xIntMes,xIntAno                                               : Integer;
  end;

var
  fPrevRecebDia: TfPrevRecebDia;

implementation

uses Sistools, uPrincipal, uDM1, uDMDados, uConsultaComunidade, Math;

{$R *.dfm}

procedure TfPrevRecebDia.btImprimirClick(Sender: TObject);
Var

  zResult                               : integer;
  zDiferencaMes                         : Real;
  zConta,zCount                         : Integer;
  zAux,StrDataInicio,StrDataFinal       : String;
  zDizimistaCampanha                    : String;
  strdias,Strinicio,StrFim              : String;
  intmes,intano                         : Integer;

begin
   {StrDataInicio := Copy(EdtDtInicio.Text,4,4);
   StrDataFinal  := Copy(EdtDtFinal.Text,4,4);
   intmes        := StrToInt(Copy(EdtDtFinal.Text,1,2));
   intano        := StrToInt(Copy(EdtDtFinal.Text,4,4));
   case intmes of
        1,3,5,7,8,10,12 : strdias := '31';
        4,6,9,11        : strdias := '30';
        2 : if (intano mod 4 ) = 0 then
             strdias := '29'
             else
              strdias := '28';

   end;
   Strinicio := '01/' + Copy(EdtDtInicio.Text,1,2)+'/'+Copy(EdtDtInicio.Text,4,4);
   StrFim    := strdias+'/'+Copy(EdtDtFinal.Text,1,2)+'/'+Copy(EdtDtFinal.Text,4,4);}

 //----------------------------------------------------------------------------------//
   If (dbeDiaInicio.Text='') then
    Begin
      Application.MessageBox('Informe o dia de doação!','Atenção',MB_OK + MB_ICONINFORMATION);
      dbeDiaInicio.SetFocus;
      Exit;
     End;

   If (DbeDiaFinal.Text='') then
    Begin
      Application.MessageBox('Informe o dia de doação!','Atenção',MB_OK + MB_ICONINFORMATION);
      DbeDiaFinal.SetFocus;
      Exit;
    End;

   If not DataValida(FormatDateTime('dd',Date)+'/'+ EdtDtInicio.Text)  then
    Begin
      Application.MessageBox('Informe o Mês e o Ano Inicial antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtInicio.SetFocus;
      Exit;
    End;

   If not (DataValida(FormatDateTime('dd',Date)+'/'+ EdtDtFinal.Text))   then
    Begin
      Application.MessageBox('Informe o Mês e o Ano Final antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtFinal.SetFocus;
      Exit;
    End;

   {If (StrDataFinal<StrDataInicio) then
    Begin
      Application.MessageBox('Data Inicial não pode ser maior que a Data Final.'+#13+#13
      +'Digite as Datas novamente','Atenção',MB_OK + MB_ICONINFORMATION);
      EdtDtInicio.SetFocus;
      Exit;
    End;}



  If (boxComunidade.Checked) And (Edit1.Text = '') then
    Begin
      Application.MessageBox('Informe a Comunidade antes de visualizar!','Atenção',MB_OK+MB_ICONINFORMATION);
      dbeComunidade.SetFocus;
      Exit;
    End;
   //-------------------------------------//
  {Apaga os dados q estao na TB tem_prevrec}
  IBApaga.Close;
  IBApaga.ParamByName('PPC').AsString := DM1.mMaquina;
  IBApaga.ExecQuery;
  dmDados.Transacao.CommitRetaining;
  //---------------------------------//
  VerificarMesDias;
  
  zDiferencaMes:=MonthSpan(StrToDateTime(xStrInicio),StrToDateTime(xStrFim));
  zDiferencaMes:=Round(zDiferencaMes);
  zDiferencaMes:=zDiferencaMes -1;


  //-------------------------------------//
  IBRelatorio.Close;
  IBRelatorio.SQL.Clear;
  IBRelatorio.SQL.Add('SELECT  DIZIMISTA.*,COMUNIDADE.COMUNIDADE AS NOMECOMUNIDADE FROM DIZIMISTA ');
  IBRelatorio.SQL.Add('LEFT JOIN COMUNIDADE ON DIZIMISTA.PAROQUIA=COMUNIDADE.PAROQUIA AND');
  IBRelatorio.SQL.Add('DIZIMISTA.COMUNIDADE=COMUNIDADE.CODIGO');
  IBRelatorio.SQL.Add('WHERE DIZIMISTA.PAROQUIA= :pPAROQUIA');

  if boxComunidade.Checked then
  IBRelatorio.SQL.Add('AND DIZIMISTA.COMUNIDADE= :pCOMUNIDADE');
  IBRelatorio.SQL.Add('AND DIZIMISTA.DIA_DOACAO>= :PDIA1 ');
  IBRelatorio.SQL.Add('AND DIZIMISTA.DIA_DOACAO<= :PDIA2');
  If rgCampanha.ItemIndex=0 then
     Begin
        IBRelatorio.SQL.Add('AND DIZIMISTA.DIZIMISTA_CAMPANHA=''S''');
     End
     Else
     Begin
        IBRelatorio.SQL.Add('AND DIZIMISTA.DIZIMISTA_CAMPANHA=''N''');
     End;

  {Dt1:=EdtDtInicio.Text;
  Dt1:= copy(Dt1,1,2);
  dt2:=EdtDtFinal.Text;
  dt2:=copy(dt2,1,2);
  IBRelatorio.ParamByName('PDIA1').AsString :=Dt1;
  IBRelatorio.ParamByName('PDIA2').AsString :=dt2;}

  IBRelatorio.ParamByName('PDIA1').AsString := dbeDiaInicio.Text;
  IBRelatorio.ParamByName('PDIA2').AsString := DbeDiaFinal.Text ;
   
  IBRelatorio.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;//varivel q define a paroquia
  if boxComunidade.Checked then
     IBRelatorio.ParamByName('PCOMUNIDADE').AsInteger := StrToInt(dbeComunidade.Text);
  IBRelatorio.SQL.Add('ORDER BY DIZIMISTA.DIZIMISTA ASC ');

  IBRelatorio.Open;
  IBRelatorio.First;//primeiro registro
  tTempPrevRec.Close;
  tTempPrevRec.Open;
  zConta := 1;
  while not IBRelatorio.Eof do
    Begin

      zDizimistaCampanha := RetornaTabela(DM1.TDizimista ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',IBRelatorioCODIGO.AsString  ,'','','','','','','DIZIMISTA_CAMPANHA' );
      { If (zDizimistaCampanha <> 'S') And (rgCampanha.ItemIndex = 0 ) then
       Begin
          //IBRelatorio.Next;
          Continue;
       End;}
      For zCount:=0 to Round(zDiferencaMes) do//implementado 07/10/10
      Begin//1
      zResult:=0;
      zResult:=zResult + zCount;
      //xDT := IncMonth(StrToDateTime(EdtDtInicio.Text),zResult);
      xDT := IncMonth(StrToDateTime(xStrInicio),zResult);
       If  TemOferta(IBRelatorioCODIGO.AsInteger) then
       Begin
           //IBRelatorio.Next;
           Continue;
       End;

      //label101.Caption := 'Apurando Informações Dizimista  ' + IBRelatorioCODIGO.AsString;
      //label101.Caption := 'Apurando Informações Dizimista  ' + InttoStr(IBRelatorio.RecordCount);
      label101.Update;
      tTempPrevRec.Append;
      tTempPrevRecAUXPC.AsString         := DM1.mMaquina;
      tTempPrevRecAUXCONTADOR.AsInteger  := zConta;
      tTempPrevRecAUXDIZIMISTA.AsInteger := IBRelatorioCODIGO.AsInteger;
      tTempPrevRecAUXMESANO.AsString     := FormatDateTime('mm/yyyy',xdt);// edtMesAno1.Text;
      tTempPrevRecAUXDIA.AsString        := IBRelatorioDIA_DOACAO.AsString;// dbeDiaDoacao.Text;
      tTempPrevRecAUXVALOR.AsFloat       := IBRelatorioVALOR.AsFloat;
      tTempPrevRec.Post;
      //IBRelatorio.Next;
      Inc(zConta);
      End;//1
    IbRelatorio.next;
    End;
  IBRelatorio.Close;
  IbRel2.Close;
  IBRel2.ParamByName('PPC').AsString         := DM1.mMaquina;
  IBRel2.ParamByName('PPAROQUIA').AsInteger  := DM1.mParoquia;
  IBRel2.Open;

  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  //ppLabel8.Caption := 'DIA DOAÇÃO ' + dbeDiaDoacao.Text  '/' edtMesAno1.Text;
  //ppLabel8.Caption := 'DIA DOAÇÃO: ' + FormatDateTime('dd',StrToDateTime(EdtDtInicio.Text))+' a '+FormatDateTime('dd',StrToDateTime(EdtDtFinal.Text));
  if rgCampanha.ItemIndex = 0 then
    zAux := ' - Dízimos/Ofertas de Campanha'
  else
    zAux := ' - Dízimos/Ofertas Normais';

  if Edit1.Text <> '' then
    ppLabel8.Caption :='Comunidade - ' + Edit1.Text + zAux
  else
     ppLabel8.Caption :=' TODAS AS COMUNIDADES' + zAux ;
  Strinicio := EdtDtInicio.Text;
  StrFim    := EdtDtFinal.Text;
  ppLabel14.Caption:= 'PERÍODO A SER OFERTADO ' + Strinicio + ' A ' + StrFim;  
  label101.Caption := 'Apurando Informações Dizimista  ' + InttoStr(IbVerificaOferta.RecordCount);
  ppRepDiaDoacao.PrintReport;
  IBRel2.Close;

end;


procedure TfPrevRecebDia.ppHeaderBand1BeforePrint(Sender: TObject);
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

procedure TfPrevRecebDia.btSairClick(Sender: TObject);
begin
  fPrevRecebDia.Close;
end;

procedure TfPrevRecebDia.FormClose(Sender: TObject;  var Action: TCloseAction);
begin

  IBRel2.Close;
  //fPrincipal.LimparTabelaTemp('TEMP_PREVREC');
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfPrevRecebDia.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
  
end;

procedure TfPrevRecebDia.dbeComunidadeKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fPrevRecebDia    ;
       fPrevRecebDia.Enabled := False;
       fConsultaComunidade.Show;
     End;
end;

procedure TfPrevRecebDia.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfPrevRecebDia.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfPrevRecebDia.dbeComunidadeKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key ,'I');
end;

procedure TfPrevRecebDia.FormCreate(Sender: TObject);
begin
  dbeComunidade.Clear;
  Edit1.Clear;
  label101.Caption :='';
end;

function TfPrevRecebDia.TemOferta(pDizimista: Integer): Boolean;
Begin

  IbVerificaOferta.Close;
  IbVerificaOferta.ParamByName('pPAROQUIA').AsInteger := DM1.mParoquia;
  IbVerificaOferta.ParamByName('PDIZIMISTA').AsInteger := pDizimista;
  IbVerificaOferta.ParamByName('PMES').AsString :=FormatDateTime('mm',xdt);
  IbVerificaOferta.ParamByName('PANO').AsString :=FormatDateTime('yyyy',xdt);

  //IbVerificaOferta.ParamByName('PMES').AsString :=FormatDateTime('mm',StrToDate(EdtDtInicio.Text));
  //IbVerificaOferta.ParamByName('PANO').AsString :=FormatDateTime('yyyy',StrToDateTime(EdtDtFinal.Text));
  //IbVerificaOferta.ParamByName('PMES').AsString := COPY(edtMesAno1.Text,1,2);
  //IbVerificaOferta.ParamByName('PANO').AsString := COPY(edtMesAno1.Text,4,4);
  if rgCampanha.ItemIndex =0 then
    IbVerificaOferta.ParamByName('PCAMPANHA').AsString := 'S'
  else
    IbVerificaOferta.ParamByName('PCAMPANHA').AsString := 'N';

  IbVerificaOferta.Open;
  IbVerificaOferta.FetchAll;
  Result := IbVerificaOferta.RecordCount > 0;
  IbVerificaOferta.Close;
end;

procedure TfPrevRecebDia.IbRel2CalcFields(DataSet: TDataSet);
begin
  IbRel2pEnderecoCompleto.AsString := IbRel2ENDERECO.AsString +' - '
  + IbRel2BAIRRO.AsString +' - '+ IbRel2CIDADE.AsString;
end;

procedure TfPrevRecebDia.FormKeyDown(Sender: TObject; var Key: Word;
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
  
procedure TfPrevRecebDia.boxComunidadeClick(Sender: TObject);
begin
   If  boxComunidade.Checked then
      Begin
         dbeComunidade.Enabled:=True;
         dbeComunidade.SetFocus;
      End
   Else
      Begin
         dbeComunidade.Clear;
         Edit1.Clear;
         dbeComunidade.Enabled:=False;
      End;
end;

procedure TfPrevRecebDia.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Imprimir Previsão de Recebimento de Dizimos/Ofertados';
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfPrevRecebDia.btSairMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Sair da Previsão de Dizimos/Ofertas';
   HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfPrevRecebDia.EdtDtInicioMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Mes/Ano a ser Ofertados';
   HintBalloon1.AddToolInfo(Handle,EdtDtInicio.Handle);
end;

procedure TfPrevRecebDia.rgCampanhaMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Dizimista de Campanha?SIM/NÃO';
   HintBalloon1.AddToolInfo(Handle,rgCampanha.Handle);
end;

procedure TfPrevRecebDia.FormShow(Sender: TObject);
begin
   dbeDiaInicio.SetFocus;
end;

procedure TfPrevRecebDia.dbeDiaInicioMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Dia de Doação do Dizimista.';
   HintBalloon1.AddToolInfo(Handle,dbeDiaInicio.Handle);
end;

procedure TfPrevRecebDia.DbeDiaFinalMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Dia de Doação do Dizimista.';
   HintBalloon1.AddToolInfo(Handle,DbeDiaFinal.Handle);
end;
procedure TfPrevRecebDia.VerificarMesDias;
begin
   xStrDataInicio := Copy(EdtDtInicio.Text,4,4);
   xStrDataFinal  := Copy(EdtDtFinal.Text,4,4);
   xIntMes        := StrToInt(Copy(EdtDtFinal.Text,1,2));
   xIntAno        := StrToInt(Copy(EdtDtFinal.Text,4,4));
   case xIntMes of
        1,3,5,7,8,10,12 : xStrDias := '31';
        4,6,9,11        : xStrDias := '30';
        2 : if (xIntAno mod 4 ) = 0 then
             xStrDias := '29'
             else
             xStrDias := '28';

   end;
   xStrInicio := '01/' + Copy(EdtDtInicio.Text,1,2)+'/'+Copy(EdtDtInicio.Text,4,4);
   xStrFim    := xStrDias+'/'+Copy(EdtDtFinal.Text,1,2)+'/'+Copy(EdtDtFinal.Text,4,4);
end;
end.
