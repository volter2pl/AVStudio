unit Unit1;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs, Controls, StdCtrls, 
  Buttons, ExtCtrls, Menus, ActnList, GIFImage, IniFiles, ComCtrls, ToolWin,
  ImgList, ActnPopup, ShellAPI;

type
  TForm1 = class(TForm)
    SrcList: TListBox;
    Splitter1: TSplitter;
    MainMenu1: TMainMenu;
    FileMENU: TMenuItem;
    ClipMENU: TMenuItem;
    HelpMENU: TMenuItem;
    NewMENU: TMenuItem;
    OpenMENU: TMenuItem;
    SaveMENU: TMenuItem;
    N2: TMenuItem;
    ExitMENU: TMenuItem;
    AddMENU: TMenuItem;
    ModMENU: TMenuItem;
    N3: TMenuItem;
    RemoveMENU: TMenuItem;
    AboutMENU: TMenuItem;
    AutorMENU: TMenuItem;
    ActionList1: TActionList;
    addClip: TAction;
    ModClip: TAction;
    Clear: TAction;
    SaveDialog1: TSaveDialog;
    Open: TAction;
    New: TAction;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    Reload: TAction;
    Remove: TAction;
    ToolsMENU: TMenuItem;
    SettingsMENU: TMenuItem;
    ReloadMENU: TMenuItem;
    Memo1: TMemo;
    DownBUTTON: TButton;
    UpBUTTON: TButton;
    Image1: TImage;
    ToolBar1: TToolBar;
    NewBUTTON: TToolButton;
    OpenBUTTON: TToolButton;
    SaveBUTTON: TToolButton;
    Separator1BUTTON: TToolButton;
    Icons: TImageList;
    AddBUTTON: TToolButton;
    RemoveBUTTON: TToolButton;
    ModBUTTON: TToolButton;
    ReloadBUTTON: TToolButton;
    PreviewBUTTON: TToolButton;
    ExportAVSBUTTON: TToolButton;
    Separator2BUTTON: TToolButton;
    GroupBox1: TGroupBox;
    Generuj: TAction;
    Preview: TAction;
    SaveAVS: TAction;
    PreviewMENU: TMenuItem;
    ExportAVSMENU: TMenuItem;
    Save: TAction;
    ClipPOPUP: TPopupActionBar;
    AddPOPUP: TMenuItem;
    ModPOPUP: TMenuItem;
    N4: TMenuItem;
    RemovePOPUP: TMenuItem;
    SaveAsMENU: TMenuItem;
    procedure PreviewMENUClick(Sender: TObject);
    procedure ExportAVSMENUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReloadMENUClick(Sender: TObject);
    procedure SaveAsMENUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RemovePOPUPClick(Sender: TObject);
    procedure ModPOPUPClick(Sender: TObject);
    procedure AddPOPUPClick(Sender: TObject);
    procedure ModBUTTONClick(Sender: TObject);
    procedure RemoveBUTTONClick(Sender: TObject);
    procedure AddBUTTONClick(Sender: TObject);
    procedure SaveExecute(Sender: TObject);
    procedure SaveBUTTONClick(Sender: TObject);
    procedure OpenBUTTONClick(Sender: TObject);
    procedure NewBUTTONClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SaveAVSExecute(Sender: TObject);
    procedure PreviewExecute(Sender: TObject);
    procedure GenerujExecute(Sender: TObject);
    procedure ExportAVSBUTTONClick(Sender: TObject);
    procedure PreviewBUTTONClick(Sender: TObject);
    procedure ReloadBUTTONClick(Sender: TObject);
    procedure UpBUTTONClick(Sender: TObject);
    procedure DownBUTTONClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SettingsMENUClick(Sender: TObject);
    procedure RemoveMENUClick(Sender: TObject);
    procedure RemoveExecute(Sender: TObject);
    procedure AutorMENUClick(Sender: TObject);
    procedure AboutMENUClick(Sender: TObject);
    procedure ReloadExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExitMENUClick(Sender: TObject);
    procedure SaveMENUClick(Sender: TObject);
    procedure OpenMENUClick(Sender: TObject);
    procedure NewMENUClick(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure OpenExecute(Sender: TObject);
    procedure ClearExecute(Sender: TObject);
    procedure addClipExecute(Sender: TObject);
    procedure AddMENUClick(Sender: TObject);
    procedure SrcListDblClick(Sender: TObject);
    procedure ModClipExecute(Sender: TObject);
    procedure ModMENUClick(Sender: TObject);
  private
    { Private declarations }
    DGDecode, SimpleResize : boolean;
    procedure WMDropFiles (hDrop : THandle; hWindow : HWnd);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
    temp, plik, title,  previewavs , NazwaProgramu: string;
    function ExecuteAndWait(const aCmdLine: string; Hidden, doWait: Boolean): Boolean;
    function Kompiluj(clip , Plik_INI: string; Info : Shortint) : TCaption;
    function LoadPlugin(clip, Plik_INI : string) : TCaption;
    procedure SerchPlugins(clip, Plik_INI : string);
  end;

var
  Form1: TForm1;
const
  APP_EXT = '.avp';

implementation

uses Unit2, Unit3, ABOUT;

{$R *.dfm}

// Funkcje
function TForm1.ExecuteAndWait(const aCmdLine: string; Hidden,
doWait: Boolean): Boolean;
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  CreationFlag: DWORD;
begin
  {setup the startup information for the application }
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  with StartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
    if Hidden then
    begin
      wShowWindow := SW_SHOWMINNOACTIVE;
      CreationFlag := IDLE_PRIORITY_CLASS;
    end
    else
    begin
      wShowWindow := SW_SHOWNORMAL;
      CreationFlag := NORMAL_PRIORITY_CLASS;
    end;
  end;
  Result := CreateProcess(nil, PChar(aCmdLine), nil, nil, False,
    CreationFlag, nil, nil, StartupInfo, ProcessInfo);
  if doWait then
    if Result then
    begin
//      EncoderProcess := ProcessInfo;
      WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
      WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    end;
end;
function ColorToValue(color : string; RGB: char):string;
{
funkcja przyjmuje wartość koloru jako clRed lub $11223344
oraz odczytuje każdą z osobna wertość RGB
}
begin
  RGB:=UpCase(RGB);
  case RGB of
  'R' : result:=IntToStr( GetRvalue (StringToColor(color) ) );
  'G' : result:=IntToStr( GetGvalue (StringToColor(color) ) );
  'B' : result:=IntToStr( GetBvalue (StringToColor(color) ) );
  else
  result:='error';
  end;
end;
function ColorToRGB(color : string; symbol : char): string;
var
r,g,b : integer;
begin
r:=GetRvalue (StringToColor(color));
g:=GetGvalue (StringToColor(color));
b:=GetBvalue (StringToColor(color));
result := (symbol + IntToHex(r,2) + IntToHex(g,2) + IntToHex(b,2));
end;







procedure TForm1.SerchPlugins(clip, Plik_INI : string);
var
  f:TIniFile;
begin
DGDecode    :=false;
SimpleResize:=false;

f:= TIniFile.Create(Plik_INI);

if
UpperCase(ExtractFileExt(ExtractFileName(f.ReadString(clip,'plik', ''))))='.D2V'
then DGDecode:=true;

if f.ReadInteger(clip,'Rozdzielczosc',-1)=4 then SimpleResize:=true;

f.Free;


end;




function TForm1.LoadPlugin(clip, Plik_INI : string) : TCaption;
var
  wynik : TCaption;
begin
  Wynik:='';//'fatal error'+Chr(13) + Chr(10);
  if DGDecode then
    wynik := wynik +(
    'LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'DGDecode.dll')+'")'
  )+Chr(13) + Chr(10);

  if SimpleResize then
    wynik := wynik +(
    'LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'SimpleResize.dll'
  )+'")')+Chr(13) + Chr(10);

  wynik := wynik +(
    'LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'UnDot.dll')+'")'
  )+Chr(13) + Chr(10);

  result:=wynik;
