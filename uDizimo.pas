unit uDizimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, spdbctrls, SkinCtrls, StdCtrls, Mask,
  SkinBoxCtrls, DB, HintBalloon, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo, SkinGrids, spDBGrids, IBCustomDataSet, IBQuery,Math, IBSQL;

type
  TAuxDbGrid=CLASS(TspSkinDBGrid);
  TfDizimo = class(TForm)
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
    spSkinLabel5: TspSkinLabel;
    dbeCodDizimista: TspSkinDBEdit;
    spSkinLabel8: TspSkinLabel;
    dbeDATA: TspSkinDBEdit;
    dsDizimo: TDataSource;
    HintBalloon1: THintBalloon;
    ppDBPipeline1: TppDBPipeline;
    ppRECIBO: TppReport;
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
    ppLine2: TppLine;
    ppLabel29: TppLabel;
    edit2: TspSkinEdit;
    spSkinLabel3: TspSkinLabel;
    dbeValor: TspSkinDBEdit;
    spSkinLabel4: TspSkinLabel;
    spSkinLabel6: TspSkinLabel;
    spSkinLabel7: TspSkinLabel;
    ibDizimos: TIBQuery;
    dsIBDizimos: TDataSource;
    ibDizimosfMesAno: TStringField;
    dbeMes: TspSkinDBEdit;
    spSkinLabel10: TspSkinLabel;
    mkMesAno1: TspSkinMaskEdit;
    mkMesAno2: TspSkinMaskEdit;
    ckPeriodo: TspSkinCheckRadioBox;
    ibDizimosPAROQUIA: TIntegerField;
    ibDizimosCODIGO: TIntegerField;
    ibDizimosMES: TIBStringField;
    ibDizimosDIZIMISTA: TIntegerField;
    ibDizimosDATA: TDateField;
    ibDizimosVALOR: TIBBCDField;
    ibDizimosPERIODO: TIBStringField;
    ibDizimosANO: TIBStringField;
    dbeAno: TspSkinDBEdit;
    IbRecibo: TIBQuery;
    dsRecibo: TDataSource;
    IBSQL1: TIBSQL;
    IbReciboMES: TIBStringField;
    IbReciboDIZIMISTA: TIntegerField;
    IbReciboDATA: TDateField;
    IbReciboVALOR: TIBBCDField;
    IbReciboPERIODO: TIBStringField;
    IbReciboANO: TIBStringField;
    IbReciboORIGEM: TIntegerField;
    IbReciboTOTPERIODO: TIBBCDField;
    IbReciboNOME: TIBStringField;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    IbRecibosPeriodo: TStringField;
    ppDBMemo1: TppDBMemo;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel18: TppLabel;
    ppDBText8: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ibAux: TIBQuery;
    ibAuxORIGEM: TIntegerField;
    rgCampanha: TspSkinDBRadioGroup;
    GroupBox2: TspSkinGroupBox;
    DBGrid1: TspSkinDBGrid;
    spSkinLabel9: TspSkinLabel;
    spSkinLabel11: TspSkinLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dsDizimoStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CarregaEdits;
    procedure dbeCodDizimistaEnter(Sender: TObject);
    procedure dbeCodDizimistaExit(Sender: TObject);
    procedure dbeCodDizimistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoMouseEnter(Sender: TObject);
    procedure btSalvarMouseEnter(Sender: TObject);
    procedure btAlterarMouseEnter(Sender: TObject);
    procedure btCancelarMouseEnter(Sender: TObject);
    procedure btExcluirMouseEnter(Sender: TObject);
    procedure btSairMouseEnter(Sender: TObject);
    procedure dbeCodDizimistaButtonClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btImprimirMouseEnter(Sender: TObject);
    procedure ibDizimosCalcFields(DataSet: TDataSet);
    Procedure MostraOfertas(pDizimista : Integer);
    procedure GerarDizimoPeriodico(pDizimista : Integer; pValorTemp: Real; pDataIni,pDataFin,pDataBase : TDateTime;pOrigem: Integer;pCampanha : String = 'N');
    procedure ckPeriodoClick(Sender: TObject);
    procedure LimpaEdits;
    procedure IbReciboCalcFields(DataSet: TDataSet);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TspColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    fRetorno : TForm;
    Entrando,xBuscar,xOrigemConsulta : Boolean;
    xNumDevolucao : Integer;
    xLanctoOrigem : Integer;

  end;

var
  fDizimo: TfDizimo;

implementation

uses uDM1, uDMDados, Sistools, uPrincipal, uConsultaDizimista, uDizimista,
  DateUtils, uConsultaDizimo;


