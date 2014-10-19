unit uEucaristico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo;

type
  TfEucaristico = class(TForm)
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
    dbeNomeEucaristia: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    dbeComunidade: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    dbeObs: TspSkinDBMemo;
    spSkinLabel5: TspSkinLabel;
    dbeCodEucaristia: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    dbeLivro: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    dbeFolha: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    dbeNumero: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    dbeNascimento: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    dbeNaturalidade: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    dbePai: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    dbeMae: TspSkinDBEdit;
    spSkinLabel13: TspSkinLabel;
    spdbePadrinho: TspSkinDBEdit;
    spSkinLabel14: TspSkinLabel;
    dbeMadrinha: TspSkinDBEdit;
    spSkinLabel15: TspSkinLabel;
    dbeMinistroPadre: TspSkinDBEdit;
    edit2: TspSkinEdit;
    spSkinLabel16: TspSkinLabel;
    dsEucaristico: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppRepBatisterio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    btImprimir: TspSkinButton;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText11: TppDBText;
    ppLabel25: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape1: TppShape;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppLabel29: TppLabel;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    DbeCatequista: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    Edit3: TspSkinEdit;
    spSkinDBEdit1: TspSkinDBEdit;
    spSkinLabel17: TspSkinLabel;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsEucaristicoStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbeComunidadeExit(Sender: TObject);
    procedure CarregaEdits;
    procedure dbeMinistroPadreEnter(Sender: TObject);
    procedure dbeMinistroPadreExit(Sender: TObject);
    procedure dbeMinistroPadreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeCodEucaristiaEnter(Sender: TObject);
    procedure dbeCodEucaristiaExit(Sender: TObject);
    procedure dbeCodEucaristiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure dbeCodEucaristiaButtonClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure DbeCatequistaExit(Sender: TObject);
    procedure DbeCatequistaEnter(Sender: TObject);
    procedure DbeCatequistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fEucaristico: TfEucaristico;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaComunidade,
  uConsultaMinistrosPadres, uConsultaEucaristia, uConsultaEucaristico;


{$R *.dfm}

procedure TfEucaristico.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fEucaristico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fEucaristico, true);
  AbreTabela(DM1.TEucaristico,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TEucaristico,nil);
  DM1.TEucaristicoPAROQUIA.AsInteger := DM1.mParoquia;
  DM1.TEucaristico.FieldByName('DTCADASTRO').AsDateTime:=Now;
  Edit1.Clear;
  Edit2.Clear;
  if fPrincipal.vEucaristiaUsarTelaCadastro then
    dbeCodEucaristia.SetFocus
  else
    dbeNomeEucaristia.SetFocus;

end;

