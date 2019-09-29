unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles;

type
  TForm3 = class(TForm)
    AviSynthStatusEDIT: TLabeledEdit;
    MediaPlayerPathEDIT: TLabeledEdit;
    SelectPlayerBUTTON: TSpeedButton;
    CancelBUTTON: TButton;
    OkBUTTON: TButton;
    AviSynthVersionEDIT: TLabeledEdit;
    MediaPlayerStatusEDIT: TLabeledEdit;
    MediaPlayerVersionEDIT: TLabeledEdit;
    AviSynthGROUPBOX: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    GroupBox3: TGroupBox;
    ApplyBUTTON: TButton;
    LangGROUPBOX: TGroupBox;
    LangCOMBOBOX: TComboBox;
    procedure LangCOMBOBOXSelect(Sender: TObject);
    procedure ApplyBUTTONClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OkBUTTONClick(Sender: TObject);
    procedure MediaPlayerVersionEDITEnter(Sender: TObject);
    procedure MediaPlayerStatusEDITEnter(Sender: TObject);
    procedure AviSynthVersionEDITEnter(Sender: TObject);
    procedure AviSynthStatusEDITEnter(Sender: TObject);
    procedure CancelBUTTONClick(Sender: TObject);
    procedure SelectPlayerBUTTONClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    AvsNeedMESSAGE, LangErrorMESSAGE : string;
    procedure ReadIni();
    procedure ChangeLang(lang : string);
    procedure FindApp();
    function Sto_GetFmtFileVersion(const FileName: String;
      const FMT: String = '%d.%d.%d.%d'): String;
  public
    { Public declarations }
    NoChangeSTRING : String;
    OutOfRangeMESSAGE, OverwriteMESSAGE, ClipNemeErrorMESSAGE,
    UnknownErrorMESSAGE, CouldNotFindMediaPlayerMESSAGE,
    RemoveClipMESSAGE, SaveChangesMESSAGE, TempFiltersMESSAGE,
    FileOverwriteMESSAGE, NoFileMESSAGE : string;
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

function TForm3.Sto_GetFmtFileVersion(const FileName: String;
  const FMT: String = '%d.%d.%d.%d'): String;
var
  iBufferSize: DWORD;
  iDummy: DWORD;
  pBuffer: Pointer;
  pFileInfo: Pointer;
  iVer: Array[1..4] of Word;
begin
  Result := '';
  iBufferSize := GetFileVersionInfoSize(PChar(FileName), iDummy);
  if (iBufferSize > 0) then
  begin
    GetMem(pBuffer, iBufferSize);
    try
    GetFileVersionInfo(PChar(FileName), 0, iBufferSize, pBuffer);
    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    finally
      FreeMem(pBuffer);
    end;
    Result := Format(FMT, [iVer[1], iVer[2], iVer[3], iVer[4]]);
  end;
end;
procedure TForm3.FindApp();
var system_dir, AVS_file, MP_file: string;
    SystemDir: array [0..255] of Char;
begin
GetSystemDirectory(SystemDir,255);
system_dir := StrPas(SystemDir);

AVS_file := FileSearch('avisynth.dll', system_dir);


  if AVS_file<>'' then
  begin
    AviSynthStatusEDIT.Text:='OK';
    AviSynthStatusEDIT.Color:=RGB(100,200,100);
    AviSynthVersionEDIT.Text:=Sto_GetFmtFileVersion(AVS_file, '%d.%d.%d.%d');
  end else
  begin
    AviSynthStatusEDIT.Text:='Error';
    AviSynthStatusEDIT.Color:=RGB(255,100,100);
    AviSynthVersionEDIT.Text:='N/A';
    ShowMessage(AvsNeedMESSAGE);
  end;

MP_file := MediaPlayerPathEDIT.Text;

  if FileExists(MP_file) then
  begin
    MediaPlayerStatusEDIT.Text := 'OK';
    MediaPlayerStatusEDIT.Color:=RGB(100,200,100);
    MediaPlayerVersionEDIT.Text := Sto_GetFmtFileVersion(MP_file, '%d.%d.%d.%d');
  end else
  begin
    MediaPlayerStatusEDIT.Text := 'Error';
    MediaPlayerStatusEDIT.Color:=RGB(255,100,100);
    MediaPlayerVersionEDIT.Text := 'N/A';
  end;
end;
procedure TForm3.ReadIni();
var ini : TIniFile;
    lang : string;
