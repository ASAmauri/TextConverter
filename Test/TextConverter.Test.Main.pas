unit TextConverter.Test.Main;

interface
uses
  DUnitX.TestFramework,
  TextConverter.Model.ConverteTexto,
  TextConverter.Model.Interfaces, TextConverter.Model.ConverteInvertido,
  TextConverter.Model.ConvertePrimeiraMaiuscula,
  TextConverter.Model.ConverteOrdenado;

type

  [TestFixture]
  TMyTestObject = class(TObject)
  private
    FConverteTexto : TConverteTexto;
    FConverteInvertido : TConverteInvertido;
    FConvertePrimeiraMaiuscula : TConvertePrimeiraMaiuscula;
    FConverteOrdenado : TConverteOrdenado;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    procedure ValidarTexto;

    [Test]
    procedure InverteTexto;

    [Test]
    procedure PrimeiraMaiuscula;

    [Test]
    procedure OrdenaTexto;
  end;

implementation

procedure TMyTestObject.InverteTexto;
var
  Resultado : String;
begin
  Resultado := FConverteInvertido.New.Texto('DB1').Converter;
  Assert.AreEqual(Resultado,'1BD');
end;

procedure TMyTestObject.PrimeiraMaiuscula;
var
  Resultado : String;
begin
  Resultado := FConvertePrimeiraMaiuscula.New.Texto('amauri alves').Converter;
  Assert.AreEqual(Resultado,'Amauri Alves');
end;

procedure TMyTestObject.OrdenaTexto;
var
  Resultado : String;
begin
  Resultado := FConverteOrdenado.New.Texto('amauri').Converter;
  Assert.AreEqual(Resultado,'aaimru');
end;

procedure TMyTestObject.Setup;
begin
  FConverteTexto := TConverteTexto.Create;
  FConverteInvertido := TConverteInvertido.Create;
  FConvertePrimeiraMaiuscula := TConvertePrimeiraMaiuscula.Create;
  FConverteOrdenado := TConverteOrdenado.Create;
end;

procedure TMyTestObject.TearDown;
begin
  FConverteTexto.Free;
  FConverteInvertido.Free;
  FConvertePrimeiraMaiuscula.Free;
  FConverteOrdenado.Free;
end;


procedure TMyTestObject.ValidarTexto;
var
  Resultado : String;
begin
  try
    FConverteTexto.Texto('');
  except
  end;
  Assert.WillRaise(TConverteTexto(FConverteTexto).ValidarTexto
                   ,nil
                   ,'TConverteTexto.New.Texto');
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);
end.
