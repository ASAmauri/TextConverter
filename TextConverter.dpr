program TextConverter;

uses
  Vcl.Forms,
  TextConverter.View.Main in 'View\TextConverter.View.Main.pas' {Form1},
  TextConverter.Model.Interfaces in 'Model\TextConverter.Model.Interfaces.pas',
  TextConverter.Model.ConverteTexto in 'Model\TextConverter.Model.ConverteTexto.pas',
  TextConverter.Model.ConverteInvertido in 'Model\TextConverter.Model.ConverteInvertido.pas',
  TextConverter.Model.ConverteOrdenado in 'Model\TextConverter.Model.ConverteOrdenado.pas',
  TextConverter.Model.ConvertePrimeiraMaiuscula in 'Model\TextConverter.Model.ConvertePrimeiraMaiuscula.pas',
  TextConverter.Model.Factory in 'Model\TextConverter.Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
