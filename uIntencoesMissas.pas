unit uIntencoesMissas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB;

type
  TfIntencoesMissas = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    DsIntencoesMissas: TDataSource;
    label101: TspSkinLabel;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DsIntencoesMissasStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
  end;

var
  fIntencoesMissas: TfIntencoesMissas;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaMinistrosPadres,
  uConsultaIntencoesMissas;

{$R *.dfm}

procedure TfIntencoesMissas.btNovoClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fIntencoesMissas')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  HabilitaForm(fIntencoesMissas, true);
  AbreTabela(DM1.TIntencoesMissas,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TIntencoesMissas,nil);
  Dm1.TIntencoesMissas.FieldByName('DTCADASTRO').AsDateTime := Date ;//grava data cadastro
  DM1.TIntencoesMissasPAROQUIA.AsInteger := DM1.mParoquia;
  dbeNome.SetFocus;
end;

procedure TfIntencoesMissas.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TIntencoesMissas.FieldByName('INTENCOES').AsString  ='')  Then
    Begin
      MsgValida('Informe a INTENÇÃO DE MISSA antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if DsIntencoesMissas.State = dsInsert then
       DM1.TIntencoesMissas.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','INTENCOES_MISSAS',DM1.mParoquia);

  Grava(DsIntencoesMissas);
  HabilitaForm(fIntencoesMissas,False) ;

end;

procedure TfIntencoesMissas.btAlterarClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fIntencoesMissas')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  ModificaRegistro(DM1.TIntencoesMissas);
  HabilitaForm(fIntencoesMissas,True);
  dbeNome.SetFocus;
end;

procedure TfIntencoesMissas.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TIntencoesMissas);
  HabilitaForm(fIntencoesMissas, False);
  AbreTabela(DM1.TIntencoesMissas,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('INTENCOES_MISSAS','Codigo','Paroquia',DM1.mParoquia));
end;

procedure TfIntencoesMissas.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fIntencoesMissas')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TINTENCOESMISSAS ,'Cadastro de INTENÇOES DE MISSAS' ) then
   AbreTabela(DM1.TINTENCOESMISSAS,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('INTENCOES_MISSAS','Codigo','Paroquia',DM1.mParoquia));
end;

procedure TfIntencoesMissas.btSairClick(Sender: TObject);
begin
  fIntencoesMissas.Close;
end;

procedure TfIntencoesMissas.DsIntencoesMissasStateChange(Sender: TObject);
begin
   Estado(DsIntencoesMissas,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfIntencoesMissas.FormActivate(Sender: TObject);
begin
  if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TIntencoesMissas ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End

    End;

end;

procedure TfIntencoesMissas.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TIntencoesMissas.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       //fConsultaIntencoesMissas.Enabled := True;
       //fConsultaIntencoesMissas.RefazerSQL;
       //fConsultaIntencoesMissas.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfIntencoesMissas.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (DsIntencoesMissas.State = dsEdit) or (DsIntencoesMissas.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TIntencoesMissas);
          CanClose := True;
        End;
    End
end;

procedure TfIntencoesMissas.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'INTENCOES_MISSAS';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfIntencoesMissas.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fIntencoesMissas.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaIntencoesMissas.fRetorno := fIntencoesMissas  ;
      fConsultaIntencoesMissas.Show;

    End;

end;

procedure TfIntencoesMissas.FormShow(Sender: TObject);
begin
  DM1.TIntencoesMissas.Close;
  AbreTabela(DM1.TIntencoesMissas ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('INTENCOES_MISSAS','Codigo','Paroquia',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

end.
