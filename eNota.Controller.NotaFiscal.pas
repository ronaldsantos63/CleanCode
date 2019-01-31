unit eNota.Controller.NotaFiscal;

interface

uses
  eNota.Controller.Interfaces;

type
  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal, iNotaFiscalView)
  private
    { M�todos e atributos privados }
  public
    { M�todos e atributos p�blicos }
    constructor Create;
    destructor Destroy; override;
    class function New: iNotaFiscalView;

    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function EnviarNotaSefaz: iNotaFiscal;
    function EnviarNotaSefazSemEmail: iNotaFiscal;
  end;

implementation

uses
  eNota.Controller.Invoker, eNota.Controller.NotaFiscal.Criar,
  eNota.Controller.NotaFiscal.Validar, eNota.Controller.NotaFiscal.Enviar,
  eNota.Controller.NotaFiscal.Gravar, eNota.Controller.NotaFiscal.Email;

{ TControllerNotaFiscal }

constructor TControllerNotaFiscal.Create;
begin

end;

function TControllerNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
end;

destructor TControllerNotaFiscal.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.Enviar: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.EnviarNotaSefaz: iNotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEmail.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.EnviarNotaSefazSemEmail: iNotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.Gravar: iNotaFiscal;
begin
  Result := Self;
end;

class function TControllerNotaFiscal.New: iNotaFiscalView;
begin
  Result := Self.Create;
end;

function TControllerNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
end;

end.
