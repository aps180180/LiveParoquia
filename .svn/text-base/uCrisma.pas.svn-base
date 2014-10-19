unit uCrisma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo;

type
  TfCrisma = class(TForm)
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
    dbeNomeCrismando: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    dbeComunidade: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    dbeObs: TspSkinDBMemo;
    spSkinLabel5: TspSkinLabel;
    dbeCodCrismando: TspSkinDBEdit;
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
    dbeDtCrisma: TspSkinDBEdit;
    spSkinLabel13: TspSkinLabel;
    spdbePadrinho: TspSkinDBEdit;
    spSkinLabel14: TspSkinLabel;
    dbeMadrinha: TspSkinDBEdit;
    spSkinLabel15: TspSkinLabel;
    dbeMinistroPadre: TspSkinDBEdit;
    edit2: TspSkinEdit;
    spSkinLabel16: TspSkinLabel;
    dsCrisma: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppRepCrisma: TppReport;
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
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsCrismaStateChange(Sender: TObject);
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
    procedure dbeCodCrismandoEnter(Sender: TObject);
    procedure dbeCodCrismandoExit(Sender: TObject);
    procedure dbeCodCrismandoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure dbeCodCrismandoButtonClick(Sender: TObject);
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
  fCrisma: TfCrisma;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaComunidade,
  uConsultaMinistrosPadres, uConsultaBatizados, uConsultaBatisterio,
  uConsultaCrismandos, uConsultaCrisma;


{$R *.dfm}

procedure TfCrisma.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fCrisma')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fCrisma, true);
  AbreTabela(DM1.TCrisma,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TCrisma,nil);
  DM1.TCrismaPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TCrisma.FieldByName('DTCADASTRO').AsDateTime:=Now;
  Edit1.Clear;
  Edit2.Clear;
  if fPrincipal.vCrismandosUsarTelaCadastro then
    dbeCodCrismando.SetFocus
  else
    dbeNomeCrismando.SetFocus;

end;

