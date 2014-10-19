unit uDM1;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery,Forms;

type
  TDM1 = class(TDataModule)
    TPAROQUIA: TIBDataSet;
    TPAROQUIACODIGO: TIntegerField;
    TPAROQUIANOME: TIBStringField;
    TPAROQUIAENDERECO: TIBStringField;
    TPAROQUIABAIRRO: TIBStringField;
    TPAROQUIACIDADE: TIBStringField;
    TPAROQUIAUF: TIBStringField;
    TPAROQUIACEP: TIBStringField;
    TPAROQUIATELEFONE: TIBStringField;
    TPAROQUIAFAX: TIBStringField;
    TArquidiocese: TIBDataSet;
    TArquidioceseCODIGO: TIntegerField;
    TArquidioceseNOME: TIBStringField;
    TComunidade: TIBDataSet;
    TComunidadeCODIGO: TIntegerField;
    TComunidadeCOMUNIDADE: TIBStringField;
    TComunidadeCORDENADOR: TIBStringField;
    TComunidadeTELEFONE: TIBStringField;
    TPAROQUIAARQUIDIOCESE: TIntegerField;
    TCatequista: TIBDataSet;
    TCatequistaCODIGO: TIntegerField;
    TCatequistaNOME: TIBStringField;
    TCatequistaTELEFONE: TIBStringField;
    TDizimista: TIBDataSet;
    TDizimistaCODIGO: TIntegerField;
    TDizimistaDIZIMISTA: TIBStringField;
    TDizimistaDT_NASCIMENTO: TDateField;
    TDizimistaENDERECO: TIBStringField;
    TDizimistaBAIRRO: TIBStringField;
    TDizimistaCIDADE: TIBStringField;
    TDizimistaUF: TIBStringField;
    TDizimistaCEP: TIBStringField;
    TDizimistaTELEFONE: TIBStringField;
    TDizimistaCELULAR: TIBStringField;
    TDizimistaEMAIL: TIBStringField;
    TDizimistaOBS: TMemoField;
    TComunidadePAROQUIA: TIntegerField;
    TCatequistaCOMUNIDADE: TIntegerField;
    TDizimistaCOMUNIDADE: TIntegerField;
    TDizimistaSTATUS: TIBStringField;
    TDizimistaDTCADASTRO: TDateField;
    TMinistrosPadres: TIBDataSet;
    TMinistrosPadresCODIGO: TIntegerField;
    TMinistrosPadresNOME: TIBStringField;
    TMinistrosPadresTELEFONE: TIBStringField;
    QUERYLogin: TIBQuery;
    QUERYLoginCODIGO: TIntegerField;
    QUERYLoginSTATUS: TIBStringField;
    QUERYLoginDTCADASTRO: TDateField;
    QUERYLoginDTALTERACAO: TDateField;
    QUERYLoginNOME: TIBStringField;
    QUERYLoginDPTO: TIBStringField;
    TCatequistaPAROQUIA: TIntegerField;
    TDizimistaPAROQUIA: TIntegerField;
    TMinistrosPadresPAROQUIA: TIntegerField;
    TintencoesMissas: TIBDataSet;
    TintencoesMissasCODIGO: TIntegerField;
    TintencoesMissasINTENCOES: TIBStringField;
    TintencoesMissasPAROQUIA: TIntegerField;
    TintencoesMissasDTCADASTRO: TDateField;
    TMinistrosPadresCOMUNIDADE: TIntegerField;
    TMarca: TIBDataSet;
    TMarcaCODIGO: TIntegerField;
    TMarcaNOME: TIBStringField;
    TGrupo: TIBDataSet;
    TGrupoCODIGO: TIntegerField;
    TGrupoNOME: TIBStringField;
    TCrismandos: TIBDataSet;
    TCrismandosCODIGO: TIntegerField;
    TCrismandosNOME: TIBStringField;
    TCrismandosDT_NASCIMENTO: TDateField;
    TCrismandosCPF: TIBStringField;
    TCrismandosRG: TIBStringField;
    TCrismandosENDERECO: TIBStringField;
    TCrismandosBAIRRO: TIBStringField;
    TCrismandosCIDADE: TIBStringField;
    TCrismandosTELEFONE: TIBStringField;
    TCrismandosMAE: TIBStringField;
    TCrismandosDTCADASTRO: TDateField;
    TCrismandosPAROQUIA: TIntegerField;
    TCrismandosCEP: TIBStringField;
    TCrismandosUF: TIBStringField;
    TCrismandosPAI: TIBStringField;
    TBatizados: TIBDataSet;
    TBatizadosCODIGO: TIntegerField;
    TBatizadosNOME: TIBStringField;
    TBatizadosDT_NASCIMENTO: TDateField;
    TBatizadosCPF: TIBStringField;
    TBatizadosRG: TIBStringField;
    TBatizadosENDERECO: TIBStringField;
    TBatizadosBAIRRO: TIBStringField;
    TBatizadosCIDADE: TIBStringField;
    TBatizadosTELEFONE: TIBStringField;
    TBatizadosMAE: TIBStringField;
    TBatizadosPAI: TIBStringField;
    TBatizadosPAROQUIA: TIntegerField;
    TBatizadosCEP: TIBStringField;
    TBatizadosUF: TIBStringField;
    TEucaristia: TIBDataSet;
    TEucaristiaNOME: TIBStringField;
    TEucaristiaDT_NASCIMENTO: TDateField;
    TEucaristiaCPF: TIBStringField;
    TEucaristiaRG: TIBStringField;
    TEucaristiaENDERECO: TIBStringField;
    TEucaristiaBAIRRO: TIBStringField;
    TEucaristiaCIDADE: TIBStringField;
    TEucaristiaTELEFONE: TIBStringField;
    TEucaristiaMAE: TIBStringField;
    TEucaristiaPAI: TIBStringField;
    TEucaristiaDTCADASTRO: TDateField;
    TEucaristiaPAROQUIA: TIntegerField;
    TEucaristiaCEP: TIBStringField;
    TEucaristiaUF: TIBStringField;
    TEucaristiaCODIGO: TIntegerField;
    tConfig: TIBDataSet;
    tConfigPAROQUIA: TIntegerField;
    tConfigCONFIGCONTA: TIntegerField;
    tConfigDESCCONFIG: TIBStringField;
    tConfigTIPO: TIBStringField;
    tConfigMODULO: TIntegerField;
    TBatisterio: TIBDataSet;
    TBatisterioPAROQUIA: TIntegerField;
    TBatisterioCODIGO: TIntegerField;
    TBatisterioCODBATIZANDO: TIntegerField;
    TBatisterioNOMEBATIZANDO: TIBStringField;
    TBatisterioDTNASC: TDateField;
    TBatisterioNATURALIDADE: TIBStringField;
    TBatisterioPAI: TIBStringField;
    TBatisterioMAE: TIBStringField;
    TBatisterioPADRINHO: TIBStringField;
    TBatisterioMADRINHA: TIBStringField;
    TBatisterioDTBATISMO: TDateField;
    TBatisterioPADRE: TIntegerField;
    TBatisterioCOMUNIDADE: TIntegerField;
    TBatisterioOBSERVACAO: TIBStringField;
    TBatisterioLIVRO: TIBStringField;
    TBatisterioFOLHA: TIBStringField;
    TBatisterioNUMERO: TIBStringField;
    TCrisma: TIBDataSet;
    TCrismaPAROQUIA: TIntegerField;
    TCrismaCODIGO: TIntegerField;
    TCrismaCODCRISMANDO: TIntegerField;
    TCrismaNOMECRISMANDO: TIBStringField;
    TCrismaDTNASC: TDateField;
    TCrismaNATURALIDADE: TIBStringField;
    TCrismaPAI: TIBStringField;
    TCrismaMAE: TIBStringField;
    TCrismaPADRINHO: TIBStringField;
    TCrismaMADRINHA: TIBStringField;
    TCrismaDTCRISMA: TDateField;
    TCrismaPADRE: TIntegerField;
    TCrismaCOMUNIDADE: TIntegerField;
    TCrismaOBSERVACAO: TIBStringField;
    TCrismaLIVRO: TIBStringField;
    TCrismaFOLHA: TIBStringField;
    TCrismaNUMERO: TIBStringField;
    tEucaristico: TIBDataSet;
    tEucaristicoPAROQUIA: TIntegerField;
    tEucaristicoCOMUNIDADE: TIntegerField;
    tEucaristicoCODIGO: TIntegerField;
    tEucaristicoCODEUCARISTIA: TIntegerField;
    tEucaristicoNOMEEUCARISTIA: TIBStringField;
    tEucaristicoDTNASC: TDateField;
    tEucaristicoNATURALIDADE: TIBStringField;
    tEucaristicoPAI: TIBStringField;
    tEucaristicoMAE: TIBStringField;
    tEucaristicoPADRINHO: TIBStringField;
    tEucaristicoMADRINHA: TIBStringField;
    tEucaristicoDTEUCARISTIA: TDateField;
    tEucaristicoPADRE: TIntegerField;
    tEucaristicoCATEQUISTA: TIntegerField;
    tEucaristicoOBSERVACAO: TIBStringField;
    tEucaristicoLIVRO: TIBStringField;
    tEucaristicoFOLHA: TIBStringField;
    tEucaristicoNUMERO: TIBStringField;
    TDizimo: TIBDataSet;
    TDizimoPAROQUIA: TIntegerField;
    TDizimoCODIGO: TIntegerField;
    TDizimoMES: TIBStringField;
    TDizimoDIZIMISTA: TIntegerField;
    TDizimoDATA: TDateField;
    TDizimoVALOR: TIBBCDField;
    TDizimoANO: TIBStringField;
    TDizimoORIGEM: TIntegerField;
    TDizimoPERIODO: TIBStringField;
    TDizimoTOTPERIODO: TIBBCDField;
    tConfigVALOR: TIBStringField;
    TBatisterioDTCADASTRO: TDateTimeField;
    tEucaristicoDTCADASTRO: TDateTimeField;
    TCrismaDTCADASTRO: TDateTimeField;
    TBatizadosDTCADASTRO: TDateTimeField;
    TUsuario: TIBDataSet;
    TUsuarioCODIGO: TIntegerField;
    TUsuarioNOME: TIBStringField;
    TUsuarioSTATUS: TIBStringField;
    TUsuarioDPTO: TIBStringField;
    TUsuarioPAROQUIA: TIntegerField;
    TUsuarioHABILITAMENU: TIBStringField;
    TUsuarioINCLUSAO: TIBStringField;
    TUsuarioALTERACAO: TIBStringField;
    TUsuarioEXCLUSAO: TIBStringField;
    TPermissao: TIBDataSet;
    TPermissaoCODIGO: TIntegerField;
    TPermissaoPAROQUIA: TIntegerField;
    TPermissaoUSUARIO: TIntegerField;
    TPermissaoFORM: TIBStringField;
    TPermissaoMENU: TIBStringField;
    TPermissaoVISUALIZAR: TIBStringField;
    TPermissaoINCLUSAO: TIBStringField;
    TPermissaoEXCLUSAO: TIBStringField;
    TPermissaoALTERACAO: TIBStringField;
    TPermissaoDESCRICAO: TIBStringField;
    TPermissaoIMPRESSAO: TIBStringField;
    TDizimistaDIA_DOACAO: TIBStringField;
    TFornecedor: TIBDataSet;
    TFornecedorCODIGO: TIntegerField;
    TFornecedorPAROQUIA: TIntegerField;
    TFornecedorDTCADASTRO: TDateField;
    TFornecedorDTALTERACAO: TDateField;
    TFornecedorSTATUS: TIBStringField;
    TFornecedorNOME_FANTASIA: TIBStringField;
    TFornecedorRAZAO_SOCIAL: TIBStringField;
    TFornecedorTIPO: TIBStringField;
    TFornecedorENDERECO: TIBStringField;
    TFornecedorBAIRRO: TIBStringField;
    TFornecedorCIDADE: TIBStringField;
    TFornecedorUF: TIBStringField;
    TFornecedorCEP: TIBStringField;
    TFornecedorRG_INSCRICAO: TIBStringField;
    TFornecedorCGC: TIBStringField;
    TFornecedorCPF: TIBStringField;
    TFornecedorTELEFONE: TIBStringField;
    TFornecedorFAX: TIBStringField;
    TFornecedorEMAIL: TIBStringField;
    TFornecedorOBSERVACAO: TIBStringField;
    TFornecedorCELULAR: TIBStringField;
    TDizimistaVALOR: TIBBCDField;
    TUsuarioSENHA: TIBStringField;
    QUERYLoginSENHA: TIBStringField;
    TNoivos: TIBDataSet;
    TNoivosCODIGO: TIntegerField;
    TNoivosPAROQUIA: TIntegerField;
    TNoivosDTALTERACAO: TDateTimeField;
    TNoivosDTCADASTRO: TDateTimeField;
    TNoivosNOME_NOIVO: TIBStringField;
    TNoivosDTNASCNOIVO: TDateField;
    TNoivosCPF_NOIVO: TIBStringField;
    TNoivosRG_NOIVO: TIBStringField;
    TNoivosENDERECO_NOIVO: TIBStringField;
    TNoivosBAIRRO_NOIVO: TIBStringField;
    TNoivosCIDADE_NOIVO: TIBStringField;
    TNoivosTELEFONE_NOIVO: TIBStringField;
    TNoivosMAE_NOIVO: TIBStringField;
    TNoivosPAI_NOIVO: TIBStringField;
    TNoivosCEP_NOIVO: TIBStringField;
    TNoivosUF_NOIVO: TIBStringField;
    TNoivosNOME_NOIVA: TIBStringField;
    TNoivosDTNASCNOIVA: TDateField;
    TNoivosCPF_NOIVA: TIBStringField;
    TNoivosRG_NOIVA: TIBStringField;
    TNoivosENDERECO_NOIVA: TIBStringField;
    TNoivosBAIRRO_NOIVA: TIBStringField;
    TNoivosCIDADE_NOIVA: TIBStringField;
    TNoivosTELEFONE_NOIVA: TIBStringField;
    TNoivosMAE_NOIVA: TIBStringField;
    TNoivosPAI_NOIVA: TIBStringField;
    TNoivosCEP_NOIVA: TIBStringField;
    TNoivosUF_NOIVA: TIBStringField;
    TMatrimonio: TIBDataSet;
    TMatrimonioCODIGO: TIntegerField;
    TMatrimonioPAROQUIA: TIntegerField;
    TMatrimonioDTCADASTRO: TDateTimeField;
    TMatrimonioARQUIDIOCESE_NOME: TIBStringField;
    TMatrimonioPAROQUIANOME_NOME: TIBStringField;
    TMatrimonioLIVRO: TIBStringField;
    TMatrimonioFOLHA: TIBStringField;
    TMatrimonioNUMERO: TIBStringField;
    TMatrimonioDTCELEBRACAO: TDateTimeField;
    TMatrimonioLOCALCELEBRACAO: TIBStringField;
    TMatrimonioTESTEMUNHA: TIBStringField;
    TMatrimonioTESTEMUNHA1: TIBStringField;
    TMatrimonioTESTEMUNHA2: TIBStringField;
    TMatrimonioOBSERVACAO: TIBStringField;
    TMatrimonioCODIGONOIVO: TIntegerField;
    TMatrimonioNOMENOIVO: TIBStringField;
    TMatrimonioDTNASCNOIVO: TDateField;
    TMatrimonioNATURALIDADENOIVO: TIBStringField;
    TMatrimonioNATURALIDADE_UF_NOIVO: TIBStringField;
    TMatrimonioENDNOIVO: TIBStringField;
    TMatrimonioCIADADENOIVO: TIBStringField;
    TMatrimonioMAENOIVO: TIBStringField;
    TMatrimonioPAINOIVO: TIBStringField;
    TMatrimonioCODIGONOIVA: TIntegerField;
    TMatrimonioNOMENOIVA: TIBStringField;
    TMatrimonioDTNASCNOIVA: TDateField;
    TMatrimonioNATURALIDADENOIVA: TIBStringField;
    TMatrimonioNATURALIDADE_UF_NOIVA: TIBStringField;
    TMatrimonioENDNOIVA: TIBStringField;
    TMatrimonioCIADADENOIVA: TIBStringField;
    TMatrimonioMAENOIVA: TIBStringField;
    TMatrimonioPAINOIVA: TIBStringField;
    TMatrimonioUF_END_NOIVA: TIBStringField;
    TMatrimonioUF_END_NOIVO: TIBStringField;
    TMatrimonioDTALTERACAO: TDateTimeField;
    TDizimoCAMPANHA: TIBStringField;
    TDizimistaDIZIMISTA_CAMPANHA: TIBStringField;
    TContaBanco: TIBDataSet;
    TContaBancoCODIGO: TIntegerField;
    TContaBancoPAROQUIA: TIntegerField;
    TContaBancoDTALTERACAO: TDateTimeField;
    TContaBancoDTCADASTRO: TDateTimeField;
    TContaBancoNOME: TIBStringField;
    TContaBancoCATEGORIA: TIBStringField;
    TTipoPgto: TIBDataSet;
    TTipoPgtoCODIGO: TIntegerField;
    TTipoPgtoPAROQUIA: TIntegerField;
    TTipoPgtoDTALTERACAO: TDateTimeField;
    TTipoPgtoDTCADASTRO: TDateTimeField;
    TTipoPgtoNOME: TIBStringField;
    TTipoPgtoTIPOOPERACAO: TIBStringField;
    TContaBancoDTABERTURA: TDateTimeField;
    TUsuarioDTCADASTRO: TDateTimeField;
    TUsuarioDTALTERACAO: TDateTimeField;
    TLancIntencao: TIBDataSet;
    TLancIntencaoPAROQUIA: TIntegerField;
    TLancIntencaoCODIGO: TIntegerField;
    TLancIntencaoNOME: TIBStringField;
    TLancIntencaoDATACELEBRACAO: TDateField;
    TLancIntencaoHORACELEBRACAO: TDateTimeField;
    TLancIntencaoTIPOINTENCAO: TIntegerField;
    TLancIntencaoCELEBRANTE: TIBStringField;
    TLancIntencaoOBSERVACAO: TIBStringField;
    TContasPagar: TIBDataSet;
    TContasPagarPAROQUIA: TIntegerField;
    TContasPagarCODIGO: TIntegerField;
    TContasPagarFORNECEDOR: TIntegerField;
    TContasPagarDTLANCAMENTO: TDateField;
    TContasPagarDTVENCIMENTO: TDateField;
    TContasPagarTIPO_PAGTO: TIntegerField;
    TContasPagarVALORTOTAL: TFloatField;
    TContasPagarVALORRESTANTE: TFloatField;
    TContasPagarSTATUS: TIBStringField;
    TContasPagarNOTAFISCAL: TIBStringField;
    TContasPagarDTALTERACAO: TDateTimeField;
    TContasPagarOBS: TIBStringField;
    TAgendaTelefones: TIBDataSet;
    TAgendaTelefonesPAROQUIA: TIntegerField;
    TAgendaTelefonesDTCADASTRO: TDateTimeField;
    TAgendaTelefonesDTALTERACAO: TDateTimeField;
    TAgendaTelefonesCODIGO: TIntegerField;
    TAgendaTelefonesNOME: TIBStringField;
    TAgendaTelefonesFONE1: TIBStringField;
    TAgendaTelefonesFONE2: TIBStringField;
    TAgendaTelefonesFONE3: TIBStringField;
    TAgendaTelefonesFONE4: TIBStringField;
    TPAROQUIAEMAIL: TIBStringField;
    TControleBancario: TIBDataSet;
    TControleBancarioPAROQUIA: TIntegerField;
    TControleBancarioCODIGO: TIntegerField;
    TControleBancarioDTMOVIMENTO: TDateField;
    TControleBancarioHISTORICO: TIBStringField;
    TControleBancarioOPERACAO: TIBStringField;
    TControleBancarioVALORMOVIMENTO: TFloatField;
    TControleBancarioSALDOATUAL: TFloatField;
    TControleBancarioDTALTERACAO: TDateField;
    TControleBancarioDTCADASTRO: TDateField;
    TControleBancarioCODIGOBANCO: TIntegerField;
    tCaixa: TIBDataSet;
    tCaixaPAROQUIA: TIntegerField;
    tCaixaCODIGO: TIntegerField;
    tCaixaDATAMOV: TDateField;
    tCaixaTIPOMOV: TIntegerField;
    tCaixaVALORMOV: TIBBCDField;
    tCaixaHISTORICO: TIBStringField;
    tCaixaDTLANC: TDateField;
    tCaixaUSERLANC: TIntegerField;
    tCaixaDTALT: TDateField;
    tCaixaUSERALT: TIntegerField;
    tCaixaCONTA: TIntegerField;
    TContasPagarDTULTPAGTO: TDateField;
    procedure TDizimistaAfterScroll(DataSet: TDataSet);
    procedure TDizimistaBeforePost(DataSet: TDataSet);
    procedure TintencoesMissasAfterScroll(DataSet: TDataSet);
    procedure TintencoesMissasBeforePost(DataSet: TDataSet);
    procedure TCrismandosAfterScroll(DataSet: TDataSet);
    procedure TCrismandosBeforePost(DataSet: TDataSet);
    procedure TEucaristiaAfterScroll(DataSet: TDataSet);
    procedure TEucaristiaBeforePost(DataSet: TDataSet);
    procedure TBatizadosBeforePost(DataSet: TDataSet);
    procedure TBatizadosAfterScroll(DataSet: TDataSet);
    procedure TBatisterioAfterScroll(DataSet: TDataSet);
    procedure TBatisterioBeforePost(DataSet: TDataSet);
    procedure TCrismaAfterScroll(DataSet: TDataSet);
    procedure TCrismaBeforePost(DataSet: TDataSet);
    procedure TNoivosAfterScroll(DataSet: TDataSet);
    procedure TNoivosBeforePost(DataSet: TDataSet);
    procedure TMatrimonioBeforePost(DataSet: TDataSet);
    procedure TMatrimonioAfterScroll(DataSet: TDataSet);
    procedure TContaBancoAfterScroll(DataSet: TDataSet);
    procedure TContaBancoBeforePost(DataSet: TDataSet);
    procedure TTipoPgtoAfterScroll(DataSet: TDataSet);
    procedure TTipoPgtoBeforePost(DataSet: TDataSet);
    procedure TUsuarioAfterScroll(DataSet: TDataSet);
    procedure TUsuarioBeforePost(DataSet: TDataSet);
    procedure tEucaristicoAfterScroll(DataSet: TDataSet);
    procedure tEucaristicoBeforePost(DataSet: TDataSet);
    procedure TAgendaTelefonesAfterScroll(DataSet: TDataSet);
    procedure TAgendaTelefonesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    mParoquia,mUsuario:Integer;
    mNomeParoquia,mEndereco,mBairro,mCidade,mEstado,mCep,mTelefone,
    mNomeArquidiocese,mCaminhoImagens,mNomeUsuario,mMaquina,mParoquiaEmail : String;

  end;

