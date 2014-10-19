unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, Menus, ADFocus, IBTable,
  jpeg, ExtCtrls, StdCtrls, ImgList,
   SkinData, DynamicSkinForm, SkinCtrls, SkinGrids,
  spDBGrids, SkinExCtrls, AppEvnts, pngimage, SkinHint, ComCtrls, IBSQL,
  sppngimagelist, HintBalloon;


type
  TfPrincipal = class(TForm)
    zConsulta: TIBQuery;
    ImageList1: TImageList;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinData1: TspSkinData;
    spCompressedSkinList1: TspCompressedSkinList;
    spSkinMainMenu1: TspSkinMainMenu;
    mnuCadastros: TMenuItem;
    spResourceStrData1: TspResourceStrData;
    spSkinMainMenuBar1: TspSkinMainMenuBar;
    mnuEstoque: TMenuItem;
    mnuFinanceiro: TMenuItem;
    image1: TspSkinLinkImage;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    mnuUtilitarios: TMenuItem;
    mnuLogOf: TMenuItem;
    spSkinLabel3: TspSkinLabel;
    mnuParoquias: TMenuItem;
    MnuArquidiocese: TMenuItem;
    MnuComunidades: TMenuItem;
    spSkinPanel1: TspSkinPanel;
    MnuCatequistas: TMenuItem;
    MnuMinistrosPadres: TMenuItem;
    Dizimistas1: TMenuItem;
    MnuIntenoesdeMissas: TMenuItem;
    Timer1: TTimer;
    ADFocus1: TADFocus;
    ApplicationEvents1: TApplicationEvents;
    spSkinLabel4: TspSkinLabel;
    N1: TMenuItem;
    MnuMarca: TMenuItem;
    MnuGrupo: TMenuItem;
    MnuCrismando: TMenuItem;
    MnuBatizando: TMenuItem;
    MnuEucaristia: TMenuItem;
    mnuConfig: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuRelBatismo: TMenuItem;
    mnuRelCrisma: TMenuItem;
    mnuRelEucaristia: TMenuItem;
    RelBatismos: TMenuItem;
    RelEucaristia: TMenuItem;
    RelCrisma: TMenuItem;
    ibAuditoria: TIBSQL;
    spSkinToolBar1: TspSkinToolBar;
    spSkinSpeedButton1: TspSkinSpeedButton;
    SpdButtonCadastroPadres: TspSkinSpeedButton;
    spSkinSpeedButton2: TspSkinSpeedButton;
    spSkinSpeedButton4: TspSkinSpeedButton;
    mnuDizimos: TMenuItem;
    mnuCadDi: TMenuItem;
    spPngImageList2: TspPngImageList;
    MnuLog: TMenuItem;
    mnuConsultaDizimista: TMenuItem;
    mnuRelPeriodico: TMenuItem;
    mnuRelAniv: TMenuItem;
    mnuExtratoGeral: TMenuItem;
    mnuSeguranca: TMenuItem;
    mnuCadUser: TMenuItem;
    mnuPermissoes: TMenuItem;
    zPermissao1: TIBQuery;
    zPermissao1VISUALIZAR: TIBStringField;
    zPermissao1INCLUSAO: TIBStringField;
    zPermissao1EXCLUSAO: TIBStringField;
    zPermissao1ALTERACAO: TIBStringField;
    zPermissao1DESCRICAO: TIBStringField;
    mnuFornecedores: TMenuItem;
    mnuPrevRecebDia: TMenuItem;
    IbApaga: TIBSQL;
    mnuMatrimonio: TMenuItem;
    mnuCadNoivos: TMenuItem;
    mnuLancMatrimonio: TMenuItem;
    Batismo1: TMenuItem;
    LanamentodeBatizados1: TMenuItem;
    MnuSair: TMenuItem;
    MnuCadastrodeContas: TMenuItem;
    MnuTipoPagamento: TMenuItem;
    MnuCatequese: TMenuItem;
    MnuPrimeiraEucaristia: TMenuItem;
    MnuLanamentode1Eucaristia: TMenuItem;
    MnuCrisma: TMenuItem;
    MnuLancamentoCrisma: TMenuItem;
    MnuRelMatrimnio: TMenuItem;
    RelMatrimnio: TMenuItem;
    mnuCelebracao: TMenuItem;
    mnuLancIntencoesMissa: TMenuItem;
    mnuRelIntencoesMissa: TMenuItem;
    LabelParoquia: TspSkinLabel;
    MnuLancContasPagar: TMenuItem;
    HintBalloon1: THintBalloon;
    MnuAgendadeTelefones: TMenuItem;
    zPermissao1IMPRESSAO: TIBStringField;
    MnuLembranadeMatrimonio: TMenuItem;
    spSkinLabel5: TspSkinLabel;
    MnuLembrancaBatismo: TMenuItem;
    MnuControledeBancos: TMenuItem;
    MnuCertidaoNeg: TMenuItem;
    mnuContasPagar: TMenuItem;
    mnuCaixa: TMenuItem;
    StatusBar1: TspSkinStatusBar;
    spSkinStatusPanel1: TspSkinStatusPanel;
    spSkinStatusPanel2: TspSkinStatusPanel;
    spSkinStatusPanel3: TspSkinStatusPanel;
    spSkinStatusPanel4: TspSkinStatusPanel;
    mnuBxContasPagar: TMenuItem;
    mnuRelPagarAberto: TMenuItem;
    mnuRelTitulosPagos: TMenuItem;
    MnuCertidaoNegMatrimonio: TMenuItem;
    MnuGrafico: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure LimpaMemoria(pForm: String);
    procedure mnuLogOfClick(Sender: TObject);
    procedure mnuParoquiasClick(Sender: TObject);
    procedure MnuArquidioceseClick(Sender: TObject);
    procedure MnuComunidadesClick(Sender: TObject);
    procedure MnuCatequistasClick(Sender: TObject);
    procedure Dizimistas1Click(Sender: TObject);
    procedure MnuMinistrosPadresClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MnuIntenoesdeMissasClick(Sender: TObject);
    procedure MnuMarcaClick(Sender: TObject);
    procedure MnuGrupoClick(Sender: TObject);
    procedure MnuCrismandoClick(Sender: TObject);
    procedure MnuBatizandoClick(Sender: TObject);
    procedure MnuEucaristiaClick(Sender: TObject);
    procedure mnuConfigClick(Sender: TObject);
    procedure Auditoria(pUsuario : Integer; pForm : String; pAcao: String);
   function NomeComputador : String;
    procedure MnuArquidioceseMeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure mnuCadDiClick(Sender: TObject);
    procedure RelBatismosClick(Sender: TObject);
    procedure RelEucaristiaClick(Sender: TObject);
    procedure RelCrismaClick(Sender: TObject);
    procedure MnuLogClick(Sender: TObject);
    procedure mnuConsultaDizimistaClick(Sender: TObject);
    procedure mnuRelPeriodicoClick(Sender: TObject);
    procedure mnuRelAnivClick(Sender: TObject);
    procedure mnuExtratoGeralClick(Sender: TObject);
    procedure mnuCadUserClick(Sender: TObject);
    procedure mnuPermissoesClick(Sender: TObject);
    function TemPermissao(pUsuario,pOperacao : Integer;pForm: String): Boolean;
    procedure mnuFornecedoresClick(Sender: TObject);
    procedure mnuPrevRecebDiaClick(Sender: TObject);
    procedure LimparTabelaTemp(pTabela : String);
    procedure mnuCadNoivosClick(Sender: TObject);
    procedure mnuLancMatrimonioClick(Sender: TObject);
    procedure MnuCadastrodeContasClick(Sender: TObject);
    procedure MnuTipoPagamentoClick(Sender: TObject);
    procedure LanamentodeBatizados1Click(Sender: TObject);
    procedure MnuLanamentode1EucaristiaClick(Sender: TObject);
    procedure MnuSairClick(Sender: TObject);
    procedure MnuLancamentoCrismaClick(Sender: TObject);
    procedure RelMatrimnioClick(Sender: TObject);
    procedure mnuLancIntencoesMissaClick(Sender: TObject);
    procedure mnuRelIntencoesMissaClick(Sender: TObject);
    procedure MnuLancContasPagarClick(Sender: TObject);
    procedure MnuAgendadeTelefonesClick(Sender: TObject);
    procedure MnuLembranadeMatrimonioClick(Sender: TObject);
    procedure MnuControledeBancosClick(Sender: TObject);
    procedure MnuCertidaoNegClick(Sender: TObject);
    procedure mnuRelPagarAbertoClick(Sender: TObject);
    procedure MnuGraficoClick(Sender: TObject);
    procedure mnuBxContasPagarClick(Sender: TObject);
  private
    { Private declarations }
    grafico: TBitmap;

  public
    { Public declarations }
    ValorRetornoInteger : Integer;
    vForm : String;
    Entrando,xPrimeiraVez : Boolean;
