unit uConsultaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaContas = class(TForm)
    lbTitulo: TspSkinLabel;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsConsulta: TDataSource;
    IBConsultaContas: TIBQuery;
    label101: TspSkinLabel;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    DbGrid1: TspSkinDBGrid;
    EdtPesquisar: TspSkinMaskEdit;
    rgPesquisar: TspSkinRadioGroup;
    IBConsultaContasCODIGO: TIntegerField;
    IBConsultaContasNOME: TIBStringField;
    IBConsultaContasCATEGORIA: TIBStringField;
    procedure btPesquisarClick(Sender: TObject);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    Procedure RefazerSql;
    procedure EdtPesquisarEnter(Sender: TObject);
    procedure EdtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure DbGrid1DblClick(Sender: TObject);
    procedure rgPesquisarClick(Sender: TObject);
    procedure DbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaContas: TfConsultaContas;

implementation

uses uPrincipal, Sistools, uDMDados, uContas;

{$R *.dfm}

procedure TfConsultaContas.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaContas.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaContas.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaContas.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaContas.Active) And (IBConsultaContas.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaContas.FieldByName('CODIGO').AsInteger;
          fConsultaContas.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaContas.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaContas.btSairClick(Sender: TObject);
begin
  fConsultaContas.Close;
end;

procedure TfConsultaContas.btCadastrarClick(Sender: TObject);
begin
  fConsultaContas.Enabled := False;
  fConsultaContas.fRetorno:=fContas;
  fContas.Enabled:= True ;
  fContas.xOrigemConsulta := True;
  fContas.Show;
end;

procedure TfConsultaContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaContas.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaContas.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaContas.FormKeyDown(Sender: TObject; var Key: Word;
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
      //   btPesquisar.OnClick(Self);
    End;
end;

procedure TfConsultaContas.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaContas.RefazerSQL;
begin
   
  IBConsultaContas.Close;
  IBConsultaContas.SQL.Clear;
  IBConsultaContas.SQL.Add('SELECT * FROM CONTABANCO ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaContas.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaContas.SQL.Add(' WHERE NOME LIKE :PNOME');


  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaContas.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaContas.SQL.Add(' ORDER BY NOME');


  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaContas.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaContas.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%';



  end;

  IBConsultaContas.Open;
  if not IBConsultaContas.IsEmpty then
    dbGrid1.SetFocus;

end;




procedure TfConsultaContas.EdtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaContas.EdtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If
    Key = VK_RETURN then
    RefazerSQL;
   
end;

procedure TfConsultaContas.EdtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');
  end;
end;

procedure TfConsultaContas.DbGrid1DblClick(Sender: TObject);
begin
  if (IBConsultaContas.Active) And (IBConsultaContas.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaContas.FieldByName('CODIGO').AsInteger;
      fConsultaContas.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaContas.rgPesquisarClick(Sender: TObject);
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
         lbTitulo.Caption := 'Conta';
      end;

  end;
end;

procedure TfConsultaContas.DbGrid1DrawColumnCell(Sender: TObject;
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
