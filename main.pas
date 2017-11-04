unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, dxGDIPlusClasses, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, Vcl.StdCtrls, System.Actions, Vcl.ActnList;

type
  Tfprincipal = class(TForm)
    pnl1: TPanel;
    btnAfiliados: TSpeedButton;
    stat1: TStatusBar;
    btnAsistencia: TSpeedButton;
    btnInventario: TSpeedButton;
    btnDonaciones: TSpeedButton;
    btnReportes: TSpeedButton;
    img1: TImage;
    btnSalir: TSpeedButton;
    procedure Salir2Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnAfiliadosClick(Sender: TObject);
    procedure btnAsistenciaClick(Sender: TObject);
    procedure btnInventarioClick(Sender: TObject);
    procedure btnDonacionesClick(Sender: TObject);
    procedure btnReportesClick(Sender: TObject);
    procedure RegistrarAfiliados1Click(Sender: TObject);
    procedure Ver1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure RegistroDonaciones1Click(Sender: TObject);
    procedure VerReportes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Action11Click(Sender: TObject);
    procedure RegistrarAsistencia1Click(Sender: TObject);
    procedure RegistrarInventario1Click(Sender: TObject);
    procedure RegistrarDonaciones1Click(Sender: TObject);
    procedure RegistrarDonaciones2Click(Sender: TObject);
    procedure ReportedeAsistencia1Click(Sender: TObject);
    procedure ReporteDonaciones1Click(Sender: TObject);
    procedure ReporteInventario1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprincipal: Tfprincipal;

implementation

uses
  Registro_Afiliados, Registro_Asistencia, Registro_Reportes, Registro_Inventario, Registro_Donaciones, Datamodulo;

{$R *.dfm}

procedure Tfprincipal.Action11Click(Sender: TObject);
begin
fregistroAfiliados := TfregistroAfiliados.Create(Application);
fregistroAfiliados.ShowModal;
end;

procedure Tfprincipal.btn1Click(Sender: TObject);
begin

pnl1.Visible := not pnl1.Visible;
end;

procedure Tfprincipal.btnAfiliadosClick(Sender: TObject);
begin
fregistroAfiliados := TfregistroAfiliados.Create(self);
fregistroAfiliados.ShowModal;
end;

procedure Tfprincipal.btnAsistenciaClick(Sender: TObject);
begin
fregistroAsistencia := TfregistroAsistencia.Create(Application);
fregistroAsistencia.ShowModal;
end;

procedure Tfprincipal.btnDonacionesClick(Sender: TObject);
begin
fregistroDonaciones := TfregistroDonaciones.Create(Application);
fregistroDonaciones.ShowModal;
end;

procedure Tfprincipal.btnInventarioClick(Sender: TObject);
begin
fregistroInventario := TfregistroInventario.Create(Application);
fregistroInventario.ShowModal;
end;

procedure Tfprincipal.btnReportesClick(Sender: TObject);
begin
freportes := Tfreportes.Create(Application);
freportes.ShowModal;
end;

procedure Tfprincipal.btnSalirClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfprincipal.Estados1Click(Sender: TObject);
begin
fregistroInventario := TfregistroInventario.Create(Application);
fregistroInventario.ShowModal;
end;

procedure Tfprincipal.FormCreate(Sender: TObject);
begin
 stat1.Panels[0].Text := ' '+ 'Usuario Conectado: ' + data.unqryusuario.FieldByName('usuario').AsString;
 stat1.Panels[1].Text:='Empresa: Asociacion de la Tercera Edad ';
 stat1.Panels[2].Text:=' Fecha: '+ FormatDateTime('DDDDDD', Date);
end;

procedure Tfprincipal.RegistrarAfiliados1Click(Sender: TObject);
begin
fregistroAfiliados := TfregistroAfiliados.Create(Application);
fregistroAfiliados.ShowModal;
end;

procedure Tfprincipal.RegistrarAsistencia1Click(Sender: TObject);
begin
fregistroAsistencia := TfregistroAsistencia.Create(Application);
fregistroAsistencia.ShowModal;
end;

procedure Tfprincipal.RegistrarDonaciones1Click(Sender: TObject);
begin
fregistroDonaciones := TfregistroDonaciones.Create(Application);
fregistroDonaciones.ShowModal;
end;

procedure Tfprincipal.RegistrarDonaciones2Click(Sender: TObject);
begin
freportes := Tfreportes.Create(Application);
freportes.ShowModal;
end;

procedure Tfprincipal.RegistrarInventario1Click(Sender: TObject);
begin
fregistroInventario := TfregistroInventario.Create(Application);
fregistroInventario.ShowModal;
end;

procedure Tfprincipal.RegistroDonaciones1Click(Sender: TObject);
begin
fregistroDonaciones := TfregistroDonaciones.Create(Application);
fregistroDonaciones.ShowModal;
end;

procedure Tfprincipal.ReportedeAsistencia1Click(Sender: TObject);
begin
freportes := Tfreportes.Create(Application);
freportes.ShowModal;
end;

procedure Tfprincipal.ReporteDonaciones1Click(Sender: TObject);
begin
freportes := Tfreportes.Create(Application);
freportes.ShowModal;
end;

procedure Tfprincipal.ReporteInventario1Click(Sender: TObject);
begin
freportes := Tfreportes.Create(Application);
freportes.ShowModal;
end;

procedure Tfprincipal.Salir2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfprincipal.Ver1Click(Sender: TObject);
begin
fregistroAsistencia := TfregistroAsistencia.Create(Application);
fregistroAsistencia.ShowModal;
end;

procedure Tfprincipal.VerReportes1Click(Sender: TObject);
begin
 freportes := Tfreportes.Create(Application);
 freportes.ShowModal;
end;

end.