end;
function TForm1.Kompiluj(clip , Plik_INI: string; Info : Shortint) : TCaption;
var
  Ini  : TIniFile;
  SourceType, NazwaKlipu, select, x, y : string; // Wczytywanie
  Rozdzielczosc, BicubicParam, topm, topp, leftm, leftp : string;
  TrimFirstFrame, TrimLastFrame : integer;
  rightm, rightp, bottomm, bottomp, SelectEveryFrame : string;
  ConvertTo, InvertRGB : string; // obraz
  hue, sat, bright, cont, coring : string; // TWEAK
  Normalize_Volume, Normalize_Show, ssrcFast : string;
  ssrc : boolean;
  H, V, HeqV : string;
  wynik : TCaption;
begin
  wynik:='';
  Ini := TIniFile.Create(Plik_INI);
//======================= Wczytywanie
  if Ini.ReadInteger(clip,'SourceType',1)=0 then SourceType:='AviSource';
  if Ini.ReadInteger(clip,'SourceType',1)=1 then SourceType:='MPEG2Source';
  if Ini.ReadInteger(clip,'SourceType',1)=2 then SourceType:='Import';

  NazwaKlipu:=Ini.ReadString(clip,'plik', 'Null');
  wynik:=wynik+(
    clip + ' = ' + SourceType + '("' + NazwaKlipu + '")'
  )+Chr(13) + Chr(10);

 if Ini.ReadBool( clip,'KillAudio',false) = true then
 wynik:=wynik+( clip + ' = KillAudio('+clip+')' )+Chr(13) + Chr(10)
 else if Ini.ReadBool( clip, 'EnsureVBRMP3Sync',false)=true then
 wynik:=wynik+( clip + ' = EnsureVBRMP3Sync('+clip+')' )+Chr(13) + Chr(10);

// ------------------ Invert

InvertRGB:='';
if Ini.ReadBool( clip, 'InvertRed', false)=true then InvertRGB:=InvertRGB+'R';
if Ini.ReadBool( clip, 'InvertGreen', false)=true then InvertRGB:=InvertRGB+'G';
if Ini.ReadBool( clip, 'InvertBlue', false)=true then InvertRGB:=InvertRGB+'B';
if InvertRGB<>'' then
begin
wynik:=wynik+( clip + ' = ConvertToRGB('+clip+')' )+Chr(13)+Chr(10);
wynik:=wynik+( clip + ' = Invert('+clip+' , "'+InvertRGB+'")' )+Chr(13)+Chr(10);
end;


// --------------------- ConvertTo
    if Ini.ReadInteger(clip,'ConvertTo',0)<>0 then
    begin
    if Ini.ReadInteger(clip,'ConvertTo',0)=1 then ConvertTo:='ConvertToRGB';
    if Ini.ReadInteger(clip,'ConvertTo',0)=2 then ConvertTo:='ConvertToRGB24';
    if Ini.ReadInteger(clip,'ConvertTo',0)=3 then ConvertTo:='ConvertToRGB32';
    if Ini.ReadInteger(clip,'ConvertTo',0)=4 then ConvertTo:='ConvertToYUY2';
    if Ini.ReadInteger(clip,'ConvertTo',0)=5 then ConvertTo:='ConvertToYV12';

  wynik:=wynik+(
    clip + ' = '+ConvertTo+'('+clip+' , '+ 'interlaced=false'  +')'
  )+Chr(13) + Chr(10);

    end;

// --------------------- Zmiana FPS
  if Ini.ReadString(clip, 'new_fps', 'null')<>'null' then
  if Ini.ReadString(clip, 'new_fps', 'null')<>Ini.ReadString(clip,'fps', 'null')
  then wynik :=wynik+(
    clip+' = ChangeFPS('+clip+' , '+Ini.ReadString(clip,'new_fps','null') + ')'
  )+Chr(13) + Chr(10);

//---------------------- select

