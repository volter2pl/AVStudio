unit Unit2;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, IniFiles, ShellAPI, Messages, Dialogs,
  ShlObj, ActnList, MediaInfoDll, ImgList, AVI, ExtDlgs, Spin, D2VInfo;

type
  TForm2 = class(TForm)
    LeftPANEL: TPanel;
    Panel2: TPanel;
    Tab: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    OK: TButton;
    CancelBtn: TButton;
    ClipName: TEdit;
    time: TLabel;
    TrackBar1: TTrackBar;
    PlayBUTTON: TButton;
    ConvertToRADIOGROUP: TRadioGroup;
    TabSheet2: TTabSheet;
    CropGROUPBOX: TGroupBox;
    rightmControl: TUpDown;
    leftmControl: TUpDown;
    topmControl: TUpDown;
    bottommControl: TUpDown;
    leftm: TEdit;
    bottomm: TEdit;
    topm: TEdit;
    rightm: TEdit;
    LetterboxGROUPBOX: TGroupBox;
    rightpControl: TUpDown;
    leftpControl: TUpDown;
    toppControl: TUpDown;
    bottompControl: TUpDown;
    leftp: TEdit;
    bottomp: TEdit;
    topp: TEdit;
    rightp: TEdit;
    TabSheet6: TTabSheet;
    ChanelsRADIOGROUP: TRadioGroup;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    ClipWidth: TLabel;
    codec: TLabel;
    bitrate: TLabel;
    size: TLabel;
    fps: TLabel;
    ResizeRADIOGROUP: TRadioGroup;
    BlockWidthCOMBOBOX: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    BlockHeightCOMBOBOX: TComboBox;
    ResMinus: TSpeedButton;
    ResPlus: TSpeedButton;
    ARErrEDIT: TEdit;
    ClipHeight: TLabel;
    ActionList1: TActionList;
    ZmienRozd: TAction;
    LoadFileBUTTON: TSpeedButton;
    OpenDialog1: TOpenDialog;
    FadeGROUPBOX: TGroupBox;
    FadeInFrames: TEdit;
    FadeOutFrames: TEdit;
    FadeInControl: TUpDown;
    FadeOutControl: TUpDown;
    AR: TLabel;
    ImageList1: TImageList;
    ColorDialog1: TColorDialog;
    FadeInColor: TShape;
    FadeOutColor: TShape;
    PauseBUTTON: TButton;
    NawigacjaGROUPBOX: TGroupBox;
    AviPlayer: TAction;
    FromBUTTON: TButton;
    ToBUTTON: TButton;
    PageControl: TPageControl;
    PlayerPAGE: TTabSheet;
    ScriptPAGE: TTabSheet;
    BeginBUTTON: TButton;
    EndBUTTON: TButton;
    OneLeftBUTTON: TButton;
    OneRightBUTTON: TButton;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    ZmianaKadrowania: TAction;
    NewFpsCOBMOBOX: TComboBox;
    hueTRACKBAR: TTrackBar;
    satTRACKBAR: TTrackBar;
    brightTRACKBAR: TTrackBar;
    contTRACKBAR: TTrackBar;
    coringCHECKBOX: TCheckBox;
    Tweak: TAction;
    HeqVCHECKBOX: TCheckBox;
    AmountHGROUPBOX: TGroupBox;
    AmountVGROUPBOX: TGroupBox;
    AmountHTRACKBAR: TTrackBar;
    AmountVTRACKBAR: TTrackBar;
    Blur: TAction;
    HueGROUPBOX: TGroupBox;
    SatGROUPBOX: TGroupBox;
    BrightGROUPBOX: TGroupBox;
    ContGROUPBOX: TGroupBox;
    ZastosujBUTTON: TButton;
    PrewievBUTTON: TButton;
    unTrimBUTTON: TButton;
    NormalizeGROUPBOX: TGroupBox;
    NormalizeTRACKBAR: TTrackBar;
    NormalizeCHECKBOX: TCheckBox;
    NormalizeShowCHECKBOX: TCheckBox;
    PrecisionRADIOGROUP: TRadioGroup;
    InneCOMBOBOX: TGroupBox;
    EnsureVBRMP3SyncCHECKBOX: TCheckBox;
    KillAudioCHECKBOX: TCheckBox;
    RadioGroup3: TRadioGroup;
    Frames: TLabel;
    VzoomEDIT: TEdit;
    ARRADIOGROUP: TRadioGroup;
    SaveAvsBUTTON: TButton;
    SaveFrameBUTTON: TButton;
    SaveFrameDIALOG: TSavePictureDialog;
    StatusBar: TStatusBar;
    SaveAvsDIALOG: TSaveDialog;
    ScriptMEMO: TMemo;
    ShowScript: TAction;
    HzoomEDIT: TEdit;
    ARErrLABEL: TLabel;
    VZoomLABEL: TLabel;
    HZoomLABEL: TLabel;
    TurnFlipGROUPBOX: TGroupBox;
    FlipHCHECKBOX: TCheckBox;
    FlipVCHECKBOX: TCheckBox;
    GreyscaleCHECKBOX: TCheckBox;
    ReverseCHECKBOX: TCheckBox;
    InfoRADIOGROUP: TRadioGroup;
    SelectCOMBOBOX: TComboBox;
    Bevel1: TBevel;
    BottomPANEL: TPanel;
    TopPANEL: TPanel;
    InvertGROUPBOX: TGroupBox;
    InvertRedCHECKBOX: TCheckBox;
    InvertGreenCHECKBOX: TCheckBox;
    InvertBlueCHECKBOX: TCheckBox;
    TurnLeftCHECKBOX: TCheckBox;
    TurnRightCHECKBOX: TCheckBox;
    Panel1: TPanel;
    NormalizeLABEL: TLabel;
    ssrcGROUPBOX: TGroupBox;
    ssrcCOMBOBOX: TComboBox;
    ssrcFastCHECKBOX: TCheckBox;
    FadeInLABEL: TLabel;
    FadeOutLABEL: TLabel;
    SelectEveryFrameSPINEDIT: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure NewFpsCOBMOBOXChange(Sender: TObject);
    procedure SelectCOMBOBOXChange(Sender: TObject);
    procedure InfoRADIOGROUPClick(Sender: TObject);
    procedure ResizeRADIOGROUPClick(Sender: TObject);
    procedure ScriptMEMOClick(Sender: TObject);
    procedure ShowScriptExecute(Sender: TObject);
    procedure SaveAvsBUTTONClick(Sender: TObject);
    procedure SaveFrameBUTTONClick(Sender: TObject);
    procedure ARRADIOGROUPClick(Sender: TObject);
    procedure KillAudioCHECKBOXClick(Sender: TObject);
    procedure NormalizeTRACKBARChange(Sender: TObject);
    procedure NormalizeCHECKBOXClick(Sender: TObject);
    procedure unTrimBUTTONClick(Sender: TObject);
    procedure PrewievBUTTONClick(Sender: TObject);
    procedure ZastosujBUTTONClick(Sender: TObject);
    procedure HeqVCHECKBOXClick(Sender: TObject);
    procedure AmountVTRACKBARChange(Sender: TObject);
    procedure AmountHTRACKBARChange(Sender: TObject);
    procedure BlurExecute(Sender: TObject);
    procedure EndBUTTONClick(Sender: TObject);
    procedure BeginBUTTONClick(Sender: TObject);
    procedure OneRightBUTTONClick(Sender: TObject);
    procedure OneLeftBUTTONClick(Sender: TObject);
    procedure TempScriptMEMOClick(Sender: TObject);
    procedure ToBUTTONClick(Sender: TObject);
    procedure FromBUTTONClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AviPlayerExecute(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure PauseBUTTONClick(Sender: TObject);
    procedure PlayBUTTONClick(Sender: TObject);
    procedure FadeOutColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FadeInColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LoadFileBUTTONClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure ResMinusClick(Sender: TObject);
    procedure ResPlusClick(Sender: TObject);
    procedure ZmienRozdExecute(Sender: TObject);
  private
    { Private declarations }
    parPocz, VideoPlaying : boolean;
    znak : Shortint;
    ClipExtension : ShortString;


    function MinARE(y, blok : integer):integer;
    function TestPoprawnosciFormularza():boolean;
    procedure PoprawKadrowanie;
    procedure AddToINI (FileName, Section : string);
    procedure RemoveFromINI(FileName, Section : string);
    function NewResolution(width, height, topm, bottomm, leftm, rightm,
    topp, bottomp, leftp, rightp : string): string;
    procedure ObliczWszystko(ShowPreview : boolean=true);
    function ValidVariable(nazwa : string) : string;
    function StrAsInt(input : string; value : integer):String;
  public
    Datei, Source, StaraNazwa : string;
    SourceType : Shortint;
    testavs, testini : string;
    z2_top, z2_bottom : real;
    trim_first_frame, trim_last_frame : integer;
    ap:TAviPlayer;
    ofSTRING, volumeSTRING : string;
    CanShowScript : boolean;
    procedure LoadFile(path : string);
end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

function TForm2.ValidVariable(nazwa : string) : string;
var i : integer;
begin
if (nazwa<>'') then
begin
  for i:=1 to length(nazwa) do
    if not (nazwa[i] in ['0'..'9','A'..'Z','a'..'z']) then nazwa[i]:='_';
  if (nazwa[1] in ['0'..'9']) then nazwa[1]:='_';
  result:=nazwa;
end;
end;
function TForm2.TestPoprawnosciFormularza():boolean;
begin
ClipName.Text:=ValidVariable(ClipName.Text);

if (Form2.ClipName.Text<>'')
   AND (Form2.Source<>'')
   AND (true)
   AND (true)
   AND (true)
   AND (true)
   then result:=true else result:=false;
end;

function TForm2.StrAsInt(input : string; value : integer):String;
begin
result := IntToStr(StrToInt(input)+value);
end;
procedure TForm2.PoprawKadrowanie;
begin
while StrToInt(topm.Text)   mod 2<>0 do topm.Text  :=StrAsInt(topm.Text,-1);
while StrToInt(bottomm.Text)mod 2<>0 do bottomm.Text:=StrAsInt(bottomm.Text,-1);
while StrToInt(topp.Text)   mod 2<>0 do topp.Text   :=StrAsInt(topp.Text,-1 );
while StrToInt(bottomp.Text)mod 2<>0 do bottomp.Text:=StrAsInt(bottomp.Text,-1);
while StrToInt(leftp.Text)  mod 2<>0 do leftp.Text  :=StrAsInt(leftp.Text,-1);
while StrToInt(rightp.Text) mod 2<>0 do rightp.Text :=StrAsInt(rightp.Text,-1);
while StrToInt(leftm.Text)  mod 2<>0 do leftm.Text  :=StrAsInt(leftm.Text,-1);
while StrToInt(rightm.Text) mod 2<>0 do rightm.Text :=StrAsInt(rightm.Text,-1);
end;
procedure TForm2.ObliczWszystko(ShowPreview : boolean=true);
begin
TrackBar1.SelStart:=0;
TrackBar1.SelEnd:=0;

PoprawKadrowanie;
  if TestPoprawnosciFormularza then
  begin
    AddToINI(testini, ClipName.Text);
    if ShowPreview then AviPlayer.Execute;
    StatusBar.Panels.Items[1].Text:=NewFpsCOBMOBOX.Text+'fps';
  end;// else ShowMessage('Popraw zawartoœæ formularza');
end;
procedure TForm2.ShowScriptExecute(Sender: TObject);
var
Hzoom, Vzoom : double;
wynik : TCaption;
begin

if CanShowScript AND (ClipName.Text<>'') then
  begin
    ObliczWszystko(false);//oblicza bez podgl¹du

    ScriptMEMO.Clear;
    if ClipExtension='.D2V' then
    ScriptMEMO.Lines.Add('LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'DGDecode.dll')+'")');
    if ResizeRADIOGROUP.ItemIndex=4 then
    ScriptMEMO.Lines.Add('LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'SimpleResize.dll')+'")');
    ScriptMEMO.Lines.Add('LoadPlugin("'+(ExtractFilePath(Application.ExeName)+'UnDot.dll')+'")');


    ScriptMEMO.Text:=ScriptMEMO.Text+Form1.Kompiluj(ClipName.Text, testini,
    InfoRADIOGROUP.ItemIndex);

    wynik:=wynik+Chr(13) + Chr(10)+Form3.TempFiltersMESSAGE+Chr(13) + Chr(10);
    wynik:=wynik+( ClipName.Text + ' = ConvertToYV12('+ClipName.Text+')' )+Chr(13) + Chr(10);
    case InfoRADIOGROUP.ItemIndex of
      1 : wynik:=wynik+( ClipName.Text + ' = Info('+ClipName.Text+')' )+Chr(13) + Chr(10);
      2 : wynik:=wynik+( ClipName.Text + ' = Histogram('+ClipName.Text+')' )+Chr(13) + Chr(10);
    end;
    wynik:=wynik+'return '+ClipName.Text+Chr(13) + Chr(10);

    ScriptMEMO.Lines.Add(wynik);
    StatusBar.Panels.Items[0].Text:=NewResolution(Edit5.Text, Edit6.Text,
    topm.Text, bottomm.Text,leftm.Text, rightm.Text, topp.Text, bottomp.Text,
    leftp.Text, rightp.Text);

    Hzoom:=(StrToInt(Edit5.Text)/StrToInt(ClipWidth.Caption))*100;
    Vzoom:=(StrToInt(Edit6.Text)/StrToInt(ClipHeight.Caption)*100);
    if Hzoom>100 then HzoomEDIT.Color:=RGB(222,10,10)
    else HzoomEDIT.Color:=RGB(255,255,255);
    if Vzoom>100 then VzoomEDIT.Color:=RGB(222,10,10)
    else VzoomEDIT.Color:=RGB(255,255,255);
    HzoomEDIT.Text:=FormatFloat('0',Hzoom)+' %';
    VzoomEDIT.Text:=FormatFloat('0',Vzoom)+' %';


    end;
end;
procedure TForm2.AddToINI(FileName, Section : string);
var
INI : TIniFile;
begin
    Ini := TIniFile.Create(FileName);
    begin
      Ini.WriteString( Section, 'plik', Form2.Datei);
      Ini.WriteString( Section, 'source', Form2.Source);
      Ini.WriteInteger( Section, 'pozycja', Form2.TrackBar1.Position);
  // Ciêcie
      Ini.WriteInteger( Section, 'trim_first_frame', trim_first_frame);
      Ini.WriteInteger( Section, 'trim_last_frame' , trim_last_frame);
  // Wczytywanie
      Ini.WriteInteger( Section, 'SourceType', Form2.SourceType);
      Ini.WriteInteger( Section, 'Select', SelectCOMBOBOX.ItemIndex);
   if Form2.SelectCOMBOBOX.ItemIndex=3 then
      Ini.WriteString ( Section, 'SelectEveryFrame', Form2.SelectEveryFrameSPINEDIT.Text);
      Ini.WriteString ( Section, 'time',   Form2.time.Caption);
      Ini.WriteString ( Section, 'width',  Form2.ClipWidth.Caption);
      Ini.WriteString ( Section, 'height', Form2.ClipHeight.Caption);
      Ini.WriteString ( Section, 'codec',  Form2.codec.Caption);
      Ini.WriteString ( Section, 'bitrate', Form2.bitrate.Caption);
      Ini.WriteString ( Section, 'size',    Form2.size.Caption);
      Ini.WriteString ( Section, 'AR',      Form2.AR.Caption);
   if Form2.fps.Caption<>'0'
 then Ini.WriteString ( Section, 'fps',     Form2.fps.Caption)
 else Ini.WriteString ( Section, 'fps',     'null');
   if Form2.NewFpsCOBMOBOX.Text<>''
 then ini.WriteString ( Section, 'new_fps', Form2.NewFpsCOBMOBOX.Text)
 else ini.WriteString ( Section, 'new_fps', 'null');
      Ini.WriteString ( Section, 'frames',  Form2.frames.Caption);
      Ini.WriteString ( Section, 'FadeInFrames',  Form2.FadeInFrames.Text);
      Ini.WriteString ( Section, 'FadeOutFrames', Form2.FadeOutFrames.Text);
      ini.WriteString ( Section, 'FadeInColor',   ColorToString(Form2.FadeInColor.Brush.Color));
      ini.WriteString ( Section, 'FadeOutColor',  ColorToString(Form2.FadeOutColor.Brush.Color));
  // Rozdzielczoœæ
      Ini.WriteString ( Section, 'SzerokoscBloku', Form2.BlockWidthCOMBOBOX.Text);
      Ini.WriteString ( Section, 'WysokoscBloku', Form2.BlockHeightCOMBOBOX.Text);
      Ini.WriteString ( Section, 'x', Form2.Edit5.Text);
      Ini.WriteString ( Section, 'y', Form2.Edit6.Text);
      Ini.WriteInteger( Section, 'Rozdzielczosc', Form2.ResizeRADIOGROUP.ItemIndex);
      ini.ReadInteger ( Section, 'Proporcje', ARRADIOGROUP.ItemIndex);
      Ini.WriteInteger( Section, 'topm',    StrToInt(Form2.topm.Text));
      Ini.WriteInteger( Section, 'topp',    StrToInt(Form2.topp.Text));
      Ini.WriteInteger( Section, 'leftm',   StrToInt(Form2.leftm.Text));
      Ini.WriteInteger( Section, 'leftp',   StrToInt(Form2.leftp.Text));
      Ini.WriteInteger( Section, 'rightm',  StrToInt(Form2.rightm.Text));
      Ini.WriteInteger( Section, 'rightp',  StrToInt(Form2.rightp.Text));
      Ini.WriteInteger( Section, 'bottomm', StrToInt(Form2.bottomm.Text));
      Ini.WriteInteger( Section, 'bottomp', StrToInt(Form2.bottomp.Text));
      Ini.WriteString ( Section, 'ARErr', Form2.ARErrEDIT.Text);
  // Obraz
      Ini.WriteInteger ( Section, 'ConvertTo', Form2.ConvertToRADIOGROUP.ItemIndex);
   if FlipHCHECKBOX.Checked
 then Ini.WriteBool( Section, 'FlipH', true)
 else Ini.WriteBool( Section, 'FlipH', false);
   if FlipVCHECKBOX.Checked
 then Ini.WriteBool( Section, 'FlipV', true)
 else Ini.WriteBool( Section, 'FlipV', false);

    if TurnLeftCHECKBOX.Checked
 then Ini.WriteBool( Section, 'TurnLeft', true)
 else Ini.WriteBool( Section, 'TurnLeft', false);

    if TurnRightCHECKBOX.Checked
 then Ini.WriteBool( Section, 'TurnRight', true)
 else Ini.WriteBool( Section, 'TurnRight', false);

   if GreyscaleCHECKBOX.Checked
 then Ini.WriteBool( Section, 'Greyscale', true)
 else Ini.WriteBool( Section, 'Greyscale', false);

   if InvertRedCHECKBOX.Checked
 then Ini.WriteBool( Section, 'InvertRed', true)
 else Ini.WriteBool( Section, 'InvertRed', false);

    if InvertGreenCHECKBOX.Checked
 then Ini.WriteBool( Section, 'InvertGreen', true)
 else Ini.WriteBool( Section, 'InvertGreen', false);

    if InvertBlueCHECKBOX.Checked
 then Ini.WriteBool( Section, 'InvertBlue', true)
 else Ini.WriteBool( Section, 'InvertBlue', false);

   if ReverseCHECKBOX.Checked
 then Ini.WriteBool( Section, 'Reverse', true)
 else Ini.WriteBool( Section, 'Reverse', false);
      
  // Ostroœæ
      Ini.WriteInteger( Section, 'AmountH', AmountHTRACKBAR.Position);
      Ini.WriteInteger( Section, 'AmountV', AmountVTRACKBAR.Position);
   if HeqVCHECKBOX.Checked
 then Ini.WriteBool   ( Section, 'HeqV', true)
 else Ini.WriteBool( Section, 'HexV', false);
  // Jasnoœæ, kontrast, nasycenie
      Ini.WriteInteger( Section, 'hueTRACKBAR',    hueTRACKBAR.Position);
      Ini.WriteInteger( Section, 'satTRACKBAR',    satTRACKBAR.Position);
      Ini.WriteInteger( Section, 'brightTRACKBAR', brightTRACKBAR.Position);
      Ini.WriteInteger( Section, 'contTRACKBAR',   contTRACKBAR.Position);
   if coringCHECKBOX.Checked
 then Ini.WriteBool   ( Section, 'coringCHECKBOX', true)
 else Ini.WriteBool   ( Section, 'coringCHECKBOX', false);

   // DŸwiêk
      Ini.WriteBool( Section,   'Normalize',       NormalizeCHECKBOX.Checked);
      Ini.WriteBool( Section,   'Normalize_Show',  NormalizeShowCHECKBOX.Checked);
      Ini.WriteInteger( Section,'Normalize_Volume',NormalizeTRACKBAR.Position);

      Ini.WriteInteger( Section,'Chanels',   ChanelsRADIOGROUP.ItemIndex);
      Ini.WriteInteger( Section,'Precision', PrecisionRADIOGROUP.ItemIndex);
      Ini.WriteString( Section, 'ssrc',      ssrcCOMBOBOX.Text);
      Ini.WriteBool( Section,   'ssrcFast',  ssrcFastCHECKBOX.Checked);

      Ini.WriteBool( Section,   'EnsureVBRMP3Sync', EnsureVBRMP3SyncCHECKBOX.Checked);
      Ini.WriteBool( Section,   'KillAudio',        KillAudioCHECKBOX.Checked);

      Ini.Free;
    end;

end;
procedure TForm2.RemoveFromINI(FileName, Section : string);
var
INI : TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  Ini.EraseSection(Section);
  Ini.Free;
end;
procedure TForm2.NewFpsCOBMOBOXChange(Sender: TObject);
begin
try
  StrToFloat(NewFpsCOBMOBOX.Text);
except
  ShowMessage(Form3.OutOfRangeMESSAGE);
  NewFpsCOBMOBOX.Text:=fps.Caption;
end;
ShowScript.Execute;
end;
procedure TForm2.AviPlayerExecute(Sender: TObject);
begin

ScriptMEMO.Lines.SaveToFile(testavs);

   //---------------Wczytywanie klipu do okna monta¿u--------
try
  ap.Free;            // Likwidujemy obiekt ap a nastêpnie
except                // tworzymy go z aktualnym filmem

end;
ap:=TAviPlayer.Create;
ap.FileName:=testavs;
// ap.GotAttributes;

// Elementy zmienne
    TrackBar1.Min:=0;
    TrackBar1.Max:=ap.FrameCount-1;
    Image1.Picture.Bitmap.PixelFormat:=pf24bit;
    Image1.Picture.Bitmap.Width:=ap.FrameWidth;
    Image1.Picture.Bitmap.Height:=ap.FrameHeight;
    Image1.Width:=ap.FrameWidth;
    Image1.Height:=ap.FrameHeight;
    FadeInControl.Max:=ap.FrameCount;
    FadeOutControl.Max:=ap.FrameCount;
    Frames.Caption:=IntToStr(TrackBar1.Max+1);

StatusBar.Panels.Items[0].Text:=ClipWidth.Caption+'x'+ClipHeight.Caption;
StatusBar.Panels.Items[1].Text:=fps.Caption+'fps';
StatusBar.Panels.Items[2].Text:=
IntToStr(TrackBar1.Position)+ ' '+ofSTRING+' '+frames.Caption;


end;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Form2                                                                      //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if VideoPlaying then PauseBUTTON.Click;
  try
    ap.Free;
  except
  //  ShowMessage('Zmianne ap nie by³a inicjowana');
  end;
Form1.Enabled:=true;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
DecimalSeparator:='.';
testavs := ExtractFilePath(Application.ExeName)+'test.avs';
testini := ExtractFilePath(Application.ExeName)+'test.ini';
ofSTRING:='z';
CanShowScript:=true;
Form2.ScrollBox1.DoubleBuffered:=true;

end;
procedure TForm2.TempScriptMEMOClick(Sender: TObject);
begin
PageControl.Pages[1].SetFocus;
end;
procedure TForm2.LoadFileBUTTONClick(Sender: TObject);
begin
OpenDialog1.FileName:='';
OpenDialog1.Execute;
if OpenDialog1.FileName<>'' then LoadFile(OpenDialog1.FileName);
end;

procedure TForm2.LoadFile(path : string);
var
  Handle : Cardinal;
  d2v : TD2VInfo;
  avs : TAVIPlayer;
begin
CanShowScript:=false;

Datei         := path;
Source        := ExtractFileName(Datei);
ClipExtension := UpperCase(ExtractFileExt(Source));
ClipName.Text := ChangeFileExt(ExtractFileName(Source),'');

if FileExists(Datei) then
begin
TrackBar1.SelStart:=0;
TrackBar1.SelEnd:=0;
trim_first_frame:=0;
trim_last_frame:=0;

if (ClipExtension='.AVI') OR (ClipExtension='.DIVX') then
begin
  SourceType:=0;
  Handle := MediaInfoA_New();
  MediaInfoA_Open(Handle,PChar(Datei));
  MediaInfoA_Option (0, 'Complete', '');
  ClipWidth.Caption:= MediaInfoA_Get(Handle, 1, 0, 'Width', 1, 0);
  ClipHeight.Caption:= MediaInfoA_Get(Handle, 1, 0, 'Height', 1, 0);
  Edit5.Text := MediaInfoA_Get(Handle, 1, 0, 'Width', 1, 0);
  Edit6.Text := MediaInfoA_Get(Handle, 1, 0, 'Height', 1, 0);
  Time.Caption:=MediaInfoA_Get(Handle, 0, 0, 'PlayTime/String1', 1, 0);
  Codec.Caption:=MediaInfoA_Get(Handle, 1, 0, 'Codec/String', 1, 0);
  Bitrate.Caption := MediaInfoA_Get(Handle, 1, 0, 'Bitrate', 1, 0);
  if Bitrate.Caption = ''
  then Bitrate.Caption := MediaInfoA_Get(Handle, 1, 0, 'BitRate/String', 1, 0);
  Size.Caption:=MediaInfoA_Get(Handle, 0, 0, 'FileSize/String4', 1, 0);
  AR.Caption:=MediaInfoA_Get(Handle, 1, 0, 'AspectRatio', 1, 0);
  fps.Caption:= FormatFloat( '0.000' , StrToFloat( MediaInfoA_Get(Handle, 1, 0, 'FrameRate', 1, 0) ));
  NewFpsCOBMOBOX.Text:=fps.Caption;
end;


if ClipExtension='.D2V' then
begin
  SourceType:=1;

  d2v:= TD2VInfo.Create(Datei);
  Codec.Caption:=d2v.typ;
  ClipWidth.Caption :=d2v.width;
  ClipHeight.Caption:=d2v.height;
  Edit5.Text:=d2v.width;
  Edit6.Text:=d2v.height;
  AR.Caption:=d2v.ar;
  fps.Caption:=d2v.fps;
  NewFpsCOBMOBOX.Text:=d2v.fps;
  d2v.Free;
end;

if ClipExtension='.AVS' then
begin
  SourceType:=2;
  avs:=TAviPlayer.Create;
  avs.FileName:=Datei;
  ClipHeight.Caption:=IntToStr(avs.FrameHeight);
  ClipWidth.Caption:=IntToStr(avs.FrameWidth);
  Edit5.Text:=IntToStr(avs.FrameWidth);
  Edit6.Text:=IntToStr(avs.FrameHeight);
  fps.Caption:=FormatFloat('0.000', avs.FrameRate/1000);
  NewFpsCOBMOBOX.Text:=FormatFloat('0.000', avs.FrameRate/1000);
  time.Caption := FormatFloat( '0.000', avs.FrameCount / avs.FrameRate);
  AR.Caption := FormatFloat( '0.000', avs.FrameWidth / avs.FrameHeight);
  codec.Caption := 'AVS';
  ZastosujBUTTON.Click;
  avs.Free;
end else
  parPocz:=false;

CanShowScript:=true;
PauseBUTTON.Click;
end;
end;
procedure TForm2.Panel1Click(Sender: TObject);
begin
if LeftPANEL.Visible=false then
begin
  LeftPANEL.Visible:=true;
  Panel1.BevelOuter:=bvRaised;
  Panel1.Caption:='<'
end else begin
  LeftPANEL.Visible:=false;
  Panel1.BevelOuter:=bvLowered;
  Panel1.Caption:='>'
end;

end;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Clip                                                                       //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TForm2.SelectCOMBOBOXChange(Sender: TObject);
begin
if SelectCOMBOBOX.ItemIndex = 3 then
SelectEveryFrameSPINEDIT.Enabled:=true else
SelectEveryFrameSPINEDIT.Enabled:=false;
ShowScript.Execute;
end;
procedure TForm2.TrackBar1Change(Sender: TObject);
begin
if TestPoprawnosciFormularza then
begin
  ap.Position:=TrackBar1.Position;
  Form2.StatusBar.Panels.Items[2].Text:=
  IntToStr(TrackBar1.Position)+' '+Form2.ofSTRING+' '+Frames.Caption;
  ap.DrawFrameToBitmap(Image1.Picture.Bitmap);
end;
end;
// Sterowanie
procedure TForm2.PauseBUTTONClick(Sender: TObject);
begin
ShowScript.Execute;
VideoPlaying:=false;
ObliczWszystko(true);
TrackBar1Change(TrackBar1);
end;
procedure TForm2.PlayBUTTONClick(Sender: TObject);
begin
ObliczWszystko;
  VideoPlaying:=true;
  while VideoPlaying and (TrackBar1.Position<TrackBar1.Max) do
  begin
    TrackBar1.Position:=TrackBar1.Position+1;
    Application.ProcessMessages;
  end;
  
  if TrackBar1.Position=TrackBar1.Max then
  begin
   TrackBar1.Position:=TrackBar1.Min;
  end;
end;
procedure TForm2.BeginBUTTONClick(Sender: TObject);
begin
TrackBar1.Position:=TrackBar1.Min;
end;
procedure TForm2.EndBUTTONClick(Sender: TObject);
begin
TrackBar1.Position:=TrackBar1.Max;
end;
procedure TForm2.OneLeftBUTTONClick(Sender: TObject);
begin
TrackBar1.Position:=TrackBar1.Position-1;
end;
procedure TForm2.OneRightBUTTONClick(Sender: TObject);
begin
TrackBar1.Position:=TrackBar1.Position+1;
end;
procedure TForm2.FromBUTTONClick(Sender: TObject);
begin
FromBUTTON.Enabled:=false;
TrackBar1.SelStart:=TrackBar1.Position;
trim_first_frame:=TrackBar1.Position;
ShowScript.Execute;
end;
procedure TForm2.ToBUTTONClick(Sender: TObject);
begin
ToBUTTON.Enabled:=false;
TrackBar1.SelEnd:=TrackBar1.Position;
trim_last_frame:=TrackBar1.Position;
ShowScript.Execute;
end;
procedure TForm2.unTrimBUTTONClick(Sender: TObject);
begin
FromBUTTON.Enabled:=true;
ToBUTTON.Enabled:=true;
TrackBar1.SelStart:=0;
TrackBar1.SelEnd:=0;
trim_first_frame:=0;
trim_last_frame:=0;
ShowScript.Execute;
ObliczWszystko;
end;
// Przyciski
procedure TForm2.ZastosujBUTTONClick(Sender: TObject);
begin
ObliczWszystko;
TrackBar1Change(TrackBar1);
end;
procedure TForm2.OKClick(Sender: TObject);
var ini : TIniFile;
    nadpisz : boolean;
begin

ini := TIniFile.Create(Form1.temp);
nadpisz:=true;

if Ini.SectionExists(ClipName.Text) then
if Application.MessageBox(PChar(Form3.OverwriteMESSAGE),'AVStudio',
MB_YESNO+MB_ICONQUESTION)=IDYES
then nadpisz:=false;


if (ini.SectionExists(ClipName.Text)=false) OR (nadpisz=false) then
begin
PoprawKadrowanie;
  if TestPoprawnosciFormularza then
  begin
    if (StaraNazwa=ClipName.Text) OR (StaraNazwa='') then
    // stara nazwa = '' jeœli wybrana zosta³a opcja NOWY
      AddToINI(Form1.temp, ClipName.Text)
    else begin
      RemoveFromINI(Form1.temp, StaraNazwa);
      AddToINI(Form1.temp, ClipName.Text)
    end;
    Form1.Reload.Execute;
    Form2.Close;
  end else ShowMessage(Form3.ClipNemeErrorMESSAGE);
end;

end;
procedure TForm2.CancelBtnClick(Sender: TObject);
begin
Form1.Reload.Execute;
Form2.Close;
end;
procedure TForm2.PrewievBUTTONClick(Sender: TObject);
var
MMPlayExe : string;
begin

MMPlayExe:=Form3.MediaPlayerPathEDIT.Text;

  if FileExists(MMPlayExe) AND FileExists(testavs) then
  begin
    try
      ObliczWszystko;
      AviPlayer.Execute;
      Form1.ExecuteAndWait((ExtractShortPathName(MMPlayExe) + ' '
      + ExtractShortPathName(testavs)), false, false);
    except
      MessageDlg(PChar(Form3.UnknownErrorMESSAGE), mtError, [mbOK], 0);
    end;
  end
  else
    MessageDlg(Format(PChar(Form3.CouldNotFindMediaPlayerMESSAGE),
    [MMPlayExe]), mtInformation, [mbOK], 0);
end;
procedure TForm2.SaveAvsBUTTONClick(Sender: TObject);
begin
ZastosujBUTTON.Click;
SaveAvsDIALOG.FileName:='';
SaveAvsDIALOG.Execute;
if SaveAvsDIALOG.FileName<>'' then
ScriptMEMO.Lines.SaveToFile(SaveAvsDIALOG.FileName);
end;
procedure TForm2.SaveFrameBUTTONClick(Sender: TObject);
begin
SaveFrameDIALOG.FileName:='';
SaveFrameDIALOG.Execute;
if SaveFrameDIALOG.FileName<>'' then
    Image1.Picture.SaveToFile(SaveFrameDIALOG.FileName);
end;
procedure TForm2.ScriptMEMOClick(Sender: TObject);
begin
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Rozdzielczoœæ                                                              //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TForm2.NewResolution(width, height, topm, bottomm,
leftm, rightm, topp, bottomp, leftp, rightp : string): string;
var w, h, tm, bm, lm, rm, tp, bp, lp, rp : integer;
    width_all, height_all : integer;
begin
w :=StrToInt(width);
h :=StrToInt(height);
tm:=StrToInt(topm);
bm:=StrToInt(bottomm);
lm:=StrToInt(leftm);
rm:=StrToInt(rightm);
tp:=StrToInt(topp);
bp:=StrToInt(bottomp);
lp:=StrToInt(leftp);
rp:=StrToInt(rightp);
width_all :=w+lp+rp-lm-rm;
height_all:=h+tp+bp-tm-bm;
result:=IntToStr(width_all)+'x'+IntToStr(height_all);
end;
procedure TForm2.ZmienRozdExecute(Sender: TObject);
var
y : integer;
x, a, ar, ar_default, new_a, new_ar, a_error : real;
begin
x:=StrToFloat(Edit5.Text);

// Aspect Ratio jest to stosunek szerokosci zrodlowej do wysokosci zrodlowej

try
  ar_default:=StrToInt(ClipWidth.Caption)/(StrToInt(ClipHeight.Caption));
except
  ar_default:=4/3;
end;

case ARRADIOGROUP.ItemIndex of
1 : ar:=4/3;
2 : ar:=16/9;
3 : ar:=1;
else
  ar:=ar_default;
end;

a:=1/ar;

if znak=1 then x:=x+StrToInt(BlockWidthCOMBOBOX.Text);
if znak=0 then x:=x;
if znak=-1 then  x:=x-StrToInt(BlockWidthCOMBOBOX.Text);

y:=Round(x*a); // zaokr¹glamy Y do pelnego piksela

// znajdŸ najblizsza wartosc podzielna przez wysokosc bloku
y:=MinARE(y, StrToInt(BlockHeightCOMBOBOX.Text));
if y=0 then y:=1;

new_ar := x/y; // nowy Aspect Ratio to stosunek nowej szerokosci do nowej wysokosci
new_a := 1/new_ar;

a_error := ((new_a - a) / new_a)*100;

ARErrEDIT.Text:=FormatFloat('0.00', a_error )+' %'; // wyswietla Aspect Ratio Error w skróconej formie
Edit5.Text:=FloatToStr(x); // ustala now¹ wartosc X
Edit6.Text:=FloatToStr(y); // ustala now¹ wartosc Y
end;
function TForm2.MinARE(y, blok : integer):integer;
var
   r: Integer;
begin
    if blok = 0 then
    begin
      result := -1;
      exit;
    end;

    r := y mod blok;

    if blok < 0     then blok := -blok;
    if r < blok - r then result := y - r  // y - r jest bli¿sza
                    else result := y + blok - r;
end;
procedure TForm2.ResizeRADIOGROUPClick(Sender: TObject);
begin
ShowScript.Execute;
ObliczWszystko;
TrackBar1Change(TrackBar1);
end;
procedure TForm2.ResMinusClick(Sender: TObject);
var
y1, y2, z1_top, z1_bottom : real;
begin
PoprawKadrowanie;
if (z2_top=0) AND (z2_bottom=0) then
begin
  z2_top:=StrToFloat(topm.Text);
  z2_bottom:=StrToFloat(bottomm.Text);
end;

y1:=StrToFloat(Edit6.Text);          // stara wysokoœæ klipu
z1_top:=z2_top;                      // stare kadrowania górne
z1_bottom:=z2_bottom;                // stare kadrowanie dolne

znak := -1;
ZmienRozd.Execute;                   // zmiana rozdzielczoœæi

y2:=StrToFloat(Edit6.Text);          // nowa wysokoœæ klipu

  z2_top:=(y2*z1_top)/y1;            // nowe kadrowanie górne
  z2_bottom:=(y2*z1_bottom)/y1;      // nowe kadrowanie dolne

topm.Text:=FormatFloat('0',round(z2_top));
bottomm.Text:=FormatFloat('0',round(z2_bottom));
ShowScript.Execute;
end;
procedure TForm2.ResPlusClick(Sender: TObject);
var
y1, y2, z1_top, z1_bottom : real;
begin
PoprawKadrowanie;
if (z2_top=0) AND (z2_bottom=0) then
begin
  z2_top:=StrToFloat(topm.Text);
  z2_bottom:=StrToFloat(bottomm.Text);
end;

y1:=StrToFloat(Edit6.Text);          // stara wysokoœæ klipu
z1_top:=z2_top;                      // stare kadrowania górne
z1_bottom:=z2_bottom;                // stare kadrowanie dolne

znak := 1;
ZmienRozd.Execute;

y2:=StrToFloat(Edit6.Text);          // nowa wysokoœæ klipu

  z2_top:=(y2*z1_top)/y1;            // nowe kadrowanie górne
  z2_bottom:=(y2*z1_bottom)/y1;      // nowe kadrowanie dolne

topm.Text:=FormatFloat('0',round(z2_top));
bottomm.Text:=FormatFloat('0',round(z2_bottom));
ShowScript.Execute;
end;
procedure TForm2.ARRADIOGROUPClick(Sender: TObject);
begin
  znak:=0;
  ZmienRozd.Execute;
  ObliczWszystko;
  TrackBar1Change(TrackBar1);
  StatusBar.Panels.Items[0].Text:=NewResolution(Edit5.Text, Edit6.Text,
  topm.Text, bottomm.Text, leftm.Text, rightm.Text,
  topp.Text, bottomp.Text, leftp.Text, rightp.Text);
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Obraz                                                                      //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TForm2.FadeInColorMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
ColorDialog1.Color:=FadeInColor.Brush.Color;
ColorDialog1.Execute();
FadeInColor.Brush.Color:=ColorDialog1.Color;
ShowScript.Execute;
end;
procedure TForm2.FadeOutColorMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
ColorDialog1.Color:=FadeOutColor.Brush.Color;
ColorDialog1.Execute();
FadeOutColor.Brush.Color:=ColorDialog1.Color;
ShowScript.Execute;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Ostroœæ                                                                    //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TForm2.AmountVTRACKBARChange(Sender: TObject);
begin
if HeqVCHECKBOX.Checked then
AmountHTRACKBAR.Position:=AmountVTRACKBAR.Position;
ShowScript.Execute;
end;
procedure TForm2.AmountHTRACKBARChange(Sender: TObject);
begin
if HeqVCHECKBOX.Checked then
AmountVTRACKBAR.Position:=AmountHTRACKBAR.Position;
ShowScript.Execute;
end;
procedure TForm2.HeqVCHECKBOXClick(Sender: TObject);
begin
if HeqVCHECKBOX.Checked then AmountVTRACKBAR.Position:=AmountHTRACKBAR.Position;
end;
procedure TForm2.InfoRADIOGROUPClick(Sender: TObject);
begin
ShowScript.Execute;
ObliczWszystko;
TrackBar1Change(TrackBar1);
end;

procedure TForm2.BlurExecute(Sender: TObject);
begin

end;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Audio                                                                      //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TForm2.KillAudioCHECKBOXClick(Sender: TObject);
begin
  if KillAudioCHECKBOX.Checked then
  begin
    ChanelsRADIOGROUP.Enabled:=false;
    PrecisionRADIOGROUP.Enabled:=false;
    ssrcGROUPBOX.Enabled:=false;
    NormalizeTRACKBAR.Enabled:=false;
    NormalizeCHECKBOX.Enabled:=false;
    NormalizeShowCHECKBOX.Enabled:=false;
    EnsureVBRMP3SyncCHECKBOX.Enabled:=false;
  end else
  begin
    ChanelsRADIOGROUP.Enabled:=true;
    PrecisionRADIOGROUP.Enabled:=true;
    ssrcGROUPBOX.Enabled:=true;
    NormalizeTRACKBAR.Enabled:=true;
    NormalizeCHECKBOX.Enabled:=true;
    if NormalizeCHECKBOX.Checked then NormalizeShowCHECKBOX.Enabled:=true;
    EnsureVBRMP3SyncCHECKBOX.Enabled:=true;
  end;
  ShowScript.Execute;
end;
procedure TForm2.NormalizeCHECKBOXClick(Sender: TObject);
begin
  if NormalizeCHECKBOX.Checked then
  begin
    NormalizeTRACKBAR.Enabled:=true;
    NormalizeShowCHECKBOX.Enabled:=true;
  end else
  begin
    NormalizeTRACKBAR.Enabled:=false;
    NormalizeShowCHECKBOX.Enabled:=false;
  end;
  ShowScript.Execute;
end;
procedure TForm2.NormalizeTRACKBARChange(Sender: TObject);
begin
NormalizeLABEL.Caption:=volumeSTRING+' '+IntToStr(NormalizeTRACKBAR.Position)+'%';
ShowScript.Execute;
end;

end.