var
  DM1: TDM1;

implementation

uses
  uDMDados, Sistools, uDizimista, uIntencoesMissas, uCrismandos,
  uEucaristia, uBatizados, uBatisterio, uCrisma, uCadNoivos, uMatrimonio,
  uContas, uTipoPgto, uUsuarios, uEucaristico, uAgendaTelefones;

{$R *.dfm}

procedure TDM1.TDizimistaAfterScroll(DataSet: TDataSet);
begin
  fDizimista.StatusPanel1.Caption:='data Cadastro:'+tDizimista.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TDizimistaBeforePost(DataSet: TDataSet);
begin
  fDizimista.StatusPanel1.Caption:='data Cadastro:'+tDizimista.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TintencoesMissasAfterScroll(DataSet: TDataSet);
begin
   //fIntencoesMissas.StatusPanel1.Caption:='data Cadastro:'+TINTENCOESMISSAS.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TintencoesMissasBeforePost(DataSet: TDataSet);
begin
   //fIntencoesMissas.StatusPanel1.Caption:='data Cadastro:'+TINTENCOESMISSAS.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TCrismandosAfterScroll(DataSet: TDataSet);
begin
   fCrismandos.StatusPanel1.Caption:='Data Cadastro:'+tCrismandos.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TCrismandosBeforePost(DataSet: TDataSet);