if Ini.ReadInteger(clip, 'Select', 0)=0 then select:='SelectAll';
if Ini.ReadInteger(clip, 'Select', 0)=1 then select:='SelectEven';
if Ini.ReadInteger(clip, 'Select', 0)=2 then select:='SelectOdd';
if Ini.ReadInteger(clip, 'Select', 0)=3 then select:='SelectEvery';
SelectEveryFrame:=Ini.ReadString(clip, 'SelectEveryFrame', '1');

if select<>'SelectAll' then
  if select<>'SelectEvery' then
    wynik:=wynik+(clip + ' = '+Select+'('+clip+')')+Chr(13) + Chr(10)
  else
    wynik:=wynik+(
      clip + ' = '+Select+'('+clip+' , '+SelectEveryFrame+')'
    )+Chr(13) + Chr(10);

// --------------------- Cięcie

  TrimFirstFrame:=Ini.ReadInteger( clip, 'trim_first_frame', 0);
  TrimLastFrame :=Ini.ReadInteger( clip, 'trim_last_frame' , 0);

  if (Info<=0) then
  if TrimFirstFrame < TrimLastFrame
  then
  wynik:=wynik+(
  clip + ' = Trim('+clip+', '+
             IntToStr(TrimFirstFrame) + ', ' + IntToStr(TrimLastFrame) + ')'
  )+Chr(13) + Chr(10);

// ------------------ FadeIn
if Ini.ReadInteger( clip, 'FadeInFrames', 0)<>0 then
  wynik:=wynik+(
  clip + ' = FadeIn2('+clip+', '+
           Ini.ReadString( clip, 'FadeInFrames', '0')+', '+
           ColorToRGB (Ini.ReadString( clip, 'FadeInColor', '$000000'), '$')+')'
  )+Chr(13) + Chr(10);

//------------------- FadeOut
if Ini.ReadInteger( clip, 'FadeOutFrames', 0)<>0 then
  wynik:=wynik+(
  clip + ' = FadeOut2('+clip+', '+
           Ini.ReadString( clip, 'FadeOutFrames', '0')+', '+
           ColorToRGB (Ini.ReadString(clip, 'FadeOutColor', '$000000'), '$')+')'
  )+Chr(13) + Chr(10);



// ========================= Blur

if (ini.ReadInteger( clip , 'AmountH', 0)<>0)
OR (ini.ReadInteger( clip , 'AmountV', 0)<>0)
then begin
  if Ini.ReadBool(clip, 'HexV', true) then HeqV:='true' else HeqV:='false';
  H := FormatFloat('0.00', ini.ReadFloat( clip, 'AmountH', 0)/100);
  V := FormatFloat('0.00', ini.ReadFloat( clip, 'AmountV', 0)/100);
  wynik := wynik + ( clip + ' = Blur('+clip+', '+H+', '+V+')')+Chr(13)+Chr(10);
end;

// ========================== TWEAK Jasność, kontrast, nasycenie

if (Ini.ReadInteger( clip, 'hueTRACKBAR',0)  <> 0)
OR (Ini.ReadInteger( clip, 'brightTRACKBAR',0)<> 0)
OR (Ini.ReadInteger( clip, 'satTRACKBAR',1)   <> 10)
OR (Ini.ReadInteger( clip, 'contTRACKBAR',1)  <> 10)
then begin
hue    := Ini.ReadString( clip, 'hueTRACKBAR','0');
bright := Ini.ReadString( clip, 'brightTRACKBAR','0');
sat   := FormatFloat('0.0',Ini.ReadFloat( clip, 'satTRACKBAR',1)/10);
cont  := FormatFloat('0.0',Ini.ReadFloat( clip, 'contTRACKBAR',1)/10);

if Ini.ReadBool( clip, 'coringCHECKBOX', false)
then coring:='true' else coring:='false';
  wynik:= wynik +(
  clip+' = Tweak('+clip+', '+hue+', '+sat+', '+bright+', '+cont+', '+coring+')'
  )+Chr(13) + Chr(10);
end;


//====================== Rozdzielczość

    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=0 then
      Rozdzielczosc:='BilinearResize';
    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=1 then
    begin
      Rozdzielczosc:='BicubicResize';
      BicubicParam:=',0.333,0.333';
    end;
    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=2 then
      begin Rozdzielczosc:='BicubicResize';
      BicubicParam:=',0,0.5';
    end;
    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=3 then
    begin
      Rozdzielczosc:='BicubicResize';
      BicubicParam:=',0,0.75';
    end;
    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=4 then
      Rozdzielczosc:='SimpleResize';
    if Ini.ReadInteger(clip,'Rozdzielczosc',-1)=5 then
      Rozdzielczosc:='Lanczos4Resize ';


  x:=Ini.ReadString(clip,'x', '0');
  y:=Ini.ReadString(clip,'y', '0');

  begin
  if Rozdzielczosc='BicubicResize' then
  wynik:=wynik+(
  clip+' = '+Rozdzielczosc+'('+clip+' , '+x+' , '+y+BicubicParam+ ')'
  )+Chr(13) + Chr(10)
  else
  wynik:=wynik+(
  clip+' = '+Rozdzielczosc+'('+clip+' , '+x+' , '+y+')'
  )+Chr(13) + Chr(10);
  end;

  wynik:=wynik+(
  clip + ' = ' + 'UnDot' + '(' + clip + ')'
  )+Chr(13) + Chr(10);

// ------------------------ Obramowanie
  topm   := Ini.ReadString(clip, 'topm',    '0');
  topp   := Ini.ReadString(clip, 'topp',    '0');
  leftm  := Ini.ReadString(clip, 'leftm',   '0');
  leftp  := Ini.ReadString(clip, 'leftp',   '0');
    rightm := IntToStr( -Ini.ReadInteger(clip, 'rightm',  0));
  rightp := Ini.ReadString(clip, 'rightp',  '0');
    bottomm:= IntToStr( -Ini.ReadInteger(clip, 'bottomm', 0));
  bottomp:= Ini.ReadString(clip, 'bottomp', '0');

