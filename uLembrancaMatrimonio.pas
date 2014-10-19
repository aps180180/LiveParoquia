unit uLembrancaMatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, HintBalloon, DB, DynamicSkinForm,
  SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls, ppStrtch, ppSubRpt,
  IBCustomDataSet, IBQuery;

type
  TfLembrancaMatrimonio = class(TForm)
    GroupBox1: TspSkinGroupBox;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsLembMatrimonio: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
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
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    spSkinLabel31: TspSkinLabel;
    DbeNomeNoivo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DbeNomeNoiva: TspSkinDBEdit;
    label101: TspSkinLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    IBQuery1: TIBQuery;
    ppDBPipeline2: TppDBPipeline;
    IBQuery1PAROQUIA: TIntegerField;
    IBQuery1CODIGO: TIntegerField;
    IBQuery1NOME: TIBStringField;
    IBQuery1DATACELEBRACAO: TDateField;
    IBQuery1HORACELEBRACAO: TDateTimeField;
    IBQuery1TIPOINTENCAO: TIntegerField;
    IBQuery1CELEBRANTE: TIBStringField;
    IBQuery1OBSERVACAO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
  end;

var
  fLembrancaMatrimonio: TfLembrancaMatrimonio;

implementation

uses uDM1, Sistools, uDMDados, uConsultaMatrimonio, uPrincipal;

{$R *.dfm}

procedure TfLembrancaMatrimonio.FormShow(Sender: TObject);
begin
   DM1.TMatrimonio.Close;
   AbreTabela(DM1.TMatrimonio ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('MATRIMONIO','Codigo','Paroquia',DM1.mParoquia));
   Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfLembrancaMatrimonio.FormCreate(Sender: TObject);
begin
   HabilitaForm(fLembrancaMatrimonio, False);
   dmDados.mTabela :='MATRIMONIO';
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   Entrando := True;
   xBuscar  := False
end;

procedure TfLembrancaMatrimonio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.TMatrimonio.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
      //fConsultaArquidiocese.Enabled := True;
      //fConsultaArquidiocese.RefazerSQL;
      //fConsultaArquidiocese.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfLembrancaMatrimonio.FormActivate(Sender: TObject);
begin
   if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TMatrimonio,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfLembrancaMatrimonio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
        btSair.OnClick(Self);
    End
  else If (Shift = []) and (Key = VK_F7 ) then
    Begin
      xBuscar := True;
      fLembrancaMatrimonio.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaMatrimonio.fRetorno := fLembrancaMatrimonio ;
      fConsultaMatrimonio.Show;

    End;

end;

procedure TfLembrancaMatrimonio.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

end.
