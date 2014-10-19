unit uConsultaLancCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls;

type
  TfConsultaLancCaixa = class(TForm)
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    btCadastrar: TspSkinButton;
    IBConsultaLancCaixa: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    edtInicio: TspSkinMaskEdit;
    edtFinal: TspSkinMaskEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel4: TspSkinLabel;
    Edit1: TspSkinEdit;
    spSkinLabel2: TspSkinLabel;
    edit3: TspSkinEdit;
    boxContas: TspSkinCheckRadioBox;
    boxTipo: TspSkinCheckRadioBox;
    Radio1: TspSkinRadioGroup;
    dbeConta: TspSkinEdit;
    dbeTipo: TspSkinEdit;
    spSkinLabel3: TspSkinLabel;
    IBConsultaLancCaixaCODIGO: TIntegerField;
    IBConsultaLancCaixaDATAMOV: TDateField;
    IBConsultaLancCaixaTIPOMOV: TIntegerField;
    IBConsultaLancCaixaCONTA: TIntegerField;
    IBConsultaLancCaixaVALORMOV: TIBBCDField;
    IBConsultaLancCaixaNOMECONTA: TIBStringField;
    IBConsultaLancCaixaTIPOPAGAMENTO: TIBStringField;
    IBConsultaLancCaixaTIPOOPERACAO: TIBStringField;
    IBConsultaLancCaixasConta: TStringField;
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
    procedure btCadastrarClick(Sender: TObject);
    procedure dbGrid1Enter(Sender: TObject);
    procedure dbGrid1Exit(Sender: TObject);
    procedure dbGrid1DblClick(Sender: TObject);
    procedure boxDataClick(Sender: TObject);
    procedure boxTipoClick(Sender: TObject);
    procedure IBConsultaLancCaixaCalcFields(DataSet: TDataSet);
    procedure dbeContaExit(Sender: TObject);
    procedure dbeTipoExit(Sender: TObject);
    procedure dbeContaEnter(Sender: TObject);
    procedure dbeContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeTipoEnter(Sender: TObject);
    procedure dbeContaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTipoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    xNumDevolucao : Integer;
    xBuscar : Boolean;

  end;

var
  fConsultaLancCaixa: TfConsultaLancCaixa;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools , uLancCaixa, Math,
  uConsultaContas, uConsultaTipoPgto;

{$R *.dfm}

procedure TfConsultaLancCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaLancCaixa.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfConsultaLancCaixa.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Edit1.Clear;
  edit3.Clear;
  edtInicio.Text := DateToStr(Date);
  edtFinal.Text := DateToStr(Date);
  dbeConta.Clear;
  dbeTipo.Clear;

end;

