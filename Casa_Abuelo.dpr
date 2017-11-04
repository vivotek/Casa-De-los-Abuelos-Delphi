program Casa_Abuelo;

uses
  Vcl.Forms,
  main in 'main.pas' {fprincipal},
  Vcl.Themes,
  Vcl.Styles,
  Registro_Afiliados in 'Registro_Afiliados.pas' {fregistroAfiliados},
  Registro_Asistencia in 'Registro_Asistencia.pas' {fregistroAsistencia},
  Registro_Inventario in 'Registro_Inventario.pas' {fregistroInventario},
  Registro_Donaciones in 'Registro_Donaciones.pas' {fregistroDonaciones},
  Registro_Reportes in 'Registro_Reportes.pas' {freportes},
  Datamodulo in 'Datamodulo.pas' {data: TDataModule},
  Formulario_Inicio_Sesion in 'Formulario_Inicio_Sesion.pas' {fcredenciales};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald Light Slate');
  Application.CreateForm(Tdata, data);
  Application.CreateForm(Tfcredenciales, fcredenciales);
  Application.Run;
end.