// --------------------- Crop

  IF (topm    <>'0')
  OR (leftm   <>'0')
  OR (rightm  <>'0')
  OR (bottomm <>'0')
  THEN begin
  wynik:=wynik+(
  clip + ' = Crop('+clip+', '+leftm+', '+topm+', '+rightm+', '+bottomm+')'
  )+Chr(13) + Chr(10);
  end;


// --------------------- AddBorders

  IF (topp    <>'0')
  OR (leftp   <>'0')
  OR (rightp  <>'0')
  OR (bottomp <>'0')
  THEN
  wynik:=wynik+(
  clip + ' = AddBorders('+clip+', '+leftp+', '+topp+', '+rightp+', '+bottomp+')'
  )+Chr(13) + Chr(10);


if Ini.ReadBool( clip, 'FlipH', false)=true then
wynik:=wynik+( clip + ' = FlipHorizontal('+clip+')' )+Chr(13) + Chr(10);
if Ini.ReadBool( clip, 'FlipV', false)=true then
wynik:=wynik+( clip + ' = FlipVertical('+clip+')' )+Chr(13) + Chr(10);
if Ini.ReadBool( clip, 'TurnLeft', false)=true then
wynik:=wynik+( clip + ' = TurnLeft('+clip+')' )+Chr(13) + Chr(10);
if Ini.ReadBool( clip, 'TurnRight', false)=true then
wynik:=wynik+( clip + ' = TurnRight('+clip+')' )+Chr(13) + Chr(10);
if Ini.ReadBool( clip, 'Greyscale', false)=true then
wynik:=wynik+( clip + ' = Greyscale('+clip+')' )+Chr(13) + Chr(10);
if Ini.ReadBool( clip, 'Reverse', false)=true then
wynik:=wynik+( clip + ' = Reverse('+clip+')' )+Chr(13) + Chr(10);


if NOT Ini.ReadBool( clip,'KillAudio',false) = true then
begin

if Ini.ReadBool( clip,    'Normalize', false)=true then
begin
  Normalize_Volume:=', '
  +FormatFloat('0.00',Ini.ReadInteger( clip,'Normalize_Volume', 100)/100);

  if Ini.ReadBool( clip,'Normalize_Show', false)=true then
    Normalize_Show:=', true' else Normalize_Show:='';

  wynik:=wynik+(
    clip + ' = Normalize ('+clip+Normalize_Volume+Normalize_Show+')'
  )+Chr(13) + Chr(10);
end;


case Ini.ReadInteger( clip,'Chanels',0) of
1: wynik:=wynik+( clip + ' = ConvertToMono('+clip+')' )+Chr(13) + Chr(10);
2: wynik:=wynik+( clip + ' = GetLeftChannel('+clip+')' )+Chr(13) + Chr(10);
3: wynik:=wynik+( clip + ' = GetRightChannel('+clip+')' )+Chr(13) + Chr(10);
4: wynik:=wynik+( clip + ' = GetChannel('+clip+',1,2)' )+Chr(13) + Chr(10);
end;


case Ini.ReadInteger( clip,'Precision',0) of
1: wynik:=wynik+( clip + ' = ConvertAudioTo8bit('+clip+')'  )+Chr(13) + Chr(10);
2: wynik:=wynik+( clip + ' = ConvertAudioTo16bit('+clip+')' )+Chr(13) + Chr(10);
3: wynik:=wynik+( clip + ' = ConvertAudioTo24bit('+clip+')' )+Chr(13) + Chr(10);
4: wynik:=wynik+( clip + ' = ConvertAudioTo32bit('+clip+')' )+Chr(13) + Chr(10);
5: wynik:=wynik+( clip + ' = ConvertAudioToFloat('+clip+')' )+Chr(13) + Chr(10);
end;


ssrc:=true;
if (Ini.ReadString( clip,'ssrc','Bez zmian')<>'Bez zmian') then
if (Ini.ReadString( clip,'ssrc','Bez zmian')<>Form3.NoChangeSTRING) then
begin
  try StrToInt(Ini.ReadString(clip,'ssrc','Bez zmian'));except ssrc:=false; end;
  if ssrc then
  begin
    if Ini.ReadBool( clip,'ssrcFast',false)=true then
      ssrcFast:='' else ssrcFast:=', false';

    wynik:=wynik+(
      clip+' = SSRC('+clip+', '+Ini.ReadString( clip,'ssrc','0')+ssrcFast+')'
    )+Chr(13) + Chr(10);
  end;
end;

end;
  ini.Free;
  result := wynik;

