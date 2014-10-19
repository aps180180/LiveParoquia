unit uMatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo, ComCtrls, SkinTabs, ImgList;

type
  TfMatrimonio = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    dsMatrimonio: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppRepMatrimonio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    btImprimir: TspSkinButton;
    ppLine1: TppLine;
    ppLabel27: TppLabel;
    ppImage2: TppImage;
    ppImage1: TppImage;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    PageControl1: TspSkinPageControl;
    TabSheet1: TspSkinTabSheet;
    TabSheet2: TspSkinTabSheet;
    TabSheet3: TspSkinTabSheet;
    GroupBox1: TspSkinGroupBox;
    spSkinLabel1: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    dbeLivro: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    spSkinDBEdit1: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    dbeFolha: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    dbeNumero: TspSkinDBEdit;
    spSkinLabel12: TspSkinLabel;
    dbeDtBatismo: TspSkinDBEdit;
    spSkinDBEdit5: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    spSkinLabel8: TspSkinLabel;
    spSkinDBEdit4: TspSkinDBEdit;
    spSkinLabel5: TspSkinLabel;
    DbeNomeArquidiocese: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinDBEdit2: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    spSkinDBEdit6: TspSkinDBEdit;
    spSkinLabel16: TspSkinLabel;
    dbeObs: TspSkinDBMemo;
    GroupBox2: TspSkinGroupBox;
    spSkinLabel11: TspSkinLabel;
    dbeNoivo: TspSkinDBEdit;
    spSkinLabel14: TspSkinLabel;
    DbeNatNoivo: TspSkinDBEdit;
    spSkinLabel15: TspSkinLabel;
    spSkinLabel18: TspSkinLabel;
    DbeEndNoivo: TspSkinDBEdit;
    spSkinLabel21: TspSkinLabel;
    DbePaiNoivo: TspSkinDBEdit;
    spSkinLabel19: TspSkinLabel;
    DbeCidadeNoivo: TspSkinDBEdit;
    spSkinLabel22: TspSkinLabel;
    DbeMaeNoivo: TspSkinDBEdit;
    GroupBox3: TspSkinGroupBox;
    spSkinLabel13: TspSkinLabel;
    spSkinLabel23: TspSkinLabel;
    spSkinLabel24: TspSkinLabel;
    DbeNatNoiva: TspSkinDBEdit;
    spSkinLabel25: TspSkinLabel;
    spSkinDBEdit9: TspSkinDBEdit;
    spSkinLabel26: TspSkinLabel;
    DbeEndNoiva: TspSkinDBEdit;
    spSkinLabel27: TspSkinLabel;
    DbeCidadeNoiva: TspSkinDBEdit;
    spSkinLabel28: TspSkinLabel;
    DbeUfEndNoiva: TspSkinDBEdit;
    spSkinLabel29: TspSkinLabel;
    DbePaiNoiva: TspSkinDBEdit;
    spSkinLabel30: TspSkinLabel;
    DbeMaeNoiva: TspSkinDBEdit;
    DbeUfNatNoivo: TspSkinDBEdit;
    spSkinLabel17: TspSkinLabel;
    DbeDtNascNoivo: TspSkinDBEdit;
    DbeDtNascNoiva: TspSkinDBEdit;
    DbeUfEndNoivo: TspSkinDBEdit;
    spSkinLabel20: TspSkinLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppLabel22: TppLabel;
    spSkinLabel31: TspSkinLabel;
    StatusPanel2: TspSkinStatusPanel;
    DbeNomeNoivo: TspSkinDBEdit;
    DbeNomeNoiva: TspSkinDBEdit;
    ppLbEmail: TppLabel;
    ppLblDtCelebracao: TppLabel;
    ppLabel29: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLblCidadeUfNoivo: TppLabel;
    ppLblCidadeUfNoiva: TppLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsMatrimonioStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CarregaEdits;    
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure DbeCodNoivoEnter(Sender: TObject);
    procedure DbeCodNoivoExit(Sender: TObject);
    procedure DbeCodNoivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Exit(Sender: TObject);
    procedure dbeNoivoExit(Sender: TObject);
    procedure dbeObsExit(Sender: TObject);
    procedure DbeMaeNoivaExit(Sender: TObject);
    procedure dbeNoivoEnter(Sender: TObject);
    procedure dbeNoivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbeMaeNoivoExit(Sender: TObject);
    procedure DbeUfNatNoivoExit(Sender: TObject);
    procedure dbeDtBatismoExit(Sender: TObject);
    procedure spSkinDBEdit9Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta: Boolean;
    xNumDevolucao : Integer;
    xAcao : String;
  end;

