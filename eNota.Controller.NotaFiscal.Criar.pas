unit eNota.Controller.NotaFiscal.Criar;

interface

uses
  eNota.Controller.Interfaces;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
  private
    { M�todos e atributos privados }
    FParent: iNotaFiscal;
  public
    { M�todos e atributos p�blicos }
    constructor Create(Parent: iNotaFiscal);
    destructor Destroy; override;
    class function New(Parent: iNotaFiscal): iCommand;

    function Execute : iCommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
