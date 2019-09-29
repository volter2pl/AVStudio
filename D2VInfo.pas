////////////////////////////////////////////////////////////////////////////////
///
///  Klasa odczytuj¹ca informacje z pliku D2V
///
unit D2VInfo;

interface

uses
  SysUtils, Classes;


type
 TD2VInfo = class(TObject)
public
 typ,width,height,ar,fps : string;
 constructor Create(Source : string);
end;

implementation

constructor TD2VInfo.Create(Source : string);
var  d2v : TextFile;
     linia : string;
     wynik : Array[1..3] of double;
begin
AssignFile(d2v, Source);
Reset(d2v);
try
  while not Eof(d2v) do
  begin
    ReadLn(d2v, linia);
    if pos('MPEG_Type', linia)>0 then
    begin
      typ:='MPEG-'+copy( linia,Pos('=',linia)+1,Length(linia)-Pos('=',linia) );
    end;

    if pos('Picture_Size', linia)>0 then
    begin
      width :=copy(linia,Pos('=',linia)+1,Pos('x',linia)-Pos('=',linia)-1 );
      height:=copy( linia,Pos('x',linia)+1,Length(linia)-Pos('x',linia) );
    end;

    if pos('Aspect_Ratio', linia)>0 then
    begin
      DecimalSeparator:=',';
      wynik[1]:=StrToFloat( copy(linia,Pos('=',linia)+1,Pos(':',linia)-Pos('=',linia)-1 )  );
      wynik[2]:=StrToFloat( copy( linia,Pos(':',linia)+1,Length(linia)-Pos(':',linia) ) );
      DecimalSeparator:='.';
      ar:=FormatFloat('0.000',wynik[1]/wynik[2]);
    end;

    if pos('Frame_Rate', linia)>0 then
    begin
      wynik[3]:=StrToFloat( copy( linia,Pos('=',linia)+1,Length(linia)-Pos('=',linia) ) );
      fps:=FormatFloat('0.000',wynik[3]/1000);
    end;
  end;
finally
  CloseFile(d2v);
end;

end;

end.