unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure f4close(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation
 uses Unit1,Unit2,Unit3;
{$R *.lfm}

{ TForm4 }

procedure TForm4.f4close(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Form4.Left:=100;
  Form4.Top:=290;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form4.Visible:=False;
  Form3.Visible:=False;
  Form2.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
 Form4.Visible:=False;
 Form3.Visible:=False;
 Form2.Visible:=True;
 Form1.Visible:=False;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Form4.Visible:=False;
  Form3.Visible:=True;
  Form2.Visible:=False;
  Form1.Visible:=False;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  h:=strtoint(FormatDateTime('h',Now));
 m:=strtoint(FormatDateTime('n',Now));
 s:=strtoint(FormatDateTime('s',Now));
 n:=strtoint(Form1.Edit1.Text);
 if (m+n)>59 then begin
   h:=h+1;
   if h>23 then h:=h-24;
   m:=m+n-60;
 end
 else m:=m+n;
 if (h>=16) then begin
   Shape2.Brush.Color:=clAqua;
   h:=h-16;
 end
 else Shape2.Brush.Color:=clBlack;
 if (h>=8) then begin
   Shape3.Brush.Color:=clAqua;
   h:=h-8;
 end
 else Shape3.Brush.Color:=clBlack;
 if (h>=4) then begin
   Shape4.Brush.Color:=clAqua;
   h:=h-4;
 end
 else Shape4.Brush.Color:=clBlack;
 if (h>=2) then begin
   Shape5.Brush.Color:=clAqua;
   h:=h-2;
 end
 else Shape5.Brush.Color:=clBlack;
 if (h>=1) then begin
   Shape6.Brush.Color:=clAqua;
   h:=h-1;
 end
 else Shape6.Brush.Color:=clBlack;

 if (m>=32) then begin
   Shape7.Brush.Color:=clAqua;
   m:=m-32;
 end
 else Shape7.Brush.Color:=clBlack;
 if (m>=16) then begin
   Shape8.Brush.Color:=clAqua;
   m:=m-16;
 end
 else Shape8.Brush.Color:=clBlack;
 if (m>=8) then begin
   Shape9.Brush.Color:=clAqua;
   m:=m-8;
 end
 else Shape9.Brush.Color:=clBlack;
 if (m>=4) then begin
   Shape10.Brush.Color:=clAqua;
   m:=m-4;
 end
 else Shape10.Brush.Color:=clBlack;
 if (m>=2) then begin
   Shape11.Brush.Color:=clAqua;
   m:=m-2;
 end
 else Shape11.Brush.Color:=clBlack;
 if (m>=1) then begin
   Shape12.Brush.Color:=clAqua;
   m:=m-1;
 end
 else Shape12.Brush.Color:=clBlack;

 if (s>=32) then begin
   Shape13.Brush.Color:=clAqua;
   s:=s-32;
 end
 else Shape13.Brush.Color:=clBlack;
 if (s>=16) then begin
   Shape14.Brush.Color:=clAqua;
   s:=s-16;
 end
 else Shape14.Brush.Color:=clBlack;
 if (s>=8) then begin
   Shape15.Brush.Color:=clAqua;
   s:=s-8;
 end
 else Shape15.Brush.Color:=clBlack;
 if (s>=4) then begin
   Shape16.Brush.Color:=clAqua;
   s:=s-4;
 end
 else Shape16.Brush.Color:=clBlack;
 if (s>=2) then begin
   Shape17.Brush.Color:=clAqua;
   s:=s-2;
 end
 else Shape17.Brush.Color:=clBlack;
 if (s>=1) then begin
   Shape18.Brush.Color:=clAqua;
   s:=s-1;
 end
 else Shape18.Brush.Color:=clBlack;

end;

end.

