unit uConsultaBatizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaBatizados = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    DsConsultaBatizados: TDataSource;
    IbConsultaBatizados: TIBQuery;
    IbConsultaBatizadosCODIGO: TIntegerField;
    IbConsultaBatizadosNOME: TIBStringField;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    label101: TspSkinLabel;
    btPesquisar: TspSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure rgPesquisarClick(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisarClick(Sender: TObject);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure RefazerSql;
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  fConsultaBatizados: TfConsultaBatizados;

implementation

uses uBatizados, Sistools, uDMDados, uPrincipal;

{$R *.dfm}

procedure TfConsultaBatizados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaBatizados.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaBatizados.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  edtPesquisar.Text := '';
end;

procedure TfConsultaBatizados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfConsultaBatizados.FormShow(Sender: TObject);
begin
  edtPesquisar.SetFocus;
end;

procedure TfConsultaBatizados.rgPesquisarClick(Sender: TObject);
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

procedure TfConsultaBatizados.edtPesquisarEnter(Sender: TObject);
begin
   label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaBatizados.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
  RefazerSQL;
end;

procedure TfConsultaBatizados.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
   case rgPesquisar.ItemIndex of
   0: Key := SoNumeros(Key ,'I');
   end ;
end;

procedure TfConsultaBatizados.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaBatizados.dbGrid1Enter(Sender: TObject);
begin
   label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaBatizados.dbGrid1Exit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfConsultaBatizados.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaBatizados.btSairClick(Sender: TObject);
begin
  fConsultaBatizados.Close;
end;

procedure TfConsultaBatizados.btCadastrarClick(Sender: TObject);
begin
  fConsultaBatizados.Enabled := False;
  fBatizados.Enabled:= True ;
  fBatizados.xOrigemConsulta := True;
  fBatizados.Show;
end;
procedure TfConsultaBatizados.RefazerSQL;
begin

  IBConsultaBatizados.Close;
  IBConsultaBatizados.SQL.Clear;
  IBConsultaBatizados.SQL.Add('SELECT CODIGO,NOME FROM BATIZADOS ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaBatizados.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaBatizados.SQL.Add(' WHERE NOME LIKE :PNOME');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaBatizados.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaBatizados.SQL.Add(' ORDER BY NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaBatizados.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaBatizados.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaBatizados.Open;
  if not IBConsultaBatizados.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaBatizados.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaBatizados.Active) And (IBConsultaBatizados.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaBatizados.FieldByName('CODIGO').AsInteger;
          fConsultaBatizados.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaBatizados.dbGrid1DblClick(Sender: TObject);
begin
   if (IbConsultaBatizados.Active) And (IbConsultaBatizados.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IbConsultaBatizados.FieldByName('CODIGO').AsInteger;
      fConsultaBatizados.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaBatizados.dbGrid1DrawColumnCell(Sender: TObject;
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
