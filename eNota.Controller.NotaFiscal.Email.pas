unit eNota.Controller.NotaFiscal.Email;

interface

uses
  eNota.Controller.Interfaces;

type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
  private
    { Métodos e atributos privados }
    FParent: iNotaFiscal;
  public
    { Métodos e atributos públicos }
    constructor Create(Parent: iNotaFiscal);
    destructor Destroy; override;
    class function New(Parent: iNotaFiscal): iCommand;

    function Execute : iCommand;
  end;

implementation

{ TControllerNotaFiscalEmail }

constructor TControllerNotaFiscalEmail.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Email;
end;

class function TControllerNotaFiscalEmail.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
