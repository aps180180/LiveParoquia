unit uCertidaoNegBatismo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls, ppParameter,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, HintBalloon, DynamicSkinForm, ComCtrls,
  spcalendar, ppArchiv, ppEndUsr, ppFormWrapper, ppRptExp, DB, ExtCtrls,
  ppViewr, ppStrtch, ppRegion;

type
  TfCertidaoNegBatismo = class(TForm)
    GroupBox1: TspSkinGroupBox;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    spSkinLabel2: TspSkinLabel;
    EdtFiel: TspSkinEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel3: TspSkinLabel;
    EdtPai: TspSkinEdit;
    spSkinLabel4: TspSkinLabel;
    EdtMae: TspSkinEdit;
    spSkinLabel5: TspSkinLabel;
    EdtPadrinho: TspSkinEdit;
    spSkinLabel6: TspSkinLabel;
    EdtMadrinha: TspSkinEdit;
    DtEdtNasc: TspSkinDateEdit;
    ppDBPipeline1: TppDBPipeline;
    ppRepMatrimonio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel27: TppLabel;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel22: TppLabel;
    ppLbEmail: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel29: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    DsCertidao: TDataSource;
    ppParameterList1: TppParameterList;
    spSkinLabel13: TspSkinLabel;
    spSkinGroupBox1: TspSkinGroupBox;
    lbDtInicial: TspSkinLabel;
    DtEdtInicio: TspSkinDateEdit;
    spSkinLabel7: TspSkinLabel;
    DtEdtFinal: TspSkinDateEdit;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppLbFiel: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLbDtNasc: TppLabel;
    ppLabel10: TppLabel;
    ppLbPai: TppLabel;
    ppLabel11: TppLabel;
    ppLbMae: TppLabel;
    ppLabel12: TppLabel;
    ppLbMadrinha: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLbPadrinho: TppLabel;
    MemoObs: TspSkinMemo;
    ppLbPeriodo: TppLabel;
    ppLabel15: TppLabel;
    ppLbObs: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MemoObsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xAcao : String;
  end;

var
  fCertidaoNegBatismo: TfCertidaoNegBatismo;

implementation

uses uDM1, Sistools, uPrincipal;

{$R *.dfm}

procedure TfCertidaoNegBatismo.btSairClick(Sender: TObject);
begin
   
   fCertidaoNegBatismo.Close;
end;

procedure TfCertidaoNegBatismo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end;
   xOrigemConsulta := False;
end;

procedure TfCertidaoNegBatismo.FormCreate(Sender: TObject);
begin
   EdtFiel.Clear;
   EdtPai.Clear;
   EdtMae.Clear;
   EdtMadrinha.Clear;
   EdtPadrinho.Clear;
   MemoObs.Clear;
end;

procedure TfCertidaoNegBatismo.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Iprimir Certidão Negativa';
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfCertidaoNegBatismo.btImprimirClick(Sender: TObject);
begin
   If (EdtFiel.Text='') then
      Begin
         Application.MessageBox('Informe o Fiel!','Atenção',MB_OK + MB_ICONINFORMATION);
         EdtFiel.SetFocus;
         Exit;
      End;



   ppRepMatrimonio.Print;
end;

procedure TfCertidaoNegBatismo.ppHeaderBand1BeforePrint(Sender: TObject);
var
   zDia,zMes,zAno     :  string;
   zDtInicio,zDtFinal :  String;
begin
   {Define se usa as imagens q estao na pasta imagens}
   If fPrincipal.vImagensUsarCaminho Then
      Begin
      if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP') then
         Begin
            ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
            ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
         End;
      End;
   ppLbFiel.Caption      :=EdtFiel.Text;
   ppLbPai.Caption       :=EdtPai.Text;
   ppLbMae.Caption       :=EdtMae.Text;
   ppLbMadrinha.Caption  :=EdtMadrinha.Text;
   ppLbPadrinho.Caption  :=EdtPadrinho.Text;
   ppLbObs.Caption       :=MemoObs.Text;
      

   zDtInicio:= FormatDateTime('dd',StrToDateTime(DtEdtInicio.Text));

   zDia := FormatDateTime('dd',DtEdtNasc.Date);
   zMes := FormatDateTime('mmmm',DtEdtNasc.Date);
   zAno := FormatDateTime('yyyy',DtEdtNasc.Date);
   zMes := AnsiUpperCase(zMes);
   ppLbDtNasc.Caption :=' '+ zDia + ' de ' + zMes + ' de ' + zAno;

   zDia := FormatDateTime('dd',DtEdtInicio.Date);
   zMes := FormatDateTime('mmmm',DtEdtInicio.Date);
   zAno := FormatDateTime('yyyy',DtEdtInicio.Date);
   zMes := AnsiUpperCase(zMes);
   zDtInicio := ' ' + ' De ' + zDia + ' de ' + zMes + ' de ' + zAno;
   zDia := FormatDateTime('dd',DtEdtFinal.Date);
   zMes := FormatDateTime('mmmm',DtEdtFinal.Date);
   zAno := FormatDateTime('yyyy',DtEdtFinal.Date);
   zMes := AnsiUpperCase(zMes);
   zDtFinal :=  zDia + ' de ' + zMes + ' de ' + zAno;
   ppLbPeriodo.Caption := zDtInicio + ' até ' + zDtFinal;

   zDia := FormatDateTime('dd',Date);
   zMes := FormatDateTime('mmmm',Date);
   zAno := FormatDateTime('yyyy',Date);
   zMes := AnsiUpperCase(zMes);


   ppLabel1.Caption    := DM1.mNomeArquidiocese;
   ppLabel2.Caption    := DM1.mNomeParoquia ;
   ppLabel3.Caption    := DM1.mEndereco + '  ' + DM1.mBairro;
   ppLabel4.Caption    := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone;
   ppLabel27.Caption   := DM1.mCidade + ' /' + DM1.mEstado+ ' , ' + zDia + ' DE '  + zMes + ' DE ' + zAno;
   //ppLbPeriodo.Caption :=
   {Define se imprime o e-mail da paroquia nas certidoes,implementado dia 21-8-10}
   If not fPrincipal.vCertidaoUsarEmail then
      Begin
         ppLbEmail.Caption:='';
      End
      else
      Begin
         ppLbEmail.Caption:=DM1.mParoquiaEmail;
      End
end;

procedure TfCertidaoNegBatismo.FormShow(Sender: TObject);
begin
   DM1.TBatisterio.Close;
   AbreTabela(DM1.TBatisterio ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('BATISTERIO','Codigo','Paroquia',DM1.mParoquia));
   EdtFiel.SetFocus;
end;

procedure TfCertidaoNegBatismo.MemoObsKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key:=UpCase(Key);
end;

end.
