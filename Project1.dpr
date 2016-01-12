program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Frm_Producten},
  TR_Prod in '..\..\D2010-Projects-FB-IBO\Teeltreg\TR_Prod.pas' {Produkten};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrm_Producten, Frm_Producten);
  Application.CreateForm(TProdukten, Produkten);
  Application.Run;
end.