{$R *.dfm}

procedure TfDizimo.btNovoClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,2,'fDizimo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
 }
  HabilitaForm(fDizimo, true);
  AbreTabela(DM1.TDizimo ,'pParoquia','pCodigo',-1,-1);
  NovoRegistro(DM1.TDizimo,nil);
  DM1.TdizimoPAROQUIA.AsInteger := DM1.mParoquia;
  Edit2.Clear;
  DM1.TDizimoDATA.AsDateTime   := Date;
  DM1.TDizimoCAMPANHA.AsString := 'N';
  LimpaEdits;
  dbeCodDizimista.SetFocus

end;

procedure TfDizimo.btSalvarClick(Sender: TObject);
Var
 nome:string;
 zLancOrigem,zTempDizimista : Integer;
 zData1,zData2,zDataTemp : TDateTime;
 zTempVal : Real;
 zValorIntegral : String;
 zmes,zAno,zDia :  Word ;
 zData :  TDateTime;
 zCount : Integer;
 zMeses : Real;
begin
  zTempVal := 0;
  ActiveControl := nil;

  If edit2.Text='' then
    Begin
     application.MessageBox('Informe o dizimista antes de Salvar','Atenção',MB_OK+ MB_ICONINFORMATION);
     dbeCodDizimista.SetFocus;
     exit;
    end;

  If DM1.TDizimoDATA.AsString =''  then
    Begin
     application.MessageBox('Informe a data da oferta antes de Salvar','Atenção',MB_OK+ MB_ICONINFORMATION);
     dbeDATA.SetFocus;
     exit;
    end;

  If DM1.TDizimoMES.AsString =''  then
    Begin
     application.MessageBox('Informe o mês da oferta antes de Salvar','Atenção',MB_OK+ MB_ICONINFORMATION);
     dbeMes.SetFocus;
     exit;
    end;

  If DM1.TDizimoANO.AsString =''  then
    Begin
     application.MessageBox('Informe o Ano da oferta antes de Salvar','Atenção',MB_OK+ MB_ICONINFORMATION);
     dbeAno.SetFocus;
     exit;
    end;

  If DM1.TDizimoVALOR.AsString =''  then
    Begin
     application.MessageBox('Informe o Valor da oferta antes de Salvar','Atenção',MB_OK+ MB_ICONINFORMATION);
     dbeValor.SetFocus;
     exit;
    end;

  if ckPeriodo.Checked then
    Begin//1

      if (mkMESANO1.Text  ='') then
        Begin
          Application.MessageBox('Informe o Mês/Ano Inicial Antes de Salvar','Atenção',MB_OK+MB_ICONINFORMATION);
          mkMesAno1.SetFocus;
          Exit;
        End;

      if (mkMESANO2.Text  ='') then
        Begin
          Application.MessageBox('Informe o Mês/Ano Final Antes de Salvar','Atenção',MB_OK+MB_ICONINFORMATION);
          mkMesAno2.SetFocus;
          Exit;
        End;
      zData1        := StrToDate('01/'+ mkMESANO1.Text);
      zData2        := StrToDate('01/'+ mkMESANO2.Text);
      zMeses        := MonthSpan(zData1,zData2);
      zValorIntegral:= DM1.TDizimo.FieldByName('VALOR').AsString;
      zTempVal      := DM1.TDizimoVALOR.AsFloat / (Round(zMeses) + 1);


      DM1.TDizimoVALOR.AsFloat                       :=  zTempVal;
      DM1.TDizimoPERIODO.AsString                    :=  mkMesAno1.Text + ' a ' + mkMesAno2.Text;
      Dm1.TDizimo.FieldByName('TOTPERIODO').AsString :=  zValorIntegral;{Implementado do dia 13-8-10}

    End //1
    else{Implementado 13-8-10}
    begin
       zValorIntegral:= DM1.TDizimo.FieldByName('VALOR').AsString;     {implementado no dia 13-8-10}
       //DM1.TDizimoTOTPERIODO.AsFloat  := DM1.TDizimoVALOR.AsFloat;   {modificado no dia 16-7-10}
       DM1.TDizimo.FieldByName('TOTPERIODO').AsString:=zValorIntegral; {modificado no dia 16-7-10,inclui o valor total da doação no campo totperiodo}
    end;

  if dsDizimo.State = dsInsert then
    DM1.TDizimo.FieldByName('CODIGO').asInteger:=   AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','DIZIMO',DM1.mParoquia);
    xLanctoOrigem := DM1.TDizimoCODIGO.AsInteger;

  Grava(dsDizimo);

  if ckPeriodo.Checked then
    GerarDizimoPeriodico(DM1.TDizimoDIZIMISTA.AsInteger,zTempVal,zData1,zData2,DM1.TDizimoDATA.AsDateTime,xLanctoOrigem,DM1.TDizimoCAMPANHA.AsString);


  LimpaEdits;
  MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);//abre a Query IbDizimos
  HabilitaForm(fDizimo,False) ;

