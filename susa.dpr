program susa;

uses
  Forms,
  susarka in 'susarka.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'susarka';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
