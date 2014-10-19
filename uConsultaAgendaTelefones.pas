unit uConsultaAgendaTelefones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaAgendaTelefones = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    dsConsulta: TDataSource;
    IBConsultaAgendaTelefones: TIBQuery;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    label101: TspSkinLabel;
    IBConsultaAgendaTelefonesCODIGO: TIntegerField;
    IBConsultaAgendaTelefonesNOME: TIBStringField;
    IBConsultaAgendaTelefonesPAROQUIA: TIntegerField;
    IBConsultaAgendaTelefonesDTCADASTRO: TDateTimeField;
    IBConsultaAgendaTelefonesDTALTERACAO: TDateTimeField;
    IBConsultaAgendaTelefonesFONE1: TIBStringField;
    IBConsultaAgendaTelefonesFONE2: TIBStringField;
    IBConsultaAgendaTelefonesFONE3: TIBStringField;
    IBConsultaAgendaTelefonesFONE4: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefazerSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure rgPesquisarClick(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisarClick(Sender: TObject);
    procedure dbGrid1DblClick(Sender: TObject);
    procedure dbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;

      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaAgendaTelefones: TfConsultaAgendaTelefones;

implementation

uses uAgendaTelefones, uPrincipal, Sistools, uDM1;

{$R *.dfm}

procedure TfConsultaAgendaTelefones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   IBConsultaAgendaTelefones.Close;
   fRetorno.Enabled := True;
   fRetorno.Show;
end;

procedure TfConsultaAgendaTelefones.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaAgendaTelefones.FormKeyDown(Sender: TObject;
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

procedure TfConsultaAgendaTelefones.FormShow(Sender: TObject);
begin
   {antes de mostrar a janela}
   edtPesquisar.SetFocus;
end;

procedure TfConsultaAgendaTelefones.btNovoClick(Sender: TObject);
begin
   edtPesquisar.Text := '';
   edtPesquisar.SetFocus;
end;

procedure TfConsultaAgendaTelefones.btCadastrarClick(Sender: TObject);
begin
   fConsultaAgendaTelefones.Enabled := False;
   fAgendaTelefones.Enabled:= True ;
   fAgendaTelefones.xOrigemConsulta := True;
   fAgendaTelefones.Show;
end;

procedure TfConsultaAgendaTelefones.btSairClick(Sender: TObject);
begin
   fConsultaAgendaTelefones.Close;
end;

procedure TfConsultaAgendaTelefones.rgPesquisarClick(Sender: TObject);
begin
   case rgPesquisar.ItemIndex of
    0:
      begin

         edtPesquisar.Width := 50;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'C�digo';
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

procedure TfConsultaAgendaTelefones.edtPesquisarEnter(Sender: TObject);
begin
   label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaAgendaTelefones.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaAgendaTelefones.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
   case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;
end;

procedure TfConsultaAgendaTelefones.btPesquisarClick(Sender: TObject);
begin
   RefazerSQL;
end;

procedure TfConsultaAgendaTelefones.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaAgendaTelefones.Active) And (IBConsultaAgendaTelefones.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaAgendaTelefones.FieldByName('CODIGO').AsInteger;
      fConsultaAgendaTelefones.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaAgendaTelefones.dbGrid1DrawColumnCell(Sender: TObject;
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

procedure TfConsultaAgendaTelefones.dbGrid1Enter(Sender: TObject);
begin
   label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaAgendaTelefones.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaAgendaTelefones.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaAgendaTelefones.Active) And (IBConsultaAgendaTelefones.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaAgendaTelefones.FieldByName('CODIGO').AsInteger;
          fConsultaAgendaTelefones.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;
procedure TfConsultaAgendaTelefones.RefazerSQL;
begin

  IBConsultaAgendaTelefones .Close;
  IBConsultaAgendaTelefones .SQL.Clear;
  IBConsultaAgendaTelefones .SQL.Add('SELECT * FROM AGENDA_TELEFONES ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaAgendaTelefones.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaAgendaTelefones.SQL.Add(' WHERE NOME   LIKE :PNOME');
  end;
  IBConsultaAgendaTelefones.SQL.Add('AND PAROQUIA=:PPAROQUIA');
  IBConsultaAgendaTelefones.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;

  Case rgPesquisar.ItemIndex of
    0 : IBConsultaAgendaTelefones.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaAgendaTelefones.SQL.Add(' ORDER BY NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaAgendaTelefones.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaAgendaTelefones.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaAgendaTelefones.Open;
  if not IBConsultaAgendaTelefones.IsEmpty then
    dbGrid1.SetFocus;

end;

end.
