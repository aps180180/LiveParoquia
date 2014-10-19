unit uConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, spdbctrls, IBCustomDataSet, IBQuery, SkinCtrls,
  DynamicSkinForm, SkinGrids, spDBGrids;

type
  TfConfig = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinLabel1: TspSkinLabel;
    ibModulos: TIBQuery;
    ibModulosCODIGO: TIntegerField;
    ibModulosNOME: TIBStringField;
    Look1: TspSkinDBLookupComboBox;
    dsModulos: TDataSource;
    spSkinDBGrid1: TspSkinDBGrid;
    dsConfig: TDataSource;
    btSair: TspSkinButton;
    procedure Look1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure spSkinDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fConfig: TfConfig;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados;

{$R *.dfm}

procedure TfConfig.Look1Exit(Sender: TObject);
begin
  DM1.TConfig.Close;
  DM1.TConfig.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  DM1.TConfig.ParamByName('pMODULO').AsInteger := Look1.KeyValue;
  DM1.TConfig.Open;
end;

procedure TfConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ibModulos.Close;
  DM1.TConfig.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;

end;

procedure TfConfig.FormCreate(Sender: TObject);
begin
  ibModulos.Open;
  Look1.KeyValue := 1;
end;

procedure TfConfig.btSairClick(Sender: TObject);
begin
  fConfig.Close
end;

procedure TfConfig.spSkinDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key:=UpCase(Key);//Não deixa as letras minusculas no Grid
end;

end.
