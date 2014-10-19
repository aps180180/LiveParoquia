unit uParoquias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls, spdbctrls,
  DynamicSkinForm, IBCustomDataSet, IBTable, DBCtrls;

type
  TfParoquias = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    spSkinLabel2: TspSkinLabel;
    dbeNome: TspSkinDBEdit;
    dsParoquias: TDataSource;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DbeEndereco: TspSkinDBEdit;
    spSkinLabel3: TspSkinLabel;
    DbeBairro: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel5: TspSkinLabel;
    DbeCidade: TspSkinDBEdit;
    DbeCep: TspSkinDBEdit;
    spSkinLabel6: TspSkinLabel;
    spSkinLabel7: TspSkinLabel;
    DbeTelefone: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    DbeUf: TspSkinDBEdit;
    spSkinLabel9: TspSkinLabel;
    DbeFax: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    dbeArquidiocese: TspSkinDBEdit;
    Edit1: TspSkinEdit;
    DbeEmail: TspSkinDBEdit;
    spSkinLabel11: TspSkinLabel;
    procedure dsParoquiasStateChange(Sender: TObject);
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
    procedure btSairClick(Sender: TObject);
    procedure dbeArquidioceseEnter(Sender: TObject);
    procedure dbeArquidioceseExit(Sender: TObject);
    procedure dbeArquidioceseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CarregaEdits;
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
  end;

var
  fParoquias: TfParoquias;

implementation

uses Sistools, uPrincipal, uDMDados, uDM1, uConsultaParoquias,
  uConsultaArquidiocese;

{$R *.dfm}

procedure TfParoquias.dsParoquiasStateChange(Sender: TObject);
begin
  Estado(dsParoquias,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfParoquias.FormCreate(Sender: TObject);
begin
  dmDados.mTabela := 'PAROQUIA';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;
  Edit1.Clear;
end;

procedure TfParoquias.FormActivate(Sender: TObject);
begin
  if (xBuscar) and (xNumDevolucao = 0 )  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TPAROQUIA,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
     End
  else if (xBuscar) and (xNumDevolucao = 1) then
    Begin
      dbeArquidiocese.Text := IntToStr( fPrincipal.ValorRetornoInteger);
      fPrincipal.ValorRetornoInteger := 0;

    End;
  CarregaEdits;
  xBuscar := False;
end;

procedure TfParoquias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.TPAROQUIA.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       fConsultaParoquias.Enabled := True;
       fConsultaParoquias.RefazerSQL;
       fConsultaParoquias.Show;

    end;
  xOrigemConsulta := False;
  
end;

procedure TfParoquias.FormCloseQuery(Sender: TObject;  var CanClose: Boolean);
begin
  if (dsParoquias.State = dsEdit) or (dsParoquias.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TPAROQUIA);
          CanClose := True;
        End;
    End

end;

procedure TfParoquias.FormShow(Sender: TObject);
begin
  DM1.TPAROQUIA.Close;
  AbreTabela(DM1.TPAROQUIA,'','PCODIGO',0,UltimoRegistro('Paroquia','Codigo','',0));
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';

end;

procedure TfParoquias.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      xNumDevolucao := 0;
      fParoquias.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaParoquias.fRetorno := fParoquias ;
      fConsultaParoquias.Show;

    End;

end;

procedure TfParoquias.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fParoquias')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fParoquias, true);
  AbreTabela(DM1.TPAROQUIA,'','pCodigo',-1,-1);
  NovoRegistro(DM1.TPAROQUIA,nil);
  dbeNome.SetFocus;
  Edit1.Clear;
end;

procedure TfParoquias.btSalvarClick(Sender: TObject);
begin
  If Edit1.Text='' then
    begin
      application.MessageBox('Arquidiocese não cadastrada!'
                        +#13+
                        'Cadastre ou cancele o processo.','Atenção',0);
      DbeArquidiocese.SetFocus;
      Exit;
    end;


  ActiveControl := nil;
  if (DM1.TPAROQUIA.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe o nome da Paróquia antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
    End;
     if dsParoquias.State = dsInsert then
       DM1.TPAROQUIA.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','','PAROQUIA',0  );

  Grava(dsParoquias );
  HabilitaForm(fParoquias,False) ;

end;

procedure TfParoquias.btAlterarClick(Sender: TObject);
begin
  {if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fParoquias')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
   }
  ModificaRegistro(DM1.TPAROQUIA);
  HabilitaForm(fParoquias,True);
  dbeNome.SetFocus;

end;

procedure TfParoquias.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TPAROQUIA);
  HabilitaForm(fParoquias, False);
  AbreTabela(DM1.TPAROQUIA,'' ,'PCODIGO',0,UltimoRegistro('Paroquia','Codigo','',0));
  CarregaEdits;
end;

procedure TfParoquias.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fParoquias')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TPAROQUIA ,'Cadastro de Paróquias' ) then
   AbreTabela(DM1.TPAROQUIA,'','PCODIGO',0 ,UltimoRegistro('Paroquia','Codigo','',0));
   CarregaEdits;
end;

procedure TfParoquias.btSairClick(Sender: TObject);
begin
  fParoquias.Close ;
end;

procedure TfParoquias.dbeArquidioceseEnter(Sender: TObject);
begin
  label101.Caption   := 'F10 - CADASTRA/CONSULTA'; 
end;

procedure TfParoquias.dbeArquidioceseExit(Sender: TObject);
begin
  Edit1.Text := RetornaTabela(DM1.TArquidiocese ,'','','','I','pCodigo',dbeArquidiocese.Text ,'','','','','','','NOME' );
  Label101.Caption := '';

end;

procedure TfParoquias.dbeArquidioceseKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaArquidiocese.fRetorno := fParoquias ;
       fParoquias.Enabled := False;
       fConsultaArquidiocese.Show;

     end
end;

procedure TfParoquias.CarregaEdits;
begin
  Edit1.Text := RetornaTabela(DM1.TArquidiocese ,'','','','I','pCodigo',dbeArquidiocese.Text ,'','','','','','','NOME' );
end;

end.
