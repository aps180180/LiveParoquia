unit uComunidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, DB, IBCustomDataSet, IBTable;

type
  TfComunidades = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btSair: TspSkinButton;
    btExcluir: TspSkinButton;
    label101: TspSkinLabel;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    spSkinLabel7: TspSkinLabel;
    DbeTelefone: TspSkinDBEdit;
    DsComunidade: TDataSource;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsComunidadeStateChange(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

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
  fComunidades: TfComunidades;

implementation

uses uDM1, Sistools, uDMDados, uPrincipal, uConsultaComunidade;

{$R *.dfm}

procedure TfComunidades.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fComunidades, true);
  AbreTabela(DM1.TCOMUNIDADE,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TCOMUNIDADE,nil);
  DM1.TComunidadePAROQUIA.AsInteger := DM1.mParoquia;
  dbeNome.SetFocus;
end;

procedure TfComunidades.btSalvarClick(Sender: TObject);
begin
 ActiveControl := nil;
  if (DM1.TCOMUNIDADE.FieldByName('COMUNIDADE').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome da Comunidade antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if dsComunidade.State = dsInsert then
       DM1.TCOMUNIDADE.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','COMUNIDADE',DM1.mParoquia);

     if DsComunidade.State= dsInsert then
       xAcao := 'INCLUIU A COMUNIDADE (' + DM1.TComunidadeCODIGO.AsString + ') ' + DM1.TComunidadeCOMUNIDADE.AsString
     else
       xAcao := 'ALTEROU A COMUNIDADE (' + DM1.TComunidadeCODIGO.AsString + ') ' + DM1.TComunidadeCOMUNIDADE.AsString;

  Grava(dsComunidade );
  fPrincipal.Auditoria(DM1.mUsuario,'FCOMUNIDADES',xAcao);
  HabilitaForm(fComunidades,False) ;

end;

procedure TfComunidades.FormActivate(Sender: TObject);
begin
 if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TCOMUNIDADE,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfComunidades.FormCreate(Sender: TObject);
begin
  dmDados.mTabela := 'COMUNIDADE';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfComunidades.FormShow(Sender: TObject);
begin
  DM1.TCOMUNIDADE.Close;
  AbreTabela(DM1.TCOMUNIDADE,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Comunidade','Codigo','Paroquia',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';

end;

procedure TfComunidades.DsComunidadeStateChange(Sender: TObject);
begin
   Estado(dsComunidade,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfComunidades.btSairClick(Sender: TObject);
begin
 Fcomunidades.Close;
end;

procedure TfComunidades.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TCOMUNIDADE);//procedure---sistools
  HabilitaForm(fComunidades,True); //procedure----sistools
  dbeNome.SetFocus;
end;

procedure TfComunidades.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TCOMUNIDADE);
  HabilitaForm(fComunidades, False);
  AbreTabela(DM1.TCOMUNIDADE ,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('Comunidade','Codigo','Paroquia',DM1.mParoquia));
end;

procedure TfComunidades.btExcluirClick(Sender: TObject);
Var
  zCodAnt,zNomeAnt : String;

begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }

  zCodAnt  := DM1.TComunidadeCODIGO.AsString;
  zNomeAnt := DM1.TComunidadeCOMUNIDADE.AsString;

  if ApagarRegistro(DM1.TCOMUNIDADE ,'Cadastro de Comunidades' ) then
    Begin
      AbreTabela(DM1.TCOMUNIDADE,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Comunidade','Codigo','Paroquia',DM1.mParoquia));
      xAcao := 'EXCLUIU A COMUNIDADE (' + zCodAnt + ') ' + zNomeAnt ;
      fPrincipal.Auditoria(DM1.mUsuario,'FCOMUNIDADES',xAcao);
    End;
end;

procedure TfComunidades.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
      fConsultaComunidade.Enabled := True;
      fConsultaComunidade.RefazerSQL;
      fConsultaComunidade.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfComunidades.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
  if (dsComunidade.State = dsEdit) or (dsComunidade.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TCOMUNIDADE);
          CanClose := True;
        End;
    End
end;

procedure TfComunidades.FormKeyDown(Sender: TObject; var Key: Word;
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
      fComunidades.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaComunidade.fRetorno := fComunidades  ;
      fConsultaComunidade.Show;

    End;

end;

end.
