program CalculadoraIMC;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {Form1},
  Pessoa in 'Pessoa.pas',
  Calculadora in 'Calculadora.pas',
  FormResultado in 'FormResultado.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  FormRequisitos in 'FormRequisitos.pas' {Form3};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