end;
// Action List
procedure TForm1.ClearExecute(Sender: TObject);
begin
with Form2 do
begin
CanShowScript:=false;
// Cięcie
TrackBar1.Position:=0;
TrackBar1.SelStart:=0;
TrackBar1.SelEnd:=0;
trim_first_frame:=0;
trim_last_frame:=0;
// Wczytywanie
ClipName.Text:='';
Datei := '';
Source := '';
SourceType :=0;
SelectCOMBOBOX.ItemIndex := 0;
SelectEveryFrameSPINEDIT.Text := '1';
time.Caption := '0';
ClipWidth.Caption := '1';
ClipHeight.Caption := '1';
codec.Caption := '';
bitrate.Caption := '0';
size.Caption := '0';
fps.Caption := '0';
NewFpsCOBMOBOX.Text:='';
InfoRADIOGROUP.ItemIndex:=0;
AR.Caption := '0';
frames.Caption := '0';
FadeInControl.Position:=0;
FadeOutControl.Position:=0;
FadeInControl.Max:=0;
FadeOutControl.Max:=0;
FadeInColor.Brush.Color:=clBlack;
FadeOutColor.Brush.Color:=clBlack;
// Rozdzielczość
BlockWidthCOMBOBOX.Text:='8';
BlockHeightCOMBOBOX.Text:='8';
Edit5.Text:='1';
Edit6.Text:='1';
ResizeRADIOGROUP.ItemIndex:=0;
HzoomEDIT.Text:='0 %';
VzoomEDIT.Text:='0 %';
topmControl.Position :=0;
toppControl.Position:=0;
leftmControl.Position:=0;
leftpControl.Position:=0;
rightmControl.Position:=0;
rightpControl.Position:=0;
bottommControl.Position:=0;
bottompControl.Position:=0;
ARErrEDIT.Text:='0 %';
Tab.ActivePageIndex:=0;
PageControl.ActivePageIndex:=0;
Image1.Picture:=nil;
StaraNazwa:='';
ARRADIOGROUP.ItemIndex:=0;
// Obraz
ConvertToRADIOGROUP.ItemIndex:=0;
FlipHCHECKBOX.Checked:=false;
FlipVCHECKBOX.Checked:=false;
TurnLeftCHECKBOX.Checked:=false;
TurnRightCHECKBOX.Checked:=false;
GreyscaleCHECKBOX.Checked:=false;
InvertRedCHECKBOX.Checked:=false;
InvertGreenCHECKBOX.Checked:=false;
InvertBlueCHECKBOX.Checked:=false;
ReverseCHECKBOX.Checked:=false;
// ostrość
AmountHTRACKBAR.Position :=  0;
AmountVTRACKBAR.Position :=  0;
HeqVCHECKBOX.Checked     :=  true;
// Jasność, kontrast, nasycenie
hueTRACKBAR.Position     := 0;
satTRACKBAR.Position     := 10;
brightTRACKBAR.Position  := 0;
contTRACKBAR.Position    := 10;
coringCHECKBOX.Checked   := true;
// Dźwięk
NormalizeCHECKBOX.Checked:=false;
NormalizeShowCHECKBOX.Checked:=false;
NormalizeTRACKBAR.Position:=100;
ChanelsRADIOGROUP.ItemIndex:=0;
PrecisionRADIOGROUP.ItemIndex:=0;
//ssrcRADIOGROUP.ItemIndex:=0;
ssrcCOMBOBOX.ItemIndex:=0;
ssrcFastCHECKBOX.Checked:=true;
EnsureVBRMP3SyncCHECKBOX.Checked:=false;
KillAudioCHECKBOX.Checked:=false;
StatusBar.Panels.Items[0].Text:='0x0';
StatusBar.Panels.Items[1].Text:='0fps';
StatusBar.Panels.Items[2].Text:='0 '+ofSTRING+' 0';
ScriptMEMO.Clear;
CanShowScript:=true;
end;
end;
procedure TForm1.addClipExecute(Sender: TObject);
begin
Clear.Execute;
Form2.LoadFileBUTTON.Click;
if Form2.OpenDialog1.FileName='' then exit;
Form1.Enabled:=false;
Form2.visible:=true;
end;
procedure TForm1.ModClipExecute(Sender: TObject);
var
INI : TIniFile;
begin
if SrcList.ItemIndex = -1 then Exit;
Clear.Execute;

Form2.visible:=true;
Ini := TIniFile.Create(temp);

With Form2 do
begin
// Wczytywanie
ClipName.Text:=(SrcList.Items.Strings[SrcList.ItemIndex]);
StaraNazwa:=ClipName.Text;
TrackBar1.Position:=Ini.ReadInteger(ClipName.Text, 'pozycja', 0);

  // Cięcie
TrackBar1.SelStart:=Ini.ReadInteger(ClipName.Text,'trim_first_frame',0);
TrackBar1.SelEnd  :=Ini.ReadInteger(ClipName.Text,'trim_last_frame' ,0);
trim_first_frame  :=Ini.ReadInteger(ClipName.Text,'trim_first_frame',0);
trim_last_frame   :=Ini.ReadInteger(ClipName.Text,'trim_last_frame' ,0);

Datei := Ini.ReadString( ClipName.Text, 'plik', '');
Source := Ini.ReadString( ClipName.Text, 'source', '');

SourceType := Ini.ReadInteger( ClipName.Text, 'SourceType', 0);

SelectCOMBOBOX.ItemIndex  := Ini.ReadInteger(ClipName.Text, 'Select', 0);
SelectEveryFrameSPINEDIT.Text:=Ini.ReadString(ClipName.Text,'SelectEveryFrame','1');

time.Caption := Ini.ReadString ( ClipName.Text, 'time', '0');
ClipWidth.Caption := Ini.ReadString ( ClipName.Text, 'width', '0');
ClipHeight.Caption := Ini.ReadString ( ClipName.Text, 'height', '0');
codec.Caption := Ini.ReadString ( ClipName.Text, 'codec', 'unknown');
bitrate.Caption := Ini.ReadString ( ClipName.Text, 'bitrate', '0');
size.Caption := Ini.ReadString ( ClipName.Text, 'size', '0');
fps.Caption := Ini.ReadString ( ClipName.Text, 'fps', '0');
NewFpsCOBMOBOX.Text := Ini.ReadString( ClipName.Text, 'new_fps', 'bez zmian');
AR.Caption := Ini.ReadString ( ClipName.Text, 'AR', '0');
frames.Caption := Ini.ReadString ( ClipName.Text, 'frames', '0');

StatusBar.Panels.Items[0].Text:=  ClipWidth.Caption+'x'+  ClipHeight.Caption;
StatusBar.Panels.Items[1].Text:=  fps.Caption+'fps';
StatusBar.Panels.Items[2].Text:=IntToStr(TrackBar1.Position)+' '+ofSTRING+' '+frames.Caption;

FadeInControl.Max:=StrToInt(frames.Caption);
FadeInControl.Position:=FadeInControl.Position+Ini.ReadInteger( ClipName.Text, 'FadeInFrames', 0);
FadeInColor.Brush.Color:=StringToColor(Ini.ReadString(ClipName.Text,'FadeInColor','$000000'));

FadeOutControl.Max:=StrToInt(frames.Caption);
FadeOutControl.Position:=FadeOutControl.Position+Ini.ReadInteger(ClipName.Text,'FadeOutFrames',0);
FadeOutColor.Brush.Color:=StringToColor(Ini.ReadString(ClipName.Text,'FadeOutColor','$000000'));

