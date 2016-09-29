program Concesionaria;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, Vendedor, Unit1, Unit2, Unit3
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFormVendedor, FormVendedor);
  Application.CreateForm(TFormAltaCliente, FormAltaCliente);
  Application.CreateForm(TFormConsultarClientes, FormConsultarClientes);
  Application.CreateForm(TFormCreditoPrendario, FormCreditoPrendario);
  Application.Run;
end.

