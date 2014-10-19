unit uMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, DB, StdCtrls, Mask, SkinBoxCtrls,
  spdbctrls, SkinHint;

type
  TfMarca = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    GroupBox1: TspSkinGroupBox;
    btNovo: TspSkinButton;
    btSalvar: TspSkinButton;
    btAlterar: TspSkinButton;
    btCancelar: TspSkinButton;
    btExcluir: TspSkinButton;
    btSair: TspSkinButton;
    label101: TspSkinLabel;
    DsMarca: TDataSource;
    dbeNome: TspSkinDBEdit;
    spSkinLabel2: TspSkinLabel;
    dbeCodigo: TspSkinDBEdit;
    spSkinLabel1: TspSkinLabel;
    procedure btSairClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsMarcaStateChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
  end;

var
  fMarca: TfMarca;

implementation

uses Sistools, uDM1, uPrincipal, uDMDados, uConsultaMarca;

{$R *.dfm}

procedure TfMarca.btSairClick(Sender: TObject);
begin
  fMarca.Close ;
end;

procedure TfMarca.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fMarca')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  HabilitaForm(fMarca, true);
  AbreTabela(DM1.TMarca,'','pCodigo',-1,0);
  NovoRegistro(DM1.TMarca,nil);
  dbeNome.SetFocus;
  
end;

procedure TfMarca.FormShow(Sender: TObject);
begin
  DM1.TMarca.Close;
  AbreTabela(DM1.TMarca,'','PCODIGO',0,UltimoRegistro('MarcaProduto','Codigo','',0));
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;

procedure TfMarca.FormActivate(Sender: TObject);
begin
 if xBuscar  then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TMARCA,'','pCodigo',0 ,fPrincipal.ValorRetornoInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;

    End;
end;

procedure TfMarca.FormCreate(Sender: TObject);
begin
  HabilitaForm(fMarca, False);
  dmDados.mTabela :='MARCAPRODUTO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False
end;

procedure TfMarca.DsMarcaStateChange(Sender: TObject);
begin
 Estado(dsMarca,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, nil, nil, nil, nil);
end;

procedure TfMarca.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if (DM1.TMARCA.FieldByName('NOME').AsString  ='')  Then
    Begin
      MsgValida('Informe Marca antes de salvar!',nil,nil);
      dbeNome.SetFocus;
      Exit;
   End;
     if dsMarca.State = dsInsert then
       DM1.TMARCA.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','','MARCAPRODUTO',0 );

  Grava(dsMarca);
  HabilitaForm(fMarca,False) ;

end;

procedure TfMarca.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fMarca')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TMARCA);
  HabilitaForm(fMarca,True);
  dbeNome.SetFocus;
end;

procedure TfMarca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (dsMarca.State = dsEdit) or (dsMarca.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TMARCA);
          CanClose := True;
        End;
    End
end;

procedure TfMarca.FormKeyDown(Sender: TObject; var Key: Word;
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
      fMarca.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaMarca.fRetorno := fMarca ;
      fConsultaMarca.Show;

    End;

end;

procedure TfMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.TMARCA.Close;
  if not  xOrigemConsulta then
    Begin
      fRetorno.Enabled := True;
      fRetorno.Show;
    end
  else
    begin
       //fConsultaParoquias.Enabled := True;
       //fConsultaParoquias.RefazerSQL;
       //fConsultaParoquias.Show;

    end;
  xOrigemConsulta := False;
end;

procedure TfMarca.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TMARCA);
  HabilitaForm(fMarca, False);
  AbreTabela(DM1.TMARCA ,'','PCODIGO',0 ,UltimoRegistro('MARCAPRODUTO','Codigo','',0));
end;

procedure TfMarca.btExcluirClick(Sender: TObject);
begin
{ if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fMarca')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
 if ApagarRegistro(DM1.TMARCA ,'Cadastro de Marcas' ) then
   AbreTabela(DM1.TMARCA,'','PCODIGO',0,UltimoRegistro('MARCAPRODUTO','Codigo','',0));
end;

end.