begin
    fCrismandos.StatusPanel1.Caption:='Data Cadastro:'+tCrismandos.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TEucaristiaAfterScroll(DataSet: TDataSet);
begin
    fEucaristia.StatusPanel1.Caption:='Data Cadastro:'+TEucaristia.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TEucaristiaBeforePost(DataSet: TDataSet);
begin
  fEucaristia.StatusPanel1.Caption:='Data Cadastro:'+TEucaristia.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TBatizadosBeforePost(DataSet: TDataSet);
begin
  fBatizados.StatusPanel1.Caption:='Data/Hora Cadastro:'+TBatizados.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TBatizadosAfterScroll(DataSet: TDataSet);
begin
  fBatizados.StatusPanel1.Caption:='Data/Hora Cadastro:'+TBatizados.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TBatisterioAfterScroll(DataSet: TDataSet);
begin
  fBatisterio.StatusPanel1.Caption:='Data/Hora Cadastro:'+TBatisterio.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TBatisterioBeforePost(DataSet: TDataSet);
begin
  fBatisterio.StatusPanel1.Caption:='Data/Hora Cadastro:'+TBatisterio.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TCrismaAfterScroll(DataSet: TDataSet);
begin
  fCrisma.StatusPanel1.Caption:='Data/Hora Cadastro:'+Tcrisma.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TCrismaBeforePost(DataSet: TDataSet);
