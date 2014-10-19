unit uArquidiocese;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint, HintBalloon;

type
  TfArquidiocese = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsArquidiocese: TDataSource;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    HintBalloon1: THintBalloon;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsArquidioceseStateChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
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
    xAcao : String;
  end;

var
  fArquidiocese: TfArquidiocese;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaArquidiocese, Math;

{$R *.dfm}

procedure TfArquidiocese.btSairClick(Sender: TObject);
begin
  fArquidiocese.Close ;
end;

procedure TfArquidiocese.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
    }
  HabilitaForm(fArquidiocese, true);
  AbreTabela(DM1.TARQUIDIOCESE,'','pCodigo',-1,0);
  NovoRegistro(DM1.TArquidiocese,nil);
  dbeNome.SetFocus;

end;

procedure TfArquidiocese.FormShow(Sender: TObject);
begin
  DM1.TARQUIDIOCESE.Close;
  AbreTabela(DM1.TARQUIDIOCESE,'','PCODIGO',0,UltimoRegistro('Arquidiocese','Codigo','',0));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfArquidiocese.FormActivate(Sender: TObject);
begin
 if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TARQUIDIOCESE,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfArquidiocese.FormCreate(Sender: TObject);
begin
  Application.HintPause:=0;
  Application.HintHidePause:=10000;


  HabilitaForm(fArquidiocese, False);
  dmDados.mTabela :='ARQUIDIOCESE';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfArquidiocese.DsArquidioceseStateChange(Sender: TObject);
begin
 Estado(dsArquidiocese,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfArquidiocese.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TARQUIDIOCESE.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome da Arquidiocese antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsArquidiocese.State = dsInsert then
       DM1.TARQUIDIOCESE.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','','ARQUIDIOCESE',0 );

    if DsArquidiocese.State= dsInsert then
       xAcao := 'INCLUIU A ARQUIDIOCESE (' + DM1.TArquidioceseCODIGO.AsString + ') ' + DM1.TArquidioceseNOME.AsString
     else
       xAcao := 'ALTEROU A ARQUIDIOCESE (' + DM1.TArquidioceseCODIGO.AsString + ') ' + DM1.TArquidioceseNOME.AsString;

  Grava(dsArquidiocese);
  fPrincipal.Auditoria(DM1.mUsuario,'FARQUIDIOCESE',xAcao);
  HabilitaForm(fArquidiocese,False) ;

end;

procedure TfArquidiocese.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TARQUIDIOCESE);
  HabilitaForm(fArquidiocese,True);
  dbeNome.SetFocus;
end;

procedure TfArquidiocese.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsArquidiocese.State = dsEdit) or (dsArquidiocese.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TARQUIDIOCESE);
          CanClose := True;
        End;
    End
end;

procedure TfArquidiocese.FormKeyDown(Sender: TObject; var Key: Word;
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
      fArquidiocese.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaArquidiocese.fRetorno := fArquidiocese ;
      fConsultaArquidiocese.Show;

    End;

end;

procedure TfArquidiocese.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TARQUIDIOCESE.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
      fConsultaArquidiocese.Enabled := True;
      fConsultaArquidiocese.RefazerSQL;
      fConsultaArquidiocese.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfArquidiocese.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TARQUIDIOCESE);
  HabilitaForm(fArquidiocese, False);
  AbreTabela(DM1.TARQUIDIOCESE ,'','PCODIGO',0 ,UltimoRegistro('Arquidiocese','Codigo','',0));
end;

procedure TfArquidiocese.btExcluirClick(Sender: TObject);
Var
  zCodAnt,zNomeAnt : String;
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  zCodAnt  :=DM1.TArquidioceseCODIGO.AsString;
  zNomeAnt :=DM1.TArquidioceseNOME.AsString;
  
 if ApagarRegistro(DM1.TARQUIDIOCESE ,'Cadastro de Arquidiocese' ) then
    Begin
       xAcao := 'EXCLUIU A ARQUIDIOCESE (' + zCodAnt + ') ' + zNomeAnt;
       fPrincipal.Auditoria(DM1.mUsuario,'FARQUIDIOCESE',xAcao);
       AbreTabela(DM1.TARQUIDIOCESE,'','PCODIGO',0,UltimoRegistro('Arquidiocese','Codigo','',0));
    End;
 end;

procedure TfArquidiocese.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfArquidiocese.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfArquidiocese.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfArquidiocese.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar inclusão da  Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfArquidiocese.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfArquidiocese.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Cadastro Arquidiocese';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

end.
