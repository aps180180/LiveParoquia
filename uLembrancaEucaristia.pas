unit uLembrancaEucaristia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls, ppBands,
  ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, HintBalloon, DB, DynamicSkinForm;

type
  TfLembrancaEucaristia = class(TForm)
    GroupBox1: TspSkinGroupBox;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsLembEucaristia: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppRepCatequisando: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel27: TppLabel;
    ppLine2: TppLine;
    ppLabel29: TppLabel;
    ppImage2: TppImage;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    label101: TspSkinLabel;
    procedure dbeCodEucaristiaButtonClick(Sender: TObject);
    procedure dbeCodEucaristiaEnter(Sender: TObject);
    procedure dbeCodEucaristiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLembrancaEucaristia: TfLembrancaEucaristia;

implementation

uses uPrincipal, uDM1, uEucaristico, Sistools;

{$R *.dfm}

procedure TfLembrancaEucaristia.dbeCodEucaristiaButtonClick(
  Sender: TObject);
begin
  if (fPrincipal.vEucaristiaUsarTelaCadastro)  then
     begin
       //xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       //xBuscar := True;
       //fConsultaEucaristia.fRetorno := fEucaristico   ;
       //fEucaristico.Enabled := False;
       //fConsultaEucaristia.Show;

     end;
end;

procedure TfLembrancaEucaristia.dbeCodEucaristiaEnter(Sender: TObject);
begin
  if fPrincipal.vEucaristiaUsarTelaCadastro then
    label101.Caption := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfLembrancaEucaristia.dbeCodEucaristiaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (fPrincipal.vEucaristiaUsarTelaCadastro) And( (Shift = []) and (key = VK_F10)) then
     begin
       key := 0;
       //xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       //xBuscar := True;
       //fConsultaEucaristico.fRetorno := fEucaristico   ;
       fEucaristico.Enabled := False;
       //fConsultaEucaristico.Show;

     end;
end;

procedure TfLembrancaEucaristia.FormShow(Sender: TObject);
begin
  DM1.TEucaristico.Close;
  AbreTabela(DM1.TEucaristico ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('EUCARISTICO','Codigo','Paroquia',DM1.mParoquia));
  
end;

procedure TfLembrancaEucaristia.btImprimirClick(Sender: TObject);
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel30.Caption := RetornaTabela(DM1.TMinistrosPadres,'I','pParoquia',DM1.TEucaristicoPAROQUIA.AsString,'I','pCodigo',DM1.TEucaristicoPADRE.AsString,'','','','','','','NOME');
  ppRepCatequisando.PrintReport;
end;

end.
