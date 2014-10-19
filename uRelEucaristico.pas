unit uRelEucaristico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, DynamicSkinForm,
  HintBalloon, DB, ppBands, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter,
  ppVar, IBCustomDataSet, IBTable, IBQuery, ppModule, raCodMod, jpeg,
  ExtCtrls;

type
  TfRelEucaristico = class(TForm)
    btSair: TspSkinButton;
    btImprimir: TspSkinButton;
    EdtDtInicio: TspSkinMaskEdit;
    EdtDtFinal: TspSkinMaskEdit;
    lbDtInicial: TspSkinLabel;
    lbDtFinal: TspSkinLabel;
    rgPesquisar: TspSkinRadioGroup;
    spDynamicSkinForm1: TspDynamicSkinForm;
    ppDBPipeline1: TppDBPipeline;
    DsRelBatismo: TDataSource;
    HintBalloon1: THintBalloon;
    qryConsulta: TIBQuery;
    ppRepRelEucaristico: TppReport;
    ppParameterList1: TppParameterList;
    spSkinPanel1: TspSkinPanel;
    Image1: TImage;
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
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTextNome: TppDBText;
    ppDBTextDtHr: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    qryConsultaPAROQUIA: TIntegerField;
    qryConsultaCOMUNIDADE: TIntegerField;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaCODEUCARISTIA: TIntegerField;
    qryConsultaNOMEEUCARISTIA: TIBStringField;
    qryConsultaDTNASC: TDateField;
    qryConsultaNATURALIDADE: TIBStringField;
    qryConsultaPAI: TIBStringField;
    qryConsultaMAE: TIBStringField;
    qryConsultaPADRINHO: TIBStringField;
    qryConsultaMADRINHA: TIBStringField;
    qryConsultaDTEUCARISTIA: TDateField;
    qryConsultaPADRE: TIntegerField;
    qryConsultaCATEQUISTA: TIntegerField;
    qryConsultaOBSERVACAO: TIBStringField;
    qryConsultaLIVRO: TIBStringField;
    qryConsultaFOLHA: TIBStringField;
    qryConsultaNUMERO: TIBStringField;
    qryConsultaDTCADASTRO: TDateTimeField;
    ppLabel11: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText4: TppDBText;
    procedure rgPesquisarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure EdtDtInicioExit(Sender: TObject);
    procedure EdtDtFinalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEucaristico: TfRelEucaristico;

implementation

uses  uPrincipal, uDM1, Sistools;

{$R *.dfm}

procedure TfRelEucaristico.rgPesquisarClick(Sender: TObject);
begin
   Case rgPesquisar.ItemIndex of
    0:
     begin

       lbDtInicial.Visible    :=False;
       lbDtFinal.Visible      :=False;
       EdtDtInicio.Visible    :=False;
       EdtDtFinal.Visible     :=False;
       EdtDtInicio.Clear;
       EdtDtFinal.Clear;
       
     end;
    1:
     begin
       
       lbDtInicial.Visible    :=True;
       lbDtInicial.Caption    :='Dt Inicial';
       lbDtFinal.Caption      :='Dt Final';
       EdtDtInicio.EditMask   :='99/99/9999';
       lbDtFinal.Visible      :=True;
       EdtDtInicio.Visible    :=True;
       EdtDtInicio.Left       :=215;
       EdtDtFinal.Left        :=215;
       EdtDtFinal.Visible     :=True;
       
     end;
    2:
     begin
       
       lbDtInicial.Visible    :=True;
       lbDtInicial.Caption    :='Data da Celebração';
       EdtDtInicio.EditMask   :='99/99/9999';
       lbDtFinal.Visible      :=False;
       EdtDtInicio.Visible    :=True;
       EdtDtInicio.Left       :=270;
       EdtDtFinal.Visible     :=False;
       
     end;
    3:
     begin
       
       lbDtInicial.Visible    :=True;
       lbDtInicial.Caption    :='Livro';
       lbDtFinal.Visible      :=False;
       EdtDtInicio.Visible    :=True;
       EdtDtInicio.EditMask   :='';
       EdtDtInicio.Text       :='';
       EdtDtInicio.Left       :=210;
       EdtDtFinal.Visible     :=False;
       
     end;
   end;
end;

