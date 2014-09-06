program brook_order_server;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  //Interfaces, // this includes the LCL widgetset
  //Forms,
   BrookApplication, Model, ModelOpf, Brokers, dbutils;

{$R *.res}

begin
     BrookApp.Run;
  //RequireDerivedFormResource := True;
  //Application.Initialize;
  //Application.Run;
end.

