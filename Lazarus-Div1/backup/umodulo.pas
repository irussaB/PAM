unit umodulo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZAbstractRODataset;

type

  { Tdm }

  Tdm = class(TDataModule)
    dsusuarios: TDataSource;
    conexao: TZConnection;
    usuarios: TZQuery;
    usuariosusuid: TZInt64Field;
    usuariosusulogado: TZBooleanField;
    usuariosusulogin: TZRawCLobField;
    usuariosusunome: TZRawCLobField;
    usuariosususenha: TZRawCLobField;
  private

  public

  end;

var
  dm: Tdm;

implementation

{$R *.lfm}

end.

