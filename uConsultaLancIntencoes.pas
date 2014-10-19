unit uConsultaLancIntencoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls;

type
    TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfConsultaLancIntencoes = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaLancIntencoes: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    edtInicio: TspSkinMaskEdit;
    edtFinal: TspSkinMaskEdit;
    spSkinLabel1: TspSkinLabel;
    boxData: TspSkinCheckRadioBox;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1CODIGO: TIntegerField;
    IBQuery1INTENCOES: TIBStringField;
    dbTipoIntencao: TspSkinDBLookupComboBox;
    boxTipo: TspSkinCheckRadioBox;
    IBConsultaLancIntencoesPAROQUIA: TIntegerField;
    IBConsultaLancIntencoesCODIGO: TIntegerField;
    IBConsultaLancIntencoesNOME: TIBStringField;
    IBConsultaLancIntencoesDATACELEBRACAO: TDateField;
    IBConsultaLancIntencoesHORACELEBRACAO: TDateTimeField;
    IBConsultaLancIntencoesTIPOINTENCAO: TIntegerField;
    IBConsultaLancIntencoesCELEBRANTE: TIBStringField;
    IBConsultaLancIntencoesOBSERVACAO: TIBStringField;
    IBConsultaLancIntencoesINTENCOES: TIBStringField;
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
    procedure boxDataClick(Sender: TObject);
    procedure boxTipoClick(Sender: TObject);
    procedure dbGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fConsultaLancIntencoes: TfConsultaLancIntencoes;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools , uLancIntencoes;

{$R *.dfm}

procedure TfConsultaLancIntencoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaLancIntencoes.Close;
  IBQuery1.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaLancIntencoes.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
end;

procedure TfConsultaLancIntencoes.FormKeyDown(Sender: TObject;
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

procedure TfConsultaLancIntencoes.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
  IBQuery1.Close;
  IBQuery1.ParamByName('pPAROQUIA').AsInteger := DM1.mParoquia;
  IBQuery1.Open;
         
end;
procedure TfConsultaLancIntencoes.RefazerSQL;
begin

  IBConsultaLancIntencoes.Close;
  IBConsultaLancIntencoes.SQL.Clear;
  IBConsultaLancIntencoes.SQL.Add('SELECT LANCAMENTOINTENCAO.*, INTENCOES_MISSAS.INTENCOES FROM LANCAMENTOINTENCAO,INTENCOES_MISSAS ');
  IBConsultaLancIntencoes.SQL.Add(' WHERE LANCAMENTOINTENCAO.PAROQUIA=INTENCOES_MISSAS.PAROQUIA');
  IBConsultaLancIntencoes.SQL.Add('AND LANCAMENTOINTENCAO.TIPOINTENCAO=INTENCOES_MISSAS.CODIGO');

  Case rgPesquisar.ItemIndex of
    0 : IBConsultaLancIntencoes.SQL.Add(' AND  LANCAMENTOINTENCAO.CODIGO LIKE :PCODIGO');
    1 : IBConsultaLancIntencoes.SQL.Add(' AND  LANCAMENTOINTENCAO.NOME   LIKE :PNOME');
  end;
  if (boxData.Checked) and (DataValida(edtInicio.Text)) then
    Begin
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO >= :PDATA1');
      IBConsultaLancIntencoes.ParamByName('PDATA1').AsDateTime := StrToDateTime(edtInicio.Text);
    end;
  if (boxData.Checked) and (DataValida(edtFinal.Text)) then
    Begin
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.DATACELEBRACAO <= :PDATA2');
      IBConsultaLancIntencoes.ParamByName('PDATA2').AsDateTime := StrToDateTime(edtFinal.Text);
    end;
  if (boxTipo.Checked) And (dbTipoIntencao.KeyValue > 0) then
      IBConsultaLancIntencoes.SQL.Add(' AND LANCAMENTOINTENCAO.TIPOINTENCAO ='  + IntToStr( dbTipoIntencao.KeyValue)) ;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaLancIntencoes.SQL.Add(' ORDER BY LANCAMENTOINTENCAO.DATACELEBRACAO, LANCAMENTOINTENCAO.CODIGO');
    1 : IBConsultaLancIntencoes.SQL.Add(' ORDER BY LANCAMENTOINTENCAO.DATACELEBRACAO, LANCAMENTOINTENCAO.NOME');
  end;
  Case rgPesquisar.ItemIndex of
    0 :IBConsultaLancIntencoes.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 :IBConsultaLancIntencoes.ParamByName('PNOME').AsString   := '%' + edtPesquisar.Text +'%'
  end;

  IBConsultaLancIntencoes.Open;
  if not IBConsultaLancIntencoes.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaLancIntencoes.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfConsultaLancIntencoes.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancIntencoes.btSairClick(Sender: TObject);
begin
  fConsultaLancIntencoes.Close;
end;

procedure TfConsultaLancIntencoes.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaLancIntencoes.Active) And (IBConsultaLancIntencoes.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaLancIntencoes.FieldByName('CODIGO').AsInteger;
          fConsultaLancIntencoes.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaLancIntencoes.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfConsultaLancIntencoes.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfConsultaLancIntencoes.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfConsultaLancIntencoes.rgPesquisarClick(Sender: TObject);
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

         edtPesquisar.Width := 247;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome';
      end;


  end;
end;

procedure TfConsultaLancIntencoes.btCadastrarClick(Sender: TObject);
begin
  fConsultaLancIntencoes.Enabled := False;
  fLancIntencoes.Enabled:= True ;
  fLancIntencoes.xOrigemConsulta := True;
  fLancIntencoes.Show;

end;

procedure TfConsultaLancIntencoes.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaLancIntencoes.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaLancIntencoes.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaLancIntencoes.Active) And (IBConsultaLancIntencoes.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaLancIntencoes.FieldByName('CODIGO').AsInteger;
      fConsultaLancIntencoes.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaLancIntencoes.boxDataClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancIntencoes.boxTipoClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancIntencoes.dbGrid1DrawColumnCell(Sender: TObject;
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