//******************************************************************************
// VARIAVEIS DE CONFIGURACAO DO SISTEMA
//******************************************************************************
   vBatizandosUsarTelaCadastro,vCrismandosUsarTelaCadastro,vEucaristiaUsarTelaCadastro,
   vImagensUsarCaminho,vMatrimonioUsarTelaCadastro,vLancIntencoesRelSimp,vCertidaoUsarEmail : Boolean;
   vMensagemReciboDizimista,vTextoRespRecibo : String;
  end;
//******************************************************************************
var
  fPrincipal: TfPrincipal;

implementation

uses
  Sistools , uLogin, uParoquias, uConsultaParoquias, uArquidiocese,
  uComunidades, uCatequista, uConsultaCatequista, uDizimista,
  uConsultaArquidiocese, uMinistrosPadres, uDM1, uConsultaDizimista,
  uConsultaMinistrosPadres, uIntencoesMissas, uConsultaIntencoesMissas,
  uMarca, uGrupo, uCrismandos, uBatizados, uConsultaBatizados, uEucaristia,
  uConsultaEucaristia, uConfig, uBatisterio, uConsultaComunidade,
  uConsultaBatisterio, uCrisma, uEucaristico, uConsultaEucaristico,
  uLembrancaEucaristia, uDMDados, uDizimo, uRelBatismo, uRelEucaristico,
  uRelCrisma, ULog, uConsultaDizimo, uPesquisaDizimista, uRelPeriodico,
  uAniversariantes, uExtratoGeral, uUsuarios, uPermissoes, uFornecedor,
  uConsultaFornecedor, uPrevRecebDia, uCadNoivos, uMatrimonio,
  uConsultaNoivos, uConsultaMatrimonio, uContas, uTipoPgto,
  uConsultaContas, uConsultaUsuarios, uRelMatrimonio, uLancIntencoes,
  uConsultaLancIntencoes, uRelIntencoesMissa, uContasPagar,
  uAgendaTelefones, uConsultaAgendaTelefones, uLembrancaMatrimonio,
  uMovimentoBancario, uCertidaoNegBatismo, uConsultaContasPagar,
  uConsultaTipoPgto, uConsultaLancCaixa, uLancCaixa,
  uRelTitulosPagarAberto, uGraficoDizimo, uBxContasPagar,
  uVisualizaContasPagar;




