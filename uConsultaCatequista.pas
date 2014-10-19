unit uConsultaCatequista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, DynamicSkinForm, StdCtrls, Mask, SkinBoxCtrls,
  SkinGrids, spDBGrids, DB, IBCustomDataSet, IBQuery;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaCatequista = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    label101: TspSkinLabel;
    IbConsultaCatequista: TIBQuery;
    DsConsultaCatequese: TDataSource;
    IbConsultaCatequistaCODIGO: TIntegerField;
    IbConsultaCatequistaNOME: TIBStringField;
    procedure btPesquisarClick(Sender: TObject);
    procedure RefazerSQL;
    procedure btNovoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgPesquisarClick(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure dbGrid1DblClick(Sender: TObject);
    procedure dbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaCatequista: TfConsultaCatequista;

implementation

uses uCatequista, Sistools, uDMDados, uPrincipal;

{$R *.dfm}

procedure TfConsultaCatequista.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaCatequista.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaCatequista.btSairClick(Sender: TObject);
begin
 fConsultaCatequista.Close;
end;

procedure TfConsultaCatequista.btCadastrarClick(Sender: TObject);
begin
  fConsultaCatequista.Enabled := False;
  fCatequista.Enabled:= True ;
  fCatequista.xOrigemConsulta := True;
  fCatequista.Show;
end;

procedure TfConsultaCatequista.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  IBConsultaCatequista.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaCatequista.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  edtPesquisar.Text := '';
end;

procedure TfConsultaCatequista.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (Key = VK_F2 ) then
    Begin
      if btNovo.Enabled then
        btNovo.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
        btSair.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_F3  ) then
    Begin
      if btCadastrar.Enabled then
        btCadastrar.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_RETURN ) then
    Begin
      //if btPesquisar.Enabled then
      //  btPesquisar.OnClick(Self);
    End;
end;

procedure TfConsultaCatequista.FormShow(Sender: TObject);
begin
  edtPesquisar.SetFocus;
end;
procedure TfConsultaCatequista.RefazerSQL;
begin

  IBConsultaCatequista .Close;
  IBConsultaCatequista .SQL.Clear;
  IBConsultaCatequista .SQL.Add('SELECT CODIGO,NOME FROM CATEQUISTA ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCatequista.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaCatequista .SQL.Add(' WHERE NOME   LIKE :PNOME');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCatequista.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaCatequista.SQL.Add(' ORDER BY NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaCatequista.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaCatequista.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaCatequista.Open;
  if not IBConsultaCatequista.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaCatequista.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaCatequista.dbGrid1Exit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfConsultaCatequista.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
     Begin
       if (IBConsultaCatequista.Active) And (IBConsultaCatequista.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaCatequista.FieldByName('CODIGO').AsInteger;
          fConsultaCatequista.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaCatequista.rgPesquisarClick(Sender: TObject);
begin
  case rgPesquisar.ItemIndex of
    0:
      begin

         edtPesquisar.Width := 50;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Código';
      end;
    1:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome';
      end;


  end;
end;

procedure TfConsultaCatequista.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaCatequista.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaCatequista.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;
end;

procedure TfConsultaCatequista.dbGrid1DblClick(Sender: TObject);
begin
  if (IbConsultaCatequista.Active) And (IbConsultaCatequista.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IbConsultaCatequista.FieldByName('CODIGO').AsInteger;
      fConsultaCatequista.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaCatequista.dbGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TspColumn;
  State: TGridDrawState);
begin
   If (TAuxDbGrid(dbGrid1).DataLink.ActiveRecord + 1 = TAuxDbGrid(dbGrid1).Row) or (GdSelected in State) then
   Begin
      dbGrid1.Canvas.Brush.Color  := clSkyBlue;
      dbGrid1.Canvas.Font.Style   := dbGrid1.Canvas.Font.Style + [fsItalic];
      dbGrid1.Canvas.Font.Color   :=clBlue;
   End;
   dbGrid1.Canvas.FillRect(Rect);
   dbGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
end;

end.
