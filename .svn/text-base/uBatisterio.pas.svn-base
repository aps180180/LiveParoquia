unit uBatisterio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo;

type
  TfBatisterio = class(TForm)
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
    dbeNomeBatizando: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    dbeComunidade: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    dbeObs: TspSkinDBMemo;
    spSkinLabel5: TspSkinLabel;
    dbeCodBatizando: TspSkinDBEdit;
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
    spSkinLabel12: TspSkinLabel;
    spSkinLabel13: TspSkinLabel;
    spdbePadrinho: TspSkinDBEdit;
    spSkinLabel14: TspSkinLabel;
    dbeMadrinha: TspSkinDBEdit;
    spSkinLabel15: TspSkinLabel;
    dbeMinistroPadre: TspSkinDBEdit;
    edit2: TspSkinEdit;
    spSkinLabel16: TspSkinLabel;
    dsBatisterio: TDataSource;
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
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel15: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel25: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel30: TppLabel;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    DbeDtBatismo: TspSkinDBEdit;
    ppLabel14: TppLabel;
    ppLabel31: TppLabel;
    ppLine3: TppLine;
    ppLine2: TppLine;
    ppLabel29: TppLabel;
    ppLbEmail: TppLabel;
    ppLbDtBatismo: TppLabel;
    ppLbNasc: TppLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsBatisterioStateChange(Sender: TObject);
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
    procedure dbeMinistroPadreEnter(Sender: TObject);
    procedure dbeMinistroPadreExit(Sender: TObject);
    procedure dbeMinistroPadreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeCodBatizandoEnter(Sender: TObject);
    procedure dbeCodBatizandoExit(Sender: TObject);
    procedure dbeCodBatizandoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure dbeCodBatizandoButtonClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fBatisterio: TfBatisterio;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaComunidade,
  uConsultaMinistrosPadres, uConsultaBatizados, uConsultaBatisterio;


{$R *.dfm}

procedure TfBatisterio.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fBatisterio, true);
  AbreTabela(DM1.TBatisterio,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TBatisterio,nil);
  DM1.TBatisterioPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TBatisterio.FieldByName('DTCADASTRO').AsDateTime:=Now;
  Edit1.Clear;
  Edit2.Clear;
  DM1.TBatisterio.FieldByName('DTBATISMO').AsDateTime := Now;
  if fPrincipal.vBatizandosUsarTelaCadastro then
    dbeCodBatizando.SetFocus
  else
    dbeNomeBatizando.SetFocus;

end;

