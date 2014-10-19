unit uPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, spdbctrls, IBCustomDataSet, IBQuery, SkinCtrls,
  DynamicSkinForm, SkinGrids, spDBGrids;

type
  TfPermissoes = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinLabel1: TspSkinLabel;
    ibUsuarios: TIBQuery;
    Look1: TspSkinDBLookupComboBox;
    dsUsuarios: TDataSource;
    spSkinDBGrid1: TspSkinDBGrid;
    dsPermissoes: TDataSource;
    btSair: TspSkinButton;
    ibUsuariosCODIGO: TIntegerField;
    ibUsuariosNOME: TIBStringField;
    procedure Look1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure spSkinDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure spSkinDBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TspColumn;
      State: TGridDrawState);
    procedure spSkinDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
  fPermissoes: TfPermissoes;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados;

{$R *.dfm}

procedure TfPermissoes.Look1Exit(Sender: TObject);
begin
  DM1.TPermissao.Close;
  DM1.TPermissao.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  DM1.TPermissao.ParamByName('pUSUARIO').AsInteger := Look1.KeyValue;
  DM1.TPermissao.Open;
end;

procedure TfPermissoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ibUsuarios.Close;
  DM1.TPermissao.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;

end;

procedure TfPermissoes.FormCreate(Sender: TObject);
begin
  ibUsuarios.Close;
  ibUsuarios.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  ibUsuarios.Open;
  Look1.KeyValue := DM1.mUsuario  ;
end;

procedure TfPermissoes.btSairClick(Sender: TObject);
begin
  fPermissoes.Close
end;

procedure TfPermissoes.spSkinDBGrid1KeyPress(Sender: TObject;  var Key: Char);
begin
  if (spSkinDBGrid1.SelectedField.Name  ='TPermissaoINCLUSAO') OR (spSkinDBGrid1.SelectedField.Name  ='TPermissaoEXCLUSAO' )
    OR (spSkinDBGrid1.SelectedField.Name ='TPermissaoALTERACAO' )OR (spSkinDBGrid1.SelectedField.Name ='TPermissaoVISUALIZAR' )
    OR (spSkinDBGrid1.SelectedField.Name ='TPermissaoIMPRESSAO' ) then
      Begin
        if( AnsiUpperCase(Key) <> 'S') And (AnsiUpperCase(Key) <> 'N')  THEN
          Key := #0
        else
          Key := UpCase (Key);

      End;

end;

procedure TfPermissoes.spSkinDBGrid1DrawColumnCell(Sender: TObject;  const Rect: TRect; DataCol: Integer; Column: TspColumn;  State: TGridDrawState);
begin
  if (Column.Field.FieldName = 'VISUALIZAR')OR (Column.Field.FieldName = 'EXCLUSAO')
      OR (Column.Field.FieldName = 'ALTERACAO') OR (Column.Field.FieldName = 'INCLUSAO')
      OR (Column.Field.FieldName = 'IMPRESSAO') then
      begin
         if Column.Field.AsString ='S' then
            begin
               spSkinDBGrid1.Canvas.Font.Color:= clGreen;
               spSkinDBGrid1.Canvas.FillRect(Rect);
               spSkinDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            end
         else if Column.Field.AsString ='N' then
             begin
               spSkinDBGrid1.Canvas.Font.Color:= clRed ;
               spSkinDBGrid1.Canvas.FillRect(Rect);
               spSkinDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
             end;
      end;

end;

procedure TfPermissoes.spSkinDBGrid1KeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) Then
    KEY := 0;


end;

end.