procedure TfRelEucaristico.btImprimirClick(Sender: TObject);
var
val1,val2,StrSql:String;
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;


  If rgPesquisar.ItemIndex=0 then
    begin
      ppLabel5.Caption:='LISTAGEM DE TODAS AS PRIMEIRAS EUCARISTIAS';
      StrSql:='SELECT * FROM EUCARISTICO ';
      StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39+' ORDER BY NOMEEUCARISTIA ';
      qryConsulta.Close;
      qryConsulta.SQL.Clear;
      qryConsulta.SQL.Add(StrSql);
      qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelEucaristico.PrintReport;
        end
        else
        begin
          Application.MessageBox('Não exixtem irformações para gerar o relatório!','SoftLiveSistemas',MB_OK+MB_ICONINFORMATION);
        end

    end;



  If rgPesquisar.ItemIndex=1 then
    begin
      ppLabel5.Caption:='LISTAGEM DE 1ªEUCARISTIA NO PERIODO DE:'+EdtDtInicio.Text+' a '+EdtDtFinal.Text;
      If (EdtDtInicio.Text = '  /  /    ') Or (EdtDtFinal.Text = '  /  /    ') Then Begin
        Application.MessageBox('Favor informar o período inicial e final !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
      End ;

        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM EUCARISTICO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND DTEUCARISTIA>='+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val1)) +#39;
        StrSql:=StrSql +' AND DTEUCARISTIA <= '+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val2)) +#39;
        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If qryConsulta.Locate('DTEUCARISTIA',qryConsultaDTEUCARISTIA.AsDateTime,[]) then
        begin
          ppRepRelEucaristico.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
        end

    end;
  If rgPesquisar.ItemIndex=2 then
    Begin
      ppLabel5.Caption:='LISTAGEM DE 1ªEUCARISTIA PARA O DIA DA CELEBRAÇÃO:'+EdtDtInicio.Text;
      If (EdtDtInicio.Text = '  /  /    ')  Then
       Begin
        Application.MessageBox('Favor informar o período inicial e final !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
       End ;
        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM EUCARISTICO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND DTEUCARISTIA='+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val1)) +#39;
        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelEucaristico.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
          EdtDtInicio.Clear;
        end
    end;
  If rgPesquisar.ItemIndex=3 then
    Begin
      ppLabel5.Caption:='LISTAGEM  1ªEUCARISTIA';
      If (EdtDtInicio.Text ='')  Then
       Begin
        Application.MessageBox('Favor informar o Livro !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
       End ;
       
        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM EUCARISTICO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND LIVRO='+ #39 +val1+#39+'ORDER BY LIVRO ';

        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelEucaristico.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
          EdtDtInicio.Clear;
        end
    end

  
end;

procedure TfRelEucaristico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryConsulta.Close;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
end;

procedure TfRelEucaristico.btSairClick(Sender: TObject);
begin
  fRelEucaristico.Close;
end;

procedure TfRelEucaristico.ppHeaderBand1BeforePrint(Sender: TObject);
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


procedure TfRelEucaristico.EdtDtInicioExit(Sender: TObject);
Var
 StrMenssagem,StrMenssagem1:string;
begin
   {StrMenssagem:=EdtDtInicio.Text;
   StrMenssagem1:='Formato de data não é valido!';

   Try
     StrToDate(EdtDtInicio.Text);
   except
     application.MessageBox(Pchar(StrMenssagem+StrMenssagem1),'Atenção',MB_OK+MB_ICONINFORMATION);
     btImprimir.SetFocus;
     exit;

   end;}

end;

procedure TfRelEucaristico.EdtDtFinalExit(Sender: TObject);
Var
 StrMenssagem,StrMenssagem1:String;
begin
  {StrMenssagem  :=EdtDtFinal.Text;
  StrMenssagem1 :='Formato de data não é valido!';


  Try
    StrToDate(EdtDtFinal.Text);
  except
    application.MessageBox(Pchar(StrMenssagem+StrMenssagem1),'Atenção',MB_OK+MB_ICONINFORMATION);
    btImprimir.SetFocus;
    exit;

  end;}

end;

procedure TfRelEucaristico.FormCreate(Sender: TObject);
begin
  fRelEucaristico.Height :=267;
  lbDtInicial.Visible    :=False;
  lbDtFinal.Visible      :=False;
  EdtDtInicio.Visible    :=False;
  EdtDtFinal.Visible     :=False;
  btImprimir.Top         :=189;
  btSair.Top             :=189;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
  rgPesquisar.ItemIndex   :=0;
end;

procedure TfRelEucaristico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Shift = []) and (Key = VK_F8 ) then
    Begin
    if btImprimir.Enabled then
      btImprimir.OnClick(Self); ;
    End
end;

procedure TfRelEucaristico.btImprimirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Imprimir relação de 1ªEucaristia';
  HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfRelEucaristico.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair da Relação de 1ªEucaristia';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfRelEucaristico.FormActivate(Sender: TObject);
begin
  fRelEucaristico.Height :=267;
  lbDtInicial.Visible    :=False;
  lbDtFinal.Visible      :=False;
  EdtDtInicio.Visible    :=False;
  EdtDtFinal.Visible     :=False;
  btImprimir.Top         :=189;
  btSair.Top             :=189;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
  rgPesquisar.ItemIndex   :=0;
end;

end.