{$R *.dfm}

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  Application.HintPause:=0;
  Application.HintHidePause:=10000;

  Entrando := True;
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  xPrimeiraVez := True;

end;

procedure TfPrincipal.FormPaint(Sender: TObject);

begin
    //fPrincipal.Canvas.Draw(0,0,grafico);
end;


procedure TfPrincipal.LimpaMemoria(pForm: String);
begin
 if pForm = 'fParoquias' then
   Begin
     fParoquias.Free;
     fConsultaParoquias.Free;
   End;
end;


procedure TfPrincipal.FormActivate(Sender: TObject);
begin
  //StatusPanel1.Caption:=' '+formatdatetime('hh:nn',now);//componete skim
  //StatusPanel2.Caption:=FormatDateTime('dddd ", " dd " de " mmmm " de " yyyy', now);//componente skin

  spSkinStatusPanel1.Caption :=' '+FormatDateTime('hh:nn',now);
  spSkinStatusPanel2.Caption :=FormatDateTime('dddd ","dd" de "mmmmm" de "yyyy', now);

  if xPrimeiraVez then
    Begin
      Application.CreateForm(TfLogin,fLogin);
      fLogin.ShowModal;
      fLogin.Free;
      xPrimeiraVez := False;
    End;
  if Entrando then
     begin
       LimpaMemoria(vForm);
     end;
  Entrando := False;
end;


procedure TfPrincipal.mnuLogOfClick(Sender: TObject);
begin
  LimpaMemoria(vForm);
  Application.CreateForm(Tflogin, fLogin);
  vForm  := 'fLogin';
  fPrincipal.Enabled := False;
  fLogin.xTerminar := true;
  fLogin.xLogOFF := True;
  fLogin.Show;
end;

