unit TextConverter.Model.ConverteTexto;

interface

uses
  TextConverter.Model.Interfaces;

type
  TConverteTexto = class(TInterfacedObject, iConverteTexto)
  protected
    FTexto: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iConverteTexto;
    function Texto(pValue : String) : iConverteTexto; overload;
    function Texto : String; overload;
    function Converter : String; virtual; abstract;
    procedure ValidarTexto;
  end;
implementation

uses
  System.SysUtils;

{ TConverterTexto }

function TConverteTexto.Texto(pValue: String): iConverteTexto;
begin
  FTexto := pValue;
  ValidarTexto;
  Result := Self;
end;

constructor TConverteTexto.Create;
begin

end;

destructor TConverteTexto.Destroy;
begin

  inherited;
end;

class function TConverteTexto.New: iConverteTexto;
begin
  Result := Self.Create;
end;

function TConverteTexto.Texto: String;
begin
  Result := Self.FTexto;
end;

procedure TConverteTexto.ValidarTexto;
begin
  if FTexto = ''  then
    raise Exception.Create('O texto não pode ser vazio!');
end;

end.