// Rozdzielczość
BlockWidthCOMBOBOX.Text:=INI.ReadString(ClipName.Text,'SzerokoscBloku', '8');
BlockHeightCOMBOBOX.Text:=INI.ReadString(ClipName.Text,'WysokoscBloku', '8');
Edit5.Text:=INI.ReadString(ClipName.Text,'x', '0');
Edit6.Text:=INI.ReadString(ClipName.Text,'y', '0');
ResizeRADIOGROUP.ItemIndex:=INI.ReadInteger(ClipName.Text, 'Rozdzielczosc', 0);

topmControl.Position:=topmControl.Position+Ini.ReadInteger(ClipName.Text,'topm',0);
toppControl.Position:=toppControl.Position+Ini.ReadInteger(ClipName.Text,'topp',0);
leftmControl.Position:=leftmControl.Position+ini.ReadInteger(ClipName.Text,'leftm',0);
leftpControl.Position:=leftpControl.Position+Ini.ReadInteger(ClipName.Text,'leftp',0);
rightmControl.Position:=rightmControl.Position+INI.ReadInteger(ClipName.Text,'rightm',0);
rightpControl.Position:=rightpControl.Position+Ini.ReadInteger(ClipName.Text,'rightp',0);
bottommControl.Position:=bottommControl.Position+Ini.ReadInteger(ClipName.Text,'bottomm',0);
bottompControl.Position:=bottompControl.Position+Ini.ReadInteger(ClipName.Text,'bottomp',0);
ARErrEDIT.Text:= Ini.ReadString(ClipName.Text,'ARErr','0 %');
ARRADIOGROUP.ItemIndex:=INI.ReadInteger(ClipName.Text, 'Proporcje', 0);

// Obraz
ConvertToRADIOGROUP.ItemIndex:=INI.ReadInteger(ClipName.Text, 'ConvertTo', 0);


FlipHCHECKBOX.Checked      :=Ini.ReadBool( ClipName.Text, 'FlipH', false);
FlipVCHECKBOX.Checked      :=Ini.ReadBool( ClipName.Text, 'FlipV', false);
TurnLeftCHECKBOX.Checked   :=Ini.ReadBool( ClipName.Text, 'TurnLeft', false);
TurnRightCHECKBOX.Checked  :=Ini.ReadBool( ClipName.Text, 'TurnRight', false);
GreyscaleCHECKBOX.Checked  :=Ini.ReadBool( ClipName.Text, 'Greyscale', false);
InvertRedCHECKBOX.Checked  :=Ini.ReadBool( ClipName.Text, 'InvertRed', false);
InvertGreenCHECKBOX.Checked:=Ini.ReadBool( ClipName.Text, 'InvertGreen', false);
InvertBlueCHECKBOX.Checked :=Ini.ReadBool( ClipName.Text, 'InvertBlue', false);
ReverseCHECKBOX.Checked    :=Ini.ReadBool( ClipName.Text, 'Reverse', false);

// Ostrość
HeqVCHECKBOX.Checked    := Ini.ReadBool(ClipName.Text,     'HeqV', true);
AmountHTRACKBAR.Position:= Ini.ReadInteger( ClipName.Text, 'AmountH', 0);
AmountVTRACKBAR.Position:= Ini.ReadInteger( ClipName.Text, 'AmountV', 0);
// Jasność, kontrast, nasycenie
hueTRACKBAR.Position   := Ini.ReadInteger(ClipName.Text, 'hueTRACKBAR',0);
satTRACKBAR.Position   := Ini.ReadInteger(ClipName.Text, 'satTRACKBAR',10);
brightTRACKBAR.Position:= Ini.ReadInteger(ClipName.Text, 'brightTRACKBAR',0);
contTRACKBAR.Position  := Ini.ReadInteger(ClipName.Text, 'contTRACKBAR',10);
coringCHECKBOX.Checked := Ini.ReadBool(ClipName.Text,    'coringCHECKBOX',true);
// Dźwięk
NormalizeCHECKBOX.Checked:=Ini.ReadBool(ClipName.Text,'Normalize', false);
NormalizeShowCHECKBOX.Checked:=Ini.ReadBool(ClipName.Text,'Normalize_Show',false);
NormalizeTRACKBAR.Position:=Ini.ReadInteger(ClipName.Text,'Normalize_Volume',100);
NormalizeTRACKBARChange(Form1);
ChanelsRADIOGROUP.ItemIndex := Ini.ReadInteger( ClipName.Text,'Chanels',0);
PrecisionRADIOGROUP.ItemIndex := Ini.ReadInteger( ClipName.Text,'Precision',0);
ssrcCOMBOBOX.Text:=Ini.ReadString( ClipName.Text,'ssrc','Bez zmian');
ssrcFastCHECKBOX.Checked:=  Ini.ReadBool( ClipName.Text,'ssrcFast',true);

EnsureVBRMP3SyncCHECKBOX.Checked:=Ini.ReadBool(ClipName.Text,'EnsureVBRMP3Sync',false);
KillAudioCHECKBOX.Checked := Ini.ReadBool( ClipName.Text,'KillAudio',false);
end;

INI.Free;

Form2.z2_top    := 0;
Form2.z2_bottom := 0;

Form1.Enabled:=false;
Form2.Tab.ActivePageIndex:=0;
Form2.PageControl.ActivePageIndex:=0;
Form2.PauseBUTTON.Click;

end;
procedure TForm1.PreviewExecute(Sender: TObject);
var
  MMPlayExe : string;
begin

previewavs := (ExtractFilePath(Application.ExeName)+'preview.avs');
MMPlayExe:=Form3.MediaPlayerPathEDIT.Text;

