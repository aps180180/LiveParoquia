unit uCatequista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls, DB,
  DynamicSkinForm, IBCustomDataSet, IBQuery;

type
  TfCatequista = class(TForm)
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    DbeTelefone: TspSkinDBEdit;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    dsCatequista: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinLabel4: TspSkinLabel;
    dbeComunidade: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dsCatequistaStateChange(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure spSkinDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spSkinDBEdit1Enter(Sender: TObject);
    procedure dbeComunidadeEnter(Sender: TObject);
    procedure dbeComunidadeExit(Sender: TObject);
    procedure dbeComunidadeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState) ;
    procedure CarregaEdits;
    procedure dbeComunidadeButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fCatequista: TfCatequista;

implementation

uses uPrincipal, uDM1, uDMDados, Sistools, uConsultaCatequista,
  uConsultaComunidade;

{$R *.dfm}

procedure TfCatequista.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TCATEQUISTA,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;

    End;
  CarregaEdits;
  xBuscar := False;
end;

procedure TfCatequista.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  {ocorre quando a janela é fechada}
  DM1.TCATEQUISTA.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaCatequista.Enabled := True;
       fConsultaCatequista.RefazerSQL;
       fConsultaCatequista.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfCatequista.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
  {é chamada p/ validar se a janela pode ser fechada}
  if (dsCatequista.State = dsEdit) or (dsCatequista.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TCATEQUISTA);
          CanClose := True;
        End;
    End
end;

procedure TfCatequista.FormCreate(Sender: TObject);
begin
  {formulario é criado}
  dmDados.mTabela := 'CATEQUISTA';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfCatequista.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
      fCatequista.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      xNumDevolucao := 0;
      fConsultaCatequista.fRetorno := fCatequista ;
      fConsultaCatequista.Show;

    End;

end;

procedure TfCatequista.FormShow(Sender: TObject);
begin
  DM1.TCATEQUISTA.Close;
  AbreTabela(DM1.TCATEQUISTA,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Catequista','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfCatequista.dsCatequistaStateChange(Sender: TObject);
begin
  Estado(dsCatequista,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfCatequista.btSairClick(Sender: TObject);
begin
  fCatequista.Close;
end;

procedure TfCatequista.btNovoClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fCatequista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  HabilitaForm(fCatequista, true);
  AbreTabela(DM1.TCATEQUISTA,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TCATEQUISTA,nil);
  Dm1.TCatequista.FieldByName('PAROQUIA').AsInteger:=Dm1.mParoquia;
  Edit1.Clear;
  dbeNome.SetFocus;
end;

procedure TfCatequista.btSalvarClick(Sender: TObject);
begin
  If Edit1.Text='' then
    Begin
     application.MessageBox('Comunidade não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
    DbeComunidade.SetFocus;
    exit
    end;

  ActiveControl := nil;
  if (DM1.TCATEQUISTA.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Catequista antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if dsCatequista.State = dsInsert then
       DM1.TCATEQUISTA.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','CATEQUISTA',DM1.mParoquia);

  Grava(dsCatequista );
  HabilitaForm(fCatequista,False) ;
end;

procedure TfCatequista.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fCatequista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TCATEQUISTA);//procedure
  HabilitaForm(fCatequista,True);//procedure
  dbeNome.SetFocus;
end;

procedure TfCatequista.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TCATEQUISTA);
  HabilitaForm(fCatequista, False);
  AbreTabela(DM1.TCATEQUISTA ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Catequista','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfCatequista.btExcluirClick(Sender: TObject);
begin
 {  if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fCatequista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
   if ApagarRegistro(DM1.TCATEQUISTA ,'Cadastro de Catequistas' ) then
     AbreTabela(DM1.TCATEQUISTA,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('Catequista','Codigo','Paroquia',DM1.mParoquia));
     CarregaEdits;
end;

procedure TfCatequista.spSkinDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Shift = []) and (Key = VK_F10 ) then
    Begin
      xBuscar := True;
      fCatequista.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaCatequista.fRetorno := fCatequista ;
      fConsultaCatequista.Show;

    End;
end;

procedure TfCatequista.spSkinDBEdit1Enter(Sender: TObject);
begin
   LABEL101.Caption:='F10- Cadstro/Consulta';
end;


procedure TfCatequista.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfCatequista.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfCatequista.dbeComunidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fCatequista  ;
       fCatequista .Enabled := False;
       fConsultaComunidade.Show;

     end;
end;

procedure TfCatequista.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
end;

procedure TfCatequista.dbeComunidadeButtonClick(Sender: TObject);
begin
  xNumDevolucao := 1;
  fPrincipal.ValorRetornoInteger := 0;
  xBuscar := True;
  fConsultaComunidade.fRetorno := fCatequista  ;
  fCatequista .Enabled := False;
  fConsultaComunidade.Show;
end;

end.
