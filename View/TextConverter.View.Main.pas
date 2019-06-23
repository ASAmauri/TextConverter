unit TextConverter.View.Main;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, System.Classes, Vcl.Controls,
  TextConverter.Model.Factory,
  TextConverter.Model.Interfaces;

type
  TForm1 = class(TForm)
    TextoOriginalMemo: TMemo;
    OpcoesRadioGroup: TRadioGroup;
    TextoOriginalLabel: TLabel;
    TextoConvertidoLabel: TLabel;
    ConverterButton: TButton;
    TextoConvertidoMemo: TMemo;
    procedure ConverterButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function OpcaoSelecionada : TTypeConverteTexto;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ConverterButtonClick(Sender: TObject);
begin
  TextoConvertidoMemo.Lines.Text :=
    TConverteTextoFactory.New
      .ConverteTexto(OpcaoSelecionada)
        .Texto(TextoOriginalMemo.Lines.Text)
        .Converter;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  OpcoesRadioGroup.ItemIndex := Integer(tpInvertido);
end;

function TForm1.OpcaoSelecionada: TTypeConverteTexto;
begin
  Result := TTypeConverteTexto(OpcoesRadioGroup.ItemIndex);
end;

end.
