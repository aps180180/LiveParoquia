unit ULog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HintBalloon, DynamicSkinForm, SkinCtrls, SkinGrids, spDBGrids,
  DB, IBCustomDataSet, IBQuery, StdCtrls, Mask, SkinBoxCtrls, jpeg,
  ExtCtrls, ppParameter, ppModule, raCodMod, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe;

type
  TfLog = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    qryConsultaLog: TIBQuery;
    dsConsultaLog: TDataSource;
    qryConsultaLogFORMULARIO: TIBStringField;
    qryConsultaLogACAO: TIBStringField;
    qryConsultaLogDATA: TDateTimeField;
    qryConsultaLogUSUARIONOME: TIBStringField;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    spSkinPanel1: TspSkinPanel;
    Image1: TImage;
    lbDtInicial: TspSkinLabel;
    lbDtFinal: TspSkinLabel;
    EdtDtInicio: TspSkinMaskEdit;
    EdtDtFinal: TspSkinMaskEdit;
    ppDBPipeline1: TppDBPipeline;
    ppRepLog: TppReport;
    ppParameterList1: TppParameterList;
    qryConsultaLogID: TIntegerField;
    qryConsultaLogUSUARIO: TIntegerField;
    qryConsultaLogCOMPUTADOR: TIBStringField;
    qryConsultaLogPAROQUIA: TIntegerField;
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
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTextNome: TppDBText;
    ppDBTextDtHr: TppDBText;
    ppDBTextAcao: TppDBText;
    ppDBText1: TppDBText;
    ppLine5: TppLine;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    raCodeModule1: TraCodeModule;
    procedure FormActivate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLog: TfLog;

implementation

uses uDM1, uPrincipal;

{$R *.dfm}

procedure TfLog.FormActivate(Sender: TObject);
begin
  qryConsultaLog.Close;
  qryConsultaLog.SQL.Clear;
  qryConsultaLog.SQL.Add('SELECT * FROM LOG');
  qryConsultaLog.Open;
  EdtDtInicio.SetFocus;
end;

procedure TfLog.btImprimirClick(Sender: TObject);
var
val1,val2,StrSql:String;
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;


      If (EdtDtInicio.Text = '  /  /    ') Or (EdtDtFinal.Text = '  /  /    ') Then Begin
        Application.MessageBox('Favor informar o período inicial e final !','Atenção',MB_OK+MB_ICONINFORMATION);
        EdtDtInicio.SetFocus ;
        Exit ;
      End ;

        Val1:=EdtDtInicio.Text;
        Val2:=EdtDtFinal.Text;
        StrSql:='SELECT * FROM LOG ';
        StrSql:=StrSql +'WHERE PAROQUIA='+#39+ IntToStr(Dm1.mParoquia)+#39;
        StrSql:=StrSql +' AND DATA>='+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val1)) +#39;
        StrSql:=StrSql +' AND DATA <= '+ #39 + FormatDateTime('dd.mm.yyyy',StrToDateTime(val2)) +#39;
        qryConsultaLog.Close;
        qryConsultaLog.SQL.Clear;
        qryConsultaLog.SQL.Add(StrSql);
        qryConsultaLog.Open;
      If qryConsultaLog.Locate('DATA',qryConsultaLogData.AsDateTime,[]) then
        begin
          ppRepLog.PrintReport;
        end
        else
        begin
          application.MessageBox('Não existem informações para gerar o relatório!','SoftLiveSistema',MB_OK+MB_ICONINFORMATION);
        end

    end;


 

procedure TfLog.btSairClick(Sender: TObject);
begin
  fLog.Close;
end;

procedure TfLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (Shift = []) and (Key = VK_F8 ) then
    Begin
    if btImprimir.Enabled then
      btImprimir.OnClick(Self); ;
    End
end;

end.
