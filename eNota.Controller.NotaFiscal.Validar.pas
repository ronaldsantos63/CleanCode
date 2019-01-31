unit eNota.Controller.NotaFiscal.Validar;

interface

uses
  eNota.Controller.Interfaces;

type
  TControllerNotaFiscalValidar = class(TInterfacedObject, iCommand)
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

{ TControllerNotaFiscalValidar }

constructor TControllerNotaFiscalValidar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalValidar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalValidar.Execute: iCommand;
begin
  Result := Self;
  FParent.Validar;
end;

class function TControllerNotaFiscalValidar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
