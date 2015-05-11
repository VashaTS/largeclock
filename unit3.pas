unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    procedure clo3(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure zwy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;
  h,m,s,n:integer;
  rh,rm,rs:string;

implementation
 uses Unit1,Unit2;
{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  Form3.Top:=1;
  Form3.Left:=2;
end;

procedure TForm3.clo3(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm3.Label2Click(Sender: TObject);
begin
  Form1.Visible:=False;
  Form2.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
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
  case h of
  0: rh:='';
  1: rh:='I';
  2: rh:='II';
  3: rh:='III';
  4: rh:='IV';
  5: rh:='V';
  6: rh:='VI';
  7: rh:='VII';
  8: rh:='VIII';
  9: rh:='IX';
  10: rh:='X';
  11: rh:='XI';
  12: rh:='XII';
  13: rh:='XIII';
  14: rh:='XIV';
  15: rh:='XV';
  16: rh:='XVI';
  17: rh:='XVII';
  18: rh:='XVIII';
  19: rh:='XIX';
  20: rh:='XX';
  21: rh:='XXI';
  22: rh:='XXII';
  23: rh:='XXIII';
  end;
  case m of
  0: rm:='';
  1: rm:='I';
  2: rm:='II';
  3: rm:='III';
  4: rm:='IV';
  5: rm:='V';
  6: rm:='VI';
  7: rm:='VII';
  8: rm:='VIII';
  9: rm:='IX';
  10: rm:='X';
  11: rm:='XI';
  12: rm:='XII';
  13: rm:='XIII';
  14: rm:='XIV';
  15: rm:='XV';
  16: rm:='XVI';
  17: rm:='XVII';
  18: rm:='XVIII';
  19: rm:='XIX';
  20: rm:='XX';
  21: rm:='XXI';
  22: rm:='XXII';
  23: rm:='XXIII';
  24: rm:='XXIV';
  25: rm:='XXV';
  26: rm:='XXVI';
  27: rm:='XXVII';
  28: rm:='XXVIII';
  29: rm:='XXIX';
  30: rm:='XXX';
  31: rm:='XXXI';
  32: rm:='XXXII';
  33: rm:='XXXIII';
  34: rm:='XXXIV';
  35: rm:='XXXV';
  36: rm:='XXXVI';
  37: rm:='XXXVII';
  38: rm:='XXXVIII';
  39: rm:='XXXIX';
  40: rm:='XL';
  41: rm:='XLI';
  42: rm:='XLII';
  43: rm:='XLIII';
  44: rm:='XLIV';
  45: rm:='XLV';
  46: rm:='XLVI';
  47: rm:='XLVII';
  48: rm:='XLVIII';
  49: rm:='XLIX';
  50: rm:='L';
  51: rm:='LI';
  52: rm:='LII';
  53: rm:='LIII';
  54: rm:='LIV';
  55: rm:='LV';
  56: rm:='LVI';
  57: rm:='LVII';
  58: rm:='LVIII';
  59: rm:='LIX';
  end;
  case s of
  0: rs:='';
  1: rs:='I';
  2: rs:='II';
  3: rs:='III';
  4: rs:='IV';
  5: rs:='V';
  6: rs:='VI';
  7: rs:='VII';
  8: rs:='VIII';
  9: rs:='IX';
  10: rs:='X';
  11: rs:='XI';
  12: rs:='XII';
  13: rs:='XIII';
  14: rs:='XIV';
  15: rs:='XV';
  16: rs:='XVI';
  17: rs:='XVII';
  18: rs:='XVIII';
  19: rs:='XIX';
  20: rs:='XX';
  21: rs:='XXI';
  22: rs:='XXII';
  23: rs:='XXIII';
  24: rs:='XXIV';
  25: rs:='XXV';
  26: rs:='XXVI';
  27: rs:='XXVII';
  28: rs:='XXVIII';
  29: rs:='XXIX';
  30: rs:='XXX';
  31: rs:='XXXI';
  32: rs:='XXXII';
  33: rs:='XXXIII';
  34: rs:='XXXIV';
  35: rs:='XXXV';
  36: rs:='XXXVI';
  37: rs:='XXXVII';
  38: rs:='XXXVIII';
  39: rs:='XXXIX';
  40: rs:='XL';
  41: rs:='XLI';
  42: rs:='XLII';
  43: rs:='XLIII';
  44: rs:='XLIV';
  45: rs:='XLV';
  46: rs:='XLVI';
  47: rs:='XLVII';
  48: rs:='XLVIII';
  49: rs:='XLIX';
  50: rs:='L';
  51: rs:='LI';
  52: rs:='LII';
  53: rs:='LIII';
  54: rs:='LIV';
  55: rs:='LV';
  56: rs:='LVI';
  57: rs:='LVII';
  58: rs:='LVIII';
  59: rs:='LIX';
  end;
  Label1.Caption:=rh;
  Label2.Caption:=rm;
  Label3.Caption:=rs;
end;

procedure TForm3.zwy(Sender: TObject);
begin
  Form1.Visible:=True;
  Form2.Visible:=False;
  Form3.Visible:=False;
end;

end.

