unit uConsultaUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaUsuarios = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaUsuarios: TIBQuery;
    IBConsultaUsuariosCODIGO: TIntegerField;
    IBConsultaUsuariosNOME: TIBStringField;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    IBConsultaUsuariosDPTO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefazerSQL;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure rgPesquisarClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
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
  fConsultaUsuarios: TfConsultaUsuarios;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools, uUsuarios;

{$R *.dfm}

procedure TfConsultaUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaUsuarios.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaUsuarios.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
end;

procedure TfConsultaUsuarios.FormKeyDown(Sender: TObject;
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

procedure TfConsultaUsuarios.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
end;
procedure TfConsultaUsuarios.RefazerSQL;
begin

  IBConsultaUsuarios .Close;
  IBConsultaUsuarios .SQL.Clear;
  IBConsultaUsuarios .SQL.Add('SELECT CODIGO,NOME,DPTO FROM USUARIOS ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaUsuarios.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaUsuarios.SQL.Add(' WHERE NOME   LIKE :PNOME');
    2 : IBConsultaUsuarios.SQL.Add(' WHERE DPTO   LIKE :DPTO');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaUsuarios.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaUsuarios.SQL.Add(' ORDER BY NOME');
    2 : IBConsultaUsuarios.SQL.Add(' ORDER BY DPTO');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaUsuarios.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaUsuarios.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%';
    2 :IBConsultaUsuarios.ParamByName('DPTO').Asstring   := '%' + edtPesquisar.Text +'%';
  end;

  IBConsultaUsuarios.Open;
  if not IBConsultaUsuarios.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaUsuarios.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaUsuarios.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaUsuarios.btSairClick(Sender: TObject);
begin
  fConsultaUsuarios.Close;
end;

procedure TfConsultaUsuarios.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaUsuarios.Active) And (IBConsultaUsuarios.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaUsuarios.FieldByName('CODIGO').AsInteger;
          fConsultaUsuarios.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaUsuarios.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaUsuarios.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaUsuarios.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfConsultaUsuarios.rgPesquisarClick(Sender: TObject);
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
    2:
      begin

         edtPesquisar.Width := 120;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Departamento';
      end;

  end;
end;

procedure TfConsultaUsuarios.btCadastrarClick(Sender: TObject);
begin
  fConsultaUsuarios.Enabled := False;
  fUsuarios.Enabled:= True ;
  fUsuarios.xOrigemConsulta := True;
  fUsuarios.Show;

end;

procedure TfConsultaUsuarios.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaUsuarios.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaUsuarios.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaUsuarios.Active) And (IBConsultaUsuarios.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaUsuarios.FieldByName('CODIGO').AsInteger;
      fConsultaUsuarios.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaUsuarios.dbGrid1DrawColumnCell(Sender: TObject;
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
