unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWGrids, IWDBGrids, DB, DBTables, StdCtrls, IBODataset, Grids, DBGrids,
  frxClass, frxDBSet;

type
  TFrm_Producten = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    IBOTable1: TIBOTable;
    DBGrid1: TDBGrid;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    PrintDialog1: TPrintDialog;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Producten: TFrm_Producten;

implementation

{$R *.dfm}

procedure TFrm_Producten.Button1Click(Sender: TObject);
begin
   //Button1.Enabled := false;
   // (frxReport1.FindObject('') as TfrxMemoView).Text :=
   //'WPA-registratie    ' + '  ' ;
  frxReport1.PrepareReport();
  //while frxReport1.IsLoading do
   //  Application.ProcessMessages();
  frxReport1.ShowPreparedReport();
end;

procedure TFrm_Producten.FormActivate(Sender: TObject);
begin
  IBOTable1.Active := true;
end;

procedure TFrm_Producten.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBOTable1.Active := false;
end;

end.
