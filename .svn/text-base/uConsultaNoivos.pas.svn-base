unit uConsultaNoivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaNoivos = class(TForm)
    lbTitulo: TspSkinLabel;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsConsulta: TDataSource;
    IBConsultaNoivos: TIBQuery;
    label101: TspSkinLabel;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    DbGrid1: TspSkinDBGrid;
    EdtPesquisar: TspSkinMaskEdit;
    rgPesquisar: TspSkinRadioGroup;
    IBConsultaNoivosCODIGO: TIntegerField;
    IBConsultaNoivosNOME_NOIVA: TIBStringField;
    IBConsultaNoivosNOME_NOIVO: TIBStringField;
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
  fConsultaNoivos: TfConsultaNoivos;

implementation

uses uPrincipal, Sistools, uDMDados, uCadNoivos;

{$R *.dfm}

procedure TfConsultaNoivos.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaNoivos.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaNoivos.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaNoivos.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaNoivos.Active) And (IBConsultaNoivos.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaNoivos.FieldByName('CODIGO').AsInteger;
          fConsultaNoivos.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaNoivos.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaNoivos.btSairClick(Sender: TObject);
begin
  fConsultaNoivos.Close;
end;

procedure TfConsultaNoivos.btCadastrarClick(Sender: TObject);
begin
  fConsultaNoivos.Enabled := False;
  fConsultaNoivos.fRetorno:=fCadNoivos;
  fCadNoivos.Enabled:= True ;
  fCadNoivos.xOrigemConsulta := True;
  fCadNoivos.Show;
end;

procedure TfConsultaNoivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaNoivos.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaNoivos.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaNoivos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaNoivos.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaNoivos.RefazerSQL;
begin
   
  IBConsultaNoivos.Close;
  IBConsultaNoivos.SQL.Clear;
  IBConsultaNoivos.SQL.Add('SELECT * FROM NOIVOS ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaNoivos.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaNoivos.SQL.Add(' WHERE NOME_NOIVA LIKE :PNOMENOIVA');
    2 : IBConsultaNoivos.SQL.Add(' WHERE NOME_NOIVO LIKE :PNOMENOIVO');

  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaNoivos.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaNoivos.SQL.Add(' ORDER BY NOME_NOIVA');
    2 : IBConsultaNoivos.SQL.Add(' ORDER BY NOME_NOIVO');

  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaNoivos.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaNoivos.ParamByName('PNOMENOIVA').AsString   := '%' + edtPesquisar.Text +'%';
    2 :IBConsultaNoivos.ParamByName('PNOMENOIVO').AsString   := '%' + edtPesquisar.Text +'%';


  end;

  IBConsultaNoivos.Open;
  if not IBConsultaNoivos.IsEmpty then
    dbGrid1.SetFocus;

end;




procedure TfConsultaNoivos.EdtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaNoivos.EdtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If
    Key = VK_RETURN then
   begin
    if (RgPesquisar.ItemIndex =2) or ( RgPesquisar.ItemIndex =3 ) then
      Begin
        Try
          StrToDate(EdtPesquisar.Text);
        Except
          Exit;
        End;
      End;

    RefazerSQL;
   end;
end;

procedure TfConsultaNoivos.EdtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');
  end;
end;

procedure TfConsultaNoivos.DbGrid1DblClick(Sender: TObject);
begin
  if (IBConsultaNoivos.Active) And (IBConsultaNoivos.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaNoivos.FieldByName('CODIGO').AsInteger;
      fConsultaNoivos.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaNoivos.rgPesquisarClick(Sender: TObject);
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

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome';
      end;


  end;
end;

procedure TfConsultaNoivos.DbGrid1DrawColumnCell(Sender: TObject;
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
