unit uContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, HintBalloon, DynamicSkinForm, DB, StdCtrls, Mask,
  SkinBoxCtrls, spdbctrls;

type
  TfContas = class(TForm)
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    StatusPanel2: TspSkinStatusPanel;
    GroupBox1: TspSkinGroupBox;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DsContaBanco: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    spSkinDBComboBox1: TspSkinDBComboBox;
    spSkinLabel3: TspSkinLabel;
    spSkinLabel4: TspSkinLabel;
    spSkinDBEdit1: TspSkinDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DsContaBancoStateChange(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    xAcao : String;
  end;

var
  fContas: TfContas;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaContas;



{$R *.dfm}

procedure TfContas.FormActivate(Sender: TObject);
begin
  if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TContaBanco,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaContas.Enabled := True;
       fConsultaContas.RefazerSQL;
       fConsultaContas.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfContas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if (DsContaBanco.State = dsEdit) or (DsContaBanco.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TContaBanco);
          CanClose := True;
        End;
    End
end;

procedure TfContas.FormCreate(Sender: TObject);
begin
  Application.HintPause:=0;
  Application.HintHidePause:=10000;
  HabilitaForm(fContas, False);
  dmDados.mTabela := 'CONTABANCO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfContas.FormKeyDown(Sender: TObject; var Key: Word;
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
      fContas.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaContas.fRetorno := fContas  ;
      fConsultaContas.Show;

    End;

end;

procedure TfContas.FormShow(Sender: TObject);
begin
  DM1.TContaBanco.Close;
  AbreTabela(DM1.TContaBanco,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('CONTABANCO','Codigo','Paroquia',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfContas.btNovoClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fContas, true);
  AbreTabela(DM1.TContaBanco,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TContaBanco,nil);
  DM1.TContaBancoPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TContaBanco.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeNome.SetFocus;
end;

procedure TfContas.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TContaBanco.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome da Conta/Banco antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if DsContaBanco.State = dsInsert then
       DM1.TContaBanco.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','CONTABANCO',DM1.mParoquia);

     if DsContaBanco.State= dsInsert then
       xAcao := 'INCLUIU UMA CONTA (' + DM1.TContaBancoCODIGO.AsString + ') ' + DM1.TContaBancoNOME.AsString
     else
       Dm1.TContaBanco.FieldByName('DTALTERACAO').AsDateTime:=Now;
       xAcao := 'ALTEROU UMA CONTA (' + DM1.TContaBancoCODIGO.AsString + ') ' + DM1.TContaBancoNOME.AsString ;

  Grava(DsContaBanco );
  fPrincipal.Auditoria(DM1.mUsuario,'FCONTAS',xAcao);
  HabilitaForm(fContas,False) ;

end;

procedure TfContas.DsContaBancoStateChange(Sender: TObject);
begin
  Estado(DsContaBanco,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfContas.btAlterarClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TContaBanco);//procedure---sistools
  HabilitaForm(fContas,True); //procedure----sistools
  dbeNome.SetFocus;
end;

procedure TfContas.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TContaBanco);
  HabilitaForm(fContas, False);
  AbreTabela(DM1.TContaBanco ,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('CONTABANCO','Codigo','Paroquia',DM1.mParoquia));
end;

procedure TfContas.btExcluirClick(Sender: TObject);
var
 zCodAnt,zNomeAnt : String;
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fConta')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }

  zCodAnt := DM1.TContaBancoCODIGO.AsString;
  zNomeAnt := DM1.TContaBancoNOME.AsString;

  if ApagarRegistro(DM1.TContaBanco ,'Cadastro de Conta/Bancos' ) then
    Begin
      AbreTabela(DM1.TContaBanco,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('CONTABANCO','Codigo','Paroquia',DM1.mParoquia));
      xAcao := 'EXCLUIU UMA CONTA (' + zCodAnt + ') ' + zNomeAnt ;
       fPrincipal.Auditoria(DM1.mUsuario,'FCONTAS',xAcao);
    End;
end;

procedure TfContas.btSairClick(Sender: TObject);
begin
  fContas.Close;
end;

end.
