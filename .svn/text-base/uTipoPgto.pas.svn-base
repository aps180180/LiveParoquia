unit uTipoPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, HintBalloon, DynamicSkinForm, DB, SkinBoxCtrls,
  spdbctrls, StdCtrls, Mask;

type
  TfTipoPgto = class(TForm)
    GroupBox1: TspSkinGroupBox;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DsTipoPgto: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
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
    RadioGroup1: TspSkinDBRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DsTipoPgtoStateChange(Sender: TObject);
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
  fTipoPgto: TfTipoPgto;

implementation

uses uDM1, Sistools, uDMDados, uPrincipal, uConsultaTipoPgto;

{$R *.dfm}

procedure TfTipoPgto.FormActivate(Sender: TObject);
begin
  if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TTipoPgto,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfTipoPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaTipoPgto.Enabled := True;
       fConsultaTipoPgto.RefazerSQL;
       fConsultaTipoPgto.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfTipoPgto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (DsTipoPgto.State = dsEdit) or (DsTipoPgto.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TTipoPgto);
          CanClose := True;
        End;
    End

end;

procedure TfTipoPgto.FormCreate(Sender: TObject);
begin
  Application.HintPause:=0;
  Application.HintHidePause:=10000;
  HabilitaForm(fTipoPgto, False);
  dmDados.mTabela := 'TIPOPGTO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfTipoPgto.FormKeyDown(Sender: TObject; var Key: Word;
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
      fTipoPgto.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaTipoPgto.fRetorno := fTipoPgto  ;
      fConsultaTipoPgto.Show;

    End;

end;

procedure TfTipoPgto.FormShow(Sender: TObject);
begin
  DM1.TTipoPgto.Close;
  AbreTabela(DM1.TTipoPgto,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('TIPOPGTO','Codigo','Paroquia',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfTipoPgto.btNovoClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'ftTipoPgto')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fTipoPgto, true);
  AbreTabela(DM1.TTipoPgto,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TTipoPgto,nil);
  DM1.TTipoPgtoPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TTipoPgto.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeNome.SetFocus;
end;

procedure TfTipoPgto.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TTipoPgto.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Tipo de Pagamento antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
  If (DM1.TTipoPgto.FieldByName('TIPOOPERACAO').AsString='') Then
    Begin
      MsgValida('Informe o Tipo da Operação antes de salvar!',nil,nil);
      RadioGroup1.SetFocus;
      Exit;
    End;

     if DsTipoPgto.State = dsInsert then
       DM1.TTipoPgto.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','TIPOPGTO',DM1.mParoquia);

     if DsTipoPgto.State= dsInsert then
       xAcao := 'INCLUIU UM TIPO PAGAMENTO (' + DM1.TTipoPgtoCODIGO.AsString + ') ' + DM1.TTipoPgtoNOME.AsString
     else
       Dm1.TTipoPgto.FieldByName('DTALTERACAO').AsDateTime:=Now;
       xAcao := 'ALTEROU UM TIPO PAGAMENTO (' + DM1.TTipoPgtoCODIGO.AsString + ') ' + DM1.TTipoPgtoNOME.AsString ;

  Grava(DsTipoPgto );
  fPrincipal.Auditoria(DM1.mUsuario,'FTIPOPAGTO',xAcao);
  HabilitaForm(fTipoPgto,False) ;
end;

procedure TfTipoPgto.DsTipoPgtoStateChange(Sender: TObject);
begin
  Estado(DsTipoPgto,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfTipoPgto.btAlterarClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fTipoPgto')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TTipoPgto);//procedure---sistools
  HabilitaForm(fTipoPgto,True); //procedure----sistools
  dbeNome.SetFocus;
end;

procedure TfTipoPgto.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TTipoPgto);
  HabilitaForm(fTipoPgto, False);
  AbreTabela(DM1.TTipoPgto ,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('TIPOPGTO','Codigo','Paroquia',DM1.mParoquia));
end;

procedure TfTipoPgto.btExcluirClick(Sender: TObject);
var
 zCodAnt,zNomeAnt : String;
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fTipoPgto')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }

  zCodAnt := DM1.TTipoPgtoCODIGO.AsString;
  zNomeAnt := DM1.TTipoPgtoNOME.AsString;

  if ApagarRegistro(DM1.TTipoPgto ,'Cadastro de Tipo Pagamentos/Operação Financeira' ) then
    Begin
      AbreTabela(DM1.TTipoPgto,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('TIPOPGTO','Codigo','Paroquia',DM1.mParoquia));
      xAcao := 'EXCLUIU UM TIPO PAGAMENTO (' + zCodAnt + ') ' + zNomeAnt ;
      fPrincipal.Auditoria(DM1.mUsuario,'FTIPOPGTO',xAcao);
    End;

end;

procedure TfTipoPgto.btSairClick(Sender: TObject);
begin
  fTipoPgto.Close;
end;

end.
