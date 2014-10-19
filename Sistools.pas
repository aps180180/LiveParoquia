unit Sistools;
//============== Unit com funçoes e utilitarios para o sistema===============//
// Adaptada por André Pereira
// 22/03/2009 - 20:07 - Domingo

//============================================================================//
interface

Uses  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics,
      Controls,Dialogs, StdCtrls, Grids, DBGrids,DB,Windows,Forms,
      DBCtrls,IBCustomDataSet,IBDatabase,IBQuery;


type
  tAlinhamento = (zAlLeft, zAlRight, zALCenter);
Procedure AbreTabela(pTabela: TIBDataSet   ; pParametro,pParametro2 : String; pValor,pValor2 : Integer);
procedure Estado(zDATASOURCE : TDataSource; zBotaoNovo, zBotaoModificar, zBotaoGravar, ZBotaoCancelar, zBotaoExcluir, zBotaoVoltar, zBotao1, zBotao2, zBotao3, zBotao4 : TControl);
Procedure ModificaRegistro( pTabela : TIBDataSet);
Procedure CancelaEdicao( pTabela : TIBDataSet);
procedure Grava(dts: TDataSOurce; pCommit : Boolean = True);
function AutoIncremento(pConexao: TIBDatabase ; pCampo,pCampoEstrangeiro, pTabela:string; pValor : Integer) :Integer;
Function  FormataCampo (pTexto : String; pTamanho : SmallInt; pAlinhamento : tAlinhamento; pCharPreenchimento : Char = ' ') : String;
function  MsgValida (Msg : String; pDbEd :TDbEdit; pEd : TEdit) : Boolean;
Function UltimoRegistro(pTabela : String; pCampo,pCampoEstrangeiro : String; pValor : Integer): Integer;
Function ExisteRegistro(): Boolean;
function ApagarRegistro( pTabela: TIBDataSet    ; zMsg : String ) : boolean;
function  SoNumeros    ( pKey: Char; pTipoNumero : Char) : Char;
function  IIf          ( pCondicao : Boolean; pValorTrue : Variant; pValorFalse : Variant) : Variant;
function  ValidaCPF    ( Nr_Cpf : String ): boolean;
function  ValidaCGC        ( Nr_Cgc : String ): boolean;
function  StrZero          ( pTexto : String; pQtde : Integer ) : String;
function  PegaSerieHD      : String;
function  RetornaTabela    (pTab : TIBDataSet ; pTipo1, pParam1, pValor1, pTipo2, pParam2, pValor2, pTipo3, pParam3, pValor3, pTipo4, pParam4, pValor4, CampoRetorno : String) : String;
Procedure NovoRegistro(pTabela : TIBDataSet; pFoco : TDBEdit);
Procedure HabilitaForm(pForm : TForm; pBln : Boolean);
function TransfReal(pS : String) : Real;
function DataValida(StrD: string): Boolean;
implementation

uses uPrincipal,  uDmDados, uDM1;

function AutoIncremento(pConexao: TIBDatabase ; pCampo,pCampoEstrangeiro, pTabela:string; pValor : Integer) :Integer;
var
  qrConexao : tIBQuery  ;

begin
  qrConexao := TIBQuery.Create(nil);
  qrConexao.Database := dmDados.db;
  qrConexao.SQL.Add('SELECT MAX('+ pCampo + ') FROM ' + pTabela);
  if pCampoEstrangeiro <> '' then
    qrConexao.SQL.Add( 'WHERE '+ pCampoEstrangeiro + '= ' + IntToStr(pValor));

  qrConexao.open;
  Result           :=qrConexao.Fields[0].AsInteger +1;
  qrConexao.close;
  // Usar no OnBeforePost do ClientDataSet
end;
//======================================================================================================================================
function FormataCampo (pTexto : String; pTamanho : SmallInt; pAlinhamento : tAlinhamento; pCharPreenchimento : Char = ' ') : String;
var
  zDiferenca : SmallInt;
  zLados     : SmallInt;