begin

ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.ini' ) );
if FileExists('C:\Program Files\Windows Media Player\mplayer2.exe') then
MediaPlayerPathEDIT.Text:='C:\Program Files\Windows Media Player\mplayer2.exe';
if FileExists(ExtractFilePath(Application.ExeName)+'mplayerc.exe') then
MediaPlayerPathEDIT.Text:=ExtractFilePath(Application.ExeName)+'mplayerc.exe';
if ini.ReadString('Player', 'path', 'brak')<>'brak' then
MediaPlayerPathEDIT.Text:=ini.ReadString('Player', 'path', 'brak');


lang:=Ini.ReadString('Lang', 'name', 'polski.lng');

ini.Free;

LangCOMBOBOX.Text:=lang;

end;
procedure TForm3.ChangeLang(lang : string);
var ini : TIniFile;
begin
ini := TIniFile.Create( ExtractFilePath(Application.ExeName)+lang);

LangErrorMESSAGE:=ini.ReadString('AVStudio','LangError','Plik s³ownika jest innej wersji ni¿ program');

if FileExists(ExtractFilePath(Application.ExeName)+lang) then
if ini.ReadString('AVStudio', 'Version', '')<>Form1.NazwaProgramu then
Application.MessageBox(PChar(LangErrorMESSAGE),PChar(Form1.NazwaProgramu),MB_OK);


AvsNeedMESSAGE:=ini.ReadString('Messages','AvsNeed','Do poprawnej pracy aplikacja wymaga zainstalowania serwera klatek AviSynth');
OutOfRangeMESSAGE:=ini.ReadString('Messages','OutOfRange','Wartoœæ poza zakresem'); // Value out of range
OverwriteMESSAGE:=ini.ReadString('Messages','Overwrite','Klip o tej nazwie ju¿ istnieje. Czy chcesz nadpisaæ?');
ClipNemeErrorMESSAGE:=ini.ReadString('Messages','ClipNameError','Wpisz nazwe klipu');
UnknownErrorMESSAGE:=ini.ReadString('Messages','UnknownError','Napotkano nieoczekiwany b³¹d');//'Sorry, An Unknown Error'
CouldNotFindMediaPlayerMESSAGE:=ini.ReadString('Messages','CouldNotFindMediaPlayer','Nie znaleziono odtwarzacza plików video');//'Sorry, Could Not Find Media Player';
RemoveClipMESSAGE:=ini.ReadString('Messages','RemoveClip','Czy chcesz usun¹æ wybrany klip?');
SaveChangesMESSAGE:=ini.ReadString('Messages','SaveChanges','Czy chcesz zapisaæ zmiany w projekcie?');
FileOverwriteMESSAGE:=ini.ReadString('Messages','FileOverwrite','Istnieje plik o podanej nazwie. Czy chcesz nadpisaæ?');
NoFileMESSAGE:=ini.ReadString('Messages','NoFile','Plik o podanej nazwie nie istnieje');

NoChangeSTRING:=Ini.ReadString('Main', 'NoChange', 'Bez zmian');

With Form1 do
begin
  FileMENU.Caption:=     Ini.ReadString('Main', 'File', 'Plik');
  NewMENU.Caption:=      Ini.ReadString('Main', 'New','Nowy projekt');
  OpenMENU.Caption:=     Ini.ReadString('Main', 'Open','Otwórz projekt');
  SaveMENU.Caption:=     Ini.ReadString('Main', 'Save','Zapisz projekt');
  SaveAsMENU.Caption:=   Ini.ReadString('Main', 'SaveAs','Zapisz projekt jako');
  ExportAVSMENU.Caption:=Ini.ReadString('Main', 'ExportAVS','Export AVS');
  ExitMENU.Caption:=     Ini.ReadString('Main', 'Exit','Koniec');

  ClipMenu.Caption:=    Ini.ReadString('Main', 'Clip','Klip');
  AddMENU.Caption:=     Ini.ReadString('Main', 'Add','Dodaj klip');
  ModMENU.Caption:=     Ini.ReadString('Main', 'Mod','Edytuj klip');
  RemoveMENU.Caption:=  Ini.ReadString('Main', 'Remove','Usuñ klip');

  ToolsMENU.Caption:=   Ini.ReadString('Main', 'Tools','Narzêdzia');
  SettingsMENU.Caption:=Ini.ReadString('Main', 'Settings','Ustawienia');
  ReloadMENU.Caption:=    Ini.ReadString('Main', 'Reload','Odœwie¿');
  PreviewMENU.Caption:= Ini.ReadString('Main', 'Preview','Podgl¹d');

  HelpMENU.Caption:=  Ini.ReadString('Main', 'Help','Pomoc');
  AboutMENU.Caption:= Ini.ReadString('Main', 'About','O programie');
  AutorMENU.Caption:= Ini.ReadString('Main', 'Autor','Autor');

  Title:=Ini.ReadString('Main', 'Untitled','bez nazwy');

  NewBUTTON.Caption:=Form1.NewMENU.Caption;
  OpenBUTTON.Caption:=Form1.OpenMENU.Caption;
  SaveBUTTON.Caption:=Form1.SaveMENU.Caption;
  AddBUTTON.Caption:=Form1.AddMENU.Caption;
  RemoveBUTTON.Caption:=Form1.RemoveMENU.Caption;
  ModBUTTON.Caption:=Form1.ModMENU.Caption;
  ReloadBUTTON.Caption:=Form1.ReloadMENU.Caption;
  PreviewBUTTON.Caption:=Form1.PreviewMENU.Caption;
  ExportAVSBUTTON.Caption:=Form1.ExportAVSMENU.Caption;
  addPOPUP.Caption:=Form1.AddMENU.Caption;
  ModPOPUP.Caption:=Form1.ModMENU.Caption;
  RemovePOPUP.Caption:=Form1.RemoveMENU.Caption;