procedure TfPrincipal.mnuParoquiasClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fParoquias')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}

  LimpaMemoria(vForm);
  Application.CreateForm(TfParoquias  ,fParoquias);
  Application.CreateForm(TfConsultaParoquias ,fConsultaParoquias);
  vForm := 'fParoquias';
  fPrincipal.Enabled := False;
  fParoquias.fRetorno := fPrincipal;
  fParoquias.Show;
end;

procedure TfPrincipal.MnuArquidioceseClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}

  LimpaMemoria(vForm);
  Application.CreateForm(TfArquidiocese  ,fArquidiocese);
  Application.CreateForm(TfConsultaArquidiocese ,fConsultaArquidiocese);
  vForm := 'fArquidiocese';
  fPrincipal.Enabled := False;
  fArquidiocese.fRetorno := fPrincipal;
  fArquidiocese.Show;
end;

procedure TfPrincipal.MnuComunidadesClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fComunidades')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}

  LimpaMemoria(vForm);
  Application.CreateForm(TfComunidades,fComunidades);
  Application.CreateForm(TfConsultaParoquias ,fConsultaParoquias);
  vForm := 'fComunidades';
  fPrincipal.Enabled := False;
  fComunidades.fRetorno := fPrincipal;
  fComunidades.Show;
end;

procedure TfPrincipal.MnuCatequistasClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fCatequista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }

  LimpaMemoria(vForm);
  Application.CreateForm(TfCatequista  ,fCatequista);
  Application.CreateForm(TfConsultaCatequista ,fConsultaCatequista);
  vForm :='fCatequista';
  fPrincipal.Enabled := False;
  fCatequista.fRetorno := fPrincipal;
  fCatequista.Show;

end;

procedure TfPrincipal.Dizimistas1Click(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }

  LimpaMemoria(vForm);
  Application.CreateForm(TfDizimista  ,fDizimista);
  Application.CreateForm(TfConsultaDizimista ,fConsultaDizimista);
  vForm :='fDizimista';
  fPrincipal.Enabled := False;
  fDizimista.fRetorno := fPrincipal;
  fDizimista.Show;
end;

procedure TfPrincipal.MnuMinistrosPadresClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fMinistrosPadres')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfMinistrosPadres  ,fMinistrosPadres);
  Application.CreateForm(TfConsultaMinistrosPadres ,fConsultaMinistrosPadres);
  vForm := 'fMinistrosPadres';
  fPrincipal.Enabled := False;
  fMinistrosPadres.fRetorno := fPrincipal;
  fMinistrosPadres.Show;
end;

procedure TfPrincipal.Timer1Timer(Sender: TObject);
begin
  {hora no statusPanel}
  spSkinStatusPanel1.Caption:=' '+formatdatetime('hh:nn:ss',now);
  //StatusBar1.Panels[0].Text:=' '+FormatDateTime('hh:nn:ss',now);
end;



procedure TfPrincipal.ApplicationEvents1Hint(Sender: TObject);
begin
  spSkinStatusPanel4.Caption  := Application.Hint;
end;

procedure TfPrincipal.FormShow(Sender: TObject);
begin
  image1.Picture.LoadFromFile('.\figura2.png');
  
  
end;

procedure TfPrincipal.MnuIntenoesdeMissasClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fIntencoesMissas')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfIntencoesMissas  ,fIntencoesMissas);
  Application.CreateForm(TfConsultaIntencoesMissas ,fConsultaIntencoesMissas);
  vForm := 'fIntencoesMissas';
  fPrincipal.Enabled := False;
  fIntencoesMissas.fRetorno := fPrincipal;
  fIntencoesMissas.Show;
end;

procedure TfPrincipal.MnuMarcaClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fMarca')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfMarca,fMarca);
  Application.CreateForm(TfConsultaArquidiocese ,fConsultaArquidiocese);
  vForm := 'fMarca';
  fPrincipal.Enabled := False;
  fMarca.fRetorno := fPrincipal;
  fMarca.Show;
end;

procedure TfPrincipal.MnuGrupoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fGrupo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfGrupo,fGrupo);
  //Application.CreateForm(TfConsultaArquidiocese ,fConsultaArquidiocese);
  vForm := 'fGrupo';
  fPrincipal.Enabled := False;
  fGrupo.fRetorno := fPrincipal;
  fGrupo.Show;
end;

