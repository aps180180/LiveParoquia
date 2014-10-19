unit uAgendaTelefones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HintBalloon, DynamicSkinForm, DB, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, spdbctrls, ppParameter, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  IBCustomDataSet, IBQuery;

type
  TfAgendaTelefones = class(TForm)
    GroupBox1: TspSkinGroupBox;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsAgendaTelefones: TDataSource;
    spDynamicSkinForm1: TspDynamicSkinForm;
    HintBalloon1: THintBalloon;
    GroupBox2: TspSkinGroupBox;
    DbeFone1: TspSkinDBEdit;
    DbeFone2: TspSkinDBEdit;
    DbeFone3: TspSkinDBEdit;
    DbeFone4: TspSkinDBEdit;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    btImprimir: TspSkinButton;
    ppDBPipeline1: TppDBPipeline;
    ppRelAgenda: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTextNome: TppDBText;
    ppDBTextDtHr: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppParameterList1: TppParameterList;
    IbAgenda: TIBQuery;
    IbAgendaPAROQUIA: TIntegerField;
    IbAgendaDTCADASTRO: TDateTimeField;
    IbAgendaDTALTERACAO: TDateTimeField;
    IbAgendaCODIGO: TIntegerField;
    IbAgendaNOME: TIBStringField;
    IbAgendaFONE1: TIBStringField;
    IbAgendaFONE2: TIBStringField;
    IbAgendaFONE3: TIBStringField;
    IbAgendaFONE4: TIBStringField;
    dsAgenda: TDataSource;
    StatusPanel2: TspSkinStatusPanel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsAgendaTelefonesStateChange(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xAcao : String;
  end;

var
  fAgendaTelefones: TfAgendaTelefones;

implementation

uses uDM1, Sistools, uPrincipal, uDMDados, uConsultaAgendaTelefones;

{$R *.dfm}

procedure TfAgendaTelefones.btNovoClick(Sender: TObject);
begin
    {if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fAgendaTelefones')) then
    Begin
      Application.MessageBox('Você não Tem Permissão para Inclusão!','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}
    
  HabilitaForm(fAgendaTelefones, true);
  AbreTabela(DM1.TAgendaTelefones,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TAgendaTelefones,nil);
  DM1.TAgendaTelefonesPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TAgendaTelefones.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeNome.SetFocus;

end;

procedure TfAgendaTelefones.btSalvarClick(Sender: TObject);
begin
   ActiveControl := nil;
  if (DM1.TAgendaTelefones.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o Nome antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if DsAgendaTelefones.State = dsInsert then
       DM1.TAgendaTelefones.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','AGENDA_TELEFONES',DM1.mParoquia );

    if DsAgendaTelefones.State= dsInsert then
       Begin
          xAcao := 'INCLUIU O NOME NA AGENDA DE TELEFONES (' + DM1.TAgendaTelefonesCODIGO.AsString + ') ' + DM1.TAgendaTelefonesNOME.AsString
       End
     else
       Begin
          Dm1.TAgendaTelefones.FieldByName('DTALTERACAO').AsDateTime:=Now;
          xAcao := 'ALTEROU O NOME NA AGENDA DE TELEFONES (' + DM1.TAgendaTelefonesCODIGO.AsString + ') ' + DM1.TAgendaTelefonesNOME.AsString;
       End;
  Grava(DsAgendaTelefones);
  fPrincipal.Auditoria(DM1.mUsuario,'FAGENDATELEFONES',xAcao);
  HabilitaForm(fAgendaTelefones,False) ;
end;

procedure TfAgendaTelefones.FormActivate(Sender: TObject);
begin
   if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TAgendaTelefones,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfAgendaTelefones.FormCreate(Sender: TObject);
begin
  Application.HintPause:=0;
  Application.HintHidePause:=10000;


  HabilitaForm(fAgendaTelefones, False);
  dmDados.mTabela :='AGENDA_TELEFONES';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfAgendaTelefones.FormShow(Sender: TObject);
begin
   DM1.TAgendaTelefones.Close;
   AbreTabela(DM1.TAgendaTelefones ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('AGENDA_TELEFONES','Codigo','Paroquia',DM1.mParoquia));
   //CarregaEdits;
   Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfAgendaTelefones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.TAgendaTelefones.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
      fConsultaAgendaTelefones.Enabled := True;
      fConsultaAgendaTelefones.RefazerSQL;
      fConsultaAgendaTelefones.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfAgendaTelefones.btAlterarClick(Sender: TObject);
begin
    {if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fAgendaTelefones')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }

  ModificaRegistro(DM1.TAgendaTelefones);
  HabilitaForm(fAgendaTelefones,True);
  dbeNome.SetFocus;
end;

procedure TfAgendaTelefones.btCancelarClick(Sender: TObject);
begin
   CancelaEdicao(DM1.TAgendaTelefones);
   HabilitaForm(fAgendaTelefones, False);
   AbreTabela(DM1.TAgendaTelefones ,'PPAROQUIA','PCODIGO',DM1.mParoquia ,UltimoRegistro('Arquidiocese','Codigo','',0));
end;

procedure TfAgendaTelefones.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (DsAgendaTelefones.State = dsEdit) or (DsAgendaTelefones.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TAgendaTelefones);
          CanClose := True;
        End;
    End
end;

procedure TfAgendaTelefones.btExcluirClick(Sender: TObject);
Var
   zCodAnt,zNomeAnt : String;
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fAgendaTelefones')) then
    Begin
      Application.MessageBox('Você não Tem Permissão para Exclusão!','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }
   zCodAnt  := DM1.TAgendaTelefonesCODIGO.AsString;
   zNomeAnt := DM1.TAgendaTelefonesNOME.AsString;

   if ApagarRegistro(DM1.TAgendaTelefones ,'Cadastro de Agenda de Telefones' ) then
      Begin
         xAcao := 'EXCLUIU O NOME DA AGENDA (' + zCodAnt + ') ' + zNomeAnt;
         fPrincipal.Auditoria(DM1.mUsuario,'FAGENDATELEFONES',xAcao);
         AbreTabela(DM1.TAgendaTelefones,'','PCODIGO',0,UltimoRegistro('AGENDA_TELEFONES','Codigo','',0));
      End;
end;

procedure TfAgendaTelefones.btSairClick(Sender: TObject);
begin
   fAgendaTelefones.Close ;
end;

procedure TfAgendaTelefones.FormKeyDown(Sender: TObject; var Key: Word;
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
      fAgendaTelefones.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaAgendaTelefones.fRetorno := fAgendaTelefones ;
      fConsultaAgendaTelefones.Show;

    End
  else  If (Shift = []) and (Key = VK_F8 ) then
    Begin
      if btImprimir.Enabled then
         btImprimir.OnClick(Self); ;
    End
end;

procedure TfAgendaTelefones.DsAgendaTelefonesStateChange(Sender: TObject);
begin
   Estado(DsAgendaTelefones,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfAgendaTelefones.btImprimirClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,5,'fAgendaTelefones')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }
 


   IbAgenda.Close;
   IbAgenda.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
   IbAgenda.Open;
   ppLabel1.Caption := DM1.mNomeArquidiocese;
   ppLabel2.Caption := DM1.mNomeParoquia;
   ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
   ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
   ppRelAgenda.PrintReport;
   IbAgenda.Close;
end;

procedure TfAgendaTelefones.ppHeaderBand1BeforePrint(Sender: TObject);
begin
   If fPrincipal.vImagensUsarCaminho then
   Begin
    if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP') then
      Begin
       ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
       ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
      End;
   End;
end;

end.
