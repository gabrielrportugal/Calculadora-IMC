unit FormResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbAltura: TLabel;
    lbSexo: TLabel;
    lbIMC: TLabel;
    lbDesc: TLabel;
    lbPeso: TLabel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(const AAltura, APeso, AImc: currency;
      ASexo, ADesc: string);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TForm2 }

{ TForm2 }


procedure TForm2.Mostrar(const AAltura, APeso, AImc: currency;
  ASexo, ADesc: string);
begin
  lbAltura.Caption := FormatFloat('#.#0',AAltura)+' cm';
  lbPeso.Caption := (CurrToStr(APeso)+' kg');
  lbIMC.Caption := CurrToStr(AImc);
  lbSexo.Caption := ASexo;
  lbDesc.Caption := ADesc;
end;

end.
