unit uMinistrosPadres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB;

type
  TfMinistrosPadres = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    DbeTelefone: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    DsMinistrosPadres: TDataSource;
    label101: TspSkinLabel;
    dbeComunidade: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    Edit1: TspSkinEdit;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DsMinistrosPadresStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbeComunidadeEnter(Sender: TObject);
    procedure dbeComunidadeExit(Sender: TObject);
    procedure dbeComunidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CarregaEdits;
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fMinistrosPadres: TfMinistrosPadres;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaMinistrosPadres,
  uConsultaComunidade;

{$R *.dfm}

procedure TfMinistrosPadres.btNovoClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fMinistrosPadres')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  HabilitaForm(fMinistrosPadres, true);
  AbreTabela(DM1.TMINISTROSPADRES,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TMINISTROSPADRES,nil);
  DM1.TMINISTROSPADRESPAROQUIA.AsInteger := DM1.mParoquia;
  Edit1.Clear;
  dbeNome.SetFocus;
end;

procedure TfMinistrosPadres.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  if Edit1.Text='' then//verifica se a comunidade foi retornada
    begin
     application.MessageBox('Comunidade não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
     DbeComunidade.SetFocus;
     exit;
    end;

  ActiveControl := nil;
  if (DM1.TMINISTROSPADRES.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Ministro/Padre antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if DsMinistrosPadres.State = dsInsert then
       DM1.TMINISTROSPADRES.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','MINISTROS_PADRES',DM1.mParoquia);

  Grava(DsMinistrosPadres);
  HabilitaForm(fMinistrosPadres,False) ;

end;

procedure TfMinistrosPadres.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fMinistrosPadres')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TMINISTROSPADRES);
  HabilitaForm(fMinistrosPadres,True);
  dbeNome.SetFocus;
end;

procedure TfMinistrosPadres.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TMINISTROSPADRES);
  HabilitaForm(fMinistrosPadres, False);
  AbreTabela(DM1.TMINISTROSPADRES,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('MINISTROS_PADRES','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfMinistrosPadres.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fMinistrosPadres')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TMINISTROSPADRES ,'Cadastro de Ministros/Padres' ) then
   AbreTabela(DM1.TMINISTROSPADRES,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('MINISTROS_PADRES','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfMinistrosPadres.btSairClick(Sender: TObject);
begin
  fMinistrosPadres.Close;
end;

procedure TfMinistrosPadres.DsMinistrosPadresStateChange(Sender: TObject);
begin
   Estado(DsMinistrosPadres,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfMinistrosPadres.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TMinistrosPadres ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
      end
  else if (xBuscar) and (xNumDevolucao = 1) then
      Begin
        dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;

      End;
   CarregaEdits;
   xBuscar := False;
end;

procedure TfMinistrosPadres.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TMinistrosPadres.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaMinistrosPadres.Enabled := True;
       fConsultaMinistrosPadres.RefazerSQL;
       fConsultaMinistrosPadres.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfMinistrosPadres.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (DsMinistrosPadres.State = dsEdit) or (DsMinistrosPadres.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TMinistrosPadres);
          CanClose := True;
        End;
    End
end;

procedure TfMinistrosPadres.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'MINISTROS_PADRES';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfMinistrosPadres.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fMinistrosPadres.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaMinistrosPadres.fRetorno := fMinistrosPadres  ;
      fConsultaMinistrosPadres.Show;

    End;

end;

procedure TfMinistrosPadres.FormShow(Sender: TObject);
begin
  DM1.TMinistrosPadres.Close;
  AbreTabela(DM1.TMinistrosPadres ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('MINISTROS_PADRES','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfMinistrosPadres.dbeComunidadeEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfMinistrosPadres.dbeComunidadeExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
   Label101.Caption := '';
end;

procedure TfMinistrosPadres.dbeComunidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fMinistrosPadres  ;
       fMinistrosPadres.Enabled := False;
       fConsultaComunidade.Show;

     end;
end;
procedure TfMinistrosPadres.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
end;

end.
