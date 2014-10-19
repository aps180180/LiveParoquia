unit uConsultaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaFornecedor = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaFornecedor: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    IBConsultaFornecedorCODIGO: TIntegerField;
    IBConsultaFornecedorNOME_FANTASIA: TIBStringField;
    IBConsultaFornecedorRAZAO_SOCIAL: TIBStringField;
    IBConsultaFornecedorTELEFONE: TIBStringField;
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
  fConsultaFornecedor: TfConsultaFornecedor;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools, uFornecedor;

{$R *.dfm}

procedure TfConsultaFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaFornecedor.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaFornecedor.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
end;

procedure TfConsultaFornecedor.FormKeyDown(Sender: TObject;
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

procedure TfConsultaFornecedor.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
end;
procedure TfConsultaFornecedor.RefazerSQL;
begin

  IBConsultaFornecedor.Close;
  IBConsultaFornecedor.SQL.Clear;
  IBConsultaFornecedor.SQL.Add('SELECT * FROM FORNECEDOR ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaFornecedor.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaFornecedor.SQL.Add(' WHERE RAZAO_SOCIAL   LIKE :PRAZAO');
    2 : IBConsultaFornecedor.SQL.Add(' WHERE NOME_FANTASIA   LIKE :PFANTASIA');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaFornecedor.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaFornecedor.SQL.Add(' ORDER BY RAZAO_SOCIAL');
    2 : IBConsultaFornecedor.SQL.Add(' ORDER BY NOME_FANTASIA');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaFornecedor.ParamByName('PCODIGO').Asstring     := edtPesquisar.Text +'%';
    1 :IBConsultaFornecedor.ParamByName('PRAZAO').AsString      := '%' + edtPesquisar.Text +'%';
    2 :IBConsultaFornecedor.ParamByName('PFANTASIA').AsString   := '%' + edtPesquisar.Text +'%';
  end;

  IBConsultaFornecedor.Open;
  if not IBConsultaFornecedor.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaFornecedor.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaFornecedor.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaFornecedor.btSairClick(Sender: TObject);
begin
  fConsultaFornecedor.Close;
end;

procedure TfConsultaFornecedor.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaFornecedor.Active) And (IBConsultaFornecedor.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaFornecedor.FieldByName('CODIGO').AsInteger;
          fConsultaFornecedor.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaFornecedor.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaFornecedor.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaFornecedor.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfConsultaFornecedor.rgPesquisarClick(Sender: TObject);
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
         lbTitulo.Caption := 'Razão Social';
      end;
    2:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome Fantasia';
      end;


  end;
end;

procedure TfConsultaFornecedor.btCadastrarClick(Sender: TObject);
begin
  fConsultaFornecedor.Enabled := False;
  fFornecedor.Enabled:= True ;
  fFornecedor.xOrigemConsulta := True;
  fFornecedor.Show;

end;

procedure TfConsultaFornecedor.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaFornecedor.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaFornecedor.dbGrid1DblClick(Sender: TObject);
begin
   {if (IBConsultaFornecedor.Active) And (IBConsultaFornecedor.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaFornecedor.FieldByName('CODIGO').AsInteger;
      IBConsultaFornecedor.Close;
     End
      Else
     Begin
      Exit;
     End;}
end;

procedure TfConsultaFornecedor.dbGrid1DrawColumnCell(Sender: TObject;
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
