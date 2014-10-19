unit uConsultaDizimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaDizimo = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaDizimos: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    edtData: TspSkinMaskEdit;
    Edit1: TspSkinEdit;
    spSkinLabel1: TspSkinLabel;
    edtData2: TspSkinMaskEdit;
    spSkinLabel2: TspSkinLabel;
    boxDtOferta: TspSkinCheckRadioBox;
    boxMesAno: TspSkinCheckRadioBox;
    spSkinLabel3: TspSkinLabel;
    edtMesAno1: TspSkinMaskEdit;
    spSkinLabel4: TspSkinLabel;
    edtMesAno2: TspSkinMaskEdit;
    IBConsultaDizimosCODIGO: TIntegerField;
    IBConsultaDizimosMES: TIBStringField;
    IBConsultaDizimosDIZIMISTA: TIntegerField;
    IBConsultaDizimosDATA: TDateField;
    IBConsultaDizimosVALOR: TIBBCDField;
    IBConsultaDizimosPERIODO: TIBStringField;
    IBConsultaDizimosANO: TIBStringField;
    IBConsultaDizimosORIGEM: TIntegerField;
    IBConsultaDizimosTOTPERIODO: TIBBCDField;
    IBConsultaDizimossMesAno: TStringField;
    IBConsultaDizimosPAROQUIA: TIntegerField;
    rgCampanha: TspSkinRadioGroup;
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
    procedure edtPesquisarExit(Sender: TObject);
    procedure IBConsultaDizimosCalcFields(DataSet: TDataSet);
    procedure dbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaDizimo: TfConsultaDizimo;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools, uArquidiocese, uDizimo;

{$R *.dfm}

procedure TfConsultaDizimo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaDizimos.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaDizimo.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
    edtData.Text := '';
    Edit1.Text := '';
    rgPesquisar.Controls[1].Visible := False;
end;

procedure TfConsultaDizimo.FormKeyDown(Sender: TObject;
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

procedure TfConsultaDizimo.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
end;
procedure TfConsultaDizimo.RefazerSQL;
begin

  IBConsultaDizimos.Close;
  IBConsultaDizimos.SQL.Clear;
  IBConsultaDizimos.SQL.Add('SELECT * FROM DIZIMO ');
  IBConsultaDizimos.SQL.Add('WHERE DIZIMO.PAROQUIA= :PPAROQUIA');
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimos.SQL.Add(' AND DIZIMO.DIZIMISTA = :PDIZIMISTA');
    1 : IBConsultaDizimos.SQL.Add(' AND DIZIMO.CODIGO   = :PCODIGO');

  end;
  Case rgCampanha.ItemIndex of
    0 : IBConsultaDizimos.SQL.Add(' AND DIZIMO.CAMPANHA = ''S'' ');
    1 : IBConsultaDizimos.SQL.Add(' AND DIZIMO.CAMPANHA = ''N'' ');

  end;


  if boxDtOferta.Checked then
    Begin
      if DataValida(edtData.Text) then
        Begin
          IBConsultaDizimos.SQL.Add(' AND DIZIMO.DATA >= :PDATA1' );
          IBConsultaDizimos.ParamByName('PDATA1').AsDateTime := StrToDateTime(edtData.Text)
        End;
      if DataValida(edtData2.Text) then
        Begin
          IBConsultaDizimos.SQL.Add(' AND DIZIMO.DATA <= :PDATA2' );
          IBConsultaDizimos.ParamByName('PDATA2').AsDateTime := StrToDateTime(edtData2.Text)
        End;
    End;

  if boxMesAno.Checked then
    Begin
      if DataValida('01/'+ edtMesAno1.Text) then
        Begin
          IBConsultaDizimos.SQL.Add(' AND DIZIMO.MES >= :PMES1 AND DIZIMO.ANO >= :PANO1' );
          IBConsultaDizimos.ParamByName('PMES1').AsString  := Copy(edtMesAno1.Text,1,2);
          IBConsultaDizimos.ParamByName('PANO1').AsString  := Copy(edtMesAno1.Text,4,4);

        End;
      if DataValida('01/'+edtMesAno2.Text) then
        Begin
          IBConsultaDizimos.SQL.Add(' AND DIZIMO.MES <= :PMES2 AND DIZIMO.ANO >= :PANO2' );
          IBConsultaDizimos.ParamByName('PMES2').AsString  := Copy(edtMesAno2.Text,1,2);
          IBConsultaDizimos.ParamByName('PANO2').AsString  := Copy(edtMesAno2.Text,4,4);

        End;
    End;

  IBConsultaDizimos.SQL.Add(' ORDER BY ANO DESC, MES DESC');


  Case rgPesquisar.ItemIndex of
    0 :IBConsultaDizimos.ParamByName('PDIZIMISTA').AsInteger  := StrToIntDef(edtPesquisar.Text,0) ;
    1 :IBConsultaDizimos.ParamByName('PCODIGO').AsInteger     := StrToIntDef(edtPesquisar.Text,0) ;

  end;

  IBConsultaDizimos.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  IBConsultaDizimos.Open;

  if not IBConsultaDizimos.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaDizimo.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edit1.Clear;
  edtData.Clear;
  edtData2.Clear;
  edtMesAno1.Clear;
  edtMesAno2.Clear;
  edtPesquisar.SetFocus;
end;

procedure TfConsultaDizimo.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaDizimo.btSairClick(Sender: TObject);
begin
  fConsultaDizimo.Close;
end;

procedure TfConsultaDizimo.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaDizimos.Active) And (IBConsultaDizimos.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaDizimos.FieldByName('CODIGO').AsInteger;
          fConsultaDizimo.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaDizimo.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaDizimo.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaDizimo.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfConsultaDizimo.rgPesquisarClick(Sender: TObject);
begin
  case rgPesquisar.ItemIndex of
    0:
      begin
         lbTitulo.Caption   := 'Dizimista';
         Edit1.Visible      := True;
         edtPesquisar.Text  := '';
         edtPesquisar.SetFocus;

      end;
    1:
      begin
         lbTitulo.Caption    := 'Lançamento';
         Edit1.Visible       := False;
         edtPesquisar.Text   := '';
         edtPesquisar.SetFocus;

      end;

  end;
end;

procedure TfConsultaDizimo.btCadastrarClick(Sender: TObject);
begin
  fConsultaDizimo.Enabled := False;
  fDizimo.Enabled:= True ;
  fDizimo.xOrigemConsulta := True;
  fDizimo.Show;

end;

procedure TfConsultaDizimo.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaDizimo.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaDizimo.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaDizimos.Active) And (IBConsultaDizimos.FieldByName ('CODIGO').AsString <> '')     then
     Begin
       fPrincipal.ValorRetornoInteger := IBConsultaDizimos.FieldByName('CODIGO').AsInteger;
       fConsultaDizimo.Close;
     End
      Else
     Begin
       Exit;
     End;
end;

procedure TfConsultaDizimo.edtPesquisarExit(Sender: TObject);
begin
  EDIT1.Text := RetornaTabela(DM1.TDizimista ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',edtPesquisar.Text ,'','','','','','','DIZIMISTA' );
  Label101.Caption := '';

end;

procedure TfConsultaDizimo.IBConsultaDizimosCalcFields(DataSet: TDataSet);
begin
  IBConsultaDizimossMesAno.AsString := IBConsultaDizimosMES.AsString +'/'+IBConsultaDizimosANO.AsString;

end;

procedure TfConsultaDizimo.dbGrid1DrawColumnCell(Sender: TObject;
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