procedure TfBatisterio.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  ActiveControl := nil;
  
  If DbeNomeBatizando.Text='' then
     Begin
        application.MessageBox('Batizando não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        dbeCodBatizando.SetFocus;
        exit;
     End;

  If dbeLivro.Text='' then
     Begin
        application.MessageBox('Livro não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        dbeLivro.SetFocus;
        exit;
     End;

  If dbeFolha.Text='' then
     Begin
        application.MessageBox('Folha não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        dbeFolha.SetFocus;
        exit;
     End;

  If dbeNumero.Text='' then
     Begin
        application.MessageBox('Número não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        dbeNumero.SetFocus;
        exit;
     End;
  If  not DataValida(DbeDtBatismo.Text) then
     Begin
        Application.MessageBox('Data do Batismo não cadastrada!'
                         +#13+
                         'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        DbeDtBatismo.SetFocus;
        Exit;
     End;


  if Edit1.Text='' then//verifica se a comunidade foi retornada
     begin
        application.MessageBox('Comunidade não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);
        DbeComunidade.SetFocus;
        exit;
     End;
  If edit2.Text='' then//verifica se PADRE/MINISTROS foi retornado
    Begin
    Application.MessageBox('Ministro/Padre não cadastrado!'
                           +#13+
                           'Cadastre ou cancele o processo.','Atenção',MB_OK + MB_ICONINFORMATION);

    DbeMinistroPadre.SetFocus;
    exit;
    end;


  {if (DM1.TBatisterio.FieldByName('NOMEBATIZANDO').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do BATIZANDO antes de salvar!',nil,nil);
      dbeNomeBatizando.SetFocus;
      Exit;
    End; }
     if dsBatisterio.State = dsInsert then
       DM1.TBatisterio.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','BATISTERIO',DM1.mParoquia);
       

  Grava(dsBatisterio);
  HabilitaForm(fBatisterio,False) ;

end;

procedure TfBatisterio.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TBatisterio);
  HabilitaForm(fBatisterio,True);
  if fPrincipal.vBatizandosUsarTelaCadastro then
    dbeCodBatizando.SetFocus
  else
    dbeNomeBatizando.SetFocus;
end;

procedure TfBatisterio.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TBatisterio);
  HabilitaForm(fBatisterio, False);
  AbreTabela(DM1.TBatisterio,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('BATISTERIO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfBatisterio.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fBatisterio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TBatisterio  ,'Cadastro de Batizados' ) then
   AbreTabela(DM1.TBatisterio,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('BATISTERIO','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfBatisterio.btSairClick(Sender: TObject);
begin
  fBatisterio.Close;
end;

procedure TfBatisterio.dsBatisterioStateChange(Sender: TObject);
begin
   Estado(dsBatisterio,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, btImprimir, nil, nil, nil);
end;

procedure TfBatisterio.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TBatisterio ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
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
        dbeCodBatizando.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;

      End;

   CarregaEdits;
   xBuscar := False;
end;

procedure TfBatisterio.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TBatisterio.Close;
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

procedure TfBatisterio.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsBatisterio.State = dsEdit) or (dsBatisterio.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TBatisterio);
          CanClose := True;
        End;
    End
end;

procedure TfBatisterio.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'BATISTERIO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  if Not fPrincipal.vBatizandosUsarTelaCadastro then
    Begin
      dbeCodBatizando.SkinData := nil  ;
      dbeCodBatizando.DefaultColor := $00C1F7EF;
      dbeNomeBatizando.Enabled  := TRUE;
      dbeCodBatizando.TabStop := FALSE;
      dbeNomeBatizando.SkinData := fPrincipal.spSkinData1;
      dbeMAE.SkinData := fPrincipal.spSkinData1;
      dbeMae.Enabled := True;

      dbePAI.SkinData := fPrincipal.spSkinData1;
      dbePAI.Enabled := True;

    End
  else
    Begin
      dbeCodBatizando.SkinData  := fPrincipal.spSkinData1 ;
      dbeNomeBatizando.Enabled  := FALSE ;
      dbeCodBatizando.TabStop   := True ;
      dbeNomeBatizando.SkinData := nil;
      dbeNomeBatizando.DefaultColor := $00C1F7EF;

      dbeMAE.SkinData := nil;
      dbeMAE.DefaultColor := $00C1F7EF;
      dbeMae.Enabled      := FALSE;

      dbePAI.SkinData := nil;
      dbePAI.DefaultColor := $00C1F7EF;
      dbePai.Enabled := FALSE;
    End;

end;

procedure TfBatisterio.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fBatisterio.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaBatisterio.fRetorno := fBatisterio  ;
      fConsultaBatisterio.Show;

    End
  else If (Shift = []) and (Key= vk_F8) then
    Begin
      if btImprimir.Enabled then
         btImprimir.OnClick(Self);
    End;

end;

procedure TfBatisterio.FormShow(Sender: TObject);
begin
  DM1.TBatisterio.Close;
  AbreTabela(DM1.TBatisterio ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('BATISTERIO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfBatisterio.dbeComunidadeEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfBatisterio.dbeComunidadeExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
   Label101.Caption := '';
end;

procedure TfBatisterio.dbeComunidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fBatisterio   ;
       fBatisterio.Enabled := False;
       fConsultaComunidade.Show;
                          
     end;
end;
procedure TfBatisterio.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Edit2.Text := RetornaTabela(DM1.TMinistrosPadres  ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
end;

procedure TfBatisterio.dbeMinistroPadreEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfBatisterio.dbeMinistroPadreExit(Sender: TObject);
begin
   Edit2.Text := RetornaTabela(DM1.TMinistrosPadres ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfBatisterio.dbeMinistroPadreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaMinistrosPadres.fRetorno := fBatisterio   ;
       fBatisterio.Enabled := False;
       fConsultaMinistrosPadres.Show;

     end;
end;

procedure TfBatisterio.dbeCodBatizandoEnter(Sender: TObject);
begin
  if fPrincipal.vBatizandosUsarTelaCadastro then
    label101.Caption := 'F10 - CADASTRO/CONSULTA';
end;



procedure TfBatisterio.dbeCodBatizandoExit(Sender: TObject);
begin
  if fPrincipal.vBatizandosUsarTelaCadastro then
    Begin
       dbeNomeBatizando.Text := RetornaTabela(DM1.TBatizados ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodBatizando.Text ,'','','','','','','NOME' );
       dbeMae.Text := RetornaTabela(DM1.TBatizados ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodBatizando.Text ,'','','','','','','MAE' );
       dbePAI.Text := RetornaTabela(DM1.TBatizados ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodBatizando.Text ,'','','','','','','PAI' );
       DM1.TBatisterioNaturalidade.AsString  := RetornaTabela(DM1.TBatizados ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodBatizando.Text ,'','','','','','','CIDADE' );
       DM1.TBatisterioDTNASC.AsString := RetornaTabela(DM1.TBatizados ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodBatizando.Text ,'','','','','','','DT_NASCIMENTO' );

       Label101.Caption := '';
    End;
end;

procedure TfBatisterio.dbeCodBatizandoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (fPrincipal.vBatizandosUsarTelaCadastro) And( (Shift = []) and (key = VK_F10)) then
     begin
       key := 0;
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaBatizados.fRetorno := fBatisterio   ;
       fBatisterio.Enabled := False;
       fConsultaBatizados.Show;

     end;
end;

procedure TfBatisterio.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Batisterio';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfBatisterio.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Batisterio';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfBatisterio.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Batistério';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfBatisterio.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar Batistério';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfBatisterio.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Batistério';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfBatisterio.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Cadastro de  Batistério';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfBatisterio.dbeCodBatizandoButtonClick(Sender: TObject);
begin
  if (fPrincipal.vBatizandosUsarTelaCadastro)  then
     begin
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaBatizados.fRetorno := fBatisterio   ;
       fBatisterio.Enabled := False;
       fConsultaBatizados.Show;

     end;
end;

procedure TfBatisterio.btImprimirClick(Sender: TObject);
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;

  ppLabel30.Caption := RetornaTabela(DM1.TMinistrosPadres,'I','pParoquia',DM1.TBatisterioPAROQUIA.AsString,'I','pCodigo',DM1.TBatisterioPADRE.AsString,'','','','','','','NOME');
  ppRepBatisterio.PrintReport;

end;

procedure TfBatisterio.ppHeaderBand1BeforePrint(Sender: TObject);
Var
   zNatural : String;
   zDiaCelebracao,zMesCelebracao,zAnoCelebracao    : String;
   zDiaNasc,zMesNasc,zAnoNasc : String;
   zDia,zMes,zAno : String;
begin
  {Define se usa as imagens q estao na pasta imagens}
  If fPrincipal.vImagensUsarCaminho Then
  Begin
   if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP') then
     Begin
      ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
      ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
     End;
  End;

  zDiaNasc := FormatDateTime('dd',DM1.TBatisterioDTNASC.AsDateTime);
  zMesNasc := FormatDateTime('mmmm',DM1.TBatisterioDTNASC.AsDateTime);
  zAnoNasc := FormatDateTime('yyyy',DM1.TBatisterioDTNASC.AsDateTime);
  zNatural := DM1.TBatisterioNATURALIDADE.AsString;

  zDia := FormatDateTime('dd',DM1.TBatisterioDTBATISMO.AsDateTime);
  zMes := FormatDateTime('mmmm',DM1.TBatisterioDTBATISMO.AsDateTime);
  zAno := FormatDateTime('yyyy',DM1.TBatisterioDTBATISMO.AsDateTime);
  zMes := AnsiUpperCase(zMes);
  ppLbDtBatismo.Caption := zDia + ' de ' + zMes + ' de ' + zAno;
  
  zDia := FormatDateTime('dd',Date);
  zMes := FormatDateTime('mmmm',Date);
  zAno := FormatDateTime('yyyy',Date);

  ppLbNasc.Caption      := zNatural + ' -- ' + zDiaNasc + ' de ' + zMesNasc + ' de ' + zAnoNasc;
  ppLabel27.Caption := DM1.mCidade + ' /' + DM1.mEstado+ '  ' + zDia + ' DE '  + zMes + ' DE ' + zAno;
  {Define se imprime o e-mail da paroquia nas certidoes,implementado dia 21-8-10}
  If not fPrincipal.vCertidaoUsarEmail then
     Begin
        ppLbEmail.Caption:='';
     End
    else
     Begin
        ppLbEmail.Caption:=DM1.mParoquiaEmail;
     End
end;

procedure TfBatisterio.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

end.