begin
  fCrisma.StatusPanel1.Caption:='Data/Hora Cadastro:'+Tcrisma.fieldbyname('DTCADASTRO').AsString;
end;

procedure TDM1.TNoivosAfterScroll(DataSet: TDataSet);
begin
  fCadNoivos.StatusPanel1.Caption:='Data/Hora Cadastro:'+TNoivos.fieldbyname('DTCADASTRO').AsString;
  fCadNoivos.StatusPanel2.Caption:='Data/Hora Ateração:'+TNoivos.fieldbyname('DTALTERACAO').AsString;
end;

procedure TDM1.TNoivosBeforePost(DataSet: TDataSet);
begin
  fCadNoivos.StatusPanel1.Caption:='Data/Hora Cadastro:'+TNoivos.fieldbyname('DTCADASTRO').AsString;
  fCadNoivos.StatusPanel2.Caption:='Data/Hora Ateração:'+TNoivos.fieldbyname('DTALTERACAO').AsString;
end;

procedure TDM1.TMatrimonioBeforePost(DataSet: TDataSet);
begin
  fMatrimonio.StatusPanel1.Caption:='Data/Hora Cadastro:'+TMatrimonio.fieldbyname('DTCADASTRO').AsString;
  fMatrimonio.StatusPanel2.Caption:='Data/Hora Ateração:'+TMatrimonio.fieldbyname('DTALTERACAO').AsString;