begin

  if Length(pTexto) > pTamanho then
     Result := Copy(pTexto,1,pTamanho) //corta a parte do texto que passou to pTamanho.
  else
   begin
     if pAlinhamento = zAlLeft then
        Result := pTexto + StringOfChar(pCharPreenchimento,pTamanho - Length(pTexto))
     else if pAlinhamento = zAlRight then
        Result := StringOfChar(pCharPreenchimento,pTamanho - Length(pTexto)) + pTexto
     else //se for zAlCenter
      begin //essa parte de centralizacao foi testada no modo comprimido.
        zDiferenca := pTamanho - Length(pTexto);
        if zDiferenca <= 1 then
           Result := pCharPreenchimento + pTexto
        else
         begin
           zLados := Trunc(zDiferenca / 2);
           Result := StringOfChar(pCharPreenchimento,zLados) + pTexto +
                     StringOfChar(pCharPreenchimento,zLados);
         end;
      end;
   end;

end;
//======================================================================================================================================
function MsgValida(Msg : String; pDbEd :TDbEdit; pEd : TEdit) : Boolean;
begin
  Application.MessageBox(pChar(Msg), 'ATENÇÃO', Mb_IconInformation);
  if pDbEd <> nil then
     pDbEd.SetFocus
  else if pEd <> nil then
     pEd.SetFocus;
  Result := True;
end;

Procedure AbreTabela(pTabela: TIBDataSet   ; pParametro,pParametro2 : String; pValor,pValor2 : Integer);
Begin
  pTabela.Close;
  if pParametro <> '' then
    pTabela.ParamByName(pParametro).AsInteger :=  pValor;
  if pParametro2 <> '' then
    pTabela.ParamByName(pParametro2).AsInteger :=  pValor2;
  pTabela.Open;

End;
Function UltimoRegistro(pTabela : String; pCampo,pCampoEstrangeiro : String; pValor : Integer): Integer;
Begin
  fPrincipal.zConsulta.Close;
  fPrincipal.zConsulta.SQL.Clear;
  fPrincipal.zConsulta.SQL.Add('SELECT MAX(' + pCampo+ ') as Ultimo FROM ' + pTabela );
  if pCampoEstrangeiro  <> '' then
    fPrincipal.zConsulta.SQL.Add(' WHERE ' + pCampoEstrangeiro+ '= ' + IntToStr(pValor));

  fPrincipal.zConsulta.Open;

  Result := fPrincipal.zConsulta.fieldByName('ULTIMO').AsInteger;
End;
procedure Estado(zDATASOURCE : TDataSource; zBotaoNovo, zBotaoModificar, zBotaoGravar, ZBotaoCancelar, zBotaoExcluir, zBotaoVoltar, zBotao1, zBotao2, zBotao3, zBotao4 : TControl);
//var
//   Botao : TBotao;
begin
//  Botao := TBotao.Create;
   if zDataSource.State = dsBrowse Then
      Begin
         if zBotaoNovo <> nil then
            zBotaoNovo.Enabled := True;
         if zBotaoGravar <> nil then
            zBotaoGravar.Enabled := False;
         if zBotaoCancelar <> nil then
            zBotaoCancelar.Enabled := False;
         if zBotaoVoltar <> nil then
            zBotaoVoltar.Enabled := True;
         if not ExisteRegistro then
            begin
              if zBotaoModificar <> nil then
                 zBotaoModificar.Enabled := False;
              if zBotaoExcluir <> nil then
                 zBotaoExcluir.Enabled := False;
              if zBotao1 <> nil then
                 zBotao1.Enabled := False;
              if zBotao2 <> nil then
                 zBotao2.Enabled := False;
              if zBotao3 <> nil then
                 zBotao3.Enabled := False;
              if zBotao4 <> nil then
                 zBotao4.Enabled := False;
            end
         else
            begin
              if zBotaoModificar <> nil then
                 zBotaoModificar.Enabled := True;
              if zBotaoExcluir <> nil then
                 zBotaoExcluir.Enabled := True;
              if zBotao1 <> nil then
                 zBotao1.Enabled := True;
              if zBotao2 <> nil then
                 zBotao2.Enabled := True;
              if zBotao3 <> nil then
                 zBotao3.Enabled := True;
              if zBotao4 <> nil then
                 zBotao4.Enabled := True;
            end;
         //EstadoAtual := False;
      end
   else if (zDataSource.State = dsEdit) or (zDataSource.State = dsInsert) then
      Begin
         if zBotaoNovo <> nil then
            zBotaoNovo.Enabled := False;
         if zBotaoGravar <> nil then
            zBotaoGravar.Enabled := True;
         if zBotaoCancelar <> nil then
            zBotaoCancelar.Enabled := True;
         if zBotaoVoltar <> nil then
            zBotaoVoltar.Enabled := False;
         if zBotaoModificar <> nil then
            zBotaoModificar.Enabled := False;
         if zBotaoExcluir <> nil then
            zBotaoExcluir.Enabled := False;
         if zBotao1 <> nil then
            zBotao1.Enabled := False;
         if zBotao2 <> nil then
            zBotao2.Enabled := False;
         if zBotao3 <> nil then
            zBotao3.Enabled := False;
         if zBotao4 <> nil then
            zBotao4.Enabled := False;
         //EstadoAtual := True;
      end;