Generuj.Execute;
Memo1.Lines.SaveToFile(previewavs);

  if FileExists(MMPlayExe) AND FileExists(previewavs) then
  begin
    try
      ExecuteAndWait((ExtractShortPathName(MMPlayExe) + ' ' + ExtractShortPathName(previewavs)), false, false);
    except
      MessageDlg(PChar(Form3.UnknownErrorMESSAGE), mtError, [mbOK], 0);
    end;
  end
  else
    MessageDlg(Format(PChar(Form3.CouldNotFindMediaPlayerMESSAGE),[MMPlayExe]),mtInformation,[mbOK],0);
end;
procedure TForm1.PreviewMENUClick(Sender: TObject);
begin
Preview.Execute;
end;

procedure TForm1.ReloadExecute(Sender: TObject);
var
Ini : TIniFile;
begin
  Ini := TIniFile.Create(temp);
  if FileExists(temp) then
    Ini.ReadSections(SrcList.Items);
  Ini.Free;
  Generuj.Execute;
end;
procedure TForm1.RemoveExecute(Sender: TObject);
var
Ini : TIniFile;
begin
  if SrcList.ItemIndex<>-1 then
  begin
    if Application.MessageBox(PChar(Form3.RemoveClipMESSAGE),'AVStudio',
    MB_YESNO+MB_ICONQUESTION)=IDYES then
    begin
      Ini := TIniFile.Create(temp);
      if FileExists(temp) then
        INI.EraseSection(SrcList.Items[SrcList.ItemIndex]);
      Ini.Free;
      Reload.Execute;
    end;
  end;
end;
procedure TForm1.GenerujExecute(Sender: TObject);
var
  i : integer;
  sumaKlipow    : string;
  clip : string;
begin
Memo1.Visible:=true;
Memo1.Clear;
sumaKlipow := '';

for i:=0 to SrcList.Items.Count-1 do
begin
  clip := SrcList.Items.Strings[i];
  SerchPlugins(clip, temp);
end;
Memo1.Text:=LoadPlugin(clip, temp);

for i:=0 to SrcList.Items.Count-1 do
begin
if i <> 0 then sumaKlipow := sumaKlipow + ' ++ ';
  clip := SrcList.Items.Strings[i];
  Memo1.Text:=Memo1.Text+Kompiluj(clip, temp, 0);
  sumaKlipow := SumaKlipow + clip;
end;
memo1.Lines.Add('return ' + sumaKlipow);
end;
procedure TForm1.NewExecute(Sender: TObject);
var TPlik: TextFile;
begin

SaveDialog2.FileName:='';
SaveDialog2.Execute;
if SaveDialog2.FileName<>'' then
begin
if FileExists(SaveDialog2.FileName) then
  if Application.MessageBox(PChar(Form3.FileOverwriteMESSAGE),'AVStudio',
    MB_YESNO+MB_ICONQUESTION)=IDYES then DeleteFile(SaveDialog2.FileName) else Exit;

  plik:=SaveDialog2.FileName;

  AssignFile(TPlik, plik);
  Rewrite(TPlik);
  CloseFile(TPlik);

  deletefile(temp);
  copyfile(PChar(plik),PChar(temp), true);

  Form1.Caption:=NazwaProgramu + ' - ' + ExtractFileName(OpenDialog1.FileName);


end;
Reload.Execute;
end;
procedure TForm1.SaveExecute(Sender: TObject);
begin

if plik<>'' then
begin
  DeleteFile(PChar(plik));
  if (copyfile(PChar(temp),PChar(plik),true)=false)
  then ShowMessage('Cannot overwrite');
end else SaveAsMENU.Click;

end;
procedure TForm1.SaveAsMENUClick(Sender: TObject);
begin
  SaveDialog2.FileName:='';
  SaveDialog2.Execute;
  if SaveDialog2.FileName<>'' then
  begin
  if FileExists(SaveDialog2.FileName) then
    if Application.MessageBox(PChar(Form3.FileOverwriteMESSAGE),'AVStudio',
    MB_YESNO+MB_ICONQUESTION)=IDYES then DeleteFile(SaveDialog2.FileName) else Exit;
    plik:=SaveDialog2.FileName;
    copyfile(PChar(temp),PChar(plik),true);
    Form1.Caption:=NazwaProgramu+' - '+ExtractFileName(SaveDialog2.FileName);
  end;
end;
procedure TForm1.SaveAVSExecute(Sender: TObject);
begin
SaveDialog1.FileName:='';
SaveDialog1.Execute;
if SaveDialog1.FileName<>'' then
Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;
procedure TForm1.OpenExecute(Sender: TObject);
begin
OpenDialog1.FileName:='';
OpenDialog1.Execute();
if (OpenDialog1.FileName<>'') AND FileExists(OpenDialog1.FileName) then
begin
plik:=OpenDialog1.FileName;
deletefile(temp);
copyfile(PChar(plik),PChar(temp), true);
Form1.Caption:=NazwaProgramu + ' - ' + ExtractFileName(OpenDialog1.FileName);
end else if (OpenDialog1.FileName<>'') then ShowMessage(Form3.NoFileMESSAGE);
         

end;
// FORM
procedure TForm1.FormShow(Sender: TObject);
begin
plik:='';
OpenDialog1.Filter:='AVStudio file|*'+APP_EXT;
SaveDialog2.Filter:='AVStudio file|*'+APP_EXT;

DecimalSeparator:='.';
temp:=(ExtractFilePath(Application.ExeName)+FormatDateTime('yymmddhhmm',now)+APP_EXT);
//Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo.gif');
Form1.Caption:=NazwaProgramu+' - '+title;
end;
procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin                     
case Application.MessageBox(PChar(Form3.SaveChangesMESSAGE),'AVStudio',
MB_YESNOCANCEL+MB_ICONQUESTION) of
IDYES    : Save.Execute;
IDNO     : CanClose:=true;
IDCANCEL : CanClose:=false;
end;
if (Form1.Enabled=false) AND (CanClose=true) then try Form2.ap.free; except end;
end;
procedure TForm1.WMDropFiles (hDrop : THandle; hWindow : HWnd);
Var
  TotalNumberOfFiles,
  nFileLength : Integer;
  pszFileName : PChar;
  i : Integer;