end;

procedure TDM1.TMatrimonioAfterScroll(DataSet: TDataSet);
begin
  fMatrimonio.StatusPanel1.Caption:='Data/Hora Cadastro:'+TMatrimonio.fieldbyname('DTCADASTRO').AsString;
  fMatrimonio.StatusPanel2.Caption:='Data/Hora Ateração:'+TMatrimonio.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TContaBancoAfterScroll(DataSet: TDataSet);
begin
  //fContas.StatusPanel1.Caption:='Data/Hora Cadastro:'+TContaBanco.fieldbyname('DTCADASTRO').AsString;
  //fContas.StatusPanel2.Caption:='Data/Hora Ateração:'+TContaBanco.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TContaBancoBeforePost(DataSet: TDataSet);
begin
  fContas.StatusPanel1.Caption:='Data/Hora Cadastro:'+TContaBanco.fieldbyname('DTCADASTRO').AsString;
  fContas.StatusPanel2.Caption:='Data/Hora Ateração:'+TContaBanco.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TTipoPgtoAfterScroll(DataSet: TDataSet);
begin
  //fTipoPgto.StatusPanel1.Caption  :='Data/Hora Cadastro:'+TTipoPgto.fieldbyname('DTCADASTRO').AsString;
  //fTipoPgto.StatusPanel2.Caption  :='Data/Hora Ateração:'+TTipoPgto.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TTipoPgtoBeforePost(DataSet: TDataSet);
