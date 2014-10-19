unit uConsultaCrisma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaCrisma = class(TForm)
    lbTitulo: TspSkinLabel;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dsConsulta: TDataSource;
    IBConsultaCrisma: TIBQuery;
    label101: TspSkinLabel;
    btCadastrar: TspSkinButton;
    btSair: TspSkinButton;
    btNovo: TspSkinButton;
    spSkinGroupBox1: TspSkinGroupBox;
    RgPesquisar: TspSkinComboBox;
    DbGrid1: TspSkinDBGrid;
    EdtPesquisar: TspSkinMaskEdit;
    IBConsultaCrismaNOMECRISMANDO: TIBStringField;
    IBConsultaCrismaDTNASC: TDateField;
    IBConsultaCrismaPAI: TIBStringField;
    IBConsultaCrismaMAE: TIBStringField;
    IBConsultaCrismaPADRINHO: TIBStringField;
    IBConsultaCrismaMADRINHA: TIBStringField;
    IBConsultaCrismaDTCRISMA: TDateField;
    IBConsultaCrismaPADRE: TIntegerField;
    IBConsultaCrismaCODIGO: TIntegerField;
    procedure RgPesquisarClick(Sender: TObject);
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
    procedure DbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaCrisma: TfConsultaCrisma;

implementation

uses uPrincipal, uBatisterio, Sistools, uDMDados, uCrisma;

{$R *.dfm}

procedure TfConsultaCrisma.RgPesquisarClick(Sender: TObject);
begin
  case rgPesquisar.ItemIndex of
    0:
      begin

         edtPesquisar.Width := 50;
         EdtPesquisar.Left:=190;
         EdtPesquisar.EditMask:='';
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Código:';
      end;
    1:
      begin

         edtPesquisar.Width := 306;
         EdtPesquisar.Left:=190;
         EdtPesquisar.EditMask:='';
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome:';
      end;
    2:
      Begin
         EdtPesquisar.Width:=130;
         EdtPesquisar.Left:=230;
         EdtPesquisar.EditMask:='!99/99/0000;1;_';
         EdtPesquisar.Text := DateToStr(Date);
         //EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Data Batismo:';
      end;
    3:
      Begin
         EdtPesquisar.Width:=130;
         EdtPesquisar.Left:=260;
         EdtPesquisar.EditMask:='!99/99/0000;1;_';
         EdtPesquisar.Text := DateToStr(Date);
         //EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Data Nascimento:';
      end;
    4:
      Begin
         EdtPesquisar.Width:=306;
         EdtPesquisar.Left:=190;
         EdtPesquisar.EditMask:='';
         EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Pae:';
      end;
    5:
      Begin
         EdtPesquisar.Width:=306;
         EdtPesquisar.Left:=190;
         EdtPesquisar.EditMask:='';
         EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Mae:';
      end;
    6:
      Begin
         EdtPesquisar.Width:=290;
         EdtPesquisar.Left:=200;
         EdtPesquisar.EditMask:='';
         EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Padrinho:';
      end;
    7:
      Begin
         EdtPesquisar.Width:=290;
         EdtPesquisar.Left:=200;
         EdtPesquisar.EditMask:='';
         EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Madrinha:';
      end;
    8:
      Begin
         EdtPesquisar.Width:=265;
         EdtPesquisar.Left:=225;
         EdtPesquisar.EditMask:='';
         EdtPesquisar.Text:='';
         EdtPesquisar.SetFocus;
         LbTitulo.Caption:='Ministro/Padre:';
      end;

  end;
end;

