unit Datamodulo;

interface

uses
  System.SysUtils, System.Classes, Uni, Data.DB, MemDS, DBAccess, UniProvider,
  MySQLUniProvider, System.ImageList, Vcl.ImgList, Vcl.Controls,
  SQLServerUniProvider;

type
  Tdata = class(TDataModule)
    con1: TUniConnection;
    untblUsuarios: TUniTable;
    unqryusuario: TUniQuery;
    untblEstado_Usuarios: TUniTable;
    unqryEstado_Usuarios: TUniQuery;
    ilimage16x16: TImageList;
    ilimagenasistente: TImageList;
    sqlsrvrnprvdr1: TSQLServerUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data: Tdata;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
