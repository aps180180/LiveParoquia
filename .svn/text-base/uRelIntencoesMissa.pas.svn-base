unit uRelIntencoesMissa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls,
  ppParameter, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt;

type
  TfRelIntencoesMissa = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btSair: TspSkinButton;
    IBConsultaLancIntencoes: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    edtDtInicio: TspSkinMaskEdit;
    edtDtFinal: TspSkinMaskEdit;
    spSkinLabel1: TspSkinLabel;
    boxData: TspSkinCheckRadioBox;
    IBIntencoesMissas: TIBQuery;
    DsIntencoesMissas: TDataSource;
    dbTipoIntencao: TspSkinDBLookupComboBox;
    boxTipo: TspSkinCheckRadioBox;
    btImprimir: TspSkinButton;
    ppDBPipeline1: TppDBPipeline;
    ppRepRelIntencao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTextNome: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppParameterList1: TppParameterList;
    spSkinLabel12: TspSkinLabel;
    dbeIntencao: TspSkinEdit;
    Edit1: TspSkinEdit;
    IBConsultaLancIntencoesPAROQUIA: TIntegerField;
    IBConsultaLancIntencoesCODIGO: TIntegerField;
    IBConsultaLancIntencoesNOME: TIBStringField;
    IBConsultaLancIntencoesDATACELEBRACAO: TDateField;
    IBConsultaLancIntencoesHORACELEBRACAO: TDateTimeField;
    IBConsultaLancIntencoesTIPOINTENCAO: TIntegerField;
    IBConsultaLancIntencoesCELEBRANTE: TIBStringField;
    IBConsultaLancIntencoesOBSERVACAO: TIBStringField;
    IBConsultaLancIntencoesINTENCOES: TIBStringField;
    ppLabel14: TppLabel;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLabel13: TppLabel;
    ppDBText5: TppDBText;
    ppRepRelIntSimp: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLbArquidiocese: TppLabel;
    ppLbComunidade: TppLabel;
    ppLbEnd: TppLabel;
    ppLbCidade: TppLabel;
    ppLabel19: TppLabel;
    ppLine6: TppLine;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppLabel20: TppLabel;
    ppLine7: TppLine;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLine8: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine10: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel28: TppLabel;
    ppPageStyle2: TppPageStyle;
    ppParameterList2: TppParameterList;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    IBLancIntencao: TIBQuery;
    DsLancIntencao: TDataSource;
    IBIntencoesMissasCODIGO: TIntegerField;
    IBIntencoesMissasDTCADASTRO: TDateField;
    IBIntencoesMissasINTENCOES: TIBStringField;
    IBIntencoesMissasPAROQUIA: TIntegerField;
    IBLancIntencaoPAROQUIA: TIntegerField;
    IBLancIntencaoCODIGO: TIntegerField;
    IBLancIntencaoNOME: TIBStringField;
    IBLancIntencaoDATACELEBRACAO: TDateField;
    IBLancIntencaoHORACELEBRACAO: TDateTimeField;
    IBLancIntencaoTIPOINTENCAO: TIntegerField;
    IBLancIntencaoCELEBRANTE: TIBStringField;
    IBLancIntencaoOBSERVACAO: TIBStringField;
    ppDBText6: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefazerSQL;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure dbeIntencaoEnter(Sender: TObject);
    procedure dbeIntencaoExit(Sender: TObject);
    procedure dbeIntencaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    Procedure MostrarLancIntencoes(pTipoIntencao: Integer);
    procedure dbeIntencaoKeyDown(Sender: TObject; var Key: Word;
    
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
  fRelIntencoesMissa: TfRelIntencoesMissa;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools , uLancIntencoes, Math,
  uConsultaIntencoesMissas;

{$R *.dfm}

procedure TfRelIntencoesMissa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaLancIntencoes.Close;
  //IBQuery1.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfRelIntencoesMissa.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  dbeIntencao.Clear;
  Edit1.Clear;
  edtDtInicio.Clear;
  edtDtFinal.Clear;
end;

procedure TfRelIntencoesMissa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfRelIntencoesMissa.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  {IBQuery1.Close;
  IBQuery1.ParamByName('pPAROQUIA').AsInteger := DM1.mParoquia;
  IBQuery1.Open;}

end;
procedure TfRelIntencoesMissa.RefazerSQL;
begin

  IBConsultaLancIntencoes.Close;
  IBConsultaLancIntencoes.SQL.Clear;
  IBConsultaLancIntencoes.SQL.Add('SELECT LANCAMENTOINTENCAO.*, INTENCOES_MISSAS.INTENCOES FROM LANCAMENTOINTENCAO,INTENCOES_MISSAS ');
  IBConsultaLancIntencoes.SQL.Add(' WHERE LANCAMENTOINTENCAO.PAROQUIA=INTENCOES_MISSAS.PAROQUIA');
  IBConsultaLancIntencoes.SQL.Add('AND LANCAMENTOINTENCAO.TIPOINTENCAO=INTENCOES_MISSAS.CODIGO');

  if (boxData.Checked) and (DataValida(edtDtInicio.Text)) then
    Begin
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO >= :PDATA1');
      IBConsultaLancIntencoes.ParamByName('PDATA1').AsDateTime := StrToDateTime(edtDtInicio.Text);
    end;
  if (boxData.Checked) and (DataValida(edtDtFinal.Text)) then
    Begin
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO <= :PDATA2');
      IBConsultaLancIntencoes.ParamByName('PDATA2').AsDateTime := StrToDateTime(edtDtFinal.Text);
    end;

  if (boxTipo.Checked) And (dbTipoIntencao.KeyValue > 0) then
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.TIPOINTENCAO ='  + IntToStr( dbTipoIntencao.KeyValue)) ;
      IBConsultaLancIntencoes.SQL.Add(' ORDER BY LANCAMENTOINTENCAO.DATACELEBRACAO');

      ppRepRelIntencao.PrintReport;
      IBConsultaLancIntencoes.Open;

end;



procedure TfRelIntencoesMissa.btSairClick(Sender: TObject);
begin
  fRelIntencoesMissa.Close;
end;


procedure TfRelIntencoesMissa.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;




procedure TfRelIntencoesMissa.dbeIntencaoEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfRelIntencoesMissa.dbeIntencaoExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TintencoesMissas ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeIntencao.Text ,'','','','','','','INTENCOES' );
   Label101.Caption := '';