end;

procedure TfDizimo.btAlterarClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,3,'fDizimo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  ModificaRegistro(DM1.TDizimo);
  HabilitaForm(fDizimo,True);
  dbeCodDizimista.SetFocus

end;

procedure TfDizimo.btCancelarClick(Sender: TObject);
begin
  CancelaEdicao(DM1.TDizimo);
  HabilitaForm(fDizimo,False);
  AbreTabela(DM1.TDizimo ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('DIZIMO','Codigo','Paroquia',DM1.mParoquia));
  CarregaEdits;
  LimpaEdits;
  MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);

end;

procedure TfDizimo.btExcluirClick(Sender: TObject);
begin
 { if not (fPrincipal.TemPermissao(DM1.mUsuario,4,'fDizimo')) then
    Begin
      Application.MessageBox('Você não Tem Permissão Para essa Operação','Atenção',MB_OK+ MB_ICONINFORMATION);
      Exit;
    End;
  }
  if ApagarRegistro(DM1.TDizimo ,'Lançamento de  Dízimo' ) then
  Begin
   AbreTabela(DM1.TDizimo ,'pParoquia','PCODIGO',DM1.mParoquia,UltimoRegistro('DIZIMO','Codigo','Paroquia',DM1.mParoquia));
   CarregaEdits;
   MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);
   LimpaEdits;
  End;
end;

procedure TfDizimo.btSairClick(Sender: TObject);
begin
  fDizimo.Close;
end;

procedure TfDizimo.dsDizimoStateChange(Sender: TObject);
begin
   Estado(dsDizimo,btNovo,btAlterar, btSalvar, BtCancelar, btExcluir, btSair, btImprimir, nil, nil, nil);
end;

procedure TfDizimo.FormActivate(Sender: TObject);
begin
  if (xBuscar)  and (xNumDevolucao = 0 ) then
    Begin
      if fPrincipal.ValorRetornoInteger > 0 then
        Begin
          AbreTabela(DM1.TDizimo ,'pParoquia','pCodigo',DM1.mParoquia ,fPrincipal.ValorRetornoInteger);
          MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);
          fPrincipal.ValorRetornoInteger := 0;
        End;
      end
  else if (xBuscar) and (xNumDevolucao = 1) then
      Begin
        dbeCodDizimista.Text := IntToStr( fPrincipal.ValorRetornoInteger);
        fPrincipal.ValorRetornoInteger := 0;
      end;

   CarregaEdits;
   xBuscar := False;
end;

procedure TfDizimo.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  DM1.TDIZIMO.Close;
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

procedure TfDizimo.FormCloseQuery(Sender: TObject;   var CanClose: Boolean);
begin
  if (dsDizimo.State = dsEdit) or (dsDizimo.State = dsInsert) then
    Begin
      If Application.MessageBox('Deseja Sair e  Cancelar as Alterações ?','Atenção',MB_YESNO+ MB_ICONQUESTION)= IDNO then
        Begin
          CanClose := False
        End
      Else
        Begin
          CancelaEdicao(DM1.TDizimo);
          CanClose := True;
        End;
    End
end;

procedure TfDizimo.FormCreate(Sender: TObject);
begin
   {formulario é criado}
  dmDados.mTabela := 'DIZIMO';
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  Entrando := True;
  xBuscar  := False;

end;

procedure TfDizimo.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
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
      fDizimo.Enabled := False;
      fPrincipal.ValorRetornoInteger := 0;
      fConsultaDizimo.fRetorno := fDizimo  ;
      fConsultaDizimo.Show;

    End
  else If (Shift= []) and (Key = VK_F12) then
    Begin
      WinExec('C:\WINDOWS\SYSTEM32\CALC.EXE',SW_SHOWNORMAL);
    End;

end;

procedure TfDizimo.FormShow(Sender: TObject);
begin
  DM1.TBatisterio.Close;
  AbreTabela(DM1.TDizimo ,'pParoquia','PCODIGO',DM1.mParoquia ,UltimoRegistro('DIZIMO','Codigo','Paroquia',DM1.mParoquia));
  MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);//abre a Query Ibdizimos
  CarregaEdits;
  Label101.Caption :=' F7 - CADASTRO / CONSULTA';
