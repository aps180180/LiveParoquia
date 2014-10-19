unit uPesquisaDizimista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, SkinGrids, spDBGrids,
  DynamicSkinForm, SkinCtrls, StdCtrls, Mask, SkinBoxCtrls, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppParameter;

type
  TfPesquisaDizimista = class(TForm)
    rgPesquisar: TspSkinRadioGroup;
    lbTitulo: TspSkinLabel;
    edtPesquisar: TspSkinEdit;
    btPesquisar: TspSkinButton;
    spDynamicSkinForm1: TspDynamicSkinForm;
    dbGrid1: TspSkinDBGrid;
    btNovo: TspSkinButton;
    btSair: TspSkinButton;
    IBConsultaDizimista: TIBQuery;
    dsConsulta: TDataSource;
    label101: TspSkinLabel;
    IBConsultaDizimistaCODIGO: TIntegerField;
    IBConsultaDizimistaDIZIMISTA: TIBStringField;
    IBConsultaDizimistaDT_NASCIMENTO: TDateField;
    IBConsultaDizimistaENDERECO: TIBStringField;
    IBConsultaDizimistaBAIRRO: TIBStringField;
    IBConsultaDizimistaCIDADE: TIBStringField;
    IBConsultaDizimistaTELEFONE: TIBStringField;
    IBConsultaDizimistaCELULAR: TIBStringField;
    IBConsultaDizimistaSTATUS: TIBStringField;
    IBConsultaDizimistasMesAno: TStringField;
    IBConsultaDizimistaMES: TIBStringField;
    IBConsultaDizimistaANO: TIBStringField;
    rgStatus: TspSkinRadioGroup;
    btImprimir: TspSkinButton;
    ppRepDiaDoacao: TppReport;
    ppTitleBand1: TppTitleBand;
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
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel17: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefazerSQL;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure rgPesquisarClick(Sender: TObject);
    procedure IBConsultaDizimistaCalcFields(DataSet: TDataSet);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
  end;

var
  fPesquisaDizimista: TfPesquisaDizimista;

implementation

uses uDMDados, uPrincipal, uDM1, Sistools, uArquidiocese;

{$R *.dfm}

procedure TfPesquisaDizimista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBConsultaDizimista.Close;
  fRetorno.Enabled := True;
  fRetorno.Show;
end;

procedure TfPesquisaDizimista.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
    edtPesquisar.Text := '';
end;

procedure TfPesquisaDizimista.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (Key = VK_F2 ) then
    Begin
      if btNovo.Enabled then
        btNovo.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_ESCAPE  ) then
    Begin
      if btSair.Enabled then
        btSair.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_F3  ) then
    Begin
     // if btCadastrar.Enabled then
     //   btCadastrar.onClick(Self);
    End
  else if (Shift = []) and (Key = VK_RETURN ) then
    Begin
      //if btPesquisar.Enabled then
      //  btPesquisar.OnClick(Self);
    End;

end;

procedure TfPesquisaDizimista.FormShow(Sender: TObject);
begin
  {antes de mostrar a janela}
  edtPesquisar.SetFocus;