end;

procedure TfRelIntencoesMissa.dbeIntencaoKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := SoNumeros(Key ,'I');
end;

procedure TfRelIntencoesMissa.FormActivate(Sender: TObject);
begin
   if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeIntencao.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
end;

procedure TfRelIntencoesMissa.btImprimirClick(Sender: TObject);
Var
   zAux : String;
begin
  If (boxData.Checked) and not DataValida(edtDtInicio.Text) then
     Begin
        Application.MessageBox('Informe a data Inicial antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
        EdtDtInicio.SetFocus;
        Exit;
     End;
  If (boxData.Checked) and not DataValida(edtDtFinal.Text) then
     Begin
        Application.MessageBox('Informe a data Final antes de Visualizar!','Atenção',MB_OK + MB_ICONINFORMATION);
        EdtDtFinal.SetFocus;
        Exit;
     End;
  If (boxTipo.Checked) and (Edit1.Text='') then
     Begin
        Application.MessageBox('Informe o Tipo de Intenção para Missa!','Atenção',MB_OK + MB_ICONINFORMATION);
        dbeIntencao.SetFocus;
        Exit;
     End;
    


   IBConsultaLancIntencoes.Close;
   IBConsultaLancIntencoes.SQL.Clear;
   IBConsultaLancIntencoes.SQL.Add('SELECT LANCAMENTOINTENCAO.*, INTENCOES_MISSAS.INTENCOES FROM LANCAMENTOINTENCAO,INTENCOES_MISSAS ');
   IBConsultaLancIntencoes.SQL.Add(' WHERE LANCAMENTOINTENCAO.PAROQUIA=INTENCOES_MISSAS.PAROQUIA');
   IBConsultaLancIntencoes.SQL.Add('AND LANCAMENTOINTENCAO.TIPOINTENCAO=INTENCOES_MISSAS.CODIGO');
   ppLabel14.Caption:='Relação de todas as Inteções para Missa';



  if (boxData.Checked) and (DataValida(edtDtInicio.Text)) then
    Begin
       IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO >= :PDATA1');
       IBConsultaLancIntencoes.ParamByName('PDATA1').AsDateTime := StrToDateTime(edtDtInicio.Text);
    End;


  if (boxData.Checked) and (DataValida(edtDtFinal.Text)) then
    Begin
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO <= :PDATA2');
      IBConsultaLancIntencoes.ParamByName('PDATA2').AsDateTime := StrToDateTime(edtDtFinal.Text);
      ppLabel14.Caption:='Relação de Intençoes para Missa no período'+ EdtDtInicio.text+' a '+edtDtFinal.Text;
    end;



    If  (boxTipo.Checked) and (dbeIntencao.Text<>'0' ) then
      IBConsultaLancIntencoes.SQL.Add('AND LANCAMENTOINTENCAO.TIPOINTENCAO='+dbeIntencao.Text);
      IBConsultaLancIntencoes.SQL.Add(' ORDER BY LANCAMENTOINTENCAO.DATACELEBRACAO');
      
            


            ppLabel1.Caption := DM1.mNomeArquidiocese;
            ppLabel2.Caption := DM1.mNomeParoquia;
            ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
            ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;



    If not fPrincipal.vLancIntencoesRelSimp then
       Begin
          //ppLabel1.Caption := DM1.mNomeArquidiocese;
          //ppLabel2.Caption := DM1.mNomeParoquia;
          //ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
          //ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;

          ppRepRelIntencao.PrintReport;
          IBConsultaLancIntencoes.Open;
       End
    Else
       Begin
          IBIntencoesMissas.ParamByName('PPAROQUIA').AsInteger:=DM1.mParoquia;
          
          ppLbArquidiocese.Caption := DM1.mNomeArquidiocese;
          ppLbComunidade.Caption := DM1.mNomeParoquia;
          ppLbEnd.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
          ppLbCidade.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;

          ppRepRelIntSimp.PrintReport;
          //IBConsultaLancIntencoes.Open;
          IBIntencoesMissas.Open;
          //IBLancIntencao.Open;
       End
end;

procedure TfRelIntencoesMissa.dbeIntencaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaIntencoesMissas.fRetorno := fRelIntencoesMissa    ;
       fRelIntencoesMissa.Enabled := False;
       fConsultaIntencoesMissas.Show;
     End;
end;
procedure TfRelIntencoesMissa.MostrarLancIntencoes(pTipoIntencao: Integer);
begin
  IBLancIntencao.Close;
  IBLancIntencao.SQL.Clear;
  IBLancIntencao.SQL.Add('SELECT * FROM LANCAMENTOINTENCAO WHERE PAROQUIA= :PPAROQUIA');
  IBLancIntencao.SQL.Add('AND LANCAMENTOINTENCAO.TIPOINTENCAO=:PTIPOINTENCAO');

  {Case rgCampanha.ItemIndex of
    0 : IBSub1.SQL.Add(' AND DIZIMO.CAMPANHA = ''S'' ');
    1 : IBSub1.SQL.Add(' AND DIZIMO.CAMPANHA = ''N'' ');

  end;}
    If boxData.Checked then
    Begin
      IBLancIntencao.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO>= :PDATA1 AND LANCAMENTOINTENCAO.DATACELEBRACAO>= :PDATA2');
      //IBSub1.SQL.Add(' AND DIZIMO.MES <= :PMES2 AND DIZIMO.ANO <= :PANO2');
      IBLancIntencao.ParamByName('PDATA1').AsString :=edtDtInicio.Text;
      IBLancIntencao.ParamByName('PDATA2').AsString :=edtDtFinal.Text;


    End;

  IBLancIntencao.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  IBLancIntencao.ParamByName('PTIPOINTENCAO').AsInteger := pTipoIntencao;
  IBLancIntencao.Open;
end;
end.