end;



procedure TfDizimo.CarregaEdits;
begin

  Edit2.Text := RetornaTabela(DM1.TDizimista ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',DM1.TDizimoDIZIMISTA.AsString ,'','','','','','','DIZIMISTA' );
 
end;




procedure TfDizimo.dbeCodDizimistaEnter(Sender: TObject);
begin

    label101.Caption := 'F10 - CADASTRO/CONSULTA';
end;



procedure TfDizimo.dbeCodDizimistaExit(Sender: TObject);
begin
  EDIT2.Text := RetornaTabela(DM1.TDizimista ,'I','pParoquia',IntToStr(DM1.mParoquia),'I','pCodigo',dbeCodDizimista.Text ,'','','','','','','DIZIMISTA' );
  Label101.Caption := '';
  MostraOfertas(DM1.TDizimoDIZIMISTA.AsInteger);//abre a Query IbDizimos
end;

procedure TfDizimo.dbeCodDizimistaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if  (Shift = []) and (key = VK_F10) then
     begin
       key := 0;
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaDizimista.fRetorno := fDizimo   ;
       fDizimo.Enabled := False;
       fConsultaDizimista.Show;

     end;
end;

procedure TfDizimo.btNovoMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Incluir Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btNovo.Handle);
end;

procedure TfDizimo.btSalvarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Salvar Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btSalvar.Handle);
end;

procedure TfDizimo.btAlterarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Alterar Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btAlterar.Handle);
end;

procedure TfDizimo.btCancelarMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Cancelar Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btCancelar.Handle);
end;

procedure TfDizimo.btExcluirMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Excluir Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btExcluir.Handle);
end;

procedure TfDizimo.btSairMouseEnter(Sender: TObject);
begin
  HintBalloon1.Text:='Sair do Cadastro de  Dízimo/Oferta';
  HintBalloon1.AddToolInfo(Handle,btSair.Handle);
end;

procedure TfDizimo.dbeCodDizimistaButtonClick(Sender: TObject);
begin
       xNumDevolucao := 1;
       fPrincipal.ValorRetornoInteger := 0;
       xBuscar := True;
       fConsultaDizimista.fRetorno := fDizimo   ;
       fDizimo.Enabled := False;
       fConsultaDizimista.Show;


end;

procedure TfDizimo.btImprimirClick(Sender: TObject);
Var
   zLanctoOrigem: Integer ;
begin
  ibAux.Close;
  ibAux.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  ibAux.ParamByName('PCODIGO').AsInteger := DM1.TDizimoCODIGO.AsInteger;
  ibAux.Open;
  If IbAuxORIGEM.AsString ='' then
    zLanctoOrigem := DM1.TDizimoCODIGO.AsInteger
  else
    zLanctoOrigem := ibAuxORIGEM.AsInteger  ;
  ibAux.Close;

  IbRecibo.Close;
  IbRecibo.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  IbRecibo.ParamByName('pCODIGO').AsInteger := zLanctoOrigem   ;
  IbRecibo.Open;
  ppRECIBO.PrintReport;
  IbRecibo.Close;
end;

procedure TfDizimo.btImprimirMouseEnter(Sender: TObject);
begin
   HintBalloon1.Text:=btImprimir.Hint  ;
   HintBalloon1.AddToolInfo(Handle,btImprimir.Handle);
end;

procedure TfDizimo.ibDizimosCalcFields(DataSet: TDataSet);
begin
  ibDizimos.FieldByName('fMesAno').AsString := ibDizimosMES.AsString +'/'+ ibDizimosANO.AsString    ;

end;

procedure TfDizimo.MostraOfertas(pDizimista: Integer);
begin
  ibDizimos.Close;
  ibDizimos.ParamByName('PPAROQUIA').AsInteger := DM1.mParoquia;
  ibDizimos.ParamByName('PDIZIMISTA').AsInteger := pDizimista;
  ibDizimos.Open;

end;

procedure TfDizimo.GerarDizimoPeriodico(pDizimista : Integer; pValorTemp: Real; pDataIni,pDataFin,pDataBase : TDateTime;pOrigem: Integer; pCampanha : String = 'N');
Var
  zData1,zData2 : TDateTime;
  zCount : Integer;
  zTempVal : Real ;
  zAno,zMes,zDia : Word;
  zMeses : Real;
