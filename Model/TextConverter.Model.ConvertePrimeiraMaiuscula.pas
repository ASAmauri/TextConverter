unit TextConverter.Model.ConvertePrimeiraMaiuscula;

interface

uses
  TextConverter.Model.ConverteTexto;

type
  TConvertePrimeiraMaiuscula = class(TConverteTexto)
  private
    function PrimeiraMaiuscula(pValue : String) : String;
  public
    function Converter : String; override;
  end;

implementation

uses
  System.SysUtils;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter: String;
begin
  Result := PrimeiraMaiuscula(Texto);
end;

function TConvertePrimeiraMaiuscula.PrimeiraMaiuscula(pValue: String): String;
var
  vLength: integer;
  i: integer;
begin
  Result := AnsiLowerCase(pValue);
  vLength := Length(Result);
  for i := 1 to vLength do
    if (i = 1)
        or ((i>1) and (Result[i-1]=Chr(32)) and (Result[i+1]<>Chr(32))) then
      Result[i] := AnsiUpperCase(Result[i])[1];
end;

end.
