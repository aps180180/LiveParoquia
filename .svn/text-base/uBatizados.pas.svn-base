unit uBatizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint, DBCtrls;

type
  TfBatizados = class(TForm)
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
    DsBatizados: TDataSource;
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
    procedure DsBatizadosStateChange(Sender: TObject);
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
  fBatizados: TfBatizados;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaBatizados;

{$R *.dfm}

procedure TfBatizados.btSairClick(Sender: TObject);
begin
  fBatizados.Close ;
end;

procedure TfBatizados.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fBatizados')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fBatizados, true);
  AbreTabela(DM1.TBATIZADOS,'','pCodigo',-1,0);
  NovoRegistro(DM1.TBATIZADOS,nil);
  Dm1.TBatizados.FieldByName('PAROQUIA').AsInteger:=Dm1.mParoquia;
  Dm1.TBatizados.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeNome.SetFocus;

end;

procedure TfBatizados.FormShow(Sender: TObject);
begin
  DM1.TBATIZADOS.Close;
  AbreTabela(DM1.TBATIZADOS,'pPAROQUIA','pCODIGO',Dm1.mParoquia,UltimoRegistro('BATIZADOS','Codigo','PAROQUIA',DM1.mParoquia));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfBatizados.FormActivate(Sender: TObject);
begin
 if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TBATIZADOS,'PPAROQUIA','pCODIGO',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
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

procedure TfBatizados.FormCreate(Sender: TObject);
begin
  HabilitaForm(fBatizados, False);
  dmDados.mTabela :='BATIZADOS';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfBatizados.DsBatizadosStateChange(Sender: TObject);
begin
Estado(dsBatizados,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfBatizados.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TBATIZADOS.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Batizado antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsBatizados.State = dsInsert then
       DM1.TBATIZADOs.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','','BATIZADOS',0 );

  Grava(dsBatizados);
  HabilitaForm(fBatizados,False) ;

end;

procedure TfBatizados.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fBatizados')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TBATIZADOS);
  HabilitaForm(fBatizados,True);
  dbeNome.SetFocus;
end;

procedure TfBatizados.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsBatizados.State = dsEdit) or (dsBatizados.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TBatizados);
          CanClose := True;
        End;
    End
end;

procedure TfBatizados.FormKeyDown(Sender: TObject; var Key: Word;
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
      fBatizados.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaBatizados.fRetorno:= fBatizados ;
      fConsultaBatizados.Show;

    End;

end;

procedure TfBatizados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TBatizados.Close;
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

procedure TfBatizados.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TBatizados);
  HabilitaForm(fBatizados, False);
  AbreTabela(DM1.TBatizados ,'','PCODIGO',0 ,UltimoRegistro('Batizados','Codigo','',0));
end;

procedure TfBatizados.btExcluirClick(Sender: TObject);
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fBatizados')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
 if ApagarRegistro(DM1.TBatizados ,'Cadastro de Batizados' ) then
   AbreTabela(DM1.TBatizados,'','PCODIGO',0,UltimoRegistro('Batizados','Codigo','',0));
end;

end.
