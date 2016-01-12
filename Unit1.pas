unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, IB_Components, IB_Access, IBODataset, Menus,
  Menus, Printers;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Database1: TIBODatabase;
    MainMenu1: TMainMenu;
    Producten1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Producten1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PrintMemoDialog(MemoPrint : TMemo; LetterGrootte : word; Landscape : boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, TR_Prod;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Frm_Producten.Show;
end;

procedure TForm1.PrintMemoDialog(MemoPrint : TMemo; LetterGrootte : word; Landscape : boolean);
var prnt : TextFile;
    regel: integer;
begin
  if PrintDialog1.Execute then
  begin
     Printer.Orientation := PoPortrait;
     if Landscape then
        Printer.Orientation := PoLandScape;
     Assignprn(prnt);
     Rewrite(prnt);
     Printer.canvas.font:= MemoPrint.Font;
     Printer.canvas.font.size := LetterGrootte;
     for regel := 0 to MemoPrint.lines.count-1 do
       writeln(prnt,'   ' + MemoPrint.lines[regel]);
     CloseFile(prnt);
  end;
end;

procedure TForm1.Producten1Click(Sender: TObject);
begin
  Produkten.show;
end;

end.
