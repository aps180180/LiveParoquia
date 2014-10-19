unit uConsultaCrismandos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaCrismandos = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaCrismandos: TIBQuery;
    IBConsultaCrismandosCODIGO: TIntegerField;
    IBConsultaCrismandosNOME: TIBStringField;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
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
  fConsultaCrismandos: TfConsultaCrismandos;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools, uCrismandos;

{$R *.dfm}

procedure TfConsultaCrismandos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaCrismandos.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaCrismandos.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
end;

procedure TfConsultaCrismandos.FormKeyDown(Sender: TObject;
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

procedure TfConsultaCrismandos.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
end;
procedure TfConsultaCrismandos.RefazerSQL;
begin

  IBConsultaCrismandos.Close;
  IBConsultaCrismandos.SQL.Clear;
  IBConsultaCrismandos.SQL.Add('SELECT CODIGO,NOME FROM CRISMANDOS ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCrismandos.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaCrismandos.SQL.Add(' WHERE NOME   LIKE :PNOME');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCrismandos.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaCrismandos.SQL.Add(' ORDER BY NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaCrismandos.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaCrismandos.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaCrismandos.Open;
  if not IBConsultaCrismandos.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaCrismandos.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaCrismandos.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaCrismandos.btSairClick(Sender: TObject);
begin
  fConsultaCrismandos.Close;
end;

procedure TfConsultaCrismandos.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaCrismandos.Active) And (IBConsultaCrismandos.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaCrismandos.FieldByName('CODIGO').AsInteger;
          fConsultaCrismandos.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaCrismandos.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaCrismandos.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaCrismandos.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfConsultaCrismandos.rgPesquisarClick(Sender: TObject);
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

procedure TfConsultaCrismandos.btCadastrarClick(Sender: TObject);
begin
  fConsultaCrismandos.Enabled := False;
  fCrismandos.Enabled:= True ;
  fCrismandos.xOrigemConsulta := True;
  fCrismandos.Show;

end;

procedure TfConsultaCrismandos.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaCrismandos.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaCrismandos.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaCrismandos.Active) And (IBConsultaCrismandos.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaCrismandos.FieldByName('CODIGO').AsInteger;
      fConsultaCrismandos.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaCrismandos.dbGrid1DrawColumnCell(Sender: TObject;
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