Begin
  TotalNumberOfFiles := DragQueryFile (hDrop , $FFFFFFFF, Nil, 0);

  for i := 0 to TotalNumberOfFiles - 1 do begin
    nFileLength := DragQueryFile (hDrop, i , Nil, 0) + 1;
    GetMem (pszFileName, nFileLength);
    DragQueryFile (hDrop , i, pszFileName, nFileLength);

    if ExtractFileExt(pszFileName)=APP_EXT then
    begin
      plik:=pszFileName;
      deletefile(temp);
      copyfile(PChar(plik),PChar(temp), true);
      Form1.Caption:=NazwaProgramu + ' - ' + ExtractFileName(pszFileName);
      Reload.Execute;
    end;

    if (UpperCase(ExtractFileExt(pszFileName))=('.AVI'))
    OR (UpperCase(ExtractFileExt(pszFileName))=('.DIVX'))
    OR (UpperCase(ExtractFileExt(pszFileName))=('.D2V'))
    OR (UpperCase(ExtractFileExt(pszFileName))=('.AVS'))
    then begin
      Clear.Execute;
      Form2.LoadFile(pszFileName);
      Form1.Enabled:=false;
      Form2.visible:=true;
    end;
    

    FreeMem (pszFileName, nFileLength);
  end;

  DragFinish (hDrop);
end; //sprawdzamy co zostało przeciągnięte i obsługujemy to
procedure TForm1.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
  case Msg.Message of
    WM_DROPFILES :  WMDropFiles (Msg.wParam, Msg.hWnd);
  end;
end; //obsługujemy komunikat WM_DROPFILES
procedure TForm1.FormCreate(Sender: TObject);
begin
  NazwaProgramu := 'AVStudio 1.0 beta';
  Application.OnMessage := AppMessage;
  DragAcceptFiles (Handle, True);

end;
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if FileExists(temp)          then DeleteFile(temp);
      if FileExists(Form2.testavs) then DeleteFile(Form2.testavs);
      if FileExists(Form2.testini) then DeleteFile(Form2.testini);
      if FileExists(previewavs)    then DeleteFile(previewavs);
DragAcceptFiles (Handle, False);
end;
procedure TForm1.FormResize(Sender: TObject);
begin
DownBUTTON.Top:=Round((Form1.Height-GroupBox1.Top)/2)- 2*DownBUTTON.Height;
UpBUTTON.Top:=Round((Form1.Height-GroupBox1.Top)/2)- 4*UpBUTTON.Height;
end;
// Main Menu
procedure TForm1.SettingsMENUClick(Sender: TObject);
begin
Form1.Enabled:=false;
Form3.Show;
end;
procedure TForm1.AboutMENUClick(Sender: TObject);
begin
ShowMessage('AVStudio');
end;
procedure TForm1.NewMENUClick(Sender: TObject);
begin
New.Execute;
Reload.Execute;
end;
procedure TForm1.ExitMENUClick(Sender: TObject);
begin
Close;
end;
procedure TForm1.SaveMENUClick(Sender: TObject);
begin
Save.Execute;
Reload.Execute;
end;
procedure TForm1.OpenMENUClick(Sender: TObject);
begin
Open.Execute;
Reload.Execute;
end;
procedure TForm1.RemoveMENUClick(Sender: TObject);
begin
Remove.Execute;
end;
procedure TForm1.ModMENUClick(Sender: TObject);
begin
ModClip.Execute;
end;
procedure TForm1.AddMENUClick(Sender: TObject);
begin
Form1.addClip.Execute;
end;
procedure TForm1.AutorMENUClick(Sender: TObject);
begin
AboutBox.Show;
Form1.Enabled:=false;
end;
procedure TForm1.ReloadMENUClick(Sender: TObject);
begin
Reload.Execute;
end;
// TOOL BUTTON
procedure TForm1.ExportAVSBUTTONClick(Sender: TObject);
begin
SaveAVS.Execute;
end;
procedure TForm1.ExportAVSMENUClick(Sender: TObject);
begin
SaveAVS.Execute;
end;

procedure TForm1.NewBUTTONClick(Sender: TObject);
begin
New.Execute;
//Reload.Execute;
end;
procedure TForm1.OpenBUTTONClick(Sender: TObject);
begin
Open.Execute;
Reload.Execute;
end;
procedure TForm1.SaveBUTTONClick(Sender: TObject);
begin
Save.Execute;
Reload.Execute;
end;
procedure TForm1.AddBUTTONClick(Sender: TObject);
begin
addClip.Execute;
end;
procedure TForm1.RemoveBUTTONClick(Sender: TObject);
begin
Remove.Execute;
end;
procedure TForm1.ModBUTTONClick(Sender: TObject);
begin
ModClip.Execute;
end;
procedure TForm1.ReloadBUTTONClick(Sender: TObject);
begin
Generuj.Execute;
end;
procedure TForm1.PreviewBUTTONClick(Sender: TObject);
begin
Preview.Execute;
end;
// Lista Klipów
procedure TForm1.DownBUTTONClick(Sender: TObject);
begin
if (SrcList.ItemIndex<>SrcList.Items.Count-1) then
try SrcList.Items.Exchange(SrcList.ItemIndex, SrcList.ItemIndex+1);except end;
end;
procedure TForm1.UpBUTTONClick(Sender: TObject);
begin
if (SrcList.ItemIndex<>0) then
try SrcList.Items.Exchange(SrcList.ItemIndex, SrcList.ItemIndex-1);except end;
end;
procedure TForm1.SrcListDblClick(Sender: TObject);
begin
ModClip.Execute;
end;
// PopUp
procedure TForm1.AddPOPUPClick(Sender: TObject);
begin
addClip.Execute;
end;
procedure TForm1.ModPOPUPClick(Sender: TObject);
begin
ModClip.Execute;
end;
procedure TForm1.RemovePOPUPClick(Sender: TObject);
begin
Remove.Execute;
end;

end.
