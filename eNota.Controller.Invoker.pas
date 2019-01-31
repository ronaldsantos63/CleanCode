unit eNota.Controller.Invoker;

interface

uses
  eNota.Controller.Interfaces, System.Generics.Collections, System.SysUtils;

type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
  private
    { Métodos e atributos privados }
    FLista : TList<iCommand>;
  public
    { Métodos e atributos públicos }
    constructor Create;
    destructor Destroy; override;
    class function New: iInvoker;

    function Add(Value : iCommand): iInvoker;
    function Execute: iInvoker;
  end;

implementation

{ TControllerInvoker }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TControllerInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
var
  I: Integer;
begin
  Result := Self;
  for I := 0 to Pred(FLista.Count) do
    FLista[I].Execute;
end;

class function TControllerInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
