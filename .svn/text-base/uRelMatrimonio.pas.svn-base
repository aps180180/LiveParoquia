unit uRelMatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, DynamicSkinForm,
  HintBalloon, DB, ppBands, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter,
  ppVar, IBCustomDataSet, IBTable, IBQuery, ppModule, raCodMod, jpeg,
  ExtCtrls;

type
  TfRelMatrimonio = class(TForm)
    btSair: TspSkinButton;
    btImprimir: TspSkinButton;
    EdtDtInicio: TspSkinMaskEdit;
    EdtDtFinal: TspSkinMaskEdit;
    lbDtInicial: TspSkinLabel;
    lbDtFinal: TspSkinLabel;
    rgPesquisar: TspSkinRadioGroup;
    spDynamicSkinForm1: TspDynamicSkinForm;
    ppDBPipeline1: TppDBPipeline;
    DsRelMatrimonio: TDataSource;
    HintBalloon1: THintBalloon;
    qryConsulta: TIBQuery;
    ppRepRelMatrimonio: TppReport;
    ppParameterList1: TppParameterList;
    Panel1: TspSkinPanel;
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
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTextNome: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppDBText4: TppDBText;
    ppPageStyle1: TppPageStyle;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaPAROQUIA: TIntegerField;
    qryConsultaDTCADASTRO: TDateTimeField;
    qryConsultaARQUIDIOCESE_NOME: TIBStringField;
    qryConsultaPAROQUIANOME_NOME: TIBStringField;
    qryConsultaLIVRO: TIBStringField;
    qryConsultaFOLHA: TIBStringField;
    qryConsultaNUMERO: TIBStringField;
    qryConsultaDTCELEBRACAO: TDateTimeField;
    qryConsultaLOCALCELEBRACAO: TIBStringField;
    qryConsultaTESTEMUNHA: TIBStringField;
    qryConsultaTESTEMUNHA1: TIBStringField;
    qryConsultaTESTEMUNHA2: TIBStringField;
    qryConsultaOBSERVACAO: TIBStringField;
    qryConsultaCODIGONOIVO: TIntegerField;
    qryConsultaNOMENOIVO: TIBStringField;
    qryConsultaDTNASCNOIVO: TDateField;
    qryConsultaNATURALIDADENOIVO: TIBStringField;
    qryConsultaNATURALIDADE_UF_NOIVO: TIBStringField;
    qryConsultaENDNOIVO: TIBStringField;
    qryConsultaCIADADENOIVO: TIBStringField;
    qryConsultaMAENOIVO: TIBStringField;
    qryConsultaPAINOIVO: TIBStringField;
    qryConsultaCODIGONOIVA: TIntegerField;
    qryConsultaNOMENOIVA: TIBStringField;
    qryConsultaDTNASCNOIVA: TDateField;
    qryConsultaNATURALIDADENOIVA: TIBStringField;
    qryConsultaNATURALIDADE_UF_NOIVA: TIBStringField;
    qryConsultaENDNOIVA: TIBStringField;
    qryConsultaCIADADENOIVA: TIBStringField;
    qryConsultaMAENOIVA: TIBStringField;
    qryConsultaPAINOIVA: TIBStringField;
    qryConsultaUF_END_NOIVA: TIBStringField;
    qryConsultaUF_END_NOIVO: TIBStringField;
    qryConsultaDTALTERACAO: TDateTimeField;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
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
  fRelMatrimonio: TfRelMatrimonio;

implementation

uses  uPrincipal, uDM1, Sistools;

{$R *.dfm}

procedure TfRelMatrimonio.rgPesquisarClick(Sender: TObject);
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
       EdtDtInicio.Clear;
       EdtDtFinal.Clear;
       
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
       EdtDtInicio.Clear;
       
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
       EdtDtInicio.Clear;
       
     end;
   end;
end;

