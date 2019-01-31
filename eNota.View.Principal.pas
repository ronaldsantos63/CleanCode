unit eNota.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, eNota.Controller.Interfaces,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eNota.Controller.NotaFiscal;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefaz;
end;

end.