end;
procedure TfPesquisaDizimista.RefazerSQL;
begin

  IBConsultaDizimista.Close;
  IBConsultaDizimista.SQL.Clear;
  IBConsultaDizimista.SQL.Add('SELECT   DIZIMISTA.*, ');
  IBConsultaDizimista.SQL.Add('(SELECT first 1 MES FROM DIZIMO WHERE DIZIMO.PAROQUIA=DIZIMISTA.PAROQUIA AND DIZIMISTA.CODIGO=DIZIMO.DIZIMISTA ORDER BY MES DESC) AS MES,');
  IBConsultaDizimista.SQL.Add('(SELECT  first 1  ANO FROM DIZIMO WHERE DIZIMO.PAROQUIA=DIZIMISTA.PAROQUIA AND DIZIMISTA.CODIGO=DIZIMO.DIZIMISTA ORDER BY ANO DESC) AS ANO');
  IBConsultaDizimista.SQL.Add('FROM DIZIMISTA');
  IBConsultaDizimista.SQL.Add('WHERE DIZIMISTA.PAROQUIA= :PPAROQUIA');

  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimista.SQL.Add(' AND CODIGO LIKE :PCODIGO');
    1 : IBConsultaDizimista.SQL.Add(' AND DIZIMISTA.DIZIMISTA   LIKE :PNOME');
    2 : IBConsultaDizimista.SQL.Add(' AND DIZIMISTA.ENDERECO LIKE :PENDERECO');
    3 : IBConsultaDizimista.SQL.Add(' AND DIZIMISTA.BAIRRO   LIKE :PBAIRRO');
    4 : IBConsultaDizimista.SQL.Add(' AND DIZIMISTA.CIDADE   LIKE :PCIDADE');
  end;

  Case rgStatus.ItemIndex of
    0 : IBConsultaDizimista.SQL.Add(' AND STATUS =''S'' ');
    1 : IBConsultaDizimista.SQL.Add(' AND STATUS =''N'' ');
  end;


  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA.CODIGO');
    1 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA.DIZIMISTA');
    2 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA.ENDERECO');
    3 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA.BAIRRO');
    4 : IBConsultaDizimista.SQL.Add(' ORDER BY DIZIMISTA.CIDADE');

  end;
  IBConsultaDizimista.ParamByName('pPAROQUIA').AsInteger := DM1.mParoquia;
  Case rgPesquisar.ItemIndex of
    0 : IBConsultaDizimista.ParamByName('PCODIGO').Asstring := edtPesquisar.Text +'%';
    1 : IBConsultaDizimista.ParamByName('PNOME').AsString   :=  edtPesquisar.Text +'%';
    2 : IBConsultaDizimista.ParamByName('PENDERECO').Asstring := edtPesquisar.Text +'%';
    3 : IBConsultaDizimista.ParamByName('PBAIRRO').AsString   :=  edtPesquisar.Text +'%';
    4 : IBConsultaDizimista.ParamByName('PCIDADE').AsString   :=  edtPesquisar.Text +'%';
  end;

  IBConsultaDizimista.Open;
  if not IBConsultaDizimista.IsEmpty then
    dbGrid1.SetFocus;

end;

procedure TfPesquisaDizimista.btNovoClick(Sender: TObject);
begin
  edtPesquisar.Text := '';
  edtPesquisar.SetFocus;
end;

procedure TfPesquisaDizimista.btPesquisarClick(Sender: TObject);
begin
  RefazerSQL;
end;

procedure TfPesquisaDizimista.btSairClick(Sender: TObject);
begin
  fPesquisaDizimista.Close;
end;

procedure TfPesquisaDizimista.edtPesquisarEnter(Sender: TObject);
begin
  label101.Caption  := 'ENTER - PROCESSA A PESQUISA';
end;

procedure TfPesquisaDizimista.edtPesquisarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_RETURN then
    RefazerSQL;
end;

procedure TfPesquisaDizimista.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgPesquisar.ItemIndex of
    0: Key := SoNumeros(Key ,'I');

  end;

end;

procedure TfPesquisaDizimista.rgPesquisarClick(Sender: TObject);
begin
  case rgPesquisar.ItemIndex of
    0:
      begin

         edtPesquisar.Width := 50;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Código';
      end;
    1:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Nome';
      end;
    2:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Endereço';
      end;
    3:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Bairro';
      end;
    4:
      begin

         edtPesquisar.Width := 306;
         edtPesquisar.Text := '';
         edtPesquisar.SetFocus;
         lbTitulo.Caption := 'Cidade';
      end;


  end;
end;


procedure TfPesquisaDizimista.IBConsultaDizimistaCalcFields(  DataSet: TDataSet);
begin
  IBConsultaDizimistasMesAno.AsString := IBConsultaDizimistaMES.AsString +'/'+IBConsultaDizimistaANO.AsString;
end;

procedure TfPesquisaDizimista.btImprimirClick(Sender: TObject);
begin
   ppRepDiaDoacao.PrintReport;
end;

end.
