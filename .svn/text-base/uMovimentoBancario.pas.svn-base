unit uMovimentoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, spdbctrls, HintBalloon,
  DynamicSkinForm, DB, IBCustomDataSet, IBQuery;

type
  TfMovimentoBancario = class(TForm)
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    DsControleBancario: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    dbeBanco: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    Edit1: TspSkinEdit;
    spSkinLabel2: TspSkinLabel;
    DbeDtMovimento: TspSkinDBEdit;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    StatusPanel2: TspSkinStatusPanel;
    label101: TspSkinLabel;
    RgOperacao: TspSkinDBRadioGroup;
    DbeHistorico: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    DbeVlMovimento: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    DbTextSaldoAtual: TspSkinDBText;
    QryConsulta: TIBQuery;
    QryConsultaPAROQUIA: TIntegerField;
    QryConsultaCODIGO: TIntegerField;
    QryConsultaDTMOVIMENTO: TDateField;
    QryConsultaHISTORICO: TIBStringField;
    QryConsultaOPERACAO: TIBStringField;
    QryConsultaVALORMOVIMENTO: TFloatField;
    QryConsultaSALDOATUAL: TFloatField;
    QryConsultaDTALTERACAO: TDateField;
    QryConsultaDTCADASTRO: TDateField;
    QryConsultaCODIGOBANCO: TIntegerField;
    QryAltCredito: TIBQuery;
    QryAltCreditoVLMOVIMENTO: TFloatField;
    QryAltDebito: TIBQuery;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GerarSaldoAtual(pCODIGOBANCO:Integer);
    procedure DsControleBancarioStateChange(Sender: TObject);
    procedure dbeBancoEnter(Sender: TObject);
    procedure dbeBancoExit(Sender: TObject);
    procedure CarregaEdits;
    procedure dbeBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    xAcao : String;
    xBanco : String;
  end;

var
  fMovimentoBancario: TfMovimentoBancario;

implementation

uses Sistools, uDM1, uDMDados, uConsultaContas, uPrincipal;

{$R *.dfm}

procedure TfMovimentoBancario.btSairClick(Sender: TObject);
begin
   fMovimentoBancario.Close;
end;

procedure TfMovimentoBancario.btNovoClick(Sender: TObject);
Var
  zSaldo : Real;
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
    }
  HabilitaForm(fMovimentoBancario, true);
  AbreTabela(DM1.TControleBancario,'','pCodigo',-1,0);
  NovoRegistro(DM1.TControleBancario,nil);
  DM1.TControleBancarioPAROQUIA.AsInteger := DM1.mParoquia;
  Edit1.Clear;
  dbeBanco.SetFocus;
  
  DM1.TControleBancario.FieldByName('DTMOVIMENTO').AsDateTime := Date;
end;

procedure TfMovimentoBancario.FormCreate(Sender: TObject);
begin
   HabilitaForm(fMovimentoBancario, False);
   dmDados.mTabela :='CONTROLEBANCOS';
   DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
   Entrando := True;
   xBuscar  := False
end;

procedure TfMovimentoBancario.btSalvarClick(Sender: TObject);
Var
   zSaldoAnterior,zSaldoAtual,zValor,zteste : Double;
   StrSql : string;