procedure TfPrincipal.MnuCrismandoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fCrismandos')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfCrismandos ,fCrismandos);
  Application.CreateForm(TfConsultaArquidiocese ,fConsultaArquidiocese);
  vForm := 'fCrismandos';
  fPrincipal.Enabled := False;
  fCrismandos.fRetorno := fPrincipal;
  fCrismandos.Show;
end;

procedure TfPrincipal.MnuBatizandoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fBatizados')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfBatizados ,fBatizados);
  Application.CreateForm(TfConsultaBatizados ,fConsultaBatizados);
  vForm := 'fBatizados';
  fPrincipal.Enabled := False;
  fBatizados.fRetorno := fPrincipal;
  fBatizados.Show;
end;

procedure TfPrincipal.MnuEucaristiaClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fEucaristia')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  Application.CreateForm(TfEucaristia ,fEucaristia);
  Application.CreateForm(TfConsultaEucaristia ,fConsultaEucaristia);
  vForm := 'fEucaristia';
  fPrincipal.Enabled := False;
  fEucaristia.fRetorno := fPrincipal;
  fEucaristia.Show;
end;

procedure TfPrincipal.mnuConfigClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fConfig')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConfig,fConfig );
  vForm := 'fConfig';
  fPrincipal.Enabled := False;
  fConfig.fRetorno := fPrincipal;
  fConfig.Show;
end;

procedure TfPrincipal.Auditoria(pUsuario: Integer; pForm, pAcao: String);
begin

   ibAuditoria.Close;
   ibAuditoria.ParamByName('PPAROQUIA').AsInteger   := DM1.mParoquia;
   ibAuditoria.ParamByName('PID').AsInteger         := AutoIncremento(DMDADOS.db,'ID','PAROQUIA','LOG',DM1.mParoquia);
   ibAuditoria.ParamByName('PUSUARIO').AsInteger    := DM1.mUsuario;
   ibAuditoria.ParamByName('PUSUARIONOME').AsString := DM1.mNomeUsuario;
   ibAuditoria.ParamByName('PFORMULARIO').AsString  := pForm;
   ibAuditoria.ParamByName('PACAO').AsString        := pAcao ;
   ibAuditoria.ParamByName('PCOMPUTADOR').AsString  := NomeComputador  ;
   ibAuditoria.ParamByName('PDATA').AsDateTime      := Now;
   ibAuditoria.ExecQuery;
   dmDados.Transacao.CommitRetaining;
end;


function TfPrincipal.NomeComputador: String;
var
  lpBuffer : PChar;
  nSize : DWord;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);

end;

procedure TfPrincipal.MnuArquidioceseMeasureItem(Sender: TObject; ACanvas: TCanvas; var Width, Height: Integer);
begin
  Height :=  40;
end;

procedure TfPrincipal.mnuCadDiClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fDizimo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  //Application.CreateForm(TfConsultaComunidade,fConsultaComunidade);
  //Application.CreateForm(TfComunidades,fComunidades);
  //Application.CreateForm(TfConsultaMinistrosPadres ,fConsultaMinistrosPadres);
  Application.CreateForm(TfConsultaDizimista,fConsultaDizimista);
  Application.CreateForm(TfDizimista,fDizimista);
  Application.CreateForm(TfDizimo ,fDizimo);
  Application.CreateForm(TfConsultaDizimo ,fConsultaDizimo);
  vForm := 'fDizimo';
  fPrincipal.Enabled := False;
  fDizimo.fRetorno := fPrincipal;
  fDizimo.Show;
end;

procedure TfPrincipal.RelBatismosClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelBatismo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  fRelBatismo.ShowModal;
end;

procedure TfPrincipal.RelEucaristiaClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelEucaristico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  fRelEucaristico.ShowModal;
end;

procedure TfPrincipal.RelCrismaClick(Sender: TObject);
begin
 {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelCrisma')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
 fRelCrisma.ShowModal;
end;

procedure TfPrincipal.MnuLogClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fLog')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  fLog.ShowModal;
end;

procedure TfPrincipal.mnuConsultaDizimistaClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fPesquisaDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfPesquisaDizimista,fPesquisaDizimista);
   vForm := 'fPesquisaDizimista';
  fPrincipal.Enabled := False;
  fPesquisaDizimista.fRetorno := fPrincipal;
  fPesquisaDizimista.Show;
end;

procedure TfPrincipal.mnuRelPeriodicoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelPeriodico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(tfrelPeriodico,fRelPeriodico);
   vForm := 'fRelPeriodico';
  fPrincipal.Enabled := False;
  fRelPeriodico.fRetorno := fPrincipal;
  fRelPeriodico.Show;
