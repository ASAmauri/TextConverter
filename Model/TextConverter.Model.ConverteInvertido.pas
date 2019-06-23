unit TextConverter.Model.ConverteInvertido;

interface

uses
  System.StrUtils,
  TextConverter.Model.ConverteTexto;

type
   TConverteInvertido = class(TConverteTexto)
   public
     function Converter : String; override;
   end;


implementation

{ TConverteInvertido }

function TConverteInvertido.Converter: String;
begin
  Result := ReverseString(Self.Texto);
end;

end.