end;
Function ExisteRegistro(): Boolean;
  Begin
   fPrincipal.zConsulta.Close;
   fPrincipal.zConsulta.SQL.Clear;
   fPrincipal.zConsulta.SQL.Add('SELECT Count(*) AS TOTAL FROM '+dmDados.mTabela);
  // ShowMessage(fPrincipal.zConsulta.SQL.Text );
   fPrincipal.zConsulta.Open;
   if fPrincipal.zConsulta.FieldByName('TOTAL').AsInteger < 1 Then
     Result := False
   else
     Result := True;

  End;
Procedure ModificaRegistro( pTabela : TIBDataSet );
Begin
  pTabela.Edit;

End;
Procedure CancelaEdicao( pTabela : TIBDataSet);
Begin
  pTabela.Cancel ;


End;
function ApagarRegistro( pTabela: TIBDataSet  ; zMsg : String ) : boolean;
var Resultado : boolean;
begin
    Resultado := False;
   if Application.MessageBox('Você tem certeza que deseja apagar o registro ? ', 'ATENÇÃO', Mb_YesNo+Mb_defButton2+Mb_IconQuestion) = 6 then
    Begin
      pTabela.Delete;
      //pTabela.ApplyUpdates ;
      dmDados.Transacao.CommitRetaining;
      ShowMessage('Registro do ' + zMsg + ' excluído.');
      Resultado := True;
    End;
    Result := Resultado;
