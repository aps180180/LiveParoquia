unit uEucaristia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint, DBCtrls;

type
  TfEucaristia = class(TForm)
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    GroupBox1: TspSkinGroupBox;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DsEucaristia: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
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
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsEucaristiaStateChange(Sender: TObject);
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
  fEucaristia: TfEucaristia;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaEucaristia;

{$R *.dfm}

procedure TfEucaristia.btSairClick(Sender: TObject);
begin
  fEucaristia.Close ;
end;

procedure TfEucaristia.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fEucaristia')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fEucaristia, true);
  AbreTabela(DM1.TEucaristia,'','pCodigo',-1,0);
  NovoRegistro(DM1.TEucaristia,nil);
  Dm1.TEucaristia.FieldByName('PAROQUIA').AsInteger:=Dm1.mParoquia;
  Dm1.TEucaristia.FieldByName('DTCADASTRO').AsDateTime:=Date;
  dbeNome.SetFocus;

end;

procedure TfEucaristia.FormShow(Sender: TObject);
begin
  DM1.TEucaristia.Close;
  AbreTabela(DM1.TEucaristia,'pPAROQUIA','pCODIGO',Dm1.mParoquia,UltimoRegistro('EUCARISTIA','Codigo','',0));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfEucaristia.FormActivate(Sender: TObject);
begin
 if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TEucaristia,'PPAROQUIA','pCODIGO',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
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

procedure TfEucaristia.FormCreate(Sender: TObject);
begin
  HabilitaForm(fEucaristia, False);
  dmDados.mTabela :='EUCARISTIA';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfEucaristia.DsEucaristiaStateChange(Sender: TObject);
begin
Estado(dsEucaristia,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfEucaristia.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TEucaristia.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome da 1ª Eucaristia antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsEucaristia.State = dsInsert then
       DM1.TEucaristia.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','','EUCARISTIA',0 );

  Grava(dsEucaristia);
  HabilitaForm(fEucaristia,False) ;

end;

procedure TfEucaristia.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fEucaristia')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TEucaristia);
  HabilitaForm(fEucaristia,True);
  dbeNome.SetFocus;
end;

procedure TfEucaristia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsEucaristia.State = dsEdit) or (dsEucaristia.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TEucaristia);
          CanClose := True;
        End;
    End
end;

procedure TfEucaristia.FormKeyDown(Sender: TObject; var Key: Word;
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
      fEucaristia.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaEucaristia.fRetorno:= fEucaristia ;
      fConsultaEucaristia.Show;

    End;

end;

procedure TfEucaristia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TEucaristia.Close;
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

procedure TfEucaristia.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TEucaristia);
  HabilitaForm(fEucaristia, False);
  AbreTabela(DM1.TEucaristia ,'','PCODIGO',0 ,UltimoRegistro('Eucaristia','Codigo','',0));
end;

procedure TfEucaristia.btExcluirClick(Sender: TObject);
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fEucaristia')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
 if ApagarRegistro(DM1.TEucaristia ,'Cadastro de 1ª Eucaristia' ) then
   AbreTabela(DM1.TEucaristia,'','PCODIGO',0,UltimoRegistro('Eucaristia','Codigo','',0));
end;

end.
