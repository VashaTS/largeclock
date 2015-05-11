unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure clo2(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rzy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;
  h,m,s,n,r,r0:integer;
  x,y,x1,x2,y1,y2,i:integer;

implementation

{$R *.lfm}
   uses Unit1,Unit3;
{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Visible:=False;
  Form1.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
//
end;

procedure TForm2.clo2(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Top:=1;
  Form2.Left:=2;
end;

procedure TForm2.rzy(Sender: TObject);
begin
  Form2.Visible:=False;
  Form1.Visible:=False;
  Form3.Visible:=True;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
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
  if Form1.Label8.Caption='1' then begin
   if h<14 then begin
     h:=13-h;
     m:=59-m;
     s:=59-s;
   end
   else begin
    h:=21-h;
    m:=59-m;
    s:=59-s;
   end;
  end;
  Canvas.Pen.Color:=clBlack;
  Canvas.FillRect(0,0,700,700);
  Canvas.Pen.Color:=clWhite;
  Canvas.Ellipse(1,1,699,699);
  i:=0;
  while i<360 do begin
    x1:=Round(cos(PI*i/180)*350+350);
    y1:=Round(sin(PI*i/180)*350+350);
    x2:=Round(cos(PI*i/180)*330+350);
    y2:=Round(sin(PI*i/180)*330+350);
    Canvas.MoveTo(x1,y1);
    Canvas.LineTo(x2,y2);
    i:=i+30;
  end;
  Canvas.MoveTo(350,350);
  Canvas.Pen.Color:=clYellow;
  Canvas.Pen.Width:=8;
  r:=300;
  r0:=50;
  x:=Round(cos(PI*(30*h+(m/2)-90)/180)*(r-(r/100*30))+r0+r);
  y:=Round(sin(PI*(30*h+(m/2)-90)/180)*(r-(r/100*30))+r0+r);
  Canvas.LineTo(x,y);
  Canvas.MoveTo(350,350);
  Canvas.Pen.Color:=clLime;
  Canvas.Pen.Width:=5;
  r:=320;
  r0:=30;
  x:=Round(cos(PI*(6*m-90)/180)*(r-(r/100*10))+r+r0);
  y:=Round(sin(PI*(6*m-90)/180)*(r-(r/100*10))+r+r0);
  Canvas.LineTo(x,y);
  Canvas.MoveTo(350,350);
  Canvas.Pen.Color:=clRed;
  Canvas.Pen.Width:=3;
  r:=350;
  r0:=0;
  x:=Round(cos(PI*(6*s-90)/180)*(r-(r/100*10))+r+r0);
  y:=Round(sin(PI*(6*s-90)/180)*(r-(r/100*10))+r+r0);
  Canvas.LineTo(x,y);
end;

end.