end;

procedure TfPrincipal.mnuRelAnivClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fAniversariantes')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfConsultaComunidade ,fConsultaComunidade );
  Application.CreateForm(TfComunidades ,fComunidades );

  Application.CreateForm(tfAniversariantes,fAniversariantes);
   vForm := 'fAniversariantes';
  fPrincipal.Enabled := False;
  fAniversariantes.fRetorno := fPrincipal;
  fAniversariantes.Show;
end;

procedure TfPrincipal.mnuExtratoGeralClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fExtratoGeral')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfConsultaComunidade ,fConsultaComunidade );
  Application.CreateForm(TfComunidades ,fComunidades );

  Application.CreateForm(TfExtratoGeral,fExtratoGeral);
   vForm := 'fExtratoGeral';
  fPrincipal.Enabled := False;
  fExtratoGeral.fRetorno := fPrincipal;
  fExtratoGeral.Show;
end;

procedure TfPrincipal.mnuCadUserClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fUsuarios')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaUsuarios,fConsultaUsuarios);
  Application.CreateForm(TfUsuarios,fUsuarios);
  vForm := 'fUsuarios';
  fPrincipal.Enabled := False;
  fUsuarios.fRetorno := fPrincipal;
  fUsuarios.Show;
end;

procedure TfPrincipal.mnuPermissoesClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fPermissoes')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  //Application.CreateForm(TfConsultaUsuarios,fConsultaUsuarios);
  Application.CreateForm(TfPermissoes ,fPermissoes);
  vForm := 'fPermissoes';
  fPrincipal.Enabled := False;
  fPermissoes.fRetorno := fPrincipal;
  fPermissoes.Show;
end;

function TfPrincipal.TemPermissao(pUsuario, pOperacao: Integer;  pForm: String): Boolean;
Var
  zStrTemp: String;
begin
  zPermissao1.Close;
  zPermissao1.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  zPermissao1.ParamByName('pUSUARIO').AsInteger  := DM1.mUsuario;
  zPermissao1.ParamByName('PFORM').AsString      := pForm;
  zPermissao1.Open;
  Case pOperacao of
    1:  zStrTemp := zPermissao1VISUALIZAR.AsString ;
    2:  zStrTemp := zPermissao1INCLUSAO.AsString   ;
    3:  zStrTemp := zPermissao1EXCLUSAO.AsString   ;
    4:  zStrTemp := zPermissao1ALTERACAO.AsString  ;
    5:  zStrTemp := zPermissao1IMPRESSAO.AsString  ;
  End;
  if zStrTemp= 'S' then
    Result := True
  else
    Result := False;

  zPermissao1.Close;
end;

procedure TfPrincipal.mnuFornecedoresClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fFornecedor')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
   LimpaMemoria(vForm);
   Application.CreateForm(TfConsultaFornecedor ,fConsultaFornecedor);
   Application.CreateForm(TfFornecedor ,fFornecedor);

   vForm :='fFornecedor';
   fPrincipal.Enabled := False;
   fFornecedor.fRetorno := fPrincipal;
   fFornecedor.Show;
end;

procedure TfPrincipal.mnuPrevRecebDiaClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fPrevRecebDia')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfConsultaComunidade ,fConsultaComunidade );
  Application.CreateForm(TfComunidades ,fComunidades );
  Application.CreateForm(TfPrevRecebDia,fPrevRecebDia);
   vForm := 'fPrevRecebDia';
  fPrincipal.Enabled := False;
  fPrevRecebDia.fRetorno := fPrincipal;
  fPrevRecebDia.Show;
end;

procedure TfPrincipal.LimparTabelaTemp(pTabela: String);
begin
  IbApaga.Close;
  IbApaga.ParamByName('PTABELA').AsString := pTabela;
  IbApaga.ParamByName('PPC').AsString     := DM1.mMaquina;
  IbApaga.ExecQuery;
  dmDados.Transacao.CommitRetaining;
end;

procedure TfPrincipal.mnuCadNoivosClick(Sender: TObject);
begin
  LimpaMemoria(vForm);
  Application.CreateForm(TfCadNoivos ,fCadNoivos);
  Application.CreateForm(TfConsultaNoivos ,fConsultaNoivos);
  vForm := 'fCadNoivos';
  fPrincipal.Enabled := False;
  fCadNoivos.fRetorno := fPrincipal;
  fCadNoivos.Show;
