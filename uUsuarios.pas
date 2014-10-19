unit uUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo;

type
  TfUsuarios = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNomeUsuario: TspSkinDBEdit;
    dsUsuarios: TDataSource;
    HintBalloon1: THintBalloon;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    spSkinLabel3: TspSkinLabel;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    dbeDepto: TspSkinDBEdit;
    dbeSenha: TspSkinDBPasswordEdit;
    dbeRepSenha: TspSkinPasswordEdit;
    RadioGroup: TspSkinDBRadioGroup;
    StatusPanel2: TspSkinStatusPanel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbeComunidadeEnter(Sender: TObject);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fUsuarios: TfUsuarios;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, U_Cipher, uConsultaUsuarios;



{$R *.dfm}

procedure TfUsuarios.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fUsuarios')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fUsuarios, true);
  AbreTabela(DM1.TUsuario,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TUsuario,nil);
  DM1.TUsuarioPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TUsuario.FieldByName('DTCADASTRO').AsDateTime:=Now;
  RadioGroup.Checked:=True;
  dbeNomeUsuario.SetFocus;

end;

procedure TfUsuarios.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  ActiveControl := nil;

  If dbeNomeUsuario.Text='' then
    Begin
     application.MessageBox('Informe o Usuário antes de Salvar!','Atenção',MB_OK + MB_ICONQUESTION);
     dbeNomeUsuario.SetFocus;
     exit;
    end;

  If dbeDepto.Text='' then
    Begin
     application.MessageBox('Informe o Departamento antes de Salvar!','Atenção',MB_OK + MB_ICONQUESTION);
     dbeDepto.SetFocus;
     exit;
    end;

  if (DM1.TUsuarioSENHA.AsString  ='')  Then
    Begin
      Application.MessageBox('Informe a Senha antes de Salvar!','Atenção',MB_OK + MB_ICONINFORMATION);
      dbeSenha.SetFocus;
      Exit;
    End;

  if (dbeRepSenha.Text ='') AND (dsUsuarios.State = dsInsert)   Then
    Begin
      Application.MessageBox('Confirme a Senha antes de Salvar!','Atenção',MB_OK + MB_ICONINFORMATION);
      dbeRepSenha.SetFocus;
      Exit;
    End;
  if (dbeRepSenha.Text <> dbeSenha.Text) and (dsUsuarios.State = dsInsert ) Then
    Begin
      Application.MessageBox(' A Confirmação da Senha não confere com a senha digitada!','Atenção',MB_OK + MB_ICONINFORMATION);
      dbeRepSenha.SetFocus;
      Exit;
    End;



  if dsUsuarios.State = dsInsert then
    DM1.TUsuario.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','USUARIOS',DM1.mParoquia);
  //DM1.TUsuarioSENHA.AsString := MD5Hash(DM1.TUsuarioSENHA.AsString);
  Grava(dsUsuarios);
  HabilitaForm(fUsuarios,False) ;

end;

procedure TfUsuarios.btAlterarClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fUsuarios')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  ModificaRegistro(DM1.TUsuario);
  HabilitaForm(fUsuarios,True);
  dbeNomeUsuario.SetFocus;
end;

procedure TfUsuarios.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TUsuario);
  HabilitaForm(fUsuarios, False);
  AbreTabela(DM1.TBatisterio,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('USUARIOS','Codigo','Paroquia',DM1.mParoquia));

end;

procedure TfUsuarios.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fUsuarios')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TUsuario ,'Cadastro de Usuários' ) then
   AbreTabela(DM1.TUsuario,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('USUARIOS','Codigo','Paroquia',DM1.mParoquia));

end;

procedure TfUsuarios.btSairClick(Sender: TObject);
begin
  fUsuarios.Close;
end;

procedure TfUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
   Estado(dsUsuarios,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfUsuarios.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TUsuario ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
    End;
   xBuscar := False;

end;

procedure TfUsuarios.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TUsuario.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       //fConsultaMinistrosPadres.Enabled := True;
       //fConsultaMinistrosPadres.RefazerSQL;
       //fConsultaMinistrosPadres.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfUsuarios.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsUsuarios.State = dsEdit) or (dsUsuarios.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TUsuario);
          CanClose := True;
        End;
    End
end;

procedure TfUsuarios.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'USUARIOS';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;

end;

procedure TfUsuarios.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fUsuarios.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaUsuarios.fRetorno := fUsuarios  ;
      fConsultaUsuarios.Show;

    End;

end;

procedure TfUsuarios.FormShow(Sender: TObject);
begin
  DM1.TUsuario.Close;
  AbreTabela(DM1.TUsuario ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('USUARIOS','Codigo','Paroquia',DM1.mParoquia));

  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfUsuarios.dbeComunidadeEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;











procedure TfUsuarios.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Usuario';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfUsuarios.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Usuário';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfUsuarios.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Usuário';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfUsuarios.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar Usuário';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfUsuarios.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Usuário';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfUsuarios.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Cadastro de  Usuário';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;



end.