procedure TfRelMatrimonio.btImprimirClick(Sender: TObject);
var
val1,val2,StrSql:String;
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;


  If rgPesquisar.ItemIndex=0 then
    begin
      ppLabel5.Caption:='LISTAGEM DE TODOS OS MATRIMÔNIOS';
      StrSql:='SELECT * FROM MATRIMONIO ';
      StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39+' ORDER BY NOMENOIVO ';
      qryConsulta.Close;
      qryConsulta.SQL.Clear;
      qryConsulta.SQL.Add(StrSql);
      qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelMatrimonio.PrintReport;
        end
        else
        begin
          Application.MessageBox('Não exixtem irformações para gerar o relatório!','SoftLiveSistemas',MB_OK+MB_ICONINFORMATION);
        end

    end;



  If rgPesquisar.ItemIndex=1 then
    begin
      ppLabel5.Caption:='LISTAGEM DE MATRIMÕNIOS NO PERIODO DE:'+EdtDtInicio.Text+' a '+EdtDtFinal.Text;
      If (EdtDtInicio.Text = '  /  /    ') Or (EdtDtFinal.Text = '  /  /    ') Then Begin
        Application.MessageBox('Favor informar o período inicial e final !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
      End ;

        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM MATRIMONIO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND DTCADASTRO>='+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val1)) +#39;
        StrSql:=StrSql +' AND DTCADASTRO<= '+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val2)) +#39;
        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelMatrimonio.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
        end

    end;


  If rgPesquisar.ItemIndex=2 then
    Begin
      ppLabel5.Caption:='LISTAGEM MATRIMÔNIOS PARA O DIA DA CELEBRAÇÃO:'+EdtDtInicio.Text;
      If (EdtDtInicio.Text = '  /  /    ')  Then
       Begin
        Application.MessageBox('Favor informar a Data da Celebração !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
       End ;
        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM MATRIMONIO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND DTCELEBRACAO='+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val1)) +#39;
        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelMatrimonio.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
          EdtDtInicio.Clear;
        end
    end;

    If rgPesquisar.ItemIndex=3 then
    Begin
      ppLabel5.Caption:='LISTAGEM MATRIMÔNIOS:';
      If (EdtDtInicio.Text ='')  Then
       Begin
        Application.MessageBox('Favor informar o Livro !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
       End ;
        
        Val1:=EdtDtInicio.Text;
        StrSql:='SELECT * FROM MATRIMONIO ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND LIVRO='+ #39 +val1+#39+'ORDER BY LIVRO ';

        qryConsulta.Close;
        qryConsulta.SQL.Clear;
        qryConsulta.SQL.Add(StrSql);
        qryConsulta.Open;
      If not qryConsulta.IsEmpty then
        begin
          ppRepRelMatrimonio.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
          EdtDtInicio.Clear;
          EdtDtInicio.SetFocus;
        end
    end


end;

procedure TfRelMatrimonio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryConsulta.Close;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
end;

procedure TfRelMatrimonio.btSairClick(Sender: TObject);
begin
  fRelMatrimonio.Close;
end;

procedure TfRelMatrimonio.ppHeaderBand1BeforePrint(Sender: TObject);
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


procedure TfRelMatrimonio.EdtDtInicioExit(Sender: TObject);
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

procedure TfRelMatrimonio.EdtDtFinalExit(Sender: TObject);
Var
 StrMenssagem,StrMenssagem1:String;
begin
 { StrMenssagem  :=EdtDtFinal.Text;
  StrMenssagem1 :='Formato de data não é valido!';


  Try
    StrToDate(EdtDtFinal.Text);
  except
    application.MessageBox(Pchar(StrMenssagem+StrMenssagem1),'Atenção',MB_OK+MB_ICONINFORMATION);
    btImprimir.SetFocus;
    exit;

  end; }

end;

procedure TfRelMatrimonio.FormCreate(Sender: TObject);
begin
  fRelMatrimonio.Height     :=267;
  lbDtInicial.Visible    :=False;
  lbDtFinal.Visible      :=False;
  EdtDtInicio.Visible    :=False;
  EdtDtFinal.Visible     :=False;
  btImprimir.Top         :=189;
  btSair.Top             :=189;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
  rgPesquisar.ItemIndex  :=0;
 
end;

procedure TfRelMatrimonio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Shift = []) and (Key = VK_F8 ) then
    Begin
    if btImprimir.Enabled then
      btImprimir.OnClick(Self); ;
    End
end;

procedure TfRelMatrimonio.btImprimirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Imprimir relação de Matrimônios';
  HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfRelMatrimonio.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair da Relação de Matrimônios';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfRelMatrimonio.FormActivate(Sender: TObject);
begin
  fRelMatrimonio.Height     :=267;
  lbDtInicial.Visible    :=False;
  lbDtFinal.Visible      :=False;
  EdtDtInicio.Visible    :=False;
  EdtDtFinal.Visible     :=False;
  btImprimir.Top         :=189;
  btSair.Top             :=189;
  EdtDtInicio.Clear;
  EdtDtFinal.Clear;
  rgPesquisar.ItemIndex  :=0;
  
end;

end.
