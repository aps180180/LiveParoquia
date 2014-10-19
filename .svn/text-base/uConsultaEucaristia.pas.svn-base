unit uConsultaEucaristia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaEucaristia = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    DsConsultaBatizados: TDataSource;
    IbConsultaEucaristia: TIBQuery;
    IbConsultaEucaristiaCODIGO: TIntegerField;
    IbConsultaEucaristiaNOME: TIBStringField;
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
  fConsultaEucaristia: TfConsultaEucaristia;

implementation

uses  Sistools, uDMDados, uPrincipal, uEucaristia;

{$R *.dfm}

procedure TfConsultaEucaristia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaEucaristia.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaEucaristia.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  edtPesquisar.Text := '';
end;

procedure TfConsultaEucaristia.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaEucaristia.FormShow(Sender: TObject);
begin
  edtPesquisar.SetFocus;
end;

procedure TfConsultaEucaristia.rgPesquisarClick(Sender: TObject);
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

procedure TfConsultaEucaristia.edtPesquisarEnter(Sender: TObject);
begin
   label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaEucaristia.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
  RefazerSQL;
end;

procedure TfConsultaEucaristia.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
   case rgPesquisar.ItemIndex of
   0: Key := SoNumeros(Key ,'I');
   end ;
end;

procedure TfConsultaEucaristia.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaEucaristia.dbGrid1Enter(Sender: TObject);
begin
   label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaEucaristia.dbGrid1Exit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfConsultaEucaristia.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaEucaristia.btSairClick(Sender: TObject);
begin
  fConsultaEucaristia.Close;
end;

procedure TfConsultaEucaristia.btCadastrarClick(Sender: TObject);
begin
  fConsultaEucaristia.Enabled := False;
  fEucaristia.Enabled:= True ;
  fEucaristia.xOrigemConsulta := True;
  fEucaristia.Show;
end;
procedure TfConsultaEucaristia.RefazerSQL;
begin

  IBConsultaEucaristia.Close;
  IBConsultaEucaristia.SQL.Clear;
  IBConsultaEucaristia.SQL.Add('SELECT CODIGO,NOME FROM EUCARISTIA ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaEucaristia.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaEucaristia.SQL.Add(' WHERE NOME LIKE :PNOME');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaEucaristia.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaEucaristia.SQL.Add(' ORDER BY NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaEucaristia.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaEucaristia.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaEucaristia.Open;
  if not IBConsultaEucaristia.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaEucaristia.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaEucaristia.Active) And (IBConsultaEucaristia.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaEucaristia.FieldByName('CODIGO').AsInteger;
          fConsultaEucaristia.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaEucaristia.dbGrid1DblClick(Sender: TObject);
begin
   if (IbConsultaEucaristia.Active) And (IbConsultaEucaristia.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IbConsultaEucaristia.FieldByName('CODIGO').AsInteger;
      fConsultaEucaristia.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaEucaristia.dbGrid1DrawColumnCell(Sender: TObject;
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