end;


With Form2 do
begin
  ofSTRING:=Ini.ReadString('Clip', 'of','z');
  TempFiltersMESSAGE:='#'+Ini.ReadString('Clip', 'TempFilters', 'Filtry pomocnicze - nie zostan¹ dodane do projektu');
  PlayerPAGE.Caption:=Ini.ReadString('Clip', 'Player', 'Player');
  ScriptPage.Caption:=Ini.ReadString('Clip', 'Script', 'Skrypt');
  Caption:=Ini.ReadString('Clip', 'Edit', 'Edycja');
  SelectCOMBOBOX.Items.Strings[0]:=NoChangeSTRING;
  SelectCOMBOBOX.Items.Strings[1]:=Ini.ReadString('Clip', 'SelectEven','Parzyste');
  SelectCOMBOBOX.Items.Strings[2]:=Ini.ReadString('Clip', 'SelectOdd','Nieparzyste');
  SelectCOMBOBOX.Items.Strings[3]:=Ini.ReadString('Clip', 'SelectEvery','Wybierz co...');
  ZastosujBUTTON.Caption:=Ini.ReadString('Clip', 'Apply', 'Zastosuj');
  OK.Caption:=Ini.ReadString('Clip', 'OK', 'OK');
  CancelBtn.Caption:=Ini.ReadString('Clip', 'Cancel', 'Anuluj');
  PrewievBUTTON.Caption:=Ini.ReadString('Clip', 'Preview', 'Podgl¹d');
  SaveAvsBUTTON.Caption:=Ini.ReadString('Clip', 'SaveAVS', 'Zapisz AVS');
  SaveFrameBUTTON.Caption:=Ini.ReadString('Clip', 'SaveBMP', 'Zapisz BMP');
TabSheet1.Caption:=Ini.ReadString('Clip', 'Clip', 'Klip');
  InfoRADIOGROUP.Caption:=Ini.ReadString('Clip', 'Info', 'Informacje');
  ReverseCHECKBOX.Caption:=Ini.ReadString('Clip', 'Reverse', 'Odtwórz od koñca');
TabSheet2.Caption:=Ini.ReadString('Clip', 'Resolution', 'Rozdzielczoœæ');
  ARRADIOGROUP.Caption:=Ini.ReadString('Clip', 'AspectRatio', 'Proporcje');
  ARRADIOGROUP.Items.Strings[0]:=NoChangeSTRING;
  ARErrLABEL.Caption:=Ini.ReadString('Clip', 'AspectRatioError', 'B³¹d aspektu');
  VZoomLABEL.Caption:=Ini.ReadString('Clip', 'VerticalZoom', 'Zoom pion.');
  HZoomLABEL.Caption:=Ini.ReadString('Clip', 'HorizontalZoom', 'Zoom poziom.');
  ResizeRADIOGROUP.Caption:=Ini.ReadString('Clip', 'Resize', 'Zmiana rozdzielczoœci');
  CropGROUPBOX.Caption:=Ini.ReadString('Clip', 'Crop', 'Kadrowanie');
  LetterboxGROUPBOX.Caption:=Ini.ReadString('Clip', 'Letterbox', 'Obramowanie (Letterbox)');
