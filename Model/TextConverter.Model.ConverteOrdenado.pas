unit TextConverter.Model.ConverteOrdenado;

interface

uses
  TextConverter.Model.ConverteTexto;

type
  TConverteOrdenado = class(TconverteTexto)
  public
    function Converter : String; override;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TConverteOrdenado }

function TConverteOrdenado.Converter: String;
var
  vStringToSort : TStringList;
  I: Integer;
begin
  Result := '';
  vStringToSort := TStringList.Create;
  try
    for I := 1 to Length(Self.Texto) do
      vStringToSort.Add(Self.Texto[I]);
    vStringToSort.Sort;
    Result :=
        Trim(StringReplace(StringReplace(vStringToSort.Text
                                        , #10
                                        , ''
                                        , [rfReplaceAll]
                                      )
                          , #13
                          , ''
                          , [rfReplaceAll]
                        )
          );
  finally
    vStringToSort.Free;
  end;
end;

end.
