unit TextConverter.Model.Interfaces;

interface

type
  TTypeConverteTexto = (tpInvertido,
                        tpPrimeiraMaiuscula,
                        tpOrdenado);

  iConverteTexto = interface
    ['{EC2213E8-F7E2-45A6-9B22-C57520A95517}']
    function Texto(pValue : String) : iConverteTexto; overload;
    function Texto : String; overload;
    function Converter : String;
  end;

  iConverteTextoFactory = interface
    ['{6536FE00-5D8B-4EE3-BB42-AB90258F09D3}']
    function ConverteTexto(pValue : TTypeConverteTexto) : iConverteTexto;
  end;

implementation

end.