var
  fMatrimonio: TfMatrimonio;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaComunidade,uConsultaMatrimonio, uConsultaNoivos;


{$R *.dfm}

procedure TfMatrimonio.btNovoClick(Sender: TObject);
begin
  {If not (fPrincipal.TemPermissao(dm1.mUsuario,2,'fMatrimonio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      exit;
    end;
   }

  PageControl1.TabIndex:=0;
  GroupBox1.Enabled:=True;
  GroupBox2.Enabled:=True;
  GroupBox3.Enabled:=True;
  AbreTabela(DM1.TMatrimonio,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TMatrimonio,nil);
  DM1.TMatrimonioPAROQUIA.AsInteger := DM1.mParoquia;
  Dm1.TMatrimonio.FieldByName('DTCADASTRO').AsDateTime:=Now;
  dbeLivro.SetFocus;



end;

procedure TfMatrimonio.btSalvarClick(Sender: TObject);
Var nome:string;
begin
    ActiveControl := nil;
       If DM1.TMatrimonioLIVRO.AsString ='' then
          Begin
             application.MessageBox('Livro não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',Mb_IconInformation);
             dbeLivro.SetFocus;
             exit;
          end;
       If DM1.TMatrimonioFOLHA.AsString='' then
          Begin
             application.MessageBox('Folha não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',Mb_IconInformation);
             dbeFolha.SetFocus;
             exit;
          end;
       If DM1.TMatrimonioNUMERO.AsString='' then
          Begin
             application.MessageBox('Número não cadastrado!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',Mb_IconInformation);
             dbeNumero.SetFocus;
             exit;
          end;
       If dm1.TMatrimonio.FieldByName('DTCELEBRACAO').AsString='' then
          Begin
             application.MessageBox('Data de Celebração não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',Mb_IconInformation);
             dbeDtBatismo.SetFocus;
             exit;
          end;

       if fPrincipal.vMatrimonioUsarTelaCadastro then
          Begin
             if DM1.TMatrimonioCODIGONOIVO.AsString ='' then
               begin
                 application.MessageBox('Nome dos Noivos não cadastrados!'
                            +#13+
                            'Cadastre ou cancele o processo.','Atenção', Mb_IconInformation);
                 PageControl1.TabIndex:=1;
                 dbeNoivo.SetFocus;;
                 exit;
              end;

          End
       else
         Begin
           if DM1.TMatrimonioNOMENOIVO.AsString ='' then
               begin
                 application.MessageBox('Nome do Noivo não cadastrados!'
                            +#13+
                            'Cadastre ou cancele o processo.','Atenção', Mb_IconInformation);
                 PageControl1.TabIndex:=1;
                 DbeNomeNoivo.SetFocus;;
                 exit;
               end;
           if DM1.TMatrimonioNOMENOIVA.AsString ='' then
               begin
                 application.MessageBox('Nome da Noiva não cadastrados!'
                            +#13+
                            'Cadastre ou cancele o processo.','Atenção', Mb_IconInformation);
                 PageControl1.TabIndex:=2;
                 DbeNomeNoiva.SetFocus;;
                 exit;
               end;
          End;

     if dsMatrimonio.State = dsInsert then
       DM1.TMatrimonio.FieldByName('CODIGO').asInteger:=AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','MATRIMONIO',DM1.mParoquia);

     if dsMatrimonio.State= dsInsert then
        Begin
           xAcao := 'INCLUIU MATRIMÔNIO (' + DM1.TMatrimonioCODIGO.AsString + ') ' + ' Noivos:'+dbeNomeNoivo.Text+' -- '+DbeNomeNoiva.Text
        End
     else
        Begin
           Dm1.TMatrimonio.FieldByName('DTALTERACAO').AsDateTime:=Now;
           xAcao := 'ALTEROU MATRIMÔNIO (' + DM1.TMatrimonioCODIGO.AsString + ') ' + DM1.TMatrimonioNomeNoivo.AsString;
        End;




  Grava(dsMatrimonio);
  fPrincipal.Auditoria(DM1.mUsuario,'FMATRIMONIO',xAcao);
  PageControl1.TabIndex:=0;
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  GroupBox3.Enabled:=False;


end;

procedure TfMatrimonio.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fMatrimonio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;  }
  PageControl1.TabIndex:=0;
  ModificaRegistro(DM1.TMatrimonio);
  GroupBox1.Enabled:=True;
  GroupBox2.Enabled:=True;
  GroupBox3.Enabled:=True;
  
end;

procedure TfMatrimonio.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TMatrimonio);
  PageControl1.TabIndex:=0;
  AbreTabela(DM1.TMatrimonio,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('MATRIMONIO','Codigo','Paroquia',DM1.mParoquia));
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  GroupBox3.Enabled:=False;
end;