procedure TfEucaristico.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  ActiveControl := nil;

  If DbeNomeEucaristia.Text='' then
    Begin
     application.MessageBox('Eucaristia não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
     dbeCodEucaristia.SetFocus;
     exit;
    end;


  if Edit1.Text='' then//verifica se a comunidade foi retornada
    begin
     application.MessageBox('Comunidade não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
     DbeComunidade.SetFocus;
     exit;
    end;
  If edit2.Text='' then//verifica se PADRE/MINISTROS foi retornado
    Begin
    Application.MessageBox('Ministro/Padre não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    DbeMinistroPadre.SetFocus;
    exit;
    end;
  If dbeLivro.Text='' then
    Begin
    Application.MessageBox('Livro não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    dbeLivro.SetFocus;
    exit;
    end;
  If dbeFolha.Text='' then
    Begin
    Application.MessageBox('Folha não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    dbeFolha.SetFocus;
    exit;
    end;
  If dbeNumero.Text='' then
    Begin
    Application.MessageBox('Número não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    dbeNumero.SetFocus;
    exit;
    end;

   If dbeNaturalidade.Text='' then
    Begin
    Application.MessageBox('Naturalidade não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    dbeNaturalidade.SetFocus;
    exit;
    end;
   If DbeCatequista.Text='' then
    Begin
    Application.MessageBox('Catequista não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',0);

    DbeCatequista.SetFocus;
    exit;
    end;




  {if (DM1.TBatisterio.FieldByName('NOMEBATIZANDO').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do BATIZANDO antes de salvar!',nil,nil);
      dbeNomeBatizando.SetFocus;
      Exit;
    End; }
     if dsEucaristico.State = dsInsert then
       DM1.TEucaristico.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','EUCARISTICO',DM1.mParoquia);

  Grava(dsEucaristico);
  HabilitaForm(fEucaristico,False) ;

end;

procedure TfEucaristico.btAlterarClick(Sender: TObject);
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fEucaristico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  {procedure localizada na sistools q/ Edita a tabela}
  ModificaRegistro(DM1.TEucaristico);
  HabilitaForm(fEucaristico,True);
  if fPrincipal.vEucaristiaUsarTelaCadastro then
    dbeCodEucaristia.SetFocus
  else
    dbeNomeEucaristia.SetFocus;
end;

procedure TfEucaristico.btCancelarClick(Sender: TObject);
begin
  {procedure localizada na sistools q cacela a edição }
  CancelaEdicao(DM1.TEucaristico);
  HabilitaForm(fEucaristico, False);
  AbreTabela(DM1.TEucaristico,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('EUCARISTICO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfEucaristico.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fEucaristico')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TBatisterio  ,'Cadastro de Batizados' ) then
   AbreTabela(DM1.TEucaristico,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('EUCARISTICO','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfEucaristico.btSairClick(Sender: TObject);
begin
  {Fecha Form}
  fEucaristico.Close;
end;

procedure TfEucaristico.dsEucaristicoStateChange(Sender: TObject);
begin
   {Procedure localizada na Sistools q/ define o estado dos botões}
   Estado(dsEucaristico,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, btImprimir, nil, nil, nil);
end;

procedure TfEucaristico.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin                                      { TODO : terminar o form eucaristico }
          AbreTabela(DM1.TEucaristico ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
      end
  else if (xBuscar) and (xNumDevolucao = 1) then
      Begin
        dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;
      end
  else if (xBuscar) and (xNumDevolucao = 2) then
      Begin
        dbeMinistroPadre.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;
      End
  else if (xBuscar) and (xNumDevolucao = 3) then
      Begin
        dbeCodEucaristia.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;

      End;

   CarregaEdits;
   xBuscar := False;
end;

procedure TfEucaristico.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TEucaristico.Close;
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

procedure TfEucaristico.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsEucaristico.State = dsEdit) or (dsEucaristico.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TEucaristico);
          CanClose := True;
        End;
    End
end;

procedure TfEucaristico.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'EUCARISTICO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  if Not fPrincipal.vEucaristiaUsarTelaCadastro then
    Begin
      dbeCodEucaristia.SkinData := nil ;
      dbeCodEucaristia.DefaultColor := $00C1F7EF;
      dbeNomeEucaristia.Enabled  := True;
      dbeCodEucaristia.TabStop := False;
      DbeCodEucaristia.Enabled:=False;
      dbeNomeEucaristia.SkinData := fPrincipal.spSkinData1;
      dbeMAE.SkinData := fPrincipal.spSkinData1;
      dbeMae.Enabled := True;
      dbePAI.SkinData := fPrincipal.spSkinData1;
      dbePAI.Enabled := True;

    End
  else
    Begin
      dbeCodEucaristia.TabStop         := True ;
      dbeCodEucaristia.SkinData        := fPrincipal.spSkinData1 ;


      dbeNomeEucaristia.SkinData       := nil;
      dbeNomeEucaristia.DefaultColor   := $00C1F7EF;
      dbeNomeEucaristia.Enabled        := False ;

      dbeMAE.SkinData                  := nil;
      dbeMAE.DefaultColor              := $00C1F7EF;
      dbeMae.Enabled                   := FALSE;

      dbePAI.SkinData                  := nil;
      dbePAI.DefaultColor              := $00C1F7EF;
      dbePai.Enabled                   := False;

      dbeNascimento.SkinData           :=nil;
      dbeNascimento.DefaultColor       := $00C1F7EF;
      dbeNascimento.Enabled            :=False;
    End;

end;

procedure TfEucaristico.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fEucaristico.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaEucaristico.fRetorno := fEucaristico  ;
      fConsultaEucaristico.Show;

    End;

end;

procedure TfEucaristico.FormShow(Sender: TObject);
begin
  DM1.TEucaristico.Close;
  AbreTabela(DM1.TEucaristico ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('EUCARISTICO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfEucaristico.dbeComunidadeExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
   Label101.Caption := '';
end;

procedure TfEucaristico.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Edit2.Text := RetornaTabela(DM1.TMinistrosPadres  ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
end;

procedure TfEucaristico.dbeMinistroPadreEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfEucaristico.dbeMinistroPadreExit(Sender: TObject);
begin
   Edit2.Text := RetornaTabela(DM1.TMinistrosPadres ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfEucaristico.dbeMinistroPadreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaMinistrosPadres.fRetorno := fEucaristico   ;
       fEucaristico.Enabled := False;
       fConsultaMinistrosPadres.Show;

     end;
end;

procedure TfEucaristico.dbeCodEucaristiaEnter(Sender: TObject);
begin
  if fPrincipal.vEucaristiaUsarTelaCadastro then
    label101.Caption := 'F10 - CADASTRO/CONSULTA';
end;



procedure TfEucaristico.dbeCodEucaristiaExit(Sender: TObject);
begin
  if fPrincipal.vEucaristiaUsarTelaCadastro then
    Begin
       dbeNomeEucaristia.Text:= RetornaTabela(DM1.TEucaristia ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodEucaristia.Text ,'','','','','','','NOME' );
       dbeMae.Text:= RetornaTabela(DM1.TEucaristia ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodEucaristia.Text ,'','','','','','','MAE' );
       dbePAI.Text:= RetornaTabela(DM1.TEucaristia ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodEucaristia.Text ,'','','','','','','PAI' );
       //dbeNaturalidade.Text := RetornaTabela(DM1.TEucaristia ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodEucaristia.Text ,'','','','','','','CIDADE' );
       DM1.TEucaristicoDTNASC.AsString := RetornaTabela(DM1.TEucaristia ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodEucaristia.Text ,'','','','','','','DT_NASCIMENTO' );

       Label101.Caption := '';
    End;
end;

procedure TfEucaristico.dbeCodEucaristiaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (fPrincipal.vEucaristiaUsarTelaCadastro) And( (Shift = []) and (key = VK_F10)) then
     begin
       key := 0;
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       //fConsultaEucaristico.fRetorno := fEucaristico   ;
       fEucaristico.Enabled := False;
       //fConsultaEucaristico.Show;

     end;
end;

procedure TfEucaristico.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfEucaristico.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfEucaristico.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfEucaristico.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfEucaristico.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfEucaristico.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair da Inscrição e Registro da 1ª Eucaristia';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfEucaristico.dbeCodEucaristiaButtonClick(Sender: TObject);
begin
  if (fPrincipal.vEucaristiaUsarTelaCadastro)  then
     begin
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaEucaristia.fRetorno := fEucaristico   ;
       fEucaristico.Enabled := False;
       fConsultaEucaristia.Show;

     end;
end;

procedure TfEucaristico.btImprimirClick(Sender: TObject);
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;

  ppLabel30.Caption := RetornaTabela(DM1.TMinistrosPadres,'I','pParoquia',DM1.TEucaristicoPAROQUIA.AsString,'I','pCodigo',DM1.TEucaristicoPADRE.AsString,'','','','','','','NOME');
  ppRepBatisterio.PrintReport;

end;

procedure TfEucaristico.ppHeaderBand1BeforePrint(Sender: TObject);
Var
zDia,zMes,zAno : String;
begin
  If fPrincipal.vImagensUsarCaminho then
   Begin
    if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP') then
      Begin
       ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
       ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
      End;
   End;

  zDia := FormatDateTime('dd',DM1.TEucaristicoDTEUCARISTIA.AsDateTime);
  zMes := FormatDateTime('mmmm',DM1.TEucaristicoDTEUCARISTIA.AsDateTime);
  zAno := FormatDateTime('yyyy',DM1.TEucaristicoDTEUCARISTIA.AsDateTime);
  zMes := AnsiUpperCase(zMes);
  ppLabel16.Caption := zDia;
  ppLabel18.Caption := zMes;
  ppLabel20.Caption := zAno;

  zDia := FormatDateTime('dd',Date);
  zMes := FormatDateTime('mmmm',Date);
  zAno := FormatDateTime('yyyy',Date);
  zMes := AnsiUpperCase(zMes);

  ppLabel27.Caption := DM1.mCidade + ' /' + DM1.mEstado+ '  ' + zDia + ' DE '  + zMes + ' DE ' + zAno;

end;

procedure TfEucaristico.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfEucaristico.DbeCatequistaExit(Sender: TObject);
begin
  Edit3.Text := RetornaTabela(DM1.TCatequista ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeCatequista.Text ,'','','','','','','NOME' );
  Label101.Caption := '';
end;

procedure TfEucaristico.DbeCatequistaEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfEucaristico.DbeCatequistaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fEucaristico   ;
       fEucaristico.Enabled := False;
       fConsultaComunidade.Show;

     end;
end;

end.
