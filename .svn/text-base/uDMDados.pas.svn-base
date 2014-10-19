unit uDMDados;

interface

uses
  SysUtils, Classes, IBDatabase,Forms, DB;

type
  TdmDados = class(TDataModule)
    db: TIBDatabase;
    Transacao: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTabela, mMaquina : String;

  end;

var
  dmDados: TdmDados;

implementation

uses
  Sistools;

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
var
  zCaminho,zEndereco : String;
  zF :  TextFile;
begin
  zCaminho := ExtractFilePath(Application.ExeName);
  if FileExists(zCaminho+'\Config.ini') then
    begin
      
      AssignFile (zF, zCaminho+'Config.ini');
      Reset(zF);
      Readln(zF, zEndereco);
      CloseFile(zF);
      Db.DatabaseName := zEndereco;
      db.Connected := True;
      transacao.Active := True;
    end;
  mMaquina := PegaSerieHD;
  Application.UpdateFormatSettings := False; // não atualizar o Windows
  ShortDateFormat := 'dd/mm/yyyy'; // define o formato padrão de data


 End;
end.
