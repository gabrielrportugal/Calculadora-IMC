unit Pessoa;

interface

uses System.SysUtils, FormResultado;

type
  TPessoa = class
  private
    Fpeso: currency;
    Faltura: currency;
    Fimc: currency;
    Fsexo: string;
    Fdesc: string;
    FNome: string;
    procedure Setaltura(const Value: currency);
    procedure Setimc(const Value: currency);
    procedure Setpeso(const Value: currency);
    procedure Setsexo(const Value: string);
    procedure Setdesc(const Value: string);
    procedure SetNome(const Value: string);
  public
    property altura: currency read Faltura write Setaltura;
    property peso: currency read Fpeso write Setpeso;
    property imc: currency read Fimc write Setimc;
    property sexo: string read Fsexo write Setsexo;
    property desc: string read Fdesc write Setdesc;
    property nome: string read FNome write SetNome;
    function calcIMC(altura, peso: currency): currency;
    function descricaoMasc(const imc: currency): string;
    function descricaoFemi(const imc: currency): string;

  end;

implementation

{ TPessoa }

// Função que irá calcular IMC
function TPessoa.calcIMC(altura, peso: currency): currency;
begin
  altura := altura * altura;
  Result := Trunc(peso / altura);
end;

// Função que descreve o IMC da pessoa feminino
function TPessoa.descricaoFemi(const imc: currency): string;
begin
  if (imc <= 19) then
    Result := 'Abaixo do normal'
  else if (imc > 19) and (imc <= 24) then
    Result := 'Peso Normal'
  else if (imc > 24) and (imc <= 29) then
    Result := 'Obesidade leve'
  else if (imc > 29) and (imc <= 39) then
    Result := 'Obesidade Moderada'
  else if (imc > 39) then
    Result := 'Obesidade grave';
end;

// Função que descreve o IMC da pessoa masculino
function TPessoa.descricaoMasc(const imc: currency): string;
begin
  if imc <= 20 then
    Result := 'Abaixo do normal'
  else if (imc > 20) and (imc <= 25) then
    Result := 'Peso Normal'
  else if (imc > 25) and (imc <= 30) then
    Result := 'Obesidade leve'
  else if (imc > 30) and (imc <= 40) then
    Result := 'Obesidade Moderada'
  else if (imc > 40) then
    Result := 'Obesidade grave';
end;

procedure TPessoa.Setaltura(const Value: currency);
begin
  if Value = 0 then
    raise Exception.Create('Altura não pode estar vazio');

  Faltura := Value;
end;

procedure TPessoa.Setdesc(const Value: string);
begin
  Fdesc := Value;
end;

procedure TPessoa.Setimc(const Value: currency);
begin
  Fimc := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  if Value.IsEmpty then
    raise Exception.Create('Digite o nome');
  FNome := Value;
end;

procedure TPessoa.Setpeso(const Value: currency);
begin
  if Value = 0 then
    raise Exception.Create('Peso não pode estar vazio');
  Fpeso := Value;
end;

procedure TPessoa.Setsexo(const Value: string);
begin
  Fsexo := Value;
end;

end.