procedure TfConsultaLancCaixa.FormKeyDown(Sender: TObject;
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

procedure TfConsultaLancCaixa.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
   edtInicio.SetFocus;

end;
procedure TfConsultaLancCaixa.RefazerSQL;
begin

  IBConsultaLancCaixa.Close;
  IBConsultaLancCaixa.SQL.Clear;
  IBConsultaLancCaixa.SQL.Add('SELECT MOVCAIXA.CODIGO,MOVCAIXA.DATAMOV,MOVCAIXA.TIPOMOV,');
  IBConsultaLancCaixa.SQL.Add('MOVCAIXA.CONTA,MOVCAIXA.VALORMOV,CONTABANCO.NOME AS NOMECONTA,');
  IBConsultaLancCaixa.SQL.Add('MOVCAIXA.CONTA,MOVCAIXA.VALORMOV,CONTABANCO.NOME AS NOMECONTA,TIPOPGTO.NOME AS TIPOPAGAMENTO,TIPOPGTO.TIPOOPERACAO');
  IBConsultaLancCaixa.SQL.Add('FROM MOVCAIXA ');
  IBConsultaLancCaixa.SQL.Add('LEFT JOIN CONTABANCO ON MOVCAIXA.PAROQUIA=CONTABANCO.PAROQUIA');
  IBConsultaLancCaixa.SQL.Add('AND MOVCAIXA.CONTA=CONTABANCO.CODIGO');
  IBConsultaLancCaixa.SQL.Add('LEFT JOIN TIPOPGTO ON MOVCAIXA.PAROQUIA=TIPOPGTO.PAROQUIA');
  IBConsultaLancCaixa.SQL.Add('AND MOVCAIXA.TIPOMOV=TIPOPGTO.CODIGO');

  IBConsultaLancCaixa.SQL.Add(' WHERE MOVCAIXA.PAROQUIA= :PPAROQUIA');
  IBConsultaLancCaixa.ParamByName('PPAROQUIA').AsInteger  :=  DM1.mParoquia;
  if (DataValida(edtInicio.Text)) then
    Begin
      IBConsultaLancCaixa.SQL.Add(' AND MOVCAIXA.DATAMOV >= :PDATA1');
      IBConsultaLancCaixa.ParamByName('PDATA1').AsDateTime := StrToDateTime(edtInicio.Text);
    end;
  if (DataValida(edtFinal.Text)) then
    Begin
      IBConsultaLancCaixa.SQL.Add(' AND MOVCAIXA.DATAMOV <= :PDATA2');
      IBConsultaLancCaixa.ParamByName('PDATA2').AsDateTime := StrToDateTime(edtFinal.Text);
    end;
  If not boxContas.Checked then
    begin
      IBConsultaLancCaixa.SQL.Add(' AND MOVCAIXA.CONTA LIKE ' + dbeConta.Text + #39+'%'+#39 );

    end;
  If not boxTipo.Checked then
    begin
      IBConsultaLancCaixa.SQL.Add(' AND TIPOMOV LIKE ' + dbeTipo.Text  + #39+'%'+#39 );

    end;

  if boxTipo.Checked then
    begin
      case Radio1.ItemIndex of
        0 : IBConsultaLancCaixa.SQL.Add(' AND TIPOPGTO.TIPOOPERACAO=''C''');
        1 : IBConsultaLancCaixa.SQL.Add(' AND TIPOPGTO.TIPOOPERACAO=''D''');

      end;
    end;

  IBConsultaLancCaixa.Open;
  if not IBConsultaLancCaixa.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfConsultaLancCaixa.btNovoClick(Sender: TObject);
begin
  edtInicio.SetFocus;

end;

procedure TfConsultaLancCaixa.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancCaixa.btSairClick(Sender: TObject);
begin
  fConsultaLancCaixa.Close;
end;

procedure TfConsultaLancCaixa.dbGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
     Begin
       if (IBConsultaLancCaixa.Active) And (IBConsultaLancCaixa.FieldByName ('CODIGO').AsString <> '')     then
         Begin
          fPrincipal.ValorRetornoInteger := IBConsultaLancCaixa.FieldByName('CODIGO').AsInteger;
          fConsultaLancCaixa.Close;
          End
      Else
       Begin
         Exit;
       End;
     End;
end;

procedure TfConsultaLancCaixa.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;




procedure TfConsultaLancCaixa.btCadastrarClick(Sender: TObject);
begin
  fConsultaLancCaixa.Enabled := False;
  fLancCaixa.Enabled:= True ;
  fLancCaixa.xOrigemConsulta := True;
  fLancCaixa.Show;

end;

procedure TfConsultaLancCaixa.dbGrid1Enter(Sender: TObject);
begin
  label101.Caption := 'ENTER - CONFIRMA PESQUISA';
end;

procedure TfConsultaLancCaixa.dbGrid1Exit(Sender: TObject);
begin
   label101.Caption := '';
end;

procedure TfConsultaLancCaixa.dbGrid1DblClick(Sender: TObject);
begin
   if (IBConsultaLancCaixa.Active) And (IBConsultaLancCaixa.FieldByName ('CODIGO').AsString <> '')     then
     Begin
      fPrincipal.ValorRetornoInteger := IBConsultaLancCaixa.FieldByName('CODIGO').AsInteger;
      fConsultaLancCaixa.Close;
     End
      Else
     Begin
      Exit;
     End;
end;

procedure TfConsultaLancCaixa.boxDataClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancCaixa.boxTipoClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfConsultaLancCaixa.IBConsultaLancCaixaCalcFields(DataSet: TDataSet);
begin
  IBConsultaLancCaixasConta.AsString := IBConsultaLancCaixaCONTA.AsString + ' - ' + IBConsultaLancCaixaNOMECONTA.AsString;
end;

procedure TfConsultaLancCaixa.dbeContaExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TContaBanco ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DBECONTA.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfConsultaLancCaixa.dbeTipoExit(Sender: TObject);
begin
  Edit3.Text := RetornaTabela(DM1.TTipoPgto ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DBETIPO.Text ,'','','','','','','NOME' );
  Label101.Caption := '';
end;

procedure TfConsultaLancCaixa.dbeContaEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfConsultaLancCaixa.dbeContaKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaContas.fRetorno := fConsultaLancCaixa;
       fConsultaLancCaixa.Enabled := False;
       fConsultaContas.Show;

     end;
end;

procedure TfConsultaLancCaixa.dbeTipoKeyDown(Sender: TObject;   var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaTipoPgto.fRetorno := fConsultaLancCaixa ;
       fConsultaLancCaixa.Enabled := False;
       fConsultaTipoPgto.Show;

     end;
end;

procedure TfConsultaLancCaixa.dbeTipoEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfConsultaLancCaixa.dbeContaKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key,'I'); 
end;

procedure TfConsultaLancCaixa.dbeTipoKeyPress(Sender: TObject;  var Key: Char);
begin
  Key := SoNumeros(Key,'I');
end;

procedure TfConsultaLancCaixa.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      DBECONTA.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    end
  else if (xBuscar) and (xNumDevolucao = 2) then
    Begin
      DBETIPO.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    end;
  xBuscar := False
end;

end.
