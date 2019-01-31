unit eNota.Controller.NotaFiscal.Gravar;

interface

uses
  eNota.Controller.Interfaces;

type
  TControllerNotaFiscalGravar = class(TInterfacedObject, iCommand)
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

{ TControllerNotaFiscalGravar }

constructor TControllerNotaFiscalGravar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalGravar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalGravar.Execute: iCommand;
begin
  Result := Self;
  FParent.Gravar;
end;

class function TControllerNotaFiscalGravar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
