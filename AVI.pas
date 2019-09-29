unit AVI;

interface
uses
  Windows, Messages, Graphics, Classes, Controls, mmSystem
  {$IFNDEF D3},SysUtils{$ENDIF}, Dialogs;

const
  cBufSize = 2048;     {audio buffer size}
  CAheadBuffers = 8;

type
  TAviPlayer = class
  private
    fFileName     : Widestring;
    fOpen         : boolean;
    fGotAttributes: boolean;
    fLength       : integer;
    fFrameWidth   : integer;
    fFrameHeight  : integer;

    favifile      : pointer;
    fvideostream  : pointer;
    fFrame        : integer;
    fgetframe     : pointer;
    hdrawdib      : THandle;
    fFrameRate    : integer;

    procedure ValidateFrameNumber;
    procedure SetFileName(val : Widestring);

    procedure OpenFile; virtual;
    procedure CloseFile; virtual;

  public
    constructor Create;
    destructor  Destroy; override;

    procedure   DrawFrameToBitmap(bmp: TBitmap);
    property    FrameCount : integer read fLength;
    property    FrameHeight: Integer read FFrameHeight;
    property    FrameWidth : Integer read FFrameWidth;
    property    FrameRate : integer read FFrameRate;

    property    Open : boolean read fOpen;
    property    GotAttributes : boolean read fGotAttributes;
    property    FileName : Widestring  read fFileName write SetFileName;
    property    Position : integer read fFrame write fFrame;

  end;

type
  TAVIStream = record
    fccType    : longint;
    fccHandler : longint;
    dwFlags    : longint;
    dwCaps     : longint;
    wPriority  : word;
    wLanguage  : word;
    dwScale    : longint;
    dwRate     : longint;
    dwStart    : longint;
    dwLength   : longint;
    dwInitialFrames : longint;
    dwSuggestedBufferSize : longint;
    dwQuality    : longint;
    dwSampleSize : longint;
    rcFrame      : TRect;
    dwEditCount  : longint;
    dwFormatChangeCount : longint;
    Name : array [0..64] of char;
  end;

  PAVIStream = ^TAVIStream;

  PAVIFile = pointer;

  TAVIFileInfo = record
    dwMaxBytesPerSec : longint; // max. transfer rate
    dwFlags          : longint; // the ever-present flags
    dwCaps           : longint;
    dwStreams        : longint;
    dwSuggestedBufferSize : longint;

    dwWidth          : longint;
    dwHeight         : longint;

    dwScale          : longint;
    dwRate           : longint; // dwRate / dwScale == samples/second
    dwLength         : longint;

    dwEditCount      : longint;

    szFileType       : array[0..63] of char; // descriptive string for file type?
  end;

  PAVIFileInfo = ^TAVIFileInfo;

  TAVIStreamInfo = record
    fccType               : longint;
    fccHandler            : longint;
    dwFlags               : longint; // Contains AVITF_* flags
    dwCaps                : longint;
    wPriority             : word;
    wLanguage             : word;
    dwScale               : longint;
    dwRate                : longint; // dwRate / dwScale == samples/second
    dwStart               : longint;
    dwLength              : longint; // In units above...
    dwInitialFrames       : longint;
    dwSuggestedBufferSize : longint;
    dwQuality             : longint;
    dwSampleSize          : longint;
    rcFrame               : TRect;
    dwEditCount           : longint;
    dwFormatChangeCount   : longint;
    szName  : array[0..63] of char;
  end;

  PAVIStreamInfo = ^TAVIStreamInfo;


//BeginSkipConst
procedure AVIFileInit; stdcall; external 'avifil32.dll' name 'AVIFileInit';

procedure AVIFileExit; stdcall; external 'avifil32.dll' name 'AVIFileExit';

function  AVIFileOpenW(avifile : pointer; filename : pwidechar; mode : integer;
                   CLSID : pointer) : integer; stdcall; external 'avifil32.dll' name 'AVIFileOpenW';

function  AVIFileRelease(avifile : pointer) : longint; stdcall; external 'avifil32.dll' name 'AVIFileRelease';

function  AVIFileGetStream(avifile : pointer; avistream : PAVIStream;
                           streamtype : longint; lParam : longint) : integer; stdcall; external 'avifil32.dll' name 'AVIFileGetStream';

function  AVIStreamGetFrameOpen(avistream : PAVIStream; bitmapwanted : pointer) : pointer; stdcall; external 'avifil32.dll' name 'AVIStreamGetFrameOpen';

procedure AVIStreamGetFrameClose(pget : pointer); stdcall; external 'avifil32.dll' name 'AVIStreamGetFrameClose';

function  AVIStreamGetFrame(getframe : pointer; position : longint) : pointer; stdcall; external 'avifil32.dll' name 'AVIStreamGetFrame';

