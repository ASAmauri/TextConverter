unit TextConverter.Model.Factory;

interface

uses
  TextConverter.Model.Interfaces,
  TextConverter.Model.ConverteInvertido,
  TextConverter.Model.ConverteOrdenado,
  TextConverter.Model.ConvertePrimeiraMaiuscula;

type
  TConverteTextoFactory = class(TInterfacedObject, iConverteTextoFactory)
    private
      FOpcoes : TTypeConverteTexto;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConverteTextoFactory;
      function Opcoes( pValue : TTypeConverteTexto) : iConverteTextoFactory;
      function ConverteTexto(pValue : TTypeConverteTexto) : iConverteTexto;
  end;

implementation

{ TConverteTextoFactory }

constructor TConverteTextoFactory.Create;
begin

end;

destructor TConverteTextoFactory.Destroy;
begin

  inherited;
end;

class function TConverteTextoFactory.New: iConverteTextoFactory;
begin
  Result := Self.Create;
end;

function TConverteTextoFactory.Opcoes(
  pValue: TTypeConverteTexto): iConverteTextoFactory;
begin


end;

function TConverteTextoFactory.ConverteTexto(pValue : TTypeConverteTexto) : iConverteTexto;
begin
  case pValue of
    tpInvertido         : Result := TConverteInvertido.New;
    tpPrimeiraMaiuscula : Result := TConvertePrimeiraMaiuscula.New;
    tpOrdenado          : Result := TConverteOrdenado.New;
  end;
end;

end.