end;
function SoNumeros(pKey: Char; pTipoNumero : Char) : Char;
begin
  if UpperCase(pTipoNumero) = 'I' then      // INTEGER
     begin
       if not (pKey in ['0'..'9',#8,#13] ) Then
          Result := #0
       else Result := pKey;
     end
  else if UpperCase(pTipoNumero) = 'F' then  //  FLOAT
     begin
       if not (pKey in ['0'..'9',#8,#13,#44,#46,#45] ) then
          Result := #0
       else
          begin
            if pkey = #46 then
               pkey := #44;
            Result := pKey;
          end;
     end
  else if UpperCase(pTipoNumero) = '3' then //CONDICAO DE PAGAMENTO
     begin
       if not (pKey in ['0'..'9','/',#8,#13] ) then
          Result := #0
       else
          begin
            if pkey = #46 then
               pkey := #44;
            Result := pKey;
          end;
     end
end;
function IIf(pCondicao : Boolean; pValorTrue : Variant; pValorFalse : Variant) : Variant;
begin
  if pCondicao then
     Result := pValorTrue
  else
     Result := pValorFalse;
end;

function ValidaCPF(Nr_Cpf: String): boolean;
const
     CpfC1: array [1..9] of Integer = (10,9,8,7,6,5,4,3,2);
     CpfC2: array[1..10] of Integer = (11,10,9,8,7,6,5,4,3,2);
var
   CpfDig: array[1..11] of String[1];
   CpfiDig: array[1..11] of Integer;
   i,a: Byte;
   Code,CpfTotal: Integer;
   C10, C11: String[1];
begin
     a := 0;
     for i := 1 to length(Nr_Cpf) do
        if (Copy(Nr_Cpf,i,1) <> '.') and (Copy(Nr_Cpf,i,1) <> '/') and (Copy(Nr_Cpf,i,1) <> '-') then
           CpfDig[i-a] := Copy(Nr_Cpf,i,1)
        else inc(a);
     //for i := 1 to 11 do
     //   CpfDig[i] := Copy(Nr_Cpf,i,1);
     for i := 1 to 9 do
        Val(CpfDig[i],CpfiDig[i], Code);
     CpfTotal := 0;
     for i := 1 to 9 do
        CpfTotal := CpfTotal + ( CpfiDig[i] * CpfC1[i] );
     CpfiDig[10] := (CpfTotal mod 11);
     if CpfiDig[10] <> 0 then
        CpfiDig[10] := 11 - CpfiDig[10];
     if CpfiDig[10] = 10 then
        CpfiDig[10] := 0;
     CpfTotal := 0;
     for i := 1 to 10 do
        CpfTotal := CpfTotal + ( CpfiDig[i] * CpfC2[i] );
     CpfiDig[11] := (CpfTotal mod 11);
     if CpfiDig[11] <> 0 then
        CpfiDig[11] := 11 - CpfiDig[11];
     if CpfiDig[11] = 10 then
        CpfiDig[11] := 0;
     Str(CpfiDig[10],C10);
     Str(CpfiDig[11],C11);
     if ( C10= CpfDig[10] ) and ( C11 = CpfDig[11] ) then
        ValidaCPF := True
     else
         ValidaCPF := False;
end;
function ValidaCGC(Nr_Cgc: String): boolean;
const
     C1: array [1..12] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
     C2: array [1..13] of Integer = (6,5,4,3,2,9,8,7,6,5,4,3,2);
var
   Dig: array[1..14] of String[1];
   iDig: array[1..14] of Integer;
   k, a: Byte;
   Code,Total: Integer;
   C13, C14: String[1];
begin
     a := 0;
     for k := 1 to length(Nr_Cgc) do
        if (Copy(Nr_Cgc,k,1) <> '.') and (Copy(Nr_Cgc,k,1) <> '/') and (Copy(Nr_Cgc,k,1) <> '-') then
           Dig[k-a] := Copy(Nr_Cgc,k,1)
        else inc(a);
     for k := 1 to 12 do
        Val(Dig[k],iDig[k], Code);
     Total := 0;
     for k := 1 to 12 do
        Total := Total + (iDig[k] * C1[k]);
     iDig[13] := (Total mod 11);
     if iDig[13] <> 0 then
        iDig[13] := 11 - iDig[13];
     if iDig[13] = 10 then
        iDig[13] := 0;
     Total := 0;
     for k := 1 to 13 do
        Total := Total + ( iDig[k] * C2[k] );
     iDig[14] := (Total mod 11);
     if iDig[14] <> 0 then
        iDig[14] := 11 - iDig[14];
     if iDig[14] = 10 then
        iDig[14] := 0;
     Str(iDig[13],C13);
     Str(iDig[14],C14);
     if ( C13 = Dig[13] ) and ( C14 = Dig[14] ) then
        ValidaCGC := True
     else
         ValidaCGC := False;
end;

function StrZero(pTexto : String; pQtde : Integer ) : String;
var
  zStr : String;
  zQtde, zConta : integer;
begin
  IF TRIM(PTEXTO) = '' THEN
   BEGIN
     Result := '';
     exit;
   END;
  //-----------------

  zQtde := Length(pTexto);
  zQtde := pQtde - zQtde;
  if zQtde < 0 then
     zQtde := 0;
  zSTR := pTexto;
  for zConta := 1 to zQtde do
      zSTR := '0'+zSTR;
  Result := zSTR;
end;
function PegaSerieHD: String;
var
  SerialNum : Dword;
  a, b      : dword;
  Buffer    : array [0..255] of char;
begin
  if GetVolumeInformation('c:\',buffer,sizeof(buffer), @serialnum,a,b,nil,0) then
     Result := inttohex(serialnum,8)
  else
     Result := '';
end;
function RetornaTabela(pTab : TIBDataSet ; pTipo1, pParam1, pValor1, pTipo2, pParam2, pValor2, pTipo3, pParam3, pValor3, pTipo4, pParam4, pValor4, CampoRetorno : String) : String;
begin
  if (pTipo1 <> '') and (pValor1 = '') then
     pValor1 := '0';
  if (pTipo2 <> '') and (pValor2 = '') then
     pValor2 := '0';
  if (pTipo3 <> '') and (pValor3 = '') then
     pValor3 := '0';
  if (pTipo4 <> '') and (pValor4 = '') then
     pValor4 := '0';
  with DM1  do
    begin
      pTab.Close;
      pTab.DisableControls;
      if (pTipo1 = 'I') and (pValor1 <> '') then
         pTab.ParamByName(pParam1).AsInteger := StrToInt(pValor1)
      else if (pTipo1 = 'D') and (pValor1 <> '') then
         pTab.ParamByName(pParam1).AsDateTime := StrToDate(pValor1)
      else if (pTipo1 = 'S') and (pValor1 <> '') then
         pTab.ParamByName(pParam1).AsString := pValor1;


      if (pTipo2 = 'I') and (pValor2 <> '') then
        pTab.ParamByName(pParam2).AsInteger := StrToInt(pValor2)
      else if (pTipo2 = 'D') and (pValor2 <> '') then
         pTab.ParamByName(pParam2).AsDateTime := StrToDate(pValor2)
      else if (pTipo2 = 'S') and (pValor2 <> '') then
         pTab.ParamByName(pParam2).AsString := pValor2;


      if (pTipo3 = 'I') and (pValor3 <> '') then
         pTab.ParamByName(pParam3).AsInteger := StrToInt(pValor3)
      else if (pTipo3 = 'D') and (pValor3 <> '') then
         pTab.ParamByName(pParam3).AsDateTime := StrToDate(pValor3)
      else if (pTipo3 = 'S') and (pValor3 <> '') then
         pTab.ParamByName(pParam3).AsString := pValor3;


      if (pTipo4 = 'I') and (pValor4 <> '') then
         pTab.ParamByName(pParam4).AsInteger := StrToInt(pValor4)
      else if (pTipo4 = 'D') and (pValor4 <> '') then
         pTab.ParamByName(pParam4).AsDateTime := StrToDate(pValor4)
      else if (pTipo4 = 'S') and (pValor4 <> '') then
         pTab.ParamByName(pParam4).AsString := pValor4;

           pTab.Open;
           if pTab.FieldByName(CampoRetorno).AsString <> ''    then
             Result := pTab.FieldByName(CampoRetorno).AsString
           else
              Result := '';
           pTab.Close;
          pTab.EnableControls;
    end;
end;

procedure Grava(dts: TDataSOurce; pCommit : Boolean = True);
begin
      dts.DataSet.Post;
       if pCommit then
          dmDados.Transacao.CommitRetaining;
end;

Procedure NovoRegistro(pTabela : TIBDataSet; pFoco : TDBEdit);
  Begin
    pTabela.Append;
    if pFoco <> nil then
      pFoco.SetFocus;
End;
Procedure HabilitaForm(pForm : TForm; pBln : Boolean);
Var
  zInt : Integer;
Begin
  for zInt  := 0 to pForm.ControlCount   - 1    do
    Begin
      if pForm.Controls[zInt].Name ='GroupBox1' then
        pForm.Controls[zInt].Enabled := pBln;
    End;

End;
function TransfReal(pS : String) : Real;
var
  zcont : integer;
  zS : String;
begin
  zS := '';
  for zCont:= 1 to length(pS) do
    begin
      if pS[zCont] <> '.' then
         zS := zS + pS[zCont];
    end;
  if zS <> '' then
     Result := StrToFloat(zS)
  else
     Result := 0;
end;
function DataValida(StrD: string): Boolean;
{Testa se uma data é valida}
begin
  Result := true;
  try
  StrToDate(StrD);
  except
  on EConvertError do Result:=False;
  end;
end;


end.
