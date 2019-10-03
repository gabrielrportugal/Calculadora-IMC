unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa, Calculadora,
  FormResultado, FormRequisitos, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    cbSexo: TComboBox;
    edtAltura: TEdit;
    edtPeso: TEdit;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
  Resultado: TForm2;
begin
  Pessoa := TPessoa.Create;
  Resultado := nil;
  try
    try
      Pessoa.altura := StrToCurr(edtAltura.Text);
      Pessoa.peso := StrToCurr(edtPeso.Text);
      Pessoa.imc := Pessoa.calcIMC(Pessoa.altura, Pessoa.peso);
      case cbSexo.ItemIndex of
        0:
          begin
            Pessoa.sexo := 'Masculino';
            Pessoa.desc := Pessoa.descricaoMasc(Pessoa.imc);
          end;
        1:
          begin
            Pessoa.sexo := 'Feminino';
            Pessoa.desc := Pessoa.descricaoFemi(Pessoa.imc);
          end;
      else
        begin
          raise Exception.Create('');
          abort;
        end;

      end;
      Resultado := TForm2.Create(Form2);
      Resultado.Mostrar(Pessoa.altura, Pessoa.peso, Pessoa.imc, Pessoa.sexo,
        Pessoa.desc);
      Resultado.ShowModal;
    except
      on E: EAccessViolation do
      begin
        ShowMessage('erro');
      end;
      on E: Exception do
        raise Exception.Create
          ('Erro no calculo IMC - Preencha os dados corretamente');
    end;
  finally
    if (Assigned(Pessoa)) then
      Pessoa.Free;

    if (Assigned(Resultado)) then
      Resultado.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Tabela: TForm3;
begin
  Tabela := TForm3.Create(Form3);
  try
    Tabela.ShowModal;
  finally
    Tabela.Free;
  end;

end;

end.
