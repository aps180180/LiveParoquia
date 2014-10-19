unit uFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, DynamicSkinForm, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, IBCustomDataSet, IBQuery;

type
  TfFornecedor = class(TForm)
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinLabel1: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeRazao: TspSkinDBEdit;
    DsFornecedor: TDataSource;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    DbeBairro: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    DbeCidade: TspSkinDBEdit;
    DbeUf: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    DbeCep: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    BbeTelefone: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    DbeCelular: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    DbeEmail: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    spSkinLabel13: TspSkinLabel;
    MemoObs: TspSkinDBMemo;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    spSkinLabel12: TspSkinLabel;
    dbeFantasia: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    dbeFAX: TspSkinDBEdit;
    spSkinDBRadioGroup1: TspSkinDBRadioGroup;
    spSkinLabel14: TspSkinLabel;
    DBECGC: TspSkinDBEdit;
    spSkinLabel15: TspSkinLabel;
    dbeCPF: TspSkinDBEdit;
    spSkinLabel16: TspSkinLabel;
    dbeInsc: TspSkinDBEdit;
    procedure btSairClick(Sender: TObject);
    procedure DsFornecedorStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure MemoObsKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fFornecedor: TfFornecedor;

implementation

uses Sistools, uPrincipal, uDMDados, uDM1, uConsultaFornecedor;


{$R *.dfm}

procedure TfFornecedor.btSairClick(Sender: TObject);
begin
  fFornecedor.Close;
end;

procedure TfFornecedor.DsFornecedorStateChange(Sender: TObject);
begin
  Estado(DsFornecedor,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfFornecedor.FormCreate(Sender: TObject);
begin
  HabilitaForm(fFornecedor,False);
  dmDados.mTabela := 'FORNECEDOR';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;

end;

procedure TfFornecedor.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TFornecedor   ,'pParoquia','pCodigo',DM1.mParoquia,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
    End;
  xBuscar := False;

end;

procedure TfFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.TFornecedor.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaFornecedor.Enabled := True;
       fConsultaFornecedor.RefazerSQL;
       fConsultaFornecedor.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfFornecedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (DsFornecedor.State = dsEdit) or (DsFornecedor.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TFornecedor );
          CanClose := True;
        End;
    End
end;

procedure TfFornecedor.FormShow(Sender: TObject);
begin
  DM1.TFornecedor.Close;
  AbreTabela(DM1.TFornecedor ,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('Fornecedor','Codigo','Paroquia',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';

end;

procedure TfFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Shift = []) and (Key = VK_F2 ) then
    Begin
    if btNovo.Enabled then
      btNovo.OnClick(Self); ;
    End
  else if (Shift = []) and (Key = VK_F3 ) then
    Begin
      if btSalvar.Enabled then
        btSalvar.OnClick(Self) ;
    End
  else if (Shift = []) and (Key = VK_F4 ) then
    Begin
      if btAlterar.Enabled then
        btAlterar.OnClick(Self);
    End
  else if (Shift = []) and (Key = VK_F5 ) then
    Begin
      if btCancelar .Enabled then
        btCancelar.OnClick(Self);
    End
  else if (Shift = []) and (Key = VK_F6 ) then
    Begin
      if btExcluir.Enabled then
        btExcluir.OnClick(Self);
    End
  else if (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
        btSair.OnClick(Self);
    End
  else If (Shift = []) and (Key = VK_F7 ) then
    Begin
      xBuscar := True;
      fFornecedor.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      xNumDevolucao := 0;
      fConsultaFornecedor.fRetorno := fFornecedor  ;
      fConsultaFornecedor.Show;

    End;

end;

procedure TfFornecedor.btNovoClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fFornecedor')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
    }
  HabilitaForm(fFornecedor, true);
  AbreTabela(DM1.TFornecedor ,'PParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TFornecedor ,nil);
  Dm1.TFornecedor.FieldByName('DTCADASTRO').AsDateTime := Date ;//grava data cadastro
  DM1.TFornecedorPAROQUIA.AsInteger := DM1.mParoquia;
  DM1.TFornecedorTIPO.AsString := 'J';

  dbeRazao.SetFocus;
end;

procedure TfFornecedor.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;

  if DM1.TFornecedorRAZAO_SOCIAL.AsString ='' then
    Begin
      MsgValida('Informe a Razão Social do Fornecedor antes de salvar!',nil,nil);
      dbeRazao.SetFocus;
      Exit;
    End;
  if DM1.TFornecedorNOME_FANTASIA.AsString ='' then
    Begin
      DM1.TFornecedorNOME_FANTASIA.AsString := DM1.TFornecedorRAZAO_SOCIAL.AsString;

    End;


  if DsFornecedor.State = dsInsert then
    DM1.TFornecedor.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','FORNECEDOR',DM1.mParoquia);

  Grava(DsFornecedor);
  HabilitaForm(fFornecedor,False) ;

end;

procedure TfFornecedor.btAlterarClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fFornecedor')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  ModificaRegistro(DM1.TFornecedor);
  HabilitaForm(fFornecedor,True);
  dbeRazao.SetFocus;

end;

procedure TfFornecedor.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TFornecedor);
  HabilitaForm(fFornecedor, False);
  AbreTabela(DM1.TFornecedor,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('Fornecedor','Codigo','Paroquia',DM1.mParoquia));

end;

procedure TfFornecedor.btExcluirClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fFornecedor')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }

  if ApagarRegistro(DM1.TDIZIMISTA ,'Cadastro de Fornecedores' ) then
   AbreTabela(DM1.TFornecedor,'PParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Fornecedor','Codigo','Paroquia',DM1.mParoquia));

end;





procedure TfFornecedor.MemoObsKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

end.