procedure TfConsultaCrisma.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaCrisma.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaCrisma.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaCrisma.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaCrisma.Active) And (IBConsultaCrisma.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaCrisma.FieldByName('CODIGO').AsInteger;
          fConsultaCrisma.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaCrisma.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaCrisma.btSairClick(Sender: TObject);
begin
  fConsultaCrisma.Close;
end;

procedure TfConsultaCrisma.btCadastrarClick(Sender: TObject);
begin
  fConsultaCrisma.Enabled := False;
  fCrisma.Enabled:= True ;
  fCrisma.xOrigemConsulta := True;
  fCrisma.Show;
end;

procedure TfConsultaCrisma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBConsultaCrisma.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaCrisma.FormCreate(Sender: TObject);
begin
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   edtPesquisar.Text := '';
end;

procedure TfConsultaCrisma.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfConsultaCrisma.FormShow(Sender: TObject);
begin
   edtPesquisar.SetFocus;
end;
procedure TfConsultaCrisma.RefazerSQL;
begin

  IBConsultaCrisma.Close;
  IBConsultaCrisma.SQL.Clear;
  IBConsultaCrisma.SQL.Add('SELECT * FROM CRISMA ');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCrisma.SQL.Add(' WHERE CODIGO LIKE :PCODIGO');
    1 : IBConsultaCrisma.SQL.Add(' WHERE NOMECRISMANDO LIKE :PNOME');
    2 : IBConsultaCrisma.SQL.Add(' WHERE DTCRISMA =:PDTCRISMA');
    3 : IBConsultaCrisma.SQL.Add(' WHERE DTNASC =:PDTNASC');
    4 : IBConsultaCrisma.SQL.Add(' WHERE PAI LIKE :PPAI');
    5 : IBConsultaCrisma.SQL.Add(' WHERE MAE   LIKE :PMAE');
    6 : IBConsultaCrisma.SQL.Add(' WHERE PADRINHO   LIKE :PPADRINHO');
    7 : IBConsultaCrisma.SQL.Add(' WHERE MADRINHA   LIKE :PMADRINHA');
    8 : IBConsultaCrisma.SQL.Add(' WHERE PADRE   LIKE :PPADRE');

  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaCrisma.SQL.Add(' ORDER BY CODIGO');
    1 : IBConsultaCrisma.SQL.Add(' ORDER BY NOMECRISMANDO');
    2 : IBConsultaCrisma.SQL.Add(' ORDER BY DTBATISMO');
    3 : IBConsultaCrisma.SQL.Add(' ORDER BY DTNASC');
    4 : IBConsultaCrisma.SQL.Add(' ORDER BY PAI');
    5 : IBConsultaCrisma.SQL.Add(' ORDER BY MAE');
    6 : IBConsultaCrisma.SQL.Add(' ORDER BY PADRINHO');
    7 : IBConsultaCrisma.SQL.Add(' ORDER BY MADRINHA');
    8 : IBConsultaCrisma.SQL.Add(' ORDER BY PADRE');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaCrisma.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaCrisma.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%';
    2 :IbConsultaCrisma.ParamByName('PDTCRISMA').AsDateTime:=StrToDateTime(EdtPesquisar.Text);
    3 :IbConsultaCrisma.ParamByName('PDTNASC').AsDateTime:=StrToDateTime(EdtPesquisar.Text);
    4 :IbConsultaCrisma.ParamByName('PPAI').AsString:=EdtPesquisar.Text+'%';
    5 :IbConsultaCrisma.ParamByName('PMAE').AsString:=EdtPesquisar.Text+'%';
    6 :IbConsultaCrisma.ParamByName('PPADRINHO').AsString:=EdtPesquisar.Text+'%';
    7 :IbConsultaCrisma.ParamByName('PMADRINHA').AsString:=EdtPesquisar.Text+'%';
    8 :IbConsultaCrisma.ParamByName('PPADRE').AsString:=EdtPesquisar.Text+'%';

  end;

  IBConsultaCrisma.Open;
  if not IBConsultaCrisma.IsEmpty then
    dbGrid1.SetFocus;

end;




procedure TfConsultaCrisma.EdtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaCrisma.EdtPesquisarKeyDown(Sender: TObject;
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

procedure TfConsultaCrisma.EdtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');
  end;
end;

procedure TfConsultaCrisma.DbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaCrisma.Active) And (IBConsultaCrisma.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaCrisma.FieldByName('CODIGO').AsInteger;
      fConsultaCrisma.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaCrisma.DbGrid1DrawColumnCell(Sender: TObject;
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