function  AVIStreamOpenFromFileW(avistream : PAVIStream; filename : pwidechar;
                                streamtype : word; lParam : longint;
                                mode : longint; clsid : pointer) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamOpenFromFileW';

procedure AVIStreamRelease(avistream : PAVIStream); stdcall; external 'avifil32.dll' name 'AVIStreamRelease';
function  AVIFileInfo(pfile : PAVIFile; pfi : PAVIFileInfo; lSize : longint) : integer; stdcall; external 'avifil32.dll' name 'AVIFileInfo';

function  AVIStreamInfo(pstream : PAVIStream; psi : PAVISTREAMINFO; lsize : longint) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamInfo';
function  AVIStreamRead(pavi : PAVIStream; lStart, lSamples : longint;
                        lpBuffer : pointer; cbBuffer : longint;
                        plBytes,  plSamples : pointer) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamRead';

function  AVIStreamReadFormat(pavi : PAVIStream; lPos : longint;
                              lpFormat : pointer; lpcbFormat : pointer) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamReadFormat';

function  AVIStreamBeginStreaming(pavi : PAVIStream; lStart, lEnd, lRate : longint) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamBeginStreaming';
function  AVIStreamEndStreaming(pavi : PAVIStream) : integer; stdcall; external 'avifil32.dll' name 'AVIStreamEndStreaming';
function  AVIStreamStart(pavi : PAVIStream) : longint; stdcall; external 'avifil32.dll' name 'AVIStreamStart';
function  AVIStreamLength(pavi: PAVIStream) : longint; stdcall; external 'avifil32.dll' name 'AVIStreamLength';
function  AVIStreamSampleToTime(pavi : PAVIStream; lSample : longint) : longint; stdcall; external 'avifil32.dll' name 'AVIStreamSampleToTime';
function  AVIStreamTimeToSample(pavi : PAVIStream; Time : longint) : longint; stdcall; external 'avifil32.dll' name 'AVIStreamTimeToSample';

function  DrawDIBOpen : THandle; stdcall; external 'msvfw32.dll' name 'DrawDibOpen';
procedure DrawDIBClose (h : THandle); stdcall; external 'msvfw32.dll' name 'DrawDibClose';
function DrawDibDraw (hdib, dc : THandle; xDst, yDst, dxDst, dyDst : integer;
                       lpbi, lpBits : pointer; xSrc, ySrc, dxSrc, dySrc, wFlags : integer): boolean; stdcall; external 'msvfw32.dll' name 'DrawDibDraw';
//EndSkipConst

const
  streamtypeVIDEO : longint = $73646976;

  AVISTREAMREAD_CONVENIENT  = -1;

  DDF_HALFTONE = $1000;

{-----------------------------------------------------------------------}

implementation

{-----------------------------------------------------------------------}

function  AVIStreamEnd  (pavi : PAVIStream) : longint;
begin
  result := AVIStreamStart(pavi) + AVIStreamLength(pavi);
end;

{-----------------------------------------------------------------------}

function  AVIStreamFormatSize (pavi : PAVIStream; lPos : longint; plSize : pointer) : longint;
begin
  result := AVIStreamReadFormat(pavi, lPos, nil, plSize);
end;

{-----------------------------------------------------------------------}

constructor TAviPlayer.Create;
begin
  AVIFileInit;
  hdrawdib := DrawDIBOpen;
end;

{------------------------------------------------------------------}

destructor TAviPlayer.Destroy;
begin
  DrawDIBClose(hdrawdib);
  if fOpen then CloseFile;
  AVIFileExit;
end;

{------------------------------------------------------------------}

procedure TAviPlayer.ValidateFrameNumber;
begin
  if fOpen then
    if fFrame > fLength - 1 then
      fFrame := fLength - 1
    else
      if fFrame < 0 then
        fFrame := 0;
end;

{------------------------------------------------------------------}

procedure TAviPlayer.OpenFile;
var
  info : TAVIStreamInfo;
  Res: HResult;
  lStreamSize: LONGint;
  chunk: array of byte;
  bInfoHeader: TBitmapInfoHeader;
begin
  fOpen := false;
  fGotAttributes:=false;
  if ffilename = '' then
    exit;

  if (AVIFileOpenW(@favifile, @(ffilename[1]), 0, nil) <> 0) then
    exit;

