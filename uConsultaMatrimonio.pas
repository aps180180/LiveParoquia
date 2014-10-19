unit uConsultaMatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaMatrimonio = class(TForm)
    lbTitulo: TspSkinLabel;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsConsulta: TDataSource;
    IBConsultaMatrimonio: TIBQuery;
    label101: TspSkinLabel;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    DbGrid1: TspSkinDBGrid;
    EdtPesquisar: TspSkinMaskEdit;
    IBConsultaMatrimonioCODIGO: TIntegerField;
    IBConsultaMatrimonioNOMENOIVO: TIBStringField;
    IBConsultaMatrimonioNOMENOIVA: TIBStringField;
    rgPesquisar: TspSkinRadioGroup;
    IBConsultaMatrimonioDTCELEBRACAO: TDateTimeField;
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
    procedure FormActivate(Sender: TObject);
    procedure DbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaMatrimonio: TfConsultaMatrimonio;

implementation

uses uPrincipal, uBatisterio, Sistools, uDMDados, uMatrimonio;

{$R *.dfm}

procedure TfConsultaMatrimonio.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaMatrimonio.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaMatrimonio.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaMatrimonio.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaMatrimonio.Active) And (IBConsultaMatrimonio.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaMatrimonio.FieldByName('CODIGO').AsInteger;
          fConsultaMatrimonio.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaMatrimonio.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaMatrimonio.btSairClick(Sender: TObject);
begin
  fConsultaMatrimonio.Close;
end;

procedure TfConsultaMatrimonio.btCadastrarClick(Sender: TObject);
begin
  fConsultaMatrimonio.Enabled := False;
  fMatrimonio.Enabled:= True ;
  fMatrimonio.xOrigemConsulta := True;
  fMatrimonio.Show;
end;

procedure TfConsultaMatrimonio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaMatrimonio.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaMatrimonio.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaMatrimonio.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaMatrimonio.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaMatrimonio.RefazerSQL;
begin

  IBConsultaMatrimonio.Close;
  IBConsultaMatrimonio.SQL.Clear;
  IBConsultaMatrimonio.SQL.Add('SELECT * FROM MATRIMONIO ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaMatrimonio.SQL.Add(' WHERE CODIGO LIKE     :PCODIGO');
    1 : IBConsultaMatrimonio.SQL.Add(' WHERE DTCELEBRACAO    =:PDTCELEBRACAO');
    2 : IBConsultaMatrimonio.SQL.Add(' WHERE NOMENOIVA LIKE  :PNOMENOIVA');
    3 : IBConsultaMatrimonio.SQL.Add(' WHERE NOMENOIVO LIKE  :PNOMENOIVO');
  end;
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaMatrimonio.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaMatrimonio.SQL.Add(' ORDER BY DTCELEBRACAO');
    2 : IBConsultaMatrimonio.SQL.Add(' ORDER BY NOMENOIVA');
    3 : IBConsultaMatrimonio.SQL.Add(' ORDER BY NOMENOIVO');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaMatrimonio.ParamByName('PCODIGO').Asstring           := edtPesquisar.Text +'%';
    1 :IBConsultaMatrimonio.ParamByName('PDTCELEBRACAO').AsDateTime   :=StrToDateTime(edtPesquisar.Text) ;
    2 :IBConsultaMatrimonio.ParamByName('PNOMENOIVA').AsString        :='%'+ edtPesquisar.Text +'%' ;
    3 :IBConsultaMatrimonio.ParamByName('PNOMENOIVO').AsString        :='%'+ edtPesquisar.Text +'%' ;


  end;

  IBConsultaMatrimonio.Open;
  if not IBConsultaMatrimonio.IsEmpty then
    dbGrid1.SetFocus;

end;




procedure TfConsultaMatrimonio.EdtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaMatrimonio.EdtPesquisarKeyDown(Sender: TObject;
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

procedure TfConsultaMatrimonio.EdtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');
  end;
end;

procedure TfConsultaMatrimonio.DbGrid1DblClick(Sender: TObject);
begin
  if (IBConsultaMatrimonio.Active) And (IBConsultaMatrimonio.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaMatrimonio.FieldByName('CODIGO').AsInteger;
      fConsultaMatrimonio.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaMatrimonio.rgPesquisarClick(Sender: TObject);
begin
  Case rgPesquisar.ItemIndex of
    0:
      Begin
        EdtPesquisar.Width:=90;
        EdtPesquisar.Left:=65;
        EdtPesquisar.Text:='';
        EdtPesquisar.EditMask:='';
        EdtPesquisar.SetFocus;
        lbTitulo.Caption:='Código:';
      end;
    1:
      Begin
        EdtPesquisar.Width:=90;
        EdtPesquisar.Left:=111;
        EdtPesquisar.Text:='';
        EdtPesquisar.EditMask:='!99/99/9999;_';
        EdtPesquisar.SetFocus;
        lbTitulo.Caption:='Data Celebração:';
      End;
    2:
      Begin
        EdtPesquisar.Width:=160;
        EdtPesquisar.Left:=100;
        EdtPesquisar.Text:='';
        EdtPesquisar.EditMask:='';
        EdtPesquisar.SetFocus;
        lbTitulo.Caption:='Nome Noiva:';
      End;
    3:
      Begin
        EdtPesquisar.Width:=160;
        EdtPesquisar.Left:=100;
        EdtPesquisar.Text:='';
        EdtPesquisar.EditMask:='';
        EdtPesquisar.SetFocus;
        lbTitulo.Caption:='Nome Noivo:';
      End

  end
end;

procedure TfConsultaMatrimonio.FormActivate(Sender: TObject);
begin
  rgPesquisar.ItemIndex:=0;
  EdtPesquisar.EditMask:='';
end;

procedure TfConsultaMatrimonio.DbGrid1DrawColumnCell(Sender: TObject;
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
