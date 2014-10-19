unit uContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, SkinGrids, spDBGrids, StdCtrls,
  Mask, SkinBoxCtrls, spdbctrls, Grids, DBGrids, DB, HintBalloon,
  IBCustomDataSet, IBQuery;

type
  TfContasPagar = class(TForm)
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    GroupBox1: TspSkinGroupBox;
    spSkinLabel2: TspSkinLabel;
    spDynamicSkinForm1: TspDynamicSkinForm;
    DsContasPg: TDataSource;
    dbeCodFornecedor: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    label101: TspSkinLabel;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    EditNomeFornecedor: TspSkinEdit;
    spSkinPanel1: TspSkinPanel;
    spSkinLabel1: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    DbeDtLanc: TspSkinDBEdit;
    DbeCodTipoPagto: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    spSkinLabel7: TspSkinLabel;
    EditTipoPgto: TspSkinEdit;
    spSkinLabel8: TspSkinLabel;
    DbeDtVenc: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    DbeVlTotal: TspSkinDBEdit;
    HintBalloon1: THintBalloon;
    spSkinLabel13: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    DbeNf: TspSkinDBEdit;
    Memo: TspSkinDBMemo;
    Qry: TIBQuery;
    QryCODIGO: TIntegerField;
    rgStatus: TspSkinDBRadioGroup;
    procedure btNovoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsContasPgStateChange(Sender: TObject);
    procedure DbeCodTipoPagtoExit(Sender: TObject);
    procedure dbeCodFornecedorExit(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarregaEdits;
    procedure FormActivate(Sender: TObject);
    procedure dbeCodFornecedorEnter(Sender: TObject);
    procedure DbeCodTipoPagtoEnter(Sender: TObject);
    procedure dbeCodFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoKeyPress(Sender: TObject; var Key: Char);
    procedure DbeCodTipoPagtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbeVlTotalKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xAcao : String;
    xNumDevolucao : Integer;
  end;

var
  fContasPagar: TfContasPagar;

implementation

uses uFornecedor, Sistools, uDM1, uPrincipal, uDMDados,
  uConsultaFornecedor, uConsultaTipoPgto, uConsultaContasPagar;

{$R *.dfm}

procedure TfContasPagar.btNovoClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fContasPagar')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
    }
  HabilitaForm(fContasPagar, true);
  AbreTabela(DM1.TContasPagar,'','pCodigo',-1,0);
  NovoRegistro(DM1.TContasPagar,nil);
  EditNomeFornecedor.Clear;
  EditTipoPgto.Clear;
  DbeDtLanc.Text:=DateToStr(date);
  DM1.TContasPagarPAROQUIA.AsInteger := DM1.mParoquia;
  DM1.TContasPagarSTATUS.AsString    := 'AB';

  dbeCodFornecedor.SetFocus;
end;

procedure TfContasPagar.btSairClick(Sender: TObject);
begin
   fContasPagar.Close;
end;

procedure TfContasPagar.btSalvarClick(Sender: TObject);
begin
   ActiveControl := nil;
  if (EditNomeFornecedor.Text='')  Then
    Begin
      MsgValida('Informe o Fornecedor antes de salvar!',nil,nil);
      dbeCodFornecedor.SetFocus;
      Exit;
   End;
  if (EditTipoPgto.Text='')  Then
    Begin
      MsgValida('Informe o Tipo de Pagamento antes de salvar!',nil,nil);
      DbeCodTipoPagto.SetFocus;
      Exit;
   End;
  if not (DataValida(DbeDtLanc.Text))   Then
    Begin
      MsgValida('Informe a Data de Lançamento antes de salvar!',nil,nil);
      DbeDtLanc.SetFocus;
      Exit;
   End;
  if not (DataValida(DbeDtVenc.Text))  Then
    Begin
      MsgValida('Informe a Data de Vencimento antes de salvar!',nil,nil);
      DbeDtVenc.SetFocus;
      Exit;
   End;
  if  (DbeVlTotal.Text='')  Then
    Begin
      MsgValida('Informe o Valor do Pagamento antes de salvar!',nil,nil);
      DbeVlTotal.SetFocus;
      Exit;
   End;


     if DsContasPg.State = dsInsert then
       DM1.TContasPagar.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','','CONTASPAGAR',0 );

    if DsContasPg.State= dsInsert then
       xAcao := 'INCLUIU UMA CONTA A PAGAR (' + DM1.TContasPagarCODIGO.AsString + ') ' + DM1.TContasPagarValorTotal.AsString
     else
       xAcao := 'ALTEROU UMA CONTA A PAGAR (' + DM1.TContasPagarCODIGO.AsString + ') ' + DM1.TContasPagarValorTotal.AsString;

  Grava(dsContasPg);
  fPrincipal.Auditoria(DM1.mUsuario,'FCONTASPAGAR',xAcao);
  HabilitaForm(fContasPagar,False) ;

end;