//  if (AVIStreamOpenFromFileW(@fvideostream,@(ffilename[1]),0,0,OF_SHARE_DENY_WRITE,nil)<>0) then exit;

  if (AVIFileGetStream(favifile, @fvideostream, streamtypeVIDEO, 0) <> 0) then
    begin
      if Assigned(favifile) then AVIFileRelease(favifile);
      exit;
    end;

  Res:=AVIStreamInfo(fvideostream, @info, sizeof(info));
  if Res <> 0 then
    begin
      try if Assigned(favifile) then
        AVIFileRelease(favifile);
      except;end;
      exit;
    end;

  with info do
    begin
      fLength := dwlength;
      fFrameWidth := rcframe.right - rcframe.left;
      fFrameHeight := rcframe.bottom - rcframe.top;
      fFrameRate := round(dwRate/dwScale*1000);
      fFrame := dwStart;
    end;
  fGotAttributes:=true;

  Res := AVIStreamFormatSize(fvideostream, AVIStreamStart(fvideostream), @lStreamSize);
  if Res <> 0 then
  begin
    try if Assigned(fvideostream) then
      AVIStreamRelease(fvideostream);
    except;end;
    try if Assigned(favifile) then
      AVIFileRelease(favifile);
    except;end;
  end;

  SetLength(chunk,lStreamSize);
  Res := AVIStreamReadFormat(fvideostream, AVIStreamStart(fvideostream), chunk, @lStreamSize);
  if Res <> 0 then
  begin
    try if Assigned(fvideostream) then
      AVIStreamRelease(fvideostream);
    except;end;
    try if Assigned(favifile) then
      AVIFileRelease(favifile);
    except;end;
  end;

  CopyMemory(@bInfoHeader,chunk,sizeof(bInfoHeader));

  bInfoHeader.biCompression := BI_RGB;
  if (bInfoHeader.biBitCount <> 24) then
  begin
    bInfoHeader.biBitCount := 24;
    bInfoHeader.biSizeImage := bInfoHeader.biWidth * abs(bInfoHeader.biHeight) * round(bInfoHeader.biPlanes*bInfoHeader.biBitCount / 8);
  end;

  CopyMemory(chunk,@bInfoHeader,sizeof(bInfoHeader));

  fgetframe := AVIStreamGetFrameOpen(fvideostream, PBitmapInfoHeader(chunk));
  if fgetframe = nil then
    begin//no compressor gives us RGB32
      fgetframe := AVIStreamGetFrameOpen(fvideostream, nil);
      if fgetframe <> nil then//compressor gave some other format, might not work
//        MessageDlg('No suitable compressor could be found to give RGB32 images.' + #13 + 'If the video does not appear in the video window, recompress.', mtWarning, [mbOk],0);
        MessageDlg('Nie mo¿na odnaleŸæ odpowiedniego dekompresora do zdekodowania RGB32.' + #13 + 'Jeœli klip nie odtwarza siê poprawnie, plik nale¿y poddaæ rekompresji.', mtWarning, [mbOk],0);
    end;

  if fgetframe = nil then
    begin
      try if Assigned(fvideostream) then
        AVIStreamRelease(fvideostream);
      except;end;
      try if Assigned(favifile) then
        AVIFileRelease(favifile);
      except;end;
      exit;
    end;
  fOpen := true;
  SetLength(chunk,0);
end;

{------------------------------------------------------------------}

procedure TAviPlayer.CloseFile;
begin
  if not fOpen then
    exit;

  try if Assigned(fgetframe) then
    AVIStreamGetFrameClose(fgetframe);
  except;end;

  try if Assigned(fvideostream) then
    AVIStreamRelease(fvideostream);
  except;end;

  try if Assigned(favifile) then
    AVIFileRelease(favifile);
  except;end;

  fvideostream := nil;
  favifile := nil;
  fgetframe := nil;
  fOpen := false;
  fLength := 0;
end;

{------------------------------------------------------------------}

procedure TAviPlayer.DrawFrameToBitmap(bmp: TBitmap);
var
  lpbi: PBITMAPINFOHEADER;
  hBmp: HBITMAP;
  TmpBmp: TBitmap;
  DC_Handle: HDC;
  bits: PChar;
begin
  if not fOpen then
    exit;

  ValidateFrameNumber;

  try
    lpbi := AVIStreamGetFrame(fgetframe, fFrame);
    TmpBmp := TBitmap.Create;
    if not Assigned(lpbi) then exit;

    TmpBmp.Height := lpbi.biHeight;
    TmpBmp.Width  := lpbi.biWidth;
    bits := Pointer(Integer(lpbi) + SizeOf(TBITMAPINFOHEADER));

    DC_Handle := CreateDC('Display', nil, nil, nil);
    try
      hBmp := CreateDIBitmap(DC_Handle, // handle of device context
        lpbi^, // address of bitmap size and format data
        CBM_INIT, // initialization flag
        bits, // address of initialization data
        PBITMAPINFO(lpbi)^, // address of bitmap color-format data
        DIB_RGB_COLORS); // color-data usage
      TmpBmp.Handle := hBmp;
      bmp.Canvas.Draw(0,0,TmpBmp);
    finally
      DeleteDC(DC_Handle);
    end;
    finally
      TmpBmp.Free;
  end;
end;

{------------------------------------------------------------------}

procedure TAVIPlayer.SetFileName(val : Widestring);
begin
  if val = fFileName then exit;
  ffilename := val;
  CloseFile;
  OpenFile;
end;


end.