begin
  fTipoPgto.StatusPanel1.Caption  :='Data/Hora Cadastro:'+TTipoPgto.fieldbyname('DTCADASTRO').AsString;
  fTipoPgto.StatusPanel2.Caption  :='Data/Hora Ateração:'+TTipoPgto.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TUsuarioAfterScroll(DataSet: TDataSet);
begin
  fUsuarios.StatusPanel1.Caption:='Data/Hora Cadastro:'+TUsuario.fieldbyname('DTCADASTRO').AsString;
  fUsuarios.StatusPanel2.Caption:='Data/Hora Ateração:'+TUsuario.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TUsuarioBeforePost(DataSet: TDataSet);
begin
   fUsuarios.StatusPanel1.Caption:='Data/Hora Cadastro:'+TUsuario.fieldbyname('DTCADASTRO').AsString;
   fUsuarios.StatusPanel2.Caption:='Data/Hora Ateração:'+TUsuario.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.tEucaristicoAfterScroll(DataSet: TDataSet);
begin
  fEucaristico.StatusPanel1.Caption:='Data/Hora Cadastro:'+tEucaristico.fieldbyname('DTCADASTRO').AsString;
  //fEucaristico.StatusPanel1.Caption:='Data/Hora Cadastro:'+tEucaristico.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.tEucaristicoBeforePost(DataSet: TDataSet);
begin
   fEucaristico.StatusPanel1.Caption:='Data/Hora Cadastro:'+tEucaristico.fieldbyname('DTCADASTRO').AsString;
  //fEucaristico.StatusPanel1.Caption:='Data/Hora Cadastro:'+tEucaristico.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TAgendaTelefonesAfterScroll(DataSet: TDataSet);
begin
   fAgendaTelefones.StatusPanel1.Caption:='Data/Hora Cadastro:'+TAgendaTelefones.fieldbyname('DTCADASTRO').AsString;
   fAgendaTelefones.StatusPanel2.Caption:='Data/Hora Ateração:'+TAgendaTelefones.fieldbyname('DTALTERACAO').AsString
end;

procedure TDM1.TAgendaTelefonesBeforePost(DataSet: TDataSet);
begin
   fAgendaTelefones.StatusPanel1.Caption:='Data/Hora Cadastro:'+TAgendaTelefones.fieldbyname('DTCADASTRO').AsString;
   fAgendaTelefones.StatusPanel2.Caption:='Data/Hora Ateração:'+TAgendaTelefones.fieldbyname('DTALTERACAO').AsString
end;

end.
