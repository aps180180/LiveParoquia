unit uGraficoDizimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, SkinBoxCtrls, SkinCtrls, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, TeeProcs, TeEngine, Chart, Series, DynamicSkinForm;

type
  TfGraficoDizimo = class(TForm)
    MskMes: TspSkinMaskEdit;
    Label1: TLabel;
    btImprimir: TspSkinButton;
    btSair: TspSkinButton;
    QryDizimo: TIBQuery;
    ChtGrafico: TChart;
    spDynamicSkinForm1: TspDynamicSkinForm;
    Series1: TBarSeries;
    Dizimo: TBarSeries;
    QryDizimoPAROQUIA: TIntegerField;
    QryDizimoCODIGO: TIntegerField;
    QryDizimoMES: TIBStringField;
    QryDizimoDIZIMISTA: TIntegerField;
    QryDizimoDATA: TDateField;
    QryDizimoVALOR: TIBBCDField;
    QryDizimoPERIODO: TIBStringField;
    QryDizimoANO: TIBStringField;
    QryDizimoORIGEM: TIntegerField;
    QryDizimoTOTPERIODO: TIBBCDField;
    QryDizimoCAMPANHA: TIBStringField;
    boxComunidade: TspSkinCheckRadioBox;
    spSkinLabel12: TspSkinLabel;
    dbeComunidade: TspSkinEdit;
    Edit1: TspSkinEdit;
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGraficoDizimo: TfGraficoDizimo;

implementation

uses uDM1;

{$R *.dfm}

procedure TfGraficoDizimo.btImprimirClick(Sender: TObject);
Var
   StrDias,StrInicio,StrFim,StrComandoSql,StrData : String;
   intMes,intAno : Integer;
   DtData : TDateTime;
   
   DblValorTotal : Double;
begin
   intMes := StrToInt(Copy(MskMes.Text,1,2));
   intAno := StrToInt(Copy(MskMes.Text,4,4));
   Case intMes of
      1,3,5,7,8,10,12 : StrDias := '31';
      4,6,9,11 : StrDias := '30';
      2: if (intAno mod 4) = 0 then
        StrDias := '29'
        else
          StrDias := '28';
   End;
   StrInicio := Copy(MskMes.Text,1,2)+'/01/'+Copy(MskMes.Text,4,4);
   //StrFim    := Copy(MskMes.Text,1,2)+'/'+StrDias+'/'+copy(MskMes.Text,4,4);
   StrFim := copy(MskMes.Text,4,4);
   StrComandoSql:='SELECT * FROM DIZIMO WHERE DIZIMO.PAROQUIA=:PPAROQUIA ';
   StrComandoSql:=StrComandoSql+' AND DIZIMO.ANO=2010';
   QryDizimo.Close;
   QryDizimo.SQL.Clear;
   QryDizimo.SQL.Add(StrComandoSql);
   //QryDizimo.ParamByName('PANO').AsString := Copy(MskMes.Text,4,4);
   QryDizimo.Prepare;
   QryDizimo.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
   QryDizimo.Open;
   QryDizimo.First;

   Dizimo.Clear;
   ChtGrafico.Title.Text.Clear;
   ChtGrafico.Title.Text.Add('DIZIMOS DO MES');
   ChtGrafico.Title.Text.Add(MskMes.Text);
   While (not QryDizimo.Eof) do
   begin
     DtData :=  StrToDateTime(QryDizimoANO.AsString);
     StrData:= DateToStr(DtData);
     DblValorTotal:=0;
     While QryDizimoANO.AsDateTime = DtData do
     begin
        DblValorTotal := DblValorTotal + QryDizimoVALOR.AsFloat;
        QryDizimo.Next;
        if QryDizimo.Eof then
           Break;
     end;
     DblValorTotal := DblValorTotal/1000;
     Dizimo.AddY(DblValorTotal,copy(StrData,1,2),clYellow);
  end;
  QryDizimo.Close;

end;

end.
