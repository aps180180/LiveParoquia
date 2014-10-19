unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SkinCtrls, SkinBoxCtrls, Mask, ExtCtrls,
  DynamicSkinForm, spdbctrls, DB, IBCustomDataSet, IBQuery, SkinHint,
  SkinExCtrls, HintBalloon;

type
  TfLogin = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    edtuser: TspSkinEdit;
    edtSenha: TspSkinPasswordEdit;
    spSkinStdLabel1: TspSkinStdLabel;
    spSkinStdLabel2: TspSkinStdLabel;
    qrParoquias: TIBQuery;
    qrParoquiasCODIGO: TIntegerField;
    qrParoquiasNOME: TIBStringField;
    dsParoquias: TDataSource;
    spSkinStdLabel3: TspSkinStdLabel;
    dbLook1: TspSkinDBLookupComboBox;
    label101: TspSkinStdLabel;
    btOK: TspSkinButton;
    btCancelar: TspSkinButton;
    IBConfiguracao1: TIBQuery;
    IBConfiguracao1PAROQUIA: TIntegerField;
    IBConfiguracao1CONFIGCONTA: TIntegerField;
    IBConfiguracao1DESCCONFIG: TIBStringField;
    IBConfiguracao1TIPO: TIBStringField;
    IBConfiguracao1VALOR: TIBStringField;
    IBConfiguracao1MODULO: TIntegerField;
    HintBalloon1: THintBalloon;
    qrParoquiasENDERECO: TIBStringField;
    qrParoquiasBAIRRO: TIBStringField;
    qrParoquiasCIDADE: TIBStringField;
    qrParoquiasUF: TIBStringField;
    qrParoquiasCEP: TIBStringField;
    qrParoquiasTELEFONE: TIBStringField;
    qrParoquiasFAX: TIBStringField;
    qrParoquiasARQUIDIOCESE: TIntegerField;
    qrParoquiasEMAIL: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure edtuserEnter(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtuserExit(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfiguraSistema;
    function ValorCampo(pValor, pTipoCampo : String) : Variant;
    procedure btOKMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xTerminar,xLogOFF : Boolean;
    fRetorno : TForm;
    

  end;

var
  fLogin: TfLogin;

implementation

uses Sistools, uPrincipal, uDM1, uDMDados, U_Cipher;

{$R *.dfm}

procedure TfLogin.FormCreate(Sender: TObject);

begin
  xTerminar := True;
  qrParoquias.Open;
  qrParoquias.First;
  dbLook1.KeyValue := qrParoquiasCODIGO.AsInteger;
  edtuser.Clear;
  edtSenha.Clear;
end;

procedure TfLogin.edtuserEnter(Sender: TObject);
begin
  label101.Caption := 'Informe o usuário';

end;

procedure TfLogin.edtSenhaEnter(Sender: TObject);
begin
  label101.Caption := 'Informe a senha';
end;

procedure TfLogin.edtuserExit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfLogin.edtSenhaExit(Sender: TObject);
begin
  label101.Caption := '';
end;

procedure TfLogin.btOKClick(Sender: TObject);
var
mensagem,strsqllog,usuario,dpto: string;
v: string;
begin
    if (edtuser.Text <> '') and (edtSenha.Text <> '') then
  begin

    Dm1.QUERYLogin.Close;
    Dm1.QUERYLogin.SQL.Clear;
    Dm1.QUERYLogin.SQL.Add(' SELECT * FROM USUARIOS' +
                               ' WHERE NOME = :vNome' +
                               ' AND Senha = :vSenha');
    Dm1.QUERYLogin.Params[0].Value:= edtuser.Text;
    //Dm1.QUERYLogin.Params[1].Value:= MD5Hash(edtSenha.Text);
    Dm1.QUERYLogin.Params[1].Value:= edtSenha.Text;

    Dm1.QUERYLogin.Open;
    Usuario:= edtuser.Text;
    strsqllog := usuario;
    Dpto:=Dm1.QUERYLogin.FieldByName('DPTO').AsString;
    if (Dm1.QUERYLogin.RecordCount) = 1 then
      begin
      v:= 'N';
      Dm1.QUERYLogin.SQL.Add(' AND STATUS = '+ #39 + v + #39);
      Dm1.QUERYLogin.Open;
      if (Dm1.QUERYLogin.RecordCount) = 1 then
        begin
          //fPrincipal.StatusPanel3.Caption:= ' ' + 'Usuário: ' + usuario;
          fPrincipal.spSkinStatusPanel3.Caption := ' ' + 'Usuário: ' + usuario+'  '+'Departamento:'+Dpto;

          fLogin.Close;//Formulario login
          fPrincipal.Enabled:=true;
          //fLogin.Free;
          //flogin:=nil;


        end
      else
        Application.MessageBox(PChar('Você foi Bloqueado!' + #13 +
                                     'Consulte o administrador do sistema.'), 'Login não autorizado', MB_OK+MB_ICONINFORMATION);
         
         //edtuser.SetFocus;//retorna o doco p/ o edit
          
      end
      else
        begin
          mensagem:= 'Nome ou senha do usuário inválidos.' + #13 + #13
                + 'Se você esqueceu sua senha, consulte' + #13
                + 'o administrador do sistema.';
          Application.MessageBox(PChar(mensagem), 'Login não autorizado', MB_OK+MB_ICONINFORMATION);
          edtuser.Text:= '';
          edtSenha.Text:= '';
          edtuser.SetFocus;
        end;
      end;
      xTerminar         := False;
      DM1.mParoquia     := dbLook1.KeyValue;
      fPrincipal.LabelParoquia.Caption := dbLook1.Text;
      DM1.mNomeParoquia := qrParoquiasNOME.AsString;
      DM1.mEndereco     := qrParoquiasENDERECO.AsString;
      DM1.mBairro       := qrParoquiasBAIRRO.AsString;
      DM1.mCidade       := qrParoquiasCIDADE.AsString;
      DM1.mEstado       := qrParoquiasUF.AsString;
      DM1.mCep          := qrParoquiasCEP.AsString;
      DM1.mTelefone     := qrParoquiasTELEFONE.AsString;
      DM1.mNomeArquidiocese := RetornaTabela(DM1.TArquidiocese,'I','pCodigo',qrParoquiasARQUIDIOCESE.AsString,'','','','','','','','','','NOME');
      DM1.mUsuario      := DM1.QUERYLoginCODIGO.AsInteger; {Código do Usuário}
      DM1.mNomeUsuario  := DM1.QUERYLoginNOME.AsString;    {Nome do Usuário}
      DM1.mParoquiaEmail:= qrParoquiasEMAIL.AsString;      {email da paroquia}
      DM1.mMaquina      := PegaSerieHD;
      ConfiguraSistema;
      if not DirectoryExists( IncludeTrailingPathDelimiter(ExtractFilePath(Application.exeName)) + 'Imagens' ) then
          ForceDirectories(IncludeTrailingPathDelimiter(ExtractFilePath(Application.exeName)) + 'Imagens' );

      if DM1.mCaminhoImagens ='' then
        DM1.mCaminhoImagens := IncludeTrailingPathDelimiter(ExtractFilePath(Application.exeName)) + 'Imagens';
end;

procedure TfLogin.btCancelarClick(Sender: TObject);
begin
  fprincipal.Close;
end;

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if xTerminar then
    //xTerminar:=False;
    Application.Terminate;
end;

procedure TfLogin.ConfiguraSistema;
begin
  IBConfiguracao1.Close;
  IBConfiguracao1.ParamByName('pParoquia').AsInteger := DM1.mParoquia ;
  IBConfiguracao1.Open;
  IBConfiguracao1.First;
  while not IBConfiguracao1.EOF do
    begin
      Case IBConfiguracao1CONFIGCONTA.Value of
         1 : fPrincipal.vBatizandosUsarTelaCadastro    := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         //2 : DM1.mCaminhoImagens                       := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         2 : fPrincipal.vImagensUsarCaminho            := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         3 : fPrincipal.vCrismandosUsarTelaCadastro    := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         4 : fPrincipal.vEucaristiaUsarTelaCadastro    := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         5 : fPrincipal.vMensagemReciboDizimista       := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         6 : fPrincipal.vTextoRespRecibo               := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         7 : fPrincipal.vMatrimonioUsarTelaCadastro    := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);
         8 : fPrincipal.vLancIntencoesRelSimp          := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);//Implementado dia 17-8-10
         9 : fPrincipal.vCertidaoUsarEmail             := ValorCampo(IBConfiguracao1Valor.Value, IBConfiguracao1Tipo.Value);//Implementado dia 21-8-10
      End;
      IBConfiguracao1.Next;
    End;
    IBConfiguracao1.Close;
end;

function TfLogin.ValorCampo(pValor, pTipoCampo: String): Variant;
begin
  if trim(pTipoCampo) = 'B' then
     begin
       if pValor = 'S' then
          Result := True
       else
          Result := False;
     end
  else if trim(pTipoCampo) = 'I' then
     begin
       Result := StrToInt(pValor)
     end
  else if trim(pTipoCampo) = 'F' then
     begin
       Result := TransfReal(pValor);
     end
  else if trim(pTipoCampo) = 'S' then
     begin
       Result := pValor;
     end;
end;

procedure TfLogin.btOKMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Entrar no LIVE PAROQUIA';
  HintBalloon1.AddToolInfo(Handle,btOK.Handle);
end;

procedure TfLogin.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar o Login do LIVE PAROQUIA';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

end.