TabSheet3.Caption:=Ini.ReadString('Clip', 'Picture', 'Obraz');
  InvertGROUPBOX.Caption:=Ini.ReadString('Clip', 'Invert', 'Odwróæ kana³');
  InvertRedCHECKBOX.Caption:=Ini.ReadString('Clip', 'Red', 'Czerwony');
  InvertGreenCHECKBOX.Caption:=Ini.ReadString('Clip', 'Green', 'Zielony');
  InvertBlueCHECKBOX.Caption:=Ini.ReadString('Clip', 'Blue', 'Niebieski');
  TurnFlipGROUPBOX.Caption:=Ini.ReadString('Clip', 'TurnFlip', 'Odwróæ obraz');
  FlipVCHECKBOX.Caption:=Ini.ReadString('Clip', 'VerticalFlip', 'Odbij pionowo');
  FlipHCHECKBOX.Caption:=Ini.ReadString('Clip', 'HorizontalFlip', 'Odbij poziomo');
  TurnLeftCHECKBOX.Caption:=Ini.ReadString('Clip', 'TurnLeft', 'Oderóæ w lewo');
  TurnRightCHECKBOX.Caption:=Ini.ReadString('Clip', 'TurnRight', 'Odwróæ w prawo');
  GreyscaleCHECKBOX.Caption:=Ini.ReadString('Clip', 'Grayscale', 'Skala szaroœci');
  ConvertToRADIOGROUP.Caption:=Ini.ReadString('Clip', 'ConvertTo', 'Zmieñ przestrzeñ kolorów');
  ConvertToRADIOGROUP.Items.Strings[0]:=NoChangeSTRING;
  FadeGROUPBOX.Caption:=Ini.ReadString('Clip', 'Fade', '');
  FadeInLABEL.Caption:=Ini.ReadString('Clip', 'FadeIn', 'Rozjaœnij');
  FadeOutLABEL.Caption:=Ini.ReadString('Clip', 'FadeOut', 'Œciemnij');
TabSheet4.Caption:=Ini.ReadString('Clip', 'Tweak', 'Nasycenie');
  HueGROUPBOX.Caption:=Ini.ReadString('Clip', 'Hue', 'Barwa');
  SatGROUPBOX.Caption:=Ini.ReadString('Clip', 'Saturation', 'Nasycenie');
  BrightGROUPBOX.Caption:=Ini.ReadString('Clip', 'Bright', 'Jasnoœæ');
  ContGROUPBOX.Caption:=Ini.ReadString('Clip', 'Contrast', 'Kontrast');
  coringCHECKBOX.Caption:=Ini.ReadString('Clip', 'Coring', 'Przytnij kana³y lumy do [16,235]');
TabSheet5.Caption:=Ini.ReadString('Clip', 'SharpenBlur', 'Ostroœæ/Rozmycie');
  AmountHGROUPBOX.Caption:=Ini.ReadString('Clip', 'HorizontalAmount', 'Promieñ poziomy');
  AmountVGROUPBOX.Caption:=Ini.ReadString('Clip', 'VerticalAmount', 'Promieñ pionowy');
  HeqVCHECKBOX.Caption:=Ini.ReadString('Clip', 'HeqV', 'Promieñ poziomy = Promieñ pionowy');
TabSheet6.Caption:=Ini.ReadString('Clip', 'Sound', 'DŸwiêk');
  NormalizeGROUPBOX.caption:=Ini.ReadString('Clip', 'NormalizeTab', 'Normalizacja');
  NormalizeCHECKBOX.Caption:=Ini.ReadString('Clip', 'Normalize', 'Normalizuj');
  NormalizeShowCHECKBOX.Caption:=Ini.ReadString('Clip', 'NormalizeShowInfo', 'Poka¿ info');
  volumeString:=Ini.ReadString('Clip', 'Volume', 'G³oœnoœæ');
  ChanelsRADIOGROUP.Caption:=Ini.ReadString('Clip', 'Channels', 'Kana³y');
  ChanelsRADIOGROUP.Items.Strings[0]:=NoChangeSTRING;
  ChanelsRADIOGROUP.Items.Strings[1]:=Ini.ReadString('Clip', 'Mono', 'Mono');
  ChanelsRADIOGROUP.Items.Strings[2]:=Ini.ReadString('Clip', 'Left', 'Lewy');
  ChanelsRADIOGROUP.Items.Strings[3]:=Ini.ReadString('Clip', 'Right', 'Prawy');
  ChanelsRADIOGROUP.Items.Strings[4]:=Ini.ReadString('Clip', 'Stereo', 'Stereo (AC3)');
  PrecisionRADIOGROUP.Caption:=Ini.ReadString('Clip', 'Precision', 'Próbkowanie');
  PrecisionRADIOGROUP.Items.Strings[0]:=NoChangeSTRING;
  ssrcGROUPBOX.Caption:=Ini.ReadString('Clip', 'SamplingRate', 'Czêstotliwoœæ próbkowania [Hz]');
  ssrcCOMBOBOX.Text:=NoChangeSTRING;
  ssrcCOMBOBOX.Items.Strings[0]:=NoChangeSTRING;
  ssrcFastCHECKBOX.Caption:=Ini.ReadString('Clip', 'Fast', 'Turbo (gorsza jakoœæ)');
  InneCOMBOBOX.Caption:=Ini.ReadString('Clip', 'Else', 'Inne');
  EnsureVBRMP3SyncCHECKBOX.Caption:=Ini.ReadString('Clip', 'EnsureVBRMP3Sync', 'Synchronizuj VBR MP3');
  KillAudioCHECKBOX.Caption:=Ini.ReadString('Clip', 'KillAudio', 'Usuñ œcie¿kê dŸwiêkow¹');