procedure TfCrisma.btSalvarClick(Sender: TObject);
Var nome:string;
begin
  ActiveControl := nil;

  If dbeNomeCrismando.Text='' then
    Begin
     application.MessageBox('Crismando não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
     if fPrincipal.vCrismandosUsarTelaCadastro then
       dbeCodCrismando.SetFocus
     else
       dbeNomeCrismando.SetFocus;
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

  {if (DM1.TBatisterio.FieldByName('NOMEBATIZANDO').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do BATIZANDO antes de salvar!',nil,nil);
      dbeNomeBatizando.SetFocus;
      Exit;
    End; }
     if dsCrisma.State = dsInsert then
       DM1.TCrisma.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','CRISMA',DM1.mParoquia);

  Grava(dsCrisma);
  HabilitaForm(fCrisma,False) ;

end;

procedure TfCrisma.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fCrisma')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TCrisma);
  HabilitaForm(fCrisma,True);
  if fPrincipal.vCrismandosUsarTelaCadastro  then
    dbeCodCrismando.SetFocus
  else
    dbeNomeCrismando.SetFocus;
end;

procedure TfCrisma.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TCrismandos);
  HabilitaForm(fCrisma, False);
  AbreTabela(DM1.TCrisma,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('CRISMA','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfCrisma.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fCrisma')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TCrisma   ,'Cadastro de Crisma' ) then
   AbreTabela(DM1.TCrisma,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('CRISMA','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfCrisma.btSairClick(Sender: TObject);
begin
  fCrisma.Close;
end;

procedure TfCrisma.dsCrismaStateChange(Sender: TObject);
begin
   Estado(dsCrisma ,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, btImprimir, nil, nil, nil);
end;

procedure TfCrisma.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TCrisma ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
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
        dbeCodCrismando.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;

      End;

   CarregaEdits;
   xBuscar := False;
end;

procedure TfCrisma.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TCrismandos.Close;
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

procedure TfCrisma.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsCrisma.State = dsEdit) or (dsCrisma.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TCrisma);
          CanClose := True;
        End;
    End
end;

procedure TfCrisma.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'CRISMA';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  if Not fPrincipal.vCrismandosUsarTelaCadastro then
    Begin
      dbeCodCrismando.SkinData := nil  ;
      dbeCodCrismando.DefaultColor := $00C1F7EF;
      dbeNomeCrismando.Enabled  := TRUE;
      dbeCodCrismando.TabStop := FALSE;
      dbeNomeCrismando.SkinData := fPrincipal.spSkinData1;
      dbeMAE.SkinData := fPrincipal.spSkinData1;
      dbeMae.Enabled := True;

      dbePAI.SkinData := fPrincipal.spSkinData1;
      dbePAI.Enabled := True;

    End
  else
    Begin
      dbeCodCrismando.SkinData  := fPrincipal.spSkinData1 ;
      dbeNomeCrismando.Enabled  := FALSE ;
      dbeCodCrismando.TabStop   := True ;
      dbeNomeCrismando.SkinData := nil;
      dbeNomeCrismando.DefaultColor := $00C1F7EF;

      dbeMAE.SkinData := nil;
      dbeMAE.DefaultColor := $00C1F7EF;
      dbeMae.Enabled      := FALSE;

      dbePAI.SkinData := nil;
      dbePAI.DefaultColor := $00C1F7EF;
      dbePai.Enabled := FALSE;
    End;

end;

procedure TfCrisma.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fCrisma.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaCrisma.fRetorno := fCrisma  ;
      fConsultaCrisma.Show;

    End;

end;

procedure TfCrisma.FormShow(Sender: TObject);
begin
  DM1.TCRISMA.Close;
  AbreTabela(DM1.TCRISMA ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('CRISMA','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfCrisma.dbeComunidadeEnter(Sender: TObject);
begin
   label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfCrisma.dbeComunidadeExit(Sender: TObject);
begin
   Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
   Label101.Caption := '';
end;

procedure TfCrisma.dbeComunidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fCrisma   ;
       fCrisma.Enabled := False;
       fConsultaComunidade.Show;

     end;
end;
procedure TfCrisma.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Edit2.Text := RetornaTabela(DM1.TMinistrosPadres  ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
end;

procedure TfCrisma.dbeMinistroPadreEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfCrisma.dbeMinistroPadreExit(Sender: TObject);
begin
   Edit2.Text := RetornaTabela(DM1.TMinistrosPadres ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
   Label101.Caption := '';
end;

procedure TfCrisma.dbeMinistroPadreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 2;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaMinistrosPadres.fRetorno := fCrisma   ;
       fCrisma.Enabled := False;
       fConsultaMinistrosPadres.Show;

     end;
end;

procedure TfCrisma.dbeCodCrismandoEnter(Sender: TObject);
begin
  if fPrincipal.vCrismandosUsarTelaCadastro  then
    label101.Caption := 'F10 - CADASTRO/CONSULTA';
end;



procedure TfCrisma.dbeCodCrismandoExit(Sender: TObject);
begin
  if fPrincipal.vCrismandosUsarTelaCadastro  then
    Begin
       dbeNomeCrismando.Text := RetornaTabela(DM1.TCrismandos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodCrismando.Text ,'','','','','','','NOME' );
       dbeMae.Text := RetornaTabela(DM1.TCrismandos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodCrismando.Text ,'','','','','','','MAE' );
       dbePAI.Text := RetornaTabela(DM1.TCrismandos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodCrismando.Text ,'','','','','','','PAI' );
       DM1.TCrismaNATURALIDADE.AsString := RetornaTabela(DM1.TCrismandos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodCrismando.Text ,'','','','','','','CIDADE' );
       DM1.TCrismaDTNASC.AsString := RetornaTabela(DM1.TCrismandos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodCrismando.Text ,'','','','','','','DT_NASCIMENTO' );

       Label101.Caption := '';
    End;
end;

procedure TfCrisma.dbeCodCrismandoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (fPrincipal.vCrismandosUsarTelaCadastro) And( (Shift = []) and (key = VK_F10)) then
     begin
       key := 0;
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaCrismandos.fRetorno := fCrisma    ;
       fCrisma.Enabled := False;
       fConsultaCrismandos.Show;

     end;
end;

procedure TfCrisma.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btNovo.Hint    ;
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfCrisma.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btSalvar.Hint  ;
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfCrisma.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btAlterar.Hint  ;
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfCrisma.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btCancelar.Hint  ;
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfCrisma.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btExcluir.Hint  ;
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfCrisma.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:= btSair.Hint  ;
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfCrisma.dbeCodCrismandoButtonClick(Sender: TObject);
begin
  if (fPrincipal.vCrismandosUsarTelaCadastro)  then
     begin
       xNumDevolucao := 3;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaCrismandos.fRetorno := fCrisma    ;
       fCrisma.Enabled := False;
       fConsultaCrismandos.Show;

     end;
end;

procedure TfCrisma.btImprimirClick(Sender: TObject);
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;

  ppLabel30.Caption := RetornaTabela(DM1.TMinistrosPadres,'I','pParoquia',DM1.TCRISMAPAROQUIA.AsString,'I','pCodigo',DM1.TCRISMAPADRE.AsString,'','','','','','','NOME');
  ppRepCrisma.PrintReport;

end;

procedure TfCrisma.ppHeaderBand1BeforePrint(Sender: TObject);
Var
zDia,zMes,zAno : String;
begin
  If  fPrincipal.vImagensUsarCaminho then
   begin
   if FileExists(DM1.mCaminhoImagens +'\LOGOMARCA.BMP')  then
     Begin
       ppImage1.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA.BMP');
       ppImage2.Picture.LoadFromFile(DM1.mCaminhoImagens +'\LOGOMARCA1.BMP');
     End;
  End;
  zDia := FormatDateTime('dd',DM1.TCrismaDTCRISMA .AsDateTime);
  zMes := FormatDateTime('mmmm',DM1.TCrismaDTCRISMA.AsDateTime);
  zAno := FormatDateTime('yyyy',DM1.TCrismaDTCRISMA.AsDateTime);
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

procedure TfCrisma.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

end.