begin
      zData1 := pDataIni;
      zData2 := pDataFin;
      zMeses := MonthSpan(zData1,zData2);
      zMeses := Round(zMeses);
      zTempVal := pValorTemp ;

      for zCount := 1 to Round(zMeses)    do
        Begin
          zData1 :=  IncMonth(zData1);
          DM1.TDizimo.Append;
          decodeDate(zData1,zAno,zMes,zDia) ;
          DM1.TDizimoPAROQUIA.AsInteger := dm1.mParoquia;
          DM1.TDizimoCODIGO.AsInteger   := AutoIncremento(dmDados.db,'CODIGO','PAROQUIA','DIZIMO',DM1.mParoquia);
          DM1.TDizimoMES.AsString       := IntToStr(zMes)  ;
          if Length(Trim(DM1.TDizimoMES.AsString))= 1 then
            DM1.TDizimoMES.AsString  := '0'+ Trim(DM1.TDizimoMES.AsString);
          DM1.TDizimoDIZIMISTA.AsInteger:= pDizimista ;
          DM1.TDizimoDATA.AsDateTime    := pDataBase ;
          DM1.TDizimoVALOR.AsFloat      := zTempVal ;
          DM1.TDizimoANO.Text           := FormatDateTime('yyyy',zData1)  ;
          DM1.TDizimoORIGEM.AsInteger   := pOrigem;
          DM1.TDizimoCAMPANHA.AsString  := pCampanha;
          DM1.TDizimo.Post;
        End;
      dmDados.Transacao.CommitRetaining;
   End;
procedure TfDizimo.ckPeriodoClick(Sender: TObject);
begin
  mkMesAno1.Visible    := ckPeriodo.Checked;
  mkMesAno2.Visible    := ckPeriodo.Checked;
  spSkinLabel6.Visible := ckPeriodo.Checked;
  spSkinLabel7.Visible := ckPeriodo.Checked;
  if ckPeriodo.Checked And (DataValida('01/'+ dbeMes.Text+ '/'+ dbeAno.Text))  then
    Begin
      mkMesAno1.Text := dbeMes.Text +'/' + dbeAno.Text;
    End;
end;

procedure TfDizimo.LimpaEdits;
begin
  mkMesAno1.Clear;
  mkMesAno2.Clear;
  ckPeriodo.Checked := False;
end;

procedure TfDizimo.IbReciboCalcFields(DataSet: TDataSet);
begin
  if  IbReciboPERIODO.AsString = '' then
    IbRecibosPeriodo.AsString  := 'Referente ao Período de : ' + IbReciboMES.AsString +'/'+ IbReciboANO.AsString
   else
     IbRecibosPeriodo.AsString := 'Referente ao Período de : ' + IbReciboPERIODO.AsString;

end;

procedure TfDizimo.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppLabel1.Caption := DM1.mNomeArquidiocese;
  ppLabel2.Caption := DM1.mNomeParoquia;
  ppLabel3.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel4.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel10.Caption := fPrincipal.vMensagemReciboDizimista;
  ppLabel29.Caption := fPrincipal.vTextoRespRecibo;
  ppLabel8.Visible  := IbReciboPERIODO.AsString <> '';
  ppDBText4.Visible := IbReciboPERIODO.AsString <> '';

  ppLabel11.Caption := DM1.mNomeArquidiocese;
  ppLabel12.Caption := DM1.mNomeParoquia;
  ppLabel13.Caption := DM1.mEndereco + '  ' + DM1.mBairro;
  ppLabel14.Caption := DM1.mCidade  + '  CEP - '  + DM1.mCep + ' FONE ' + DM1.mTelefone ;
  ppLabel21.Caption := fPrincipal.vMensagemReciboDizimista;
  ppLabel16.Caption := fPrincipal.vTextoRespRecibo;
  ppLabel19.Visible := IbReciboPERIODO.AsString <> '' ;
  ppDBText9.Visible := IbReciboPERIODO.AsString <> '' ;

end;

procedure TfDizimo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TspColumn;
  State: TGridDrawState);
begin
     If (TAuxDbGrid(dbGrid1).DataLink.ActiveRecord + 1 = TAuxDbGrid(dbGrid1).Row) or (GdSelected in State) then
   Begin
      dbGrid1.Canvas.Brush.Color  := clSkyBlue;
      dbGrid1.Canvas.Font.Style   := dbGrid1.Canvas.Font.Style + [fsItalic];
      dbGrid1.Canvas.Font.Color   :=clBlue;
   End;
   dbGrid1.Canvas.FillRect(Rect);
   dbGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
end;

End.
