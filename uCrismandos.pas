unit uCrismandos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint;

type
  TfCrismandos = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsCrismandos: TDataSource;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DbeNascimento: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    DbeBairro: TspSkinDBEdit;
    spSkinLabel5: TspSkinLabel;
    DbeCidade: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    DbeUf: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    DbeCep: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    spSkinLabel9: TspSkinLabel;
    DBERG: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    spSkinDBEdit1: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    Dbepai: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    DbeMae: TspSkinDBEdit;
    DbeTelefone: TspSkinLabel;
    spSkinDBEdit2: TspSkinDBEdit;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCrismandosStateChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fCrismandos: TfCrismandos;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaCrismandos;

{$R *.dfm}

procedure TfCrismandos.btSairClick(Sender: TObject);
begin
  fCrismandos.Close ;
end;

procedure TfCrismandos.btNovoClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fCrismandos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  HabilitaForm(fCrismandos, true);
  AbreTabela(DM1.TCRISMANDOS,'','pCodigo',-1,0);
  NovoRegistro(DM1.TCRISMANDOS,nil);
  Dm1.TCrismandos.FieldByName('PAROQUIA').AsInteger:=Dm1.mParoquia;
  Dm1.TCrismandos.FieldByName('DTCADASTRO').AsDateTime:=Date;
  dbeNome.SetFocus;
  
end;

procedure TfCrismandos.FormShow(Sender: TObject);
begin
  DM1.TCRISMANDOS.Close;
  AbreTabela(DM1.TCRISMANDOS,'PPAROQUIA','pCODIGO',Dm1.mParoquia,UltimoRegistro('CRISMANDOS','Codigo','',0));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfCrismandos.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TCRISMANDOS,'PPAROQUIA','pCODIGO',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      //dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;

    End;
  //CarregaEdits;
  xBuscar := False;
end;

procedure TfCrismandos.FormCreate(Sender: TObject);
begin
  HabilitaForm(fCrismandos, False);
  dmDados.mTabela :='CRISMANDOS';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfCrismandos.DsCrismandosStateChange(Sender: TObject);
begin
 Estado(dsCrismandos,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfCrismandos.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TCRISMANDOS.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Crismandos antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsCrismandos.State = dsInsert then
       DM1.TCRISMANDOS.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','','CRISMANDOS',0 );

  Grava(dsCrismandos);
  HabilitaForm(fCrismandos,False) ;

end;

procedure TfCrismandos.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fCrismandos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TCRISMANDOS);
  HabilitaForm(fCrismandos,True);
  dbeNome.SetFocus;
end;

procedure TfCrismandos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsCrismandos.State = dsEdit) or (dsCrismandos.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TCRISMANDOS);
          CanClose := True;
        End;
    End
end;

procedure TfCrismandos.FormKeyDown(Sender: TObject; var Key: Word;
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
      fCrismandos.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaCrismandos.fRetorno := fCrismandos ;
      fConsultaCrismandos.Show;

    End;

end;

procedure TfCrismandos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TCRISMANDOS.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaCrismandos.Enabled := True;
       fConsultaCrismandos.RefazerSQL;
       fConsultaCrismandos.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfCrismandos.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TCRISMANDOS);
  HabilitaForm(fCrismandos, False);
  AbreTabela(DM1.TCRISMANDOS ,'','PCODIGO',0 ,UltimoRegistro('CRISMANDOS','Codigo','',0));
end;

procedure TfCrismandos.btExcluirClick(Sender: TObject);
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fCrismandos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
 if ApagarRegistro(DM1.TCRISMANDOS ,'Cadastro de Crismandos' ) then
   AbreTabela(DM1.TCRISMANDOS,'','PCODIGO',0,UltimoRegistro('CRISMANDOS','Codigo','',0));
end;

end.
