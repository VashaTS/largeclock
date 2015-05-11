unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, Windows;

type
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ccol(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
    procedure F3r(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure konclick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Labelaclick(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  h,m,s,n:integer;
  modify:boolean;
implementation
  uses Unit2,Unit3,Unit4;
{$R *.lfm}

{ TForm1 }
procedure TForm1.Timer1Timer(Sender: TObject);
begin
 h:=strtoint(FormatDateTime('h',Now));
 m:=strtoint(FormatDateTime('n',Now));
 s:=strtoint(FormatDateTime('s',Now));
 n:=strtoint(Edit1.Text);
 if (m+n)>59 then begin
   h:=h+1;
   if h>23 then h:=h-24;
   m:=m+n-60;
 end
 else m:=m+n;
  if Label8.Caption='1' then begin
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
 if Label2.Visible=True then Label2.Visible:=False
 else Label2.Visible:=True;
 if Label4.Visible=True then Label4.Visible:=False
 else Label4.Visible:=True;
 if h>9 then Label1.Caption:=inttostr(h)
 else Label1.Caption:='0'+inttostr(h);
 if m>9 then Label3.Caption:=inttostr(m)
 else Label3.Caption:='0'+inttostr(m);
 if s>9 then Label5.Caption:=inttostr(s)
 else Label5.Caption:='0'+inttostr(s);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(strtoint(Edit1.Text)+1);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(strtoint(Edit1.Text)+10);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(strtoint(Edit1.Text)-10);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text:='0';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin

end;

procedure TForm1.ccol(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var sha:TShape;
begin
 sha:=sender as TShape;
  Form1.Label1.Font.Color:=sha.Brush.Color;
  Form1.Label2.Font.Color:=sha.Brush.Color;
  Form1.Label3.Font.Color:=sha.Brush.Color;
  Form1.Label4.Font.Color:=sha.Brush.Color;
  Form1.Label5.Font.Color:=sha.Brush.Color;
  Form3.Label1.Font.Color:=sha.Brush.Color;
  Form3.Label2.Font.Color:=sha.Brush.Color;
  Form3.Label3.Font.Color:=sha.Brush.Color;
  Form1.Label5Click(Form1);
end;

procedure TForm1.F3r(Sender: TObject);
begin
 if modify=True then begin
  Form3.Visible:=True;
  Form1.Visible:=False;
  Form2.Visible:=False;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Left:=0;
  Form1.Top:=290;
end;

procedure TForm1.konclick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin
 if modify=True then
 begin
  modify:=False;
  Label10.Color:=clBlack;
  Label10.Font.Color:=clNavy;
  Label11.Visible:=False;
  Label12.Visible:=False;
  Label13.Visible:=False;
  Label14.Visible:=False;
  Label15.Visible:=False;
  Label16.Visible:=False;
  GroupBox1.Visible:=False;
  Shape5.Visible:=False;
  GroupBox2.Visible:=False;
  Shape8.Visible:=False;
 end
 else begin
   modify:=True;
   Label10.Color:=clYellow;
   Label10.Font.Color:=clBlack;
   Label11.Visible:=True;
   Label12.Visible:=True;
   Label13.Visible:=True;
   Label14.Visible:=True;
   Label15.Visible:=True;
   Label16.Visible:=True;
 end;
end;

procedure TForm1.Label16Click(Sender: TObject);
begin
 Form1.Visible:=False;
 Form2.Visible:=False;
 Form3.Visible:=False;
  Form4.Visible:=True;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
 if modify=True then begin
 if Label8.Caption='0' then begin
  Label8.Caption:='1';
  Label9.Visible:=True;
 end
 else begin
   Label8.Caption:='0';
   Label9.Visible:=False;
 end;
 end;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
 if modify=True then begin
  if GroupBox2.Visible=True then GroupBox2.Visible:=False
  else GroupBox2.Visible:=True;
  if Shape8.Visible=True then Shape8.Visible:=False
  else Shape8.Visible:=True;
  end;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
 if modify=True then begin
  if GroupBox1.Visible=True then GroupBox1.Visible:=False
  else GroupBox1.Visible:=True;
  if Shape5.Visible=True then Shape5.Visible:=False
  else Shape5.Visible:=True;
 end;
end;

procedure TForm1.Labelaclick(Sender: TObject);
begin
 if modify=True then begin
  Form2.Visible:=True;
  Form1.Visible:=False;
 end;
end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(strtoint(Edit1.Text)-1);
end;

end.