end;

With Form3 do
begin
  Caption:=Form1.SettingsMENU.Caption;
  MediaPlayerStatusEDIT.EditLabel.Caption:= Ini.ReadString('Settings', 'Status','Status');
  MediaPlayerVersionEDIT.EditLabel.Caption:= Ini.ReadString('Settings', 'Version','Wersja');
  AviSynthStatusEDIT.EditLabel.Caption:=Form3.MediaPlayerStatusEDIT.EditLabel.Caption;
  AviSynthVersionEDIT.EditLabel.Caption:=Form3.MediaPlayerVersionEDIT.EditLabel.Caption;
  LangGROUPBOX.Caption:=Ini.ReadString('Settings', 'Lang','Jêzyk');
  ApplyBUTTON.Caption :=Ini.ReadString('Settings', 'Apply','Zastosuj');
  OkBUTTON.Caption:=Ini.ReadString('Settings', 'OK','Ok');
  CancelBUTTON.Caption:=Ini.ReadString('Settings', 'Cancel','Anuluj');
end;

ini.Free;
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////Obs³uga Formy///////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

procedure szukajLNG(folder:string);
var fs:TSearchRec;
begin
  if FindFirst(folder+'\*.*',faAnyFile,fs)=0 then
    repeat
      if UpperCase(ExtractFileExt(fs.Name))='.LNG' then
        Form3.LangCOMBOBOX.Items.Add(fs.Name);
    until FindNext(fs)<>0;
  FindClose(fs);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
ReadIni;
ChangeLang(LangCOMBOBOX.Text);
FindApp;
szukajLNG(ExtractFilePath(Application.ExeName));
end;
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Enabled:=true;
end;

procedure TForm3.SelectPlayerBUTTONClick(Sender: TObject);
begin
OpenDialog1.Execute();
if OpenDialog1.FileName<>'' then
  begin
  MediaPlayerPathEDIT.Text :=OpenDialog1.FileName;
  FindApp;
  end;
end;
procedure TForm3.LangCOMBOBOXSelect(Sender: TObject);
begin
ChangeLang(LangCOMBOBOX.Text);
end;

procedure TForm3.OkBUTTONClick(Sender: TObject);
begin
ApplyBUTTON.Click;
Form3.Close;
end;
procedure TForm3.ApplyBUTTONClick(Sender: TObject);
var
ini : TIniFile;
begin
  FindApp;
  ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.ini' ) );
  ini.WriteString('Player', 'path', MediaPlayerPathEDIT.Text);
  ini.WriteString('Lang', 'name', LangCOMBOBOX.Text);
  ini.Free;
  ChangeLang(LangCOMBOBOX.text);
end;
procedure TForm3.CancelBUTTONClick(Sender: TObject);
begin
ReadIni;
Form3.Close;
end;

procedure TForm3.AviSynthStatusEDITEnter(Sender: TObject);
begin
OkBUTTON.SetFocus;
end;
procedure TForm3.AviSynthVersionEDITEnter(Sender: TObject);
begin
OkBUTTON.SetFocus;
end;
procedure TForm3.MediaPlayerStatusEDITEnter(Sender: TObject);
begin
OkBUTTON.SetFocus;
end;
procedure TForm3.MediaPlayerVersionEDITEnter(Sender: TObject);
begin
OkBUTTON.SetFocus;
end;

end.
