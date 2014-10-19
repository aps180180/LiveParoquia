unit uDizimista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, DynamicSkinForm, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, IBCustomDataSet, IBQuery;

type
  TfDizimista = class(TForm)
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinLabel1: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    DsDizimista: TDataSource;
    DbeData: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    DbeBairro: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    DbeCidade: TspSkinDBEdit;
    DbeUf: TspSkinDBEdit;
    spSkinLabel7: TspSkinLabel;
    DbeCep: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    BbeTelefone: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    DbeCelular: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    DbeEmail: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    spSkinLabel12: TspSkinLabel;
    spSkinLabel13: TspSkinLabel;
    MemoObs: TspSkinDBMemo;
    RadioGroup: TspSkinDBRadioGroup;
    StatusBar: TspSkinStatusBar;
    StatusPanel1: TspSkinStatusPanel;
    dbeComunidade: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    spSkinLabel14: TspSkinLabel;
    dbeDiaDoacao: TspSkinDBComboBox;
    ibUltimaOferta: TIBQuery;
    ibUltimaOfertaMES: TIBStringField;
    ibUltimaOfertaANO: TIBStringField;
    ibUltimaOfertaVALOR: TIBBCDField;
    ibUltimaOfertasMesAno: TStringField;
    edit2: TspSkinEdit;
    spSkinLabel15: TspSkinLabel;
    edit3: TspSkinEdit;
    spSkinLabel16: TspSkinLabel;
    dbeValor: TspSkinDBEdit;
    rgCampanha: TspSkinDBRadioGroup;
    procedure btSairClick(Sender: TObject);
    procedure DsDizimistaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure CarregaEdits;
    procedure dbeComunidadeEnter(Sender: TObject);
    procedure dbeComunidadeExit(Sender: TObject);
    procedure dbeComunidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MostraUltimaOferta(pDizimista : Integer);
    procedure ibUltimaOfertaCalcFields(DataSet: TDataSet);
    procedure MemoObsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fDizimista: TfDizimista;

implementation

uses Sistools, uPrincipal, uDMDados, uDM1, uConsultaComunidade,
  uConsultaDizimista;

{$R *.dfm}

procedure TfDizimista.btSairClick(Sender: TObject);
begin
  fDizimista.Close;
end;

procedure TfDizimista.DsDizimistaStateChange(Sender: TObject);
begin
  Estado(dsDizimista,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfDizimista.FormCreate(Sender: TObject);
begin
  HabilitaForm(fDizimista,False);
  dmDados.mTabela := 'DIZIMISTA';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  Edit1.Clear;
  edit2.Clear;
  edit3.Clear;
end;

procedure TfDizimista.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 0)  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TDIZIMISTA  ,'pParoquia','pCodigo',DM1.mParoquia,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
    End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeComunidade.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;
    End;
  xBuscar := False;
  CarregaEdits;
end;

procedure TfDizimista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.TDIZIMISTA.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaDizimista.Enabled := True;
       fConsultaDizimista.RefazerSQL;
       fConsultaDizimista.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfDizimista.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (dsDizimista.State = dsEdit) or (dsDizimista.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TDIZIMISTA);
          CanClose := True;
        End;
    End
end;

procedure TfDizimista.FormShow(Sender: TObject);
begin
  DM1.TDIZIMISTA.Close;
  AbreTabela(DM1.TDIZIMISTA,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('Dizimista','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';

end;

procedure TfDizimista.FormKeyDown(Sender: TObject; var Key: Word;
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
      fDizimista.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      xNumDevolucao := 0;
      fConsultaDizimista.fRetorno := fDizimista  ;
      fConsultaDizimista.Show;
     
    End;

end;

procedure TfDizimista.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fDizimista, true);
  AbreTabela(DM1.TDIZIMISTA,'PParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TDIZIMISTA,nil);
  Dm1.TDizimista.FieldByName('DTCADASTRO').AsDateTime := Date ;//grava data cadastro
  DM1.TDizimistaPAROQUIA.AsInteger := DM1.mParoquia;
  RadioGroup.ItemIndex:=0;
  Edit1.Clear;
  dbeNome.SetFocus;

  
end;

procedure TfDizimista.btSalvarClick(Sender: TObject);
begin
  If Edit1.Text='' then
    Begin
    application.MessageBox('Comunidade não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
    DbeComunidade.SetFocus;
    exit;
    end;

  ActiveControl := nil;
  if (DM1.TDIZIMISTA.FieldByName('DIZIMISTA').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome do Dizimista antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if dsDizimista.State = dsInsert then
       DM1.TDIZIMISTA.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','DIZIMISTA',DM1.mParoquia);

  Grava(dsDizimista);
  HabilitaForm(fDizimista,False) ;

end;

procedure TfDizimista.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TDIZIMISTA);
  HabilitaForm(fDizimista,True);
  dbeNome.SetFocus;

end;

procedure TfDizimista.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TDIZIMISTA);
  HabilitaForm(fDizimista, False);
  AbreTabela(DM1.TDIZIMISTA,'PPAROQUIA','PCODIGO',DM1.mParoquia,UltimoRegistro('Dizimista','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
end;

procedure TfDizimista.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fDizimista')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }

  if ApagarRegistro(DM1.TDIZIMISTA ,'Cadastro de Dizimistas' ) then
   AbreTabela(DM1.TDIZIMISTA,'PParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('Dizimista','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
end;

procedure TfDizimista.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  MostraUltimaOferta(DM1.TDizimistaCODIGO.AsInteger);
end;

procedure TfDizimista.dbeComunidadeEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA';
end;

procedure TfDizimista.dbeComunidadeExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TComunidade ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeComunidade.Text ,'','','','','','','COMUNIDADE' );
  Label101.Caption := '';

end;

procedure TfDizimista.dbeComunidadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaComunidade.fRetorno := fDizimista   ;
       fDizimista.Enabled := False;
       fConsultaComunidade.Show;

     end;
end;

procedure TfDizimista.MostraUltimaOferta(pDizimista: Integer);
begin
  ibUltimaOferta.Close;
  ibUltimaOferta.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  ibUltimaOferta.ParamByName('PDIZIMISTA').AsInteger := pDizimista;
  ibUltimaOferta.Open;
  edit2.Text := ibUltimaOfertasMesAno.AsString;
  edit3.Text := FormatFloat(',0.00',ibUltimaOfertaVALOR.AsFloat);
  ibUltimaOferta.Close;
end;

procedure TfDizimista.ibUltimaOfertaCalcFields(DataSet: TDataSet);
begin
  ibUltimaOfertasMesAno.AsString := ibUltimaOfertaMES.AsString + '/'+ ibUltimaOfertaANO.AsString;
end;

procedure TfDizimista.MemoObsKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
