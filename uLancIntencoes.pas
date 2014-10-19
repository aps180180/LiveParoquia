unit uLancIntencoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo, IBCustomDataSet, IBQuery;

type
  TfLancIntencoes = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    dbeObs: TspSkinDBMemo;
    spSkinLabel8: TspSkinLabel;
    dbeDtCelebracao: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    dbHoraCelebracao: TspSkinDBEdit;
    spSkinLabel16: TspSkinLabel;
    dsLancIntencoes: TDataSource;
    HintBalloon1: THintBalloon;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    spSkinLabel4: TspSkinLabel;
    dbeTipoIntencao: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    spSkinLabel3: TspSkinLabel;
    dbeCelebrante: TspSkinDBEdit;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsLancIntencoesStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure dbeTipoIntencaoEnter(Sender: TObject);
    procedure dbeTipoIntencaoExit(Sender: TObject);
    procedure dbeTipoIntencaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CarregaEdits;
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    xAcao         : String;
  end;

var
  fLancIntencoes: TfLancIntencoes;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaIntencoesMissas,
  uConsultaLancIntencoes;



{$R *.dfm}

procedure TfLancIntencoes.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fLancIntencoes, true);
  AbreTabela(DM1.TLancIntencao,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TLancIntencao,nil);
  DM1.TLancIntencaoPAROQUIA.AsInteger := DM1.mParoquia;
  Edit1.Clear;
  dbeNome.SetFocus;

end;

procedure TfLancIntencoes.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  ActiveControl := nil;


  if (DM1.TLancIntencao.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do FIEL antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
  if not DataValida(dbeDtCelebracao.Text)  Then
    Begin
      MsgValida('Informe a data da Celebração  antes de salvar!',nil,nil);
      dbeDtCelebracao.SetFocus;
      Exit;
    End;

  if (DM1.TLancIntencao.FieldByName('TIPOINTENCAO').AsString  ='')  Then
    Begin
      MsgValida('Informe o TIPO DE INTENÇÃO antes de salvar!',nil,nil);
      dbeTipoIntencao.SetFocus;
      Exit;
    End;

  if dsLancIntencoes.State = dsInsert then
    DM1.TLancIntencao.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','LANCAMENTOINTENCAO',DM1.mParoquia);

  if dsLancIntencoes.State= dsInsert then
     Begin
       xAcao := 'INCLUIU UM LANÇAMENTO DE INTENÇÕES DE MISSAS (' + DM1.TLancIntencaoCODIGO.AsString + ') ' + DM1.TLancIntencaoNOME.AsString
     End
     else
     Begin
       Dm1.TAgendaTelefones.FieldByName('DTALTERACAO').AsDateTime:=Now;
       xAcao := 'ALTEROU UM LANÇAMENTO DE INTENÇOES DE MISSAS (' + DM1.TLancIntencaoCODIGO.AsString + ') ' + DM1.TLancIntencaoNOME.AsString;
     End;
  Grava(dsLancIntencoes);
  fPrincipal.Auditoria(DM1.mUsuario,'FLANCINTENCOES',xAcao);
  HabilitaForm(fLancIntencoes,False) ;

end;

procedure TfLancIntencoes.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TLancIntencao);
  HabilitaForm(fLancIntencoes,True);
  dbeNome.SetFocus;
end;

procedure TfLancIntencoes.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TLancIntencao);
  HabilitaForm(fLancIntencoes, False);
  AbreTabela(DM1.TLancIntencao,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('LANCAMENTOINTENCAO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfLancIntencoes.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TLancIntencao  ,'Lançamento de Intenções de Missa' ) then
   AbreTabela(DM1.TLancIntencao,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('LANCAMENTOINTENCAO','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfLancIntencoes.btSairClick(Sender: TObject);
begin
  fLancIntencoes.Close;
end;

procedure TfLancIntencoes.dsLancIntencoesStateChange(Sender: TObject);
begin
   Estado(dsLancIntencoes,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfLancIntencoes.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TLancIntencao ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End
      else if (xBuscar) and (xNumDevolucao = 1) then
      Begin
        dbeTipoIntencao.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;
      end;
    End;
   CarregaEdits;
   xBuscar := False;
end;

procedure TfLancIntencoes.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TLancIntencao.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       //fConsultaMinistrosPadres.Enabled := True;
       //fConsultaMinistrosPadres.RefazerSQL;
       //fConsultaMinistrosPadres.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfLancIntencoes.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsLancIntencoes.State = dsEdit) or (dsLancIntencoes.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TLancIntencao);
          CanClose := True;
        End;
    End
end;

procedure TfLancIntencoes.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela :='LANCAMENTOINTENCAO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  Edit1.Clear;

end;

procedure TfLancIntencoes.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fLancIntencoes.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaLancIntencoes.fRetorno := fLancIntencoes ;
      fConsultaLancIntencoes.Show;

    End;

end;

procedure TfLancIntencoes.FormShow(Sender: TObject);
begin
  DM1.TLancIntencao.Close;
  AbreTabela(DM1.TLancIntencao ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('LANCAMENTOINTENCAO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfLancIntencoes.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfLancIntencoes.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfLancIntencoes.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfLancIntencoes.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfLancIntencoes.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfLancIntencoes.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Cadastro de  Lançamento de Intenção';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;





procedure TfLancIntencoes.dbeTipoIntencaoEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfLancIntencoes.dbeTipoIntencaoExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TintencoesMissas ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeTipoIntencao.Text ,'','','','','','','INTENCOES' );
   Label101.Caption := '';
end;

procedure TfLancIntencoes.dbeTipoIntencaoKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaIntencoesMissas.fRetorno := fLancIntencoes    ;
       fLancIntencoes.Enabled := False;
       fConsultaIntencoesMissas.Show;

     end;
end;

procedure TfLancIntencoes.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TintencoesMissas ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DM1.TLancIntencaoTIPOINTENCAO.AsString ,'','','','','','','INTENCOES' );
end;

end.
