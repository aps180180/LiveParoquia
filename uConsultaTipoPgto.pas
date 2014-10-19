unit uConsultaTipoPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaTipoPgto = class(TForm)
    lbTitulo: TspSkinLabel;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsConsulta: TDataSource;
    IBConsultaTipoPgto: TIBQuery;
    label101: TspSkinLabel;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    DbGrid1: TspSkinDBGrid;
    EdtPesquisar: TspSkinMaskEdit;
    rgPesquisar: TspSkinRadioGroup;
    IBConsultaTipoPgtoCODIGO: TIntegerField;
    IBConsultaTipoPgtoPAROQUIA: TIntegerField;
    IBConsultaTipoPgtoDTALTERACAO: TDateTimeField;
    IBConsultaTipoPgtoDTCADASTRO: TDateTimeField;
    IBConsultaTipoPgtoNOME: TIBStringField;
    IBConsultaTipoPgtoTIPOOPERACAO: TIBStringField;
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
  fConsultaTipoPgto: TfConsultaTipoPgto;

implementation

uses uPrincipal, Sistools, uDMDados, uContas, uTipoPgto;

{$R *.dfm}

procedure TfConsultaTipoPgto.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaTipoPgto.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaTipoPgto.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaTipoPgto.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaTipoPgto.Active) And (IBConsultaTipoPgto.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaTipoPgto.FieldByName('CODIGO').AsInteger;
          fConsultaTipoPgto.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaTipoPgto.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaTipoPgto.btSairClick(Sender: TObject);
begin
  fConsultaTipoPgto.Close;
end;

procedure TfConsultaTipoPgto.btCadastrarClick(Sender: TObject);
begin
  fConsultaTipoPgto.Enabled := False;
  //fConsultaTipoPgto.fRetorno:=fTipoPgto;
  fTipoPgto.Enabled:= True ;
  fTipoPgto.xOrigemConsulta := True;
  fTipoPgto.Show;
end;

procedure TfConsultaTipoPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaTipoPgto.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaTipoPgto.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaTipoPgto.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaTipoPgto.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaTipoPgto.RefazerSQL;
begin
   
  IBConsultaTipoPgto.Close;
  IBConsultaTipoPgto.SQL.Clear;
  IBConsultaTipoPgto.SQL.Add('SELECT * FROM TIPOPGTO ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaTipoPgto.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaTipoPgto.SQL.Add(' WHERE NOME LIKE :PNOME');


  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaTipoPgto.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaTipoPgto.SQL.Add(' ORDER BY NOME');


  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaTipoPgto.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaTipoPgto.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%';



  end;

  IBConsultaTipoPgto.Open;
  if not IBConsultaTipoPgto.IsEmpty then
    dbGrid1.SetFocus;

end;




procedure TfConsultaTipoPgto.EdtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaTipoPgto.EdtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If
    Key = VK_RETURN then
    RefazerSQL;
   
end;

procedure TfConsultaTipoPgto.EdtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');
  end;
end;

procedure TfConsultaTipoPgto.DbGrid1DblClick(Sender: TObject);
begin
  if (IBConsultaTipoPgto.Active) And (IBConsultaTipoPgto.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaTipoPgto.FieldByName('CODIGO').AsInteger;
      fConsultaTipoPgto.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaTipoPgto.rgPesquisarClick(Sender: TObject);
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

procedure TfConsultaTipoPgto.DbGrid1DrawColumnCell(Sender: TObject;
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