begin
  //-------------------------------------------------------------------------//
   If DsControleBancario.State=DsInsert then
      Begin
         xBanco := dbeBanco.Text;
         GerarSaldoAtual(StrToInt(xbanco));
         zSaldoAnterior:=QryConsulta.fieldByName('SALDOATUAL').AsFloat;
         zValor        := DM1.TControleBancario.fieldByName('VALORMOVIMENTO').AsFloat;
      If DM1.TControleBancario.FieldByName('OPERACAO').AsString='C' then
         Begin
            zSaldoAtual :=(zSaldoAnterior) + (zValor);
         End
      else
         Begin
            zSaldoAtual :=(zSaldoAnterior) - (zValor);
         End;
         DM1.TControleBancario.FieldByName('SALDOATUAL').AsFloat:=zSaldoAtual;
      End;
   If DsControleBancario.State=dsEdit then
      Begin
         xBanco := dbeBanco.Text;
         QryAltCredito.Close;
         QryAltCredito.ParamByName('PPAROQUIA').AsInteger:=DM1.mParoquia;
         QryAltCredito.ParamByName('PCODIGOBANCO').AsString:=xBanco;
         QryAltCredito.Open;
         zteste:=QryAltCredito.fieldByName('VLMOVIMENTO').AsFloat;
      End;
   //--------------------------------------------------------------------------//

   QryAltCredito.Close;
   QryAltCredito.ParamByName('PPAROQUIA').AsInteger:=DM1.mParoquia;
   QryAltCredito.ParamByName('PCODIGOBANCO').AsInteger:=1;
   QryAltCredito.Open;
   zSaldoAtual:=QryAltCredito.fieldByName('VLMOVIMENTO').AsFloat;

   ActiveControl := nil;
   xBanco := dbeBanco.Text;
   GerarSaldoAtual(StrToInt(xbanco));
   zSaldoAnterior:=QryConsulta.fieldByName('SALDOATUAL').AsFloat;
   zValor        := DM1.TControleBancario.fieldByName('VALORMOVIMENTO').AsFloat;
   If DM1.TControleBancario.FieldByName('OPERACAO').AsString='C' then
      Begin
         zSaldoAtual :=(zSaldoAnterior) + (zValor);
      End
    else
      Begin
         zSaldoAtual :=(zSaldoAnterior) - (zValor);
      End;
    DM1.TControleBancario.FieldByName('SALDOATUAL').AsFloat:=zSaldoAtual;
   
  If (DM1.TControleBancario.FieldByName('CODIGOBANCO').AsString  ='') Or (dbeBanco.Text='0') Then
    Begin
      MsgValida('Informe o Banco antes de salvar!',nil,nil);
      dbeBanco.SetFocus;
      Exit;
   End;
  If (DM1.TControleBancario.FieldByName('HISTORICO').AsString  ='')  Then
    Begin
      MsgValida('Informe o Historico antes de salvar!',nil,nil);
      DbeHistorico.SetFocus;
      Exit;
   End;
   
  If  RgOperacao.ItemIndex=-1   Then
    Begin
      MsgValida('Informe o Tipo de  Operação antes de salvar!',nil,nil);
      RgOperacao.SetFocus;
      Exit;
   End;
  If (DbeVlMovimento.Text='') then
    Begin
      MsgValida('Informe o Valor do Movimento antes de salvar!',nil,nil);
      DbeVlMovimento.SetFocus;
      Exit;
    End;
     if DsControleBancario.State = dsInsert then
       DM1.TControleBancario.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','CONTROLEBANCOS',DM1.mParoquia);

    {if DsArquidiocese.State= dsInsert then
       xAcao := 'INCLUIU A ARQUIDIOCESE (' + DM1.TArquidioceseCODIGO.AsString + ') ' + DM1.TArquidioceseNOME.AsString
     else
       xAcao := 'ALTEROU A ARQUIDIOCESE (' + DM1.TArquidioceseCODIGO.AsString + ') ' + DM1.TArquidioceseNOME.AsString;}

  Grava(DsControleBancario);
  //fPrincipal.Auditoria(DM1.mUsuario,'FARQUIDIOCESE',xAcao);
  HabilitaForm(fMovimentoBancario,False) ;

end;

procedure TfMovimentoBancario.FormShow(Sender: TObject);
begin
   DM1.TControleBancario.Close;
   AbreTabela(DM1.TControleBancario,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('CONTROLEBANCOS','Codigo','Paroquia',DM1.mParoquia));
   Label101.Caption :=' F7 - CADASTRO / CONSULTA';
   
end;

procedure TfMovimentoBancario.DsControleBancarioStateChange(
  Sender: TObject);
begin
   Estado(DsControleBancario,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;
procedure TfMovimentoBancario.GerarSaldoAtual(pCODIGOBANCO:Integer);
begin
   QryConsulta.Close;
   QryConsulta.ParamByName('pCODIGOBANCO').AsInteger:=pCODIGOBANCO;
   QryConsulta.ParamByName('pPAROQUIA').AsInteger   :=DM1.mParoquia;
   QryConsulta.Open;
   QryConsulta.Last;
end;
procedure TfMovimentoBancario.dbeBancoEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfMovimentoBancario.dbeBancoExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TContaBanco ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeBanco.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
   
end;

procedure TfMovimentoBancario.dbeBancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaContas.fRetorno := fMovimentoBancario;
       fMovimentoBancario.Enabled := False;
       fConsultaContas.Show;

     end;
end;

procedure TfMovimentoBancario.FormActivate(Sender: TObject);
begin
   if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TControleBancario  ,'pParoquia','pCodigo',DM1.mParoquia,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeBanco.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
  CarregaEdits;
end;
procedure TfMovimentoBancario.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TContaBanco ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeBanco.Text ,'','','','','','','NOME' );
  
end;
procedure TfMovimentoBancario.btAlterarClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TControleBancario);
  HabilitaForm(fMovimentoBancario,True);
  dbeBanco.SetFocus;
end;

procedure TfMovimentoBancario.btCancelarClick(Sender: TObject);
begin
   CancelaEdicao(DM1.TControleBancario);
   HabilitaForm(fMovimentoBancario, False);
   AbreTabela(DM1.TControleBancario,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('CONTROLEBANCOS','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

end.
