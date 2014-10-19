unit uConsultaDizimista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaDizimista = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    IbConsultaDizimista: TIBQuery;
    DsConsultaDizimista: TDataSource;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    label101: TspSkinLabel;
    IbConsultaDizimistaCODIGO: TIntegerField;
    IbConsultaDizimistaDIZIMISTA: TIBStringField;
    IbConsultaDizimistaPAROQUIA: TIntegerField;
    procedure rgPesquisarClick(Sender: TObject);
    procedure RefazerSQL;
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
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
  fConsultaDizimista: TfConsultaDizimista;

implementation

uses uDizimista, Sistools, uDMDados, uPrincipal, uDM1;

{$R *.dfm}

procedure TfConsultaDizimista.rgPesquisarClick(Sender: TObject);
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

procedure TfConsultaDizimista.edtPesquisarEnter(Sender: TObject);
begin
   label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaDizimista.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaDizimista.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
   case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;
end;

procedure TfConsultaDizimista.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaDizimista.dbGrid1Enter(Sender: TObject);
begin
   label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaDizimista.dbGrid1Exit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfConsultaDizimista.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaDizimista.Active) And (IBConsultaDizimista.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaDizimista.FieldByName('CODIGO').AsInteger;
          fConsultaDizimista.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaDizimista.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaDizimista.btSairClick(Sender: TObject);
begin
   fConsultaDizimista.Close;
end;

procedure TfConsultaDizimista.btCadastrarClick(Sender: TObject);
begin
  fConsultaDizimista.Enabled := False;
  fDizimista.Enabled:= True ;
  fDizimista.xOrigemConsulta := True;
  fDizimista.Show;
end;

procedure TfConsultaDizimista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaDizimista.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaDizimista.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  edtPesquisar.Text := '';
end;

procedure TfConsultaDizimista.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaDizimista.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaDizimista.RefazerSQL;
begin

  IBConsultaDizimista .Close;
  IBConsultaDizimista.SQL.Clear;
  IBConsultaDizimista.SQL.Add('SELECT CODIGO,DIZIMISTA,PAROQUIA FROM DIZIMISTA ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimista.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaDizimista.SQL.Add(' WHERE DIZIMISTA   LIKE :PNOME');
  end;
  IbConsultaDizimista.SQL.Add(' AND PAROQUIA= :PPAROQUIA');
  IbConsultaDizimista.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;

  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimista.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaDizimista.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaDizimista.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaDizimista.Open;
  if not IBConsultaDizimista.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaDizimista.dbGrid1DblClick(Sender: TObject);
begin
    if (IbConsultaDizimista.Active) And (IbConsultaDizimista.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IbConsultaDizimista.FieldByName('CODIGO').AsInteger;
      fConsultaDizimista.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaDizimista.dbGrid1DrawColumnCell(Sender: TObject;
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
