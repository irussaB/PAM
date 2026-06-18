unit ulistausuarios;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  Buttons;

type

  { Tfrmlistausuarios }

  Tfrmlistausuarios = class(TForm)
    BtnFiltrar: TBitBtn;
    DBGrid1: TDBGrid;
    EdtFiltro: TEdit;
    procedure BtnFiltrarClick(Sender: TObject);
  private
       procedure buscaUsuarios();
  public

  end;

var
  frmlistausuarios: Tfrmlistausuarios;

implementation

{$R *.lfm}

uses umodulo;

{ Tfrmlistausuarios }

procedure Tfrmlistausuarios.BtnFiltrarClick(Sender: TObject);
begin
  buscaUsuarios();
end;

procedure Tfrmlistausuarios.buscaUsuarios();
begin
  with dm.usuarios do
       begin
         Close;
         SQL.Clear;
         SQL.Add('Select * From usuarios where usunome like '+QuotedStr('%'+EdtFiltro.Text+'%'));
         Open;
       end;
end;

end.
