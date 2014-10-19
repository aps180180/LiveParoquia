unit uGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint;

type
  TfGrupo = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsGrupo: TDataSource;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsGrupoStateChange(Sender: TObject);
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
  end;

var
  fGrupo: TfGrupo;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaGrupo;

{$R *.dfm}

procedure TfGrupo.btSairClick(Sender: TObject);
begin
  fGrupo.Close ;
end;

procedure TfGrupo.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fGrupo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fGrupo, true);
  AbreTabela(DM1.TGRUPO,'','pCodigo',-1,0);
  NovoRegistro(DM1.TGRUPO,nil);
  dbeNome.SetFocus;
  
end;

procedure TfGrupo.FormShow(Sender: TObject);
begin
  DM1.TGRUPO.Close;
  AbreTabela(DM1.TGRUPO,'','PCODIGO',0,UltimoRegistro('GRUPOPRODUTO','Codigo','',0));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfGrupo.FormActivate(Sender: TObject);
begin
 if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TGRUPO,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfGrupo.FormCreate(Sender: TObject);
begin
  HabilitaForm(fGrupo, False);
  dmDados.mTabela :='GRUPOPRODUTO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfGrupo.DsGrupoStateChange(Sender: TObject);
begin
 Estado(dsGrupo,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfGrupo.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TGRUPO.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Grupo antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsGrupo.State = dsInsert then
       DM1.TGRUPO.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','','GRUPOPRODUTO',0 );

  Grava(dsGrupo);
  HabilitaForm(fGrupo,False) ;

end;

procedure TfGrupo.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fGrupo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TGRUPO);
  HabilitaForm(fGrupo,True);
  dbeNome.SetFocus;
end;

procedure TfGrupo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsGrupo.State = dsEdit) or (dsGrupo.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TGRUPO);
          CanClose := True;
        End;
    End
end;

procedure TfGrupo.FormKeyDown(Sender: TObject; var Key: Word;
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
      fGrupo.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaGrupo.fRetorno := fGrupo ;
      fConsultaGrupo.Show;

    End;

end;

procedure TfGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TGRUPO.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       //fConsultaParoquias.Enabled := True;
       //fConsultaParoquias.RefazerSQL;
       //fConsultaParoquias.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfGrupo.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TGRUPO);
  HabilitaForm(fGrupo, False);
  AbreTabela(DM1.TGRUPO ,'','PCODIGO',0 ,UltimoRegistro('GRUPOPRODUTO','Codigo','',0));
end;

procedure TfGrupo.btExcluirClick(Sender: TObject);
begin
 {if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fGrupo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
 if ApagarRegistro(DM1.TGRUPO ,'Cadastro de Grupos' ) then
   AbreTabela(DM1.TGRUPO,'','PCODIGO',0,UltimoRegistro('GRUPOPRODUTO','Codigo','',0));
end;

end.