procedure TfMatrimonio.btExcluirClick(Sender: TObject);
Var
zCodAnt,zNomeNoivoAnt,zNomeNoivaAnt : String;
begin
{  if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fMatrimonio')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End; }
    zCodAnt       := DM1.TMatrimonioCODIGO.AsString;
    zNomeNoivoAnt := DM1.TMatrimonioNOMENOIVO.AsString;
    zNomeNoivaAnt := Dm1.TMatrimonioNOMENOIVA.AsString;

  if ApagarRegistro(DM1.TMatrimonio  ,'Lançamento de Matrimônio' ) then
   AbreTabela(DM1.TMatrimonio,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('MATRIMONIO','Codigo','Paroquia',DM1.mParoquia));
   xAcao := 'EXCLUIU MATRIMÔNIO (' + zCodAnt + ') ' + zNomeNoivoAnt+' --- '+zNomeNoivaAnt ;
   fPrincipal.Auditoria(DM1.mUsuario,'FMATRIMONIO',xAcao);
end;

procedure TfMatrimonio.btSairClick(Sender: TObject);
begin
  fMatrimonio.Close;
end;

procedure TfMatrimonio.dsMatrimonioStateChange(Sender: TObject);
begin
  Estado(dsMatrimonio,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfMatrimonio.FormActivate(Sender: TObject);
begin
  
  if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TMatrimonio,'PPAROQUIA','pCODIGO',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      PageControl1.TabIndex:=1;
      dbeNoivo.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;

    End;
  //CarregaEdits;
  xBuscar := False;
end;

procedure TfMatrimonio.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TMatrimonio.Close;
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

procedure TfMatrimonio.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsMatrimonio.State = dsEdit) or (dsMatrimonio.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TMATRIMONIO);
          CanClose := True;
        End;
    End 
end;

procedure TfMatrimonio.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'MATRIMONIO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;

  if Not fPrincipal.vMatrimonioUsarTelaCadastro then
    Begin
      DbeNoivo.SkinData           := nil  ;
      DbeNoivo.DefaultColor       := $00C1F7EF;
      dbeNoivo.Enabled            :=False;
      DbeNomeNoivo.Enabled        := TRUE;
      DbeNomeNoiva.Enabled        := TRUE;
      DbeNoivo.TabStop            := FALSE;


      DbeNomeNoivo.SkinData       := fPrincipal.spSkinData1;
      DbeNomeNoiva.SkinData       := fPrincipal.spSkinData1;
      DbeMaeNoivo.SkinData        := fPrincipal.spSkinData1;
      DbeMaeNoiva.SkinData        := fPrincipal.spSkinData1;
      DbeMaeNoivo.Enabled         := True;
      DbeMaeNoiva.Enabled         := True;

      DbePaiNoivo.SkinData        := fPrincipal.spSkinData1;
      DbePaiNoiva.SkinData        := fPrincipal.spSkinData1;
      DbePaiNoivo.Enabled         := True;
      DbePaiNoiva.Enabled         := True;

    End
  else
    Begin
      dbeNoivo.SkinData           := fPrincipal.spSkinData1 ;
      DbeNoivo.TabStop            := True ;

      DbeNomeNoivo.Enabled        := False;
      DbeDtNascNoivo.Enabled      := False;
      DbeEndNoivo.Enabled         := False;
      DbeCidadeNoivo.Enabled      := False;
      DbeUfEndNoivo.Enabled       := False;
      DbePaiNoivo.Enabled         := False;
      DbeMaeNoivo.Enabled         := False;
      DbeNomeNoiva.Enabled        := False;
      DbeDtNascNoiva.Enabled      := False;
      DbeEndNoiva.Enabled         := False;
      DbeCidadeNoiva.Enabled      := False;
      DbeUfEndNoiva.Enabled       := False;
      DbePaiNoiva.Enabled         := False;
      DbeMaeNoiva.Enabled         := False;

      DbeNomeNoivo.SkinData       := nil;
      DbeDtNascNoivo.SkinData     := nil;
      DbeEndNoivo.SkinData        := nil;
      DbeCidadeNoivo.SkinData     := nil;
      DbeUfEndNoivo.SkinData      := nil;
      DbeMaeNoivo.SkinData        := nil;
      DbePaiNoivo.SkinData        := nil;

      DbeNomeNoiva.SkinData       := nil;
      DbeDtNascNoiva.SkinData     := nil;
      DbeEndNoiva.SkinData        := nil;
      DbeCidadeNoiva.SkinData     := nil;
      DbeUfEndNoiva.SkinData      := nil;
      DbeMaeNoiva.SkinData        := nil;
      DbePaiNoiva.SkinData        := nil;

      DbeNomeNoivo.DefaultColor   := $00C1F7EF;
      DbeNomeNoiva.DefaultColor   := $00C1F7EF;
      DbeDtNascNoivo.DefaultColor := $00C1F7EF;
      DbeDtNascNoiva.DefaultColor := $00C1F7EF;
      DbeEndNoivo.DefaultColor    := $00C1F7EF;
      DbeEndNoiva.DefaultColor    := $00C1F7EF;
      DbeCidadeNoivo.DefaultColor := $00C1F7EF;
      DbeCidadeNoiva.DefaultColor := $00C1F7EF;
      DbeUfEndNoivo.DefaultColor  := $00C1F7EF;
      DbeUfEndNoiva.DefaultColor  := $00C1F7EF;
      DbeMaeNoivo.DefaultColor    := $00C1F7EF;
      DbeMaeNoiva.DefaultColor    := $00C1F7EF;
      DbePaiNoivo.DefaultColor    := $00C1F7EF;
      DbePaiNoiva.DefaultColor    := $00C1F7EF;

     







    End;

end;

procedure TfMatrimonio.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fMatrimonio.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaMatrimonio.fRetorno := fMatrimonio  ;
      fConsultaMatrimonio.Show;

    End
  else If (Shift = []) and (Key= vk_F8) then
    Begin
      if btImprimir.Enabled then
         btImprimir.OnClick(Self);
    End
end;

procedure TfMatrimonio.FormShow(Sender: TObject);
begin
  
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  GroupBox3.Enabled:=False;
  DM1.TBatisterio.Close;
  AbreTabela(DM1.TMatrimonio ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('MATRIMONIO','Codigo','Paroquia',DM1.mParoquia));
  PageControl1.TabIndex:=0;
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfMatrimonio.CarregaEdits;
begin
  //Edit1.Text := RetornaTabela(DM1.TNoivo ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  //Edit2.Text := RetornaTabela(DM1.TMinistrosPadres  ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeMinistroPadre.Text ,'','','','','','','NOME' );
end;

procedure TfMatrimonio.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Matrimônio';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfMatrimonio.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Matrimônio';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfMatrimonio.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Matrimônio';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfMatrimonio.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar Matrimônio';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfMatrimonio.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Matrimônio';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfMatrimonio.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Matrimônio Simplificado';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfMatrimonio.btImprimirClick(Sender: TObject);
begin
  ppLabel1.Caption  := DM1.mNomeArquidiocese;
  ppLabel2.Caption  := DM1.mNomeParoquia ;
  ppLabel3.Caption  := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption  := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone;
  
  //ppLabel30.Caption := RetornaTabela(DM1.TMinistrosPadres,'I','pParoquia',DM1.TBatisterioPAROQUIA.AsString,'I','pCodigo',DM1.TBatisterioPADRE.AsString,'','','','','','','NOME');
  ppRepMatrimonio.PrintReport;

end;

procedure TfMatrimonio.ppHeaderBand1BeforePrint(Sender: TObject);
Var
zDiaCelebracao,zMesCelebracao,zAnoCelebracao    : String;
zNoivoNatural,zNoivoUf,zNoivaNatural,zNoivaUf   : String;
zNoivoDiaNasc,zNoivoMesNasc,zNoivoAnoNasc       : String;
zNoivaDiaNasc,zNoivaMesNasc,zNoivaAnoNasc       : String; 
zDia,zMes,zAno                                  : String;
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
  zNoivaDiaNasc  :=FormatDateTime('dd',DM1.TMatrimonioDTNASCNOIVA.AsDateTime);
  zNoivaMesNasc  :=FormatDateTime('mmmm',DM1.TMatrimonioDTNASCNOIVA.AsDateTime);
  zNoivaAnoNasc  :=FormatDateTime('yyyy',DM1.TMatrimonioDTNASCNOIVA.AsDateTime);
  zNoivoDiaNasc  :=FormatDateTime('dd',DM1.TMatrimonioDTNASCNOIVO.AsDateTime);
  zNoivoMesNasc  :=FormatDateTime('mmmm',DM1.TMatrimonioDTNASCNOIVO.AsDateTime);
  zNoivoAnoNasc  :=FormatDateTime('yyyy',DM1.TMatrimonioDTNASCNOIVO.AsDateTime);

  zNoivaNatural  :=DM1.TMatrimonioNATURALIDADENOIVA.AsString;
  zNoivaUf       :=DM1.TMatrimonioNATURALIDADE_UF_NOIVA.AsString;
  zNoivoNatural  :=DM1.TMatrimonioNATURALIDADENOIVO.AsString;
  zNoivoUf       :=DM1.TMatrimonioNATURALIDADE_UF_NOIVO.AsString;
  zDiaCelebracao := FormatDateTime('dd',DM1.TMatrimonioDTCELEBRACAO.AsDateTime);
  zMesCelebracao := FormatDateTime('mmmm',DM1.TMatrimonioDTCELEBRACAO.AsDateTime);
  zAnoCelebracao := FormatDateTime('yyyy',DM1.TMatrimonioDTCELEBRACAO.AsDateTime);
  zMesCelebracao := AnsiUpperCase(zMesCelebracao);


  zDia := FormatDateTime('dd',Date);
  zMes := FormatDateTime('mmmm',Date);
  zAno := FormatDateTime('yyyy',Date);
  zMes := AnsiUpperCase(zMes);

  ppLblCidadeUfNoiva.Caption:=zNoivaNatural + ' / ' + zNoivaUf + ' aos ' + zNoivaDiaNasc +' de '+ zNoivaMesNasc +' de '+zNoivaAnoNasc ;
  ppLblCidadeUfNoivo.Caption:=zNoivoNatural + ' / ' + zNoivoUf + ' aos ' + zNoivoDiaNasc +' de '+ zNoivoMesNasc +' de '+zNoivoAnoNasc ;
  ppLblDtCelebracao.Caption := zDiaCelebracao + ' de ' + zMesCelebracao + ' de ' + zAnoCelebracao;
  ppLabel27.Caption := DM1.mCidade + ' /' + DM1.mEstado+ ' , ' + zDia + ' DE '  + zMes + ' DE ' + zAno;
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

procedure TfMatrimonio.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfMatrimonio.DbeCodNoivoEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRO/CONSULTA';
end;

procedure TfMatrimonio.DbeCodNoivoExit(Sender: TObject);
begin
  //Edt1.Text := RetornaTabela(DM1.TNoivo ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DbeCodNoivo.Text ,'','','','','','','NOIVO' );
  Label101.Caption := '';
end;

procedure TfMatrimonio.DbeCodNoivoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       //fConsultaComunidade.fRetorno := fBatisterio   ;
       //fBatisterio.Enabled := False;
       //fConsultaComunidade.Show;

     end;
end;

procedure TfMatrimonio.PageControl1Exit(Sender: TObject);
begin
  // dbeNomeNoivo.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','NOME_NOIVO' );
  // dbeNomeNoiva.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','NOME_NOIVA' );
end;

procedure TfMatrimonio.dbeNoivoExit(Sender: TObject);
begin

 If fPrincipal.vMatrimonioUsarTelaCadastro then
  begin
  dbeNomeNoivo.Text   := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','NOME_NOIVO' );
  dbeNomeNoiva.Text   := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','NOME_NOIVA' );
  DbeDtNascNoivo.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','DTNASCNOIVO' );
  DbeDtNascNoiva.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','DTNASCNOIVA' );
  DbeEndNoivo.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','ENDERECO_NOIVO' );
  DbeEndNoiva.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','ENDERECO_NOIVA' );
  DbeCidadeNoivo.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','CIDADE_NOIVO' );
  DbeCidadeNoiva.Text := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','CIDADE_NOIVA' );
  DbeUfEndNoivo.Text  := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','UF_NOIVO' );
  DbeUfEndNoiva.Text  := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','UF_NOIVA' );
  DbePaiNoivo.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','PAI_NOIVO' );
  DbePaiNoiva.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','PAI_NOIVA' );
  DbeMaeNoivo.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','MAE_NOIVO' );
  DbeMaeNoiva.Text    := RetornaTabela(DM1.TNoivos ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeNoivo.Text ,'','','','','','','MAE_NOIVA' );
  
  Label101.Caption := '';
  end;

  end;

procedure TfMatrimonio.dbeObsExit(Sender: TObject);
begin
  PageControl1.TabIndex:=1;
  If not fPrincipal.vMatrimonioUsarTelaCadastro then
     begin
        dbeNomeNoivo.SetFocus;
     end
     else
     begin
        dbeNoivo.SetFocus;
     end;
     

end;

procedure TfMatrimonio.DbeMaeNoivaExit(Sender: TObject);
begin
  PageControl1.TabIndex:=0;
  dbeLivro.SetFocus;
end;

procedure TfMatrimonio.dbeNoivoEnter(Sender: TObject);
begin
  if fPrincipal.vMatrimonioUsarTelaCadastro  then
     label101.Caption := 'F10 - CADASTRO/CONSULTA';
  
  
end;

procedure TfMatrimonio.dbeNoivoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (fPrincipal.vMatrimonioUsarTelaCadastro) And( (Shift = []) and (key = VK_F10)) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaNoivos.fRetorno := fMatrimonio   ;
       fMatrimonio.Enabled := False;
       fConsultaNoivos.Show;
       
     end;
end;

procedure TfMatrimonio.DbeMaeNoivoExit(Sender: TObject);
begin
  PageControl1.TabIndex := 2;
  //DbeNomeNoiva.SetFocus;
  If not fPrincipal.vMatrimonioUsarTelaCadastro then
     begin
        dbeNomeNoiva.SetFocus;
     end
     else
     begin
        DbeNatNoiva.SetFocus;
     end;
end;

procedure TfMatrimonio.DbeUfNatNoivoExit(Sender: TObject);
begin
   if fPrincipal.vMatrimonioUsarTelaCadastro then
     begin
        DbeMaeNoivo.OnExit(self);
        DbeNatNoiva.SetFocus;
     end;
end;

procedure TfMatrimonio.dbeDtBatismoExit(Sender: TObject);
Var
 StrMenssagem,StrMenssagem1:string;
begin
  { StrMenssagem:=dbeDtBatismo.Text;
   StrMenssagem1:='Formato de data não é valido!';

   Try
     StrTodate(dbeDtBatismo.Text);
   except
     application.MessageBox(Pchar(StrMenssagem+StrMenssagem1),'Atenção',MB_OK+MB_ICONINFORMATION);
     dbeDtBatismo.SetFocus;
     exit;

   end;}

end;


procedure TfMatrimonio.spSkinDBEdit9Exit(Sender: TObject);
begin
   if fPrincipal.vMatrimonioUsarTelaCadastro then
     begin
        DbeMaeNoiva.OnExit(self);
        
     end;
end;

end.
