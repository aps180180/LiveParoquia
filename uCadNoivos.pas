unit uCadNoivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint, DBCtrls, ComCtrls, SkinTabs;

type
  TfCadNoivos = class(TForm)
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsNoivos: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    PageControl1: TspSkinPageControl;
    TabSheet1: TspSkinTabSheet;
    GroupBox1: TspSkinGroupBox;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DbeData: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    DbeBairro: TspSkinDBEdit;
    spSkinLabel5: TspSkinLabel;
    DbeCidade: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    DbeUf: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    spSkinLabel8: TspSkinLabel;
    DbeCep: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    DbeTelefone: TspSkinDBEdit;
    DbeRg: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    DbeCpf: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    DbeMae: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    spSkinLabel13: TspSkinLabel;
    DbePai: TspSkinDBEdit;
    spSkinTabSheet1: TspSkinTabSheet;
    GroupBox2: TspSkinGroupBox;
    DbeNomeNoiva: TspSkinDBEdit;
    spSkinLabel14: TspSkinLabel;
    spSkinDBEdit3: TspSkinDBEdit;
    spSkinLabel16: TspSkinLabel;
    spSkinDBEdit4: TspSkinDBEdit;
    spSkinLabel17: TspSkinLabel;
    spSkinDBEdit5: TspSkinDBEdit;
    spSkinLabel18: TspSkinLabel;
    spSkinDBEdit6: TspSkinDBEdit;
    spSkinLabel19: TspSkinLabel;
    spSkinDBEdit7: TspSkinDBEdit;
    spSkinLabel20: TspSkinLabel;
    spSkinLabel21: TspSkinLabel;
    spSkinDBEdit8: TspSkinDBEdit;
    spSkinLabel22: TspSkinLabel;
    spSkinDBEdit9: TspSkinDBEdit;
    spSkinDBEdit10: TspSkinDBEdit;
    spSkinLabel23: TspSkinLabel;
    spSkinDBEdit11: TspSkinDBEdit;
    spSkinLabel24: TspSkinLabel;
    spSkinDBEdit12: TspSkinDBEdit;
    spSkinLabel25: TspSkinLabel;
    spSkinLabel26: TspSkinLabel;
    spSkinDBEdit13: TspSkinDBEdit;
    StatusPanel2: TspSkinStatusPanel;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsNoivosStateChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DbePaiExit(Sender: TObject);
    procedure spSkinDBEdit13Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    xAcao:String;
  end;

var
  fCadNoivos: TfCadNoivos;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaNoivos, uMatrimonio;

{$R *.dfm}

procedure TfCadNoivos.btSairClick(Sender: TObject);
begin
  fCadNoivos.Close ;
end;

procedure TfCadNoivos.btNovoClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fCadNoivos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  PageControl1.TabIndex:=0;
  GroupBox1.Enabled:=True;
  GroupBox2.Enabled:=True;
  AbreTabela(DM1.TNoivos,'','pCodigo',-1,0);
  NovoRegistro(DM1.TNoivos,nil);
  Dm1.TNoivos.FieldByName('PAROQUIA').AsInteger:=Dm1.mParoquia;
  Dm1.TNoivos.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeNome.SetFocus;

end;