end;

procedure TfPrincipal.mnuLancMatrimonioClick(Sender: TObject);
begin
  LimpaMemoria(vForm);
  Application.CreateForm(TfMatrimonio ,fMatrimonio);
  Application.CreateForm(TfConsultaMatrimonio ,fConsultaMatrimonio);
  vForm := 'fMatrimonio';
  fPrincipal.Enabled := False;
  fMatrimonio.fRetorno := fPrincipal;
  fMatrimonio.Show;
end;

procedure TfPrincipal.MnuCadastrodeContasClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fContas')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfContas,fContas);
  Application.CreateForm(TfConsultaContas ,fConsultaContas);
  vForm := 'fContas';
  fPrincipal.Enabled := False;
  fContas.fRetorno := fPrincipal;
  fContas.Show;
end;

procedure TfPrincipal.MnuTipoPagamentoClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fTipoPgto')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaTipoPgto,fConsultaTipoPgto);
  Application.CreateForm(TfTipoPgto,fTipoPgto);
  vForm := 'fTipoPagto';
  fPrincipal.Enabled := False;
  fTipoPgto.fRetorno := fPrincipal;
  fTipoPgto.Show;
end;

procedure TfPrincipal.LanamentodeBatizados1Click(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaComunidade,fConsultaComunidade);
  Application.CreateForm(TfComunidades,fComunidades);
  Application.CreateForm(TfConsultaMinistrosPadres ,fConsultaMinistrosPadres);
  Application.CreateForm(TfMinistrosPadres,fMinistrosPadres);
  Application.CreateForm(TfBatisterio ,fBatisterio);
  Application.CreateForm(TfConsultaBatisterio ,fConsultaBatisterio);
  vForm := 'fBatisterio';
  fPrincipal.Enabled := False;
  fBatisterio.fRetorno := fPrincipal;
  fBatisterio.Show;
end;

procedure TfPrincipal.MnuLanamentode1EucaristiaClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fEucaristico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaComunidade,fConsultaComunidade);
  Application.CreateForm(TfComunidades,fComunidades);
  Application.CreateForm(TfConsultaMinistrosPadres ,fConsultaMinistrosPadres);
  Application.CreateForm(TfMinistrosPadres,fMinistrosPadres);
  Application.CreateForm(TfEucaristico ,fEucaristico);
  Application.CreateForm(TfConsultaEucaristico ,fConsultaEucaristico);
  vForm := 'fEucaristico';
  fPrincipal.Enabled := False;
  fEucaristico.fRetorno := fPrincipal;
  fEucaristico.Show;
end;

procedure TfPrincipal.MnuSairClick(Sender: TObject);
begin
  fPrincipal.Close;
end;

procedure TfPrincipal.MnuLancamentoCrismaClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fCrisma')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaComunidade,fConsultaComunidade);
  Application.CreateForm(TfComunidades,fComunidades);
  Application.CreateForm(TfConsultaMinistrosPadres ,fConsultaMinistrosPadres);
  Application.CreateForm(TfMinistrosPadres,fMinistrosPadres);
  Application.CreateForm(TfCrisma ,fCrisma);
  //Application.CreateForm(TfConsultaCrisma ,fConsultaCrisma);
  vForm := 'fCrisma';
  fPrincipal.Enabled := False;
  fCrisma.fRetorno := fPrincipal;
  fCrisma.Show;
end;

procedure TfPrincipal.RelMatrimnioClick(Sender: TObject);
begin
   {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelBatismo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  fRelMatrimonio.ShowModal;
end;

procedure TfPrincipal.mnuLancIntencoesMissaClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fLancIntencoes')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }

  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaLancIntencoes,fConsultaLancIntencoes);
  Application.CreateForm(TfLancIntencoes,fLancIntencoes);
  vForm :='fLancIntencoes';
  fPrincipal.Enabled := False;
  fLancIntencoes.fRetorno := fPrincipal;
  fLancIntencoes.Show;
end;

procedure TfPrincipal.mnuRelIntencoesMissaClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelIntencoesMissa')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  Application.CreateForm(TfRelIntencoesMissa ,fRelIntencoesMissa);
  vForm := 'fRelIntencoesMissa';
  fPrincipal.Enabled := False;
  fRelIntencoesMissa.fRetorno := fPrincipal;
  fRelIntencoesMissa.Show;