procedure TfContasPagar.FormShow(Sender: TObject);
begin
   DM1.TContasPagar.Close;
   AbreTabela(DM1.TContasPagar ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('CONTASPAGAR','Codigo','Paroquia',DM1.mParoquia));
   Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfContasPagar.DsContasPgStateChange(Sender: TObject);
begin
    Estado(DsContasPg,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);

end;

procedure TfContasPagar.DbeCodTipoPagtoExit(Sender: TObject);
begin
   EditTipoPgto.Text:=RetornaTabela(DM1.TTipoPgto ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeCodTipoPagto.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
   DbeDtLanc.Text:=DateToStr(Date) ;
end;

procedure TfContasPagar.dbeCodFornecedorExit(Sender: TObject);
begin
   EditNomeFornecedor.Text:=RetornaTabela(DM1.TFornecedor ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodFornecedor.Text ,'','','','','','','RAZAO_SOCIAL' );
   Label101.Caption := '';
end;

procedure TfContasPagar.btAlterarClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fContasPagar')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TContasPagar);
  HabilitaForm(fContasPagar,True);
  dbeCodFornecedor.SetFocus;
end;

procedure TfContasPagar.btCancelarClick(Sender: TObject);
begin
   CancelaEdicao(DM1.TContasPagar);
   HabilitaForm(fContasPagar, False);
   AbreTabela(DM1.TContasPagar ,'','PCODIGO',0 ,UltimoRegistro('CONTASPAGAR','Codigo','',0));
end;

procedure TfContasPagar.btExcluirClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
 if ApagarRegistro(DM1.TContasPagar ,'Lançamento de Contas a Pagar' ) then
   AbreTabela(DM1.TContasPagar,'','PCODIGO',0,UltimoRegistro('CONTASPAGAR','Codigo','',0));
   CarregaEdits;

end;

procedure TfContasPagar.btNovoMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Incluir Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfContasPagar.btSalvarMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Salvar Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfContasPagar.btAlterarMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Alterar Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfContasPagar.btCancelarMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Cancelar Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfContasPagar.btExcluirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Excluir Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfContasPagar.btSairMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:='Sair do Lançamento de Contas a Pagar';
   HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfContasPagar.FormCreate(Sender: TObject);
begin
   Application.HintPause:=0;
   Application.HintHidePause:=10000;
   HabilitaForm(fContasPagar, False);
   dmDados.mTabela :='CONTASPAGAR';
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   Entrando := True;
   xBuscar  := False
end;
procedure TfContasPagar.CarregaEdits;
begin
   EditNomeFornecedor.Text:=RetornaTabela(DM1.TFornecedor ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodFornecedor.Text ,'','','','','','','RAZAO_SOCIAL');
   EditTipoPgto.Text      :=RetornaTabela(DM1.TTipoPgto ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeCodTipoPagto.Text ,'','','','','','','NOME' );
end;
procedure TfContasPagar.FormActivate(Sender: TObject);
begin
   if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TContasPagar  ,'pParoquia','pCodigo',DM1.mParoquia,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
       dbeCodFornecedor.Text := IntToStr( fPrincipal.ValorRetornoInteger);
       fPrincipal.ValorRetornoInteger := 0;
    End
  else if (xBuscar) and (xNumDevolucao=2) then
    Begin
       DbeCodTipoPagto.Text := IntToStr( fPrincipal.ValorRetornoInteger);
       fPrincipal.ValorRetornoInteger := 0;
    end;
  xBuscar := False;
  CarregaEdits;
  //QryConsulta.Close;
  //QryConsulta.ParamByName('PCODIGO').AsInteger:=DM1.TContasPagarCODIGO.AsInteger;
  //QryConsulta.Open;
end;

procedure TfContasPagar.dbeCodFornecedorEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfContasPagar.DbeCodTipoPagtoEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfContasPagar.dbeCodFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaFornecedor.fRetorno := fContasPagar   ;
       fContasPagar.Enabled := False;
       fConsultaFornecedor.Show;

     end;
end;

procedure TfContasPagar.MemoKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TfContasPagar.DbeCodTipoPagtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaTipoPgto.fRetorno :=fContasPagar;
       fContasPagar.Enabled := False;
       fConsultaTipoPgto.Show;

     end;
end;

procedure TfContasPagar.FormKeyDown(Sender: TObject; var Key: Word;
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
      fContasPagar.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaContasPagar.fRetorno := fContasPagar ;
      fConsultaContasPagar.Show;

    End;

end;

procedure TfContasPagar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   {é chamada p/ validar se a janela pode ser fechada}
  if (DsContasPg.State = dsEdit) or (DsContasPg.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TContasPagar);
          CanClose := True;
        End;
    End
end;

procedure TfContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   {ocorre quando a janela é fechada}
  DM1.TContasPagar.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaContasPagar.Enabled := True;
       fConsultaContasPagar.RefazerSQL;
       fConsultaContasPagar.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfContasPagar.DbeVlTotalKeyPress(Sender: TObject; var Key: Char);
begin
    Key := SoNumeros(Key ,'F');
end;

end.
