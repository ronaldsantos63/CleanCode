unit eNota.Controller.Interfaces;

interface

type

  iCommand = interface
    ['{F9CC8BDD-D224-4B08-8F5B-3CEFEFD99A0B}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{D306868D-40C4-4229-8746-9E433AF5C8BB}']
    function Add(Value : iCommand): iInvoker;
    function Execute: iInvoker;
  end;

  iNotaFiscal = interface
    ['{55BB4426-C252-4EB4-8A21-5E4CA08A959A}']
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
  end;

  iNotaFiscalView = interface
    ['{705FC45B-8504-4AEF-AA42-9512415A48B7}']
    function EnviarNotaSefaz: iNotaFiscal;
    function EnviarNotaSefazSemEmail: iNotaFiscal;
  end;

implementation

end.