end;

procedure TfPrincipal.MnuLancContasPagarClick(Sender: TObject);
begin
   { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fTipoPgto')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  LimpaMemoria(vForm);
  Application.CreateForm(TfContasPagar,fContasPagar);
  Application.CreateForm(TfConsultaContasPagar ,fConsultaContasPagar);
  Application.CreateForm(TfConsultaTipoPgto ,fConsultaTipoPgto);
  Application.CreateForm(TfTipoPgto ,fTipoPgto);
  Application.CreateForm(TfConsultaFornecedor ,fConsultaFornecedor);
  Application.CreateForm(TfFornecedor ,fFornecedor);

  vForm := 'fContasPagar';
  fPrincipal.Enabled := False;
  fContasPagar.fRetorno := fPrincipal;
  fContasPagar.Show;
end;

procedure TfPrincipal.MnuAgendadeTelefonesClick(Sender: TObject);
begin
   {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fLancIntencoes')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaAgendaTelefones ,fConsultaAgendaTelefones);
  Application.CreateForm(TfAgendaTelefones ,fAgendaTelefones);
  vForm := 'fAgendaTelefones';
  fPrincipal.Enabled := False;
  fAgendaTelefones.fRetorno := fPrincipal;
  fAgendaTelefones.Show;
end;

procedure TfPrincipal.MnuLembranadeMatrimonioClick(Sender: TObject);
begin
    {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fLancIntencoes')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  LimpaMemoria(vForm);
  //Application.CreateForm(TfConsultaAgendaTelefones ,fConsultaAgendaTelefones);
  Application.CreateForm(TfLembrancaMatrimonio ,fLembrancaMatrimonio);
  vForm := 'fLembrancaMatrimonio';
  fPrincipal.Enabled := False;
  fLembrancaMatrimonio.fRetorno := fPrincipal;
  fLembrancaMatrimonio.Show;
end;

procedure TfPrincipal.MnuControledeBancosClick(Sender: TObject);
begin
  LimpaMemoria(vForm);
  Application.CreateForm(TfConsultaLancCaixa ,fConsultaLancCaixa);
  Application.CreateForm(TfConsultaContas ,fConsultaContas);
  Application.CreateForm(TfConsultaTipoPgto ,fConsultaTipoPgto);

  Application.CreateForm(TfLancCaixa ,fLancCaixa);
  vForm := 'fLancCaixa';
  fPrincipal.Enabled := False;
  fLancCaixa.fRetorno := fPrincipal;
  fLancCaixa.Show;
end;

procedure TfPrincipal.MnuCertidaoNegClick(Sender: TObject);
begin
    {if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fArquidiocese')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;}

  LimpaMemoria(vForm);
  Application.CreateForm(TfCertidaoNegBatismo  ,fCertidaoNegBatismo);
  vForm := 'fCertidaoNegBatismo';
  fPrincipal.Enabled := False;
  fCertidaoNegBatismo.fRetorno := fPrincipal;
  fCertidaoNegBatismo.Show;
end;

procedure TfPrincipal.mnuRelPagarAbertoClick(Sender: TObject);
begin
    { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelPeriodico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfRelTitulosPagarAberto,fRelTitulosPagarAberto);
  Application.CreateForm(TfConsultaTipoPgto ,fConsultaTipoPgto);
  Application.CreateForm(TfConsultaFornecedor ,fConsultaFornecedor);
  vForm := 'fRelTitulosPagarAberto';
  fPrincipal.Enabled := False;
  fRelTitulosPagarAberto.fRetorno := fPrincipal;
  fRelTitulosPagarAberto.Show;
end;

procedure TfPrincipal.MnuGraficoClick(Sender: TObject);
begin
   fGraficoDizimo.ShowModal;
end;

procedure TfPrincipal.mnuBxContasPagarClick(Sender: TObject);
begin
  { if not (fPrincipal.TemPermissao(DM1.mUsuario,1,'fRelPeriodico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  Application.CreateForm(TfVisualizaContasPagar ,fVisualizaContasPagar);
  Application.CreateForm(TfBxContasPagar  ,fBxContasPagar);
  vForm := 'fVisualizaContasPagar';
  fPrincipal.Enabled := False;
  fVisualizaContasPagar.fRetorno := fPrincipal;
  fVisualizaContasPagar.Show;
end;

end.