procedure TfCadNoivos.FormShow(Sender: TObject);
begin
  
  DM1.TNoivos.Close;
  AbreTabela(DM1.TNoivos,'pPAROQUIA','pCODIGO',Dm1.mParoquia,UltimoRegistro('NOIVOS','Codigo','PAROQUIA',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfCadNoivos.FormActivate(Sender: TObject);
begin
 PageControl1.TabIndex:=0;
 GroupBox1.Enabled:=False;
 GroupBox2.Enabled:=False;
 if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TNoivos,'PPAROQUIA','pCODIGO',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
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

procedure TfCadNoivos.FormCreate(Sender: TObject);
begin
  //HabilitaForm(fCadNoivos, False);
  dmDados.mTabela :='NOIVOS';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfCadNoivos.DsNoivosStateChange(Sender: TObject);
begin
Estado(DsNoivos,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfCadNoivos.btSalvarClick(Sender: TObject);
begin

  ActiveControl := nil;


  if (DM1.TNoivos.FieldByName('NOME_NOIVO').AsString  ='')  Then
   Begin
      MsgValida('Informe o nome do Noivo antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
   PageControl1.TabIndex:=1;
  if (DM1.TNoivos.FieldByName('NOME_NOIVA').AsString  ='')  Then
   Begin
      MsgValida('Informe o nome da Noiva antes de salvar!',nil,nil);
      dbeNomeNoiva.SetFocus;
      Exit;
   End;


     if DsNoivos.State = dsInsert then
       DM1.TNoivos.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','','NOIVOS',0 );
     {Grava na tabela LOG as açoes(INCLUIR,ALTERAR,EXCLUIR) feitas pelo usuario}
     if DsNoivos.State= dsInsert then
       xAcao := 'INCLUIU OS NOIVOS (' + DM1.TNOIVOSCODIGO.AsString + ') ' + DM1.TNOIVOSNOME_NOIVO.AsString +'--'+ Dm1.TNOIVOSNOME_NOIVA.AsString
     else
       Dm1.TNoivos.FieldByName('DTALTERACAO').AsDateTime:=Now;
       xAcao := 'ALTEROU OS NOIVOS (' + DM1.TNOIVOSCODIGO.AsString + ') ' + DM1.TNOIVOSNOME_NOIVO.AsString +'--'+ Dm1.TNOIVOSNOME_NOIVA.AsString ;

  Grava(DsNoivos);
  fPrincipal.Auditoria(DM1.mUsuario,'FCADNOIVOS',xAcao);
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  PageControl1.TabIndex:=0;
  //HabilitaForm(fCadNoivos,False) ;

end;

procedure TfCadNoivos.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fCadNoivos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }
  PageControl1.TabIndex:=0;
  ModificaRegistro(DM1.TNoivos);
  GroupBox1.Enabled:=True;
  GroupBox2.Enabled:=True;
  dbeNome.SetFocus;
end;

procedure TfCadNoivos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (DsNoivos.State = dsEdit) or (DsNoivos.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TNoivos);
          CanClose := True;
        End;
    End
end;

procedure TfCadNoivos.FormKeyDown(Sender: TObject; var Key: Word;
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
      fCadNoivos.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaNoivos.fRetorno:= fCadNoivos ;
      fConsultaNoivos.Show;

    End;

end;

procedure TfCadNoivos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TNoivos.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaNoivos.Enabled := True;
       fConsultaNoivos.RefazerSQL;
       fConsultaNoivos.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfCadNoivos.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TNoivos);
  //HabilitaForm(fCadNoivos, False);
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  AbreTabela(DM1.TNoivos ,'','PCODIGO',0 ,UltimoRegistro('NOIVOS','Codigo','',0));
end;

procedure TfCadNoivos.btExcluirClick(Sender: TObject);
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fCadNoivos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}

 if ApagarRegistro(DM1.TNoivos ,'Cadastro de Noiva/Noivo' ) then
   AbreTabela(DM1.TNoivos,'','PCODIGO',0,UltimoRegistro('NOIVOS','Codigo','',0));

   {Grava na tabela LOG as açoes(INCLUIR,ALTERAR,EXCLUIR) feitas pelo usuario}
   xAcao := 'EXCLUIU OS NOIVOS (' + DM1.TNOIVOSCODIGO.AsString + ') ' + DM1.TNOIVOSNOME_NOIVO.AsString +'--'+ Dm1.TNOIVOSNOME_NOIVA.AsString;
   fPrincipal.Auditoria(DM1.mUsuario,'FCADNOIVOS',xAcao);
end;

procedure TfCadNoivos.DbePaiExit(Sender: TObject);
begin
  PageControl1.TabIndex:=1;
  DbeNomeNoiva.SetFocus;
end;

procedure TfCadNoivos.spSkinDBEdit13Exit(Sender: TObject);
begin
  PageControl1.TabIndex:=0;
end;

end.
