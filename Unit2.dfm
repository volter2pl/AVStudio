object Form2: TForm2
  Left = 313
  Top = 236
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edycja'
  ClientHeight = 609
  ClientWidth = 739
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
  ParentFont = True
  OldCreateOrder = True
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LeftPANEL: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 469
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object BottomPANEL: TPanel
      Left = 5
      Top = 33
      Width = 378
      Height = 431
      Align = alClient
      BevelOuter = bvNone
      Caption = 'BottomPANEL'
      TabOrder = 0
      object Tab: TPageControl
        Left = 0
        Top = 0
        Width = 378
        Height = 431
        ActivePage = TabSheet1
        Align = alClient
        Constraints.MinHeight = 331
        Constraints.MinWidth = 360
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Klip'
          object Bevel1: TBevel
            Left = 3
            Top = 3
            Width = 170
            Height = 159
          end
          object time: TLabel
            Left = 63
            Top = 104
            Width = 20
            Height = 13
            Caption = 'time'
          end
          object ClipWidth: TLabel
            Left = 62
            Top = 9
            Width = 45
            Height = 13
            Caption = 'ClipWidth'
          end
          object codec: TLabel
            Left = 63
            Top = 47
            Width = 28
            Height = 13
            Caption = 'codec'
          end
          object bitrate: TLabel
            Left = 63
            Top = 123
            Width = 32
            Height = 13
            Caption = 'bitrate'
          end
          object size: TLabel
            Left = 63
            Top = 142
            Width = 18
            Height = 13
            Caption = 'size'
          end
          object fps: TLabel
            Left = 63
            Top = 28
            Width = 15
            Height = 13
            Caption = 'fps'
          end
          object ClipHeight: TLabel
            Left = 94
            Top = 9
            Width = 48
            Height = 13
            Caption = 'ClipHeight'
          end
          object AR: TLabel
            Left = 63
            Top = 66
            Width = 14
            Height = 13
            Caption = 'AR'
          end
          object Frames: TLabel
            Left = 63
            Top = 85
            Width = 35
            Height = 13
            Caption = 'Frames'
          end
          object Label1: TLabel
            Left = 12
            Top = 9
            Width = 30
            Height = 13
            Caption = 'rozdz.'
          end
          object Label2: TLabel
            Left = 12
            Top = 28
            Width = 15
            Height = 13
            Caption = 'fps'
          end
          object Label3: TLabel
            Left = 12
            Top = 47
            Width = 28
            Height = 13
            Caption = 'kodek'
          end
          object Label4: TLabel
            Left = 12
            Top = 66
            Width = 46
            Height = 13
            Caption = 'proporcje'
          end
          object Label5: TLabel
            Left = 13
            Top = 85
            Width = 28
            Height = 13
            Caption = 'klatek'
          end
          object Label6: TLabel
            Left = 13
            Top = 104
            Width = 21
            Height = 13
            Caption = 'czas'
          end
          object Label7: TLabel
            Left = 13
            Top = 123
            Width = 32
            Height = 13
            Caption = 'bitrate'
          end
          object Label8: TLabel
            Left = 13
            Top = 142
            Width = 35
            Height = 13
            Caption = 'rozmiar'
          end
          object NewFpsCOBMOBOX: TComboBox
            Left = 179
            Top = 141
            Width = 136
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            OnChange = NewFpsCOBMOBOXChange
            Items.Strings = (
              '25.000'
              '23.976'
              '29.970'
              '30.000'
              '24.000')
          end
          object InfoRADIOGROUP: TRadioGroup
            Left = 179
            Top = 3
            Width = 140
            Height = 77
            Caption = 'InfoRADIOGROUP'
            ItemIndex = 0
            Items.Strings = (
              'Brak'
              'Info'
              'Histogram')
            TabOrder = 1
            OnClick = InfoRADIOGROUPClick
          end
          object SelectCOMBOBOX: TComboBox
            Left = 179
            Top = 113
            Width = 82
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 2
            Text = 'SelectAll'
            OnChange = SelectCOMBOBOXChange
            Items.Strings = (
              'SelectAll'
              'SelectEven'
              'SelectOdd'
              'SelectEvery')
          end
          object ReverseCHECKBOX: TCheckBox
            Left = 179
            Top = 86
            Width = 126
            Height = 17
            Caption = 'ReverseCHECKBOX'
            TabOrder = 3
            OnClick = ShowScriptExecute
          end
          object SelectEveryFrameSPINEDIT: TEdit
            Left = 267
            Top = 114
            Width = 37
            Height = 21
            TabOrder = 4
            Text = '1'
            OnChange = ShowScriptExecute
          end
          object UpDown1: TUpDown
            Left = 304
            Top = 114
            Width = 15
            Height = 21
            Associate = SelectEveryFrameSPINEDIT
            Min = 1
            Max = 9999
            Position = 1
            TabOrder = 5
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Rozdzielczosc'
          ImageIndex = 5
          Constraints.MinHeight = 285
          object ResMinus: TSpeedButton
            Left = 3
            Top = 20
            Width = 23
            Height = 22
            Glyph.Data = {
              D6020000424DD6020000000000003600000028000000100000000E0000000100
              180000000000A002000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000000000000000000000000000000000000000000000000000000000000000
              00FF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF00FFFF00FFFF00FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF00FFFF00FFFF00FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FF
              0000000000000000000000000000000000000000000000000000000000000000
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = ResMinusClick
          end
          object ResPlus: TSpeedButton
            Left = 315
            Top = 21
            Width = 23
            Height = 22
            Glyph.Data = {
              D6020000424DD6020000000000003600000028000000100000000E0000000100
              180000000000A002000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF000000000000000000000000000000FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000000000000000000000000000000000000000000000000000000000000000
              00FF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF00FFFF00FFFF00FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF00FFFF00FFFF00FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FF
              0000000000000000000000000000000000000000000000000000000000000000
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF000000000000000000000000000000FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = ResPlusClick
          end
          object ARErrLABEL: TLabel
            Left = 170
            Top = 51
            Width = 60
            Height = 13
            Caption = 'Aspect Error'
          end
          object VZoomLABEL: TLabel
            Left = 168
            Top = 80
            Width = 61
            Height = 13
            Caption = 'VZoomLABEL'
          end
          object HZoomLABEL: TLabel
            Left = 168
            Top = 109
            Width = 62
            Height = 13
            Caption = 'HZoomLABEL'
          end
          object Label9: TLabel
            Left = 32
            Top = 8
            Width = 38
            Height = 13
            Caption = 'modu'#322' X'
          end
          object Label10: TLabel
            Left = 97
            Top = 8
            Width = 24
            Height = 13
            Caption = 'szer.'
          end
          object Label11: TLabel
            Left = 217
            Top = 8
            Width = 23
            Height = 13
            Caption = 'wys.'
          end
          object Label12: TLabel
            Left = 271
            Top = 8
            Width = 38
            Height = 13
            Caption = 'modu'#322' Y'
          end
          object CropGROUPBOX: TGroupBox
            Left = 3
            Top = 223
            Width = 161
            Height = 121
            Caption = 'Kadrowanie'
            TabOrder = 0
            object rightmControl: TUpDown
              Left = 129
              Top = 56
              Width = 21
              Height = 21
              Associate = rightm
              Max = 9999
              Increment = 2
              Orientation = udHorizontal
              TabOrder = 0
            end
            object leftmControl: TUpDown
              Left = 33
              Top = 56
              Width = 21
              Height = 21
              Associate = leftm
              Max = 9999
              Increment = 2
              Orientation = udHorizontal
              TabOrder = 1
            end
            object topmControl: TUpDown
              Left = 81
              Top = 24
              Width = 15
              Height = 21
              Associate = topm
              Max = 9999
              Increment = 2
              TabOrder = 2
            end
            object bottommControl: TUpDown
              Left = 81
              Top = 88
              Width = 21
              Height = 21
              Associate = bottomm
              Max = 9999
              Increment = 2
              TabOrder = 3
            end
            object leftm: TEdit
              Left = 8
              Top = 56
              Width = 25
              Height = 21
              TabOrder = 4
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object bottomm: TEdit
              Left = 56
              Top = 88
              Width = 25
              Height = 21
              TabOrder = 5
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object topm: TEdit
              Left = 56
              Top = 24
              Width = 25
              Height = 21
              TabOrder = 6
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object rightm: TEdit
              Left = 104
              Top = 56
              Width = 25
              Height = 21
              TabOrder = 7
              Text = '0'
              OnChange = ShowScriptExecute
            end
          end
          object LetterboxGROUPBOX: TGroupBox
            Left = 170
            Top = 223
            Width = 168
            Height = 121
            Caption = 'Obramowanie (letterbox)'
            TabOrder = 1
            object rightpControl: TUpDown
              Left = 137
              Top = 56
              Width = 21
              Height = 21
              Associate = rightp
              Max = 9999
              Increment = 2
              Orientation = udHorizontal
              TabOrder = 0
            end
            object leftpControl: TUpDown
              Left = 41
              Top = 56
              Width = 21
              Height = 21
              Associate = leftp
              Max = 9999
              Increment = 2
              Orientation = udHorizontal
              TabOrder = 1
            end
            object toppControl: TUpDown
              Left = 89
              Top = 24
              Width = 21
              Height = 21
              Associate = topp
              Max = 9999
              Increment = 2
              TabOrder = 2
            end
            object bottompControl: TUpDown
              Left = 89
              Top = 88
              Width = 21
              Height = 21
              Associate = bottomp
              Max = 9999
              Increment = 2
              TabOrder = 3
            end
            object leftp: TEdit
              Left = 16
              Top = 56
              Width = 25
              Height = 21
              TabOrder = 4
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object bottomp: TEdit
              Left = 64
              Top = 88
              Width = 25
              Height = 21
              TabOrder = 5
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object topp: TEdit
              Left = 64
              Top = 24
              Width = 25
              Height = 21
              TabOrder = 6
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object rightp: TEdit
              Left = 112
              Top = 56
              Width = 25
              Height = 21
              TabOrder = 7
              Text = '0'
              OnChange = ShowScriptExecute
            end
          end
          object ResizeRADIOGROUP: TRadioGroup
            Left = 3
            Top = 128
            Width = 335
            Height = 89
            Caption = 'Rozdzielczo'#347#263
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'BilinearResize'
              'BicubicResize (soft bicubic)'
              'BicubicResize (neutral bicubic)'
              'BicubicResize (sharp bicubic)'
              'SimpleResize (fast)'
              'Lanczos4Resize (sharp)')
            TabOrder = 2
            OnClick = ResizeRADIOGROUPClick
          end
          object BlockWidthCOMBOBOX: TComboBox
            Left = 32
            Top = 21
            Width = 59
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 3
            TabOrder = 3
            Text = '8'
            Items.Strings = (
              '1'
              '2'
              '4'
              '8'
              '16'
              '32')
          end
          object Edit5: TEdit
            Left = 97
            Top = 21
            Width = 67
            Height = 21
            ReadOnly = True
            TabOrder = 4
            Text = '720'
            OnChange = ShowScriptExecute
          end
          object Edit6: TEdit
            Left = 170
            Top = 21
            Width = 70
            Height = 21
            ReadOnly = True
            TabOrder = 5
            Text = '576'
            OnChange = ShowScriptExecute
          end
          object BlockHeightCOMBOBOX: TComboBox
            Left = 246
            Top = 21
            Width = 63
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 3
            TabOrder = 6
            Text = '8'
            Items.Strings = (
              '1'
              '2'
              '4'
              '8'
              '16'
              '32')
          end
          object ARErrEDIT: TEdit
            Left = 246
            Top = 48
            Width = 63
            Height = 21
            ReadOnly = True
            TabOrder = 7
            Text = 'ARErrEDIT'
          end
          object VzoomEDIT: TEdit
            Left = 246
            Top = 77
            Width = 63
            Height = 21
            ReadOnly = True
            TabOrder = 8
            Text = 'VzoomEDIT'
          end
          object ARRADIOGROUP: TRadioGroup
            Left = 3
            Top = 48
            Width = 161
            Height = 77
            Caption = 'ARRADIOGROUP'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'bez zmian'
              '4:3'
              '16:9'
              '1:1')
            TabOrder = 9
            OnClick = ARRADIOGROUPClick
          end
          object HzoomEDIT: TEdit
            Left = 246
            Top = 104
            Width = 63
            Height = 21
            ReadOnly = True
            TabOrder = 10
            Text = 'HzoomEDIT'
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Obraz'
          object ConvertToRADIOGROUP: TRadioGroup
            Left = 167
            Top = 0
            Width = 158
            Height = 156
            Caption = 'ConvertTo'
            ItemIndex = 0
            Items.Strings = (
              'Bez zmian'
              'RGB'
              'RGB24'
              'RGB32'
              'YUY2'
              'YV12')
            TabOrder = 0
            OnClick = ShowScriptExecute
          end
          object RadioGroup3: TRadioGroup
            Left = 3
            Top = 280
            Width = 337
            Height = 58
            Caption = 'DeinterlanceRADIOGROUP'
            Columns = 2
            Items.Strings = (
              'Brak'
              'Kernel'
              'Field Deinterlance'
              'Field Deinterlance (bez '#322#261'czenia)'
              'Smart Bob'
              'TomsMoComp'
              'Blend (Po'#322#261'czenie p'#243'l)'
              'Discard'
              'Bob 720x288'
              'Resizing down  384x288'
              'Progressive scan (50fps)')
            TabOrder = 1
            Visible = False
          end
          object TurnFlipGROUPBOX: TGroupBox
            Left = 3
            Top = 104
            Width = 158
            Height = 122
            Caption = 'TurnFlipGROUPBOX'
            TabOrder = 2
            object FlipHCHECKBOX: TCheckBox
              Left = 17
              Top = 24
              Width = 126
              Height = 17
              Caption = 'FlipHCHECKBOX'
              TabOrder = 0
              OnClick = ShowScriptExecute
            end
            object FlipVCHECKBOX: TCheckBox
              Left = 17
              Top = 47
              Width = 126
              Height = 17
              Caption = 'FlipVCHECKBOX'
              TabOrder = 1
              OnClick = ShowScriptExecute
            end
            object TurnLeftCHECKBOX: TCheckBox
              Left = 17
              Top = 70
              Width = 126
              Height = 17
              Caption = 'TurnLeftCHECKBOX'
              TabOrder = 2
              OnClick = ShowScriptExecute
            end
            object TurnRightCHECKBOX: TCheckBox
              Left = 17
              Top = 93
              Width = 126
              Height = 17
              Caption = 'TurnRightCHECKBOX'
              TabOrder = 3
              OnClick = ShowScriptExecute
            end
          end
          object FadeGROUPBOX: TGroupBox
            Left = 167
            Top = 162
            Width = 158
            Height = 64
            Caption = 'FadeGROUPBOX'
            TabOrder = 3
            object FadeInColor: TShape
              Left = 128
              Top = 15
              Width = 15
              Height = 17
              Brush.Color = clBlack
              OnMouseDown = FadeInColorMouseDown
            end
            object FadeOutColor: TShape
              Left = 128
              Top = 38
              Width = 15
              Height = 17
              Brush.Color = clBlack
              OnMouseDown = FadeOutColorMouseDown
            end
            object FadeInLABEL: TLabel
              Left = 16
              Top = 16
              Width = 63
              Height = 13
              Caption = 'FadeInLABEL'
            end
            object FadeOutLABEL: TLabel
              Left = 16
              Top = 40
              Width = 71
              Height = 13
              Caption = 'FadeOutLABEL'
            end
            object FadeInFrames: TEdit
              Left = 64
              Top = 15
              Width = 41
              Height = 17
              AutoSize = False
              TabOrder = 0
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object FadeOutFrames: TEdit
              Left = 64
              Top = 38
              Width = 41
              Height = 17
              AutoSize = False
              TabOrder = 1
              Text = '0'
              OnChange = ShowScriptExecute
            end
            object FadeInControl: TUpDown
              Left = 105
              Top = 15
              Width = 15
              Height = 17
              Associate = FadeInFrames
              Max = 0
              TabOrder = 2
            end
            object FadeOutControl: TUpDown
              Left = 105
              Top = 38
              Width = 15
              Height = 17
              Associate = FadeOutFrames
              Max = 0
              TabOrder = 3
            end
          end
          object InvertGROUPBOX: TGroupBox
            Left = 3
            Top = 0
            Width = 158
            Height = 98
            Caption = 'InvertGROUPBOX'
            TabOrder = 4
            object InvertRedCHECKBOX: TCheckBox
              Left = 15
              Top = 24
              Width = 138
              Height = 17
              Caption = 'InvertRedCHECKBOX'
              TabOrder = 0
              OnClick = ShowScriptExecute
            end
            object InvertGreenCHECKBOX: TCheckBox
              Left = 16
              Top = 47
              Width = 137
              Height = 17
              Caption = 'InvertGreenCHECKBOX'
              TabOrder = 1
              OnClick = ShowScriptExecute
            end
            object InvertBlueCHECKBOX: TCheckBox
              Left = 16
              Top = 70
              Width = 137
              Height = 17
              Caption = 'InvertBlueCHECKBOX'
              TabOrder = 2
              OnClick = ShowScriptExecute
            end
          end
          object GreyscaleCHECKBOX: TCheckBox
            Left = 3
            Top = 232
            Width = 126
            Height = 17
            Caption = 'GreyscaleCHECKBOX'
            TabOrder = 5
            OnClick = ShowScriptExecute
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Nasycenie'
          ImageIndex = 10
          object coringCHECKBOX: TCheckBox
            Left = 3
            Top = 235
            Width = 254
            Height = 17
            Caption = 'coring'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = ShowScriptExecute
          end
          object HueGROUPBOX: TGroupBox
            Left = 0
            Top = 0
            Width = 370
            Height = 57
            Align = alTop
            Caption = 'Hue'
            TabOrder = 1
            object hueTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 34
              Align = alTop
              Max = 180
              Min = -180
              TabOrder = 0
              OnChange = ShowScriptExecute
            end
          end
          object SatGROUPBOX: TGroupBox
            Left = 0
            Top = 57
            Width = 370
            Height = 59
            Align = alTop
            Caption = 'Sat'
            TabOrder = 2
            object satTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 34
              Align = alTop
              Max = 100
              Position = 10
              TabOrder = 0
              OnChange = ShowScriptExecute
            end
          end
          object BrightGROUPBOX: TGroupBox
            Left = 0
            Top = 116
            Width = 370
            Height = 58
            Align = alTop
            Caption = 'Bright'
            TabOrder = 3
            object brightTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 34
              Align = alTop
              Max = 255
              Min = -255
              TabOrder = 0
              OnChange = ShowScriptExecute
            end
          end
          object ContGROUPBOX: TGroupBox
            Left = 0
            Top = 174
            Width = 370
            Height = 55
            Align = alTop
            Caption = 'Cont'
            TabOrder = 4
            object contTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 34
              Align = alTop
              Max = 100
              Position = 10
              TabOrder = 0
              OnChange = ShowScriptExecute
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Ostrosc'
          ImageIndex = 11
          object HeqVCHECKBOX: TCheckBox
            Left = 3
            Top = 119
            Width = 290
            Height = 17
            Caption = 'H = V'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = HeqVCHECKBOXClick
          end
          object AmountHGROUPBOX: TGroupBox
            Left = 0
            Top = 0
            Width = 370
            Height = 57
            Align = alTop
            Caption = 'Amount H'
            TabOrder = 1
            object AmountHTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 34
              Align = alTop
              Max = 158
              Min = -100
              TabOrder = 0
              OnChange = AmountHTRACKBARChange
            end
          end
          object AmountVGROUPBOX: TGroupBox
            Left = 0
            Top = 57
            Width = 370
            Height = 56
            Align = alTop
            Caption = 'Amount V'
            TabOrder = 2
            object AmountVTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 26
              Align = alTop
              Max = 158
              Min = -100
              TabOrder = 0
              OnChange = AmountVTRACKBARChange
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'D'#378'wi'#281'k'
          ImageIndex = 9
          object ChanelsRADIOGROUP: TRadioGroup
            Left = 2
            Top = 95
            Width = 195
            Height = 82
            Align = alCustom
            Caption = 'ChanelsRADIOGROUP'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Bez zmian'
              'Mono'
              'Lewy'
              'Prawy'
              'Stereo (AC3)')
            TabOrder = 0
            OnClick = ShowScriptExecute
          end
          object NormalizeGROUPBOX: TGroupBox
            Left = 0
            Top = 0
            Width = 370
            Height = 89
            Align = alTop
            Caption = 'NormalizeGROUPBOX'
            TabOrder = 1
            object NormalizeLABEL: TLabel
              Left = 262
              Top = 53
              Width = 79
              Height = 13
              Caption = 'G'#322'o'#347'no'#347#263': 100%'
            end
            object NormalizeTRACKBAR: TTrackBar
              Left = 2
              Top = 15
              Width = 366
              Height = 32
              Align = alTop
              Enabled = False
              Max = 985
              Min = 11
              Position = 100
              TabOrder = 0
              OnChange = NormalizeTRACKBARChange
            end
            object NormalizeCHECKBOX: TCheckBox
              Left = 12
              Top = 53
              Width = 77
              Height = 17
              Caption = 'Normalize'
              TabOrder = 1
              OnClick = NormalizeCHECKBOXClick
            end
            object NormalizeShowCHECKBOX: TCheckBox
              Left = 95
              Top = 53
              Width = 154
              Height = 17
              Caption = 'NormalizeShowCHECKBOX'
              Enabled = False
              TabOrder = 2
              OnClick = ShowScriptExecute
            end
          end
          object PrecisionRADIOGROUP: TRadioGroup
            Left = 2
            Top = 183
            Width = 195
            Height = 72
            Caption = 'PrecisionRADIOGROUP'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Bez zmian'
              '8-bit'
              '16-bit'
              '24-bit'
              '32-bit'
              'Float')
            TabOrder = 2
            OnClick = ShowScriptExecute
          end
          object InneCOMBOBOX: TGroupBox
            Left = 203
            Top = 183
            Width = 165
            Height = 72
            Caption = 'Inne'
            TabOrder = 3
            OnClick = ShowScriptExecute
            object EnsureVBRMP3SyncCHECKBOX: TCheckBox
              Left = 16
              Top = 17
              Width = 137
              Height = 17
              Caption = 'Synchronizuj VBR MP3'
              TabOrder = 0
              OnClick = AmountHTRACKBARChange
            end
            object KillAudioCHECKBOX: TCheckBox
              Left = 16
              Top = 40
              Width = 137
              Height = 17
              Caption = 'Wy'#322#261'cz d'#378'wi'#281'k'
              TabOrder = 1
              OnClick = KillAudioCHECKBOXClick
            end
          end
          object ssrcGROUPBOX: TGroupBox
            Left = 203
            Top = 95
            Width = 165
            Height = 82
            Caption = 'ssrcGROUPBOX'
            TabOrder = 4
            object ssrcCOMBOBOX: TComboBox
              Left = 9
              Top = 24
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              MaxLength = 5
              TabOrder = 0
              Text = 'Bez zmian'
              OnChange = ShowScriptExecute
              Items.Strings = (
                'Bez zmian'
                '8000'
                '11025'
                '16000'
                '22050'
                '44100'
                '48000')
            end
            object ssrcFastCHECKBOX: TCheckBox
              Left = 9
              Top = 51
              Width = 144
              Height = 17
              Caption = 'ssrcFastCHECKBOX'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = ShowScriptExecute
            end
          end
        end
      end
    end
    object TopPANEL: TPanel
      Left = 5
      Top = 5
      Width = 378
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object LoadFileBUTTON: TSpeedButton
        Left = 354
        Top = 0
        Width = 23
        Height = 22
        Glyph.Data = {
          D6020000424DD6020000000000003600000028000000100000000E0000000100
          180000000000A002000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FFFF00FF
          8080808080808080808080808080808080808080808080808080808080808080
          80808080808080000000FF00FFFF00FF808080FFFFFFC0C0C000FFFFC0C0C000
          FFFFC0C0C000FFFFC0C0C000FFFF00FFFF808080000000000000FF00FF808080
          FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FF
          FF000000808080000000FF00FF808080FFFFFF00FFFFC0C0C000FFFFC0C0C000
          FFFFC0C0C000FFFFC0C0C000FFFFC0C0C0000000808080000000808080FFFFFF
          00FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF00FFFF0000
          00808080808080000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF808080808080C0C0C0808080000000808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8000FFFF808080000000FF00FF808080FFFFFF00FFFFC0C0C000FFFFC0C0C000
          FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF808080000000FF00FF808080
          FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FF00FF808080FFFFFF00FFFFC0C0C000FFFFC0C0C000
          FFFFFFFFFF808080808080808080808080808080808080FF00FFFF00FFFF00FF
          808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF80808080808080808080808080
          8080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = LoadFileBUTTONClick
      end
      object ClipName: TEdit
        Left = 1
        Top = 3
        Width = 347
        Height = 21
        TabOrder = 0
        Text = 'Nazwa Klipu'
        OnChange = ShowScriptExecute
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 555
    Width = 739
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object OK: TButton
      Left = 86
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = OKClick
    end
    object CancelBtn: TButton
      Left = 167
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Anuluj'
      ModalResult = 2
      TabOrder = 1
      OnClick = CancelBtnClick
    end
    object ZastosujBUTTON: TButton
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Zastosuj'
      TabOrder = 2
      OnClick = ZastosujBUTTONClick
    end
    object PrewievBUTTON: TButton
      Left = 290
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Podgl'#261'd'
      TabOrder = 3
      OnClick = PrewievBUTTONClick
    end
    object SaveAvsBUTTON: TButton
      Left = 371
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Zapisz AVS'
      TabOrder = 4
      OnClick = SaveAvsBUTTONClick
    end
    object SaveFrameBUTTON: TButton
      Left = 488
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Zapisz BMP'
      TabOrder = 5
      OnClick = SaveFrameBUTTONClick
    end
    object StatusBar: TStatusBar
      Left = 0
      Top = 35
      Width = 739
      Height = 19
      Panels = <
        item
          Text = '0x0'
          Width = 50
        end
        item
          Text = '0fps'
          Width = 60
        end
        item
          Text = '0 z 0'
          Width = 50
        end>
    end
  end
  object NawigacjaGROUPBOX: TGroupBox
    Left = 0
    Top = 469
    Width = 739
    Height = 86
    Align = alBottom
    TabOrder = 2
    object TrackBar1: TTrackBar
      Left = 2
      Top = 15
      Width = 735
      Height = 27
      Align = alTop
      Max = 100
      TabOrder = 0
      OnChange = TrackBar1Change
    end
    object PauseBUTTON: TButton
      Left = 103
      Top = 48
      Width = 23
      Height = 25
      Caption = '||'
      TabOrder = 1
      OnClick = PauseBUTTONClick
    end
    object PlayBUTTON: TButton
      Left = 71
      Top = 48
      Width = 23
      Height = 25
      Caption = '|>'
      TabOrder = 2
      OnClick = PlayBUTTONClick
    end
    object FromBUTTON: TButton
      Left = 219
      Top = 48
      Width = 23
      Height = 25
      Caption = '['
      TabOrder = 3
      OnClick = FromBUTTONClick
    end
    object ToBUTTON: TButton
      Left = 279
      Top = 48
      Width = 23
      Height = 25
      Caption = ']'
      TabOrder = 4
      OnClick = ToBUTTONClick
    end
    object BeginBUTTON: TButton
      Left = 13
      Top = 48
      Width = 23
      Height = 25
      Caption = '<<'
      TabOrder = 5
      OnClick = BeginBUTTONClick
    end
    object EndBUTTON: TButton
      Left = 161
      Top = 48
      Width = 23
      Height = 25
      Caption = '>>'
      TabOrder = 6
      OnClick = EndBUTTONClick
    end
    object OneLeftBUTTON: TButton
      Left = 42
      Top = 48
      Width = 23
      Height = 25
      Caption = '<'
      TabOrder = 7
      OnClick = OneLeftBUTTONClick
    end
    object OneRightBUTTON: TButton
      Left = 132
      Top = 48
      Width = 23
      Height = 25
      Caption = '>'
      TabOrder = 8
      OnClick = OneRightBUTTONClick
    end
    object unTrimBUTTON: TButton
      Left = 248
      Top = 48
      Width = 25
      Height = 25
      Caption = 'x'
      TabOrder = 9
      OnClick = unTrimBUTTONClick
    end
  end
  object PageControl: TPageControl
    Left = 396
    Top = 0
    Width = 343
    Height = 469
    ActivePage = ScriptPAGE
    Align = alClient
    MultiLine = True
    ScrollOpposite = True
    TabOrder = 3
    TabPosition = tpBottom
    object PlayerPAGE: TTabSheet
      Caption = 'PlayerPAGE'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 335
        Height = 443
        HorzScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 335
          Height = 443
          Align = alClient
          ExplicitLeft = 96
          ExplicitTop = 136
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
    end
    object ScriptPAGE: TTabSheet
      Caption = 'ScriptPAGE'
      ImageIndex = 1
      object ScriptMEMO: TMemo
        Left = 0
        Top = 0
        Width = 335
        Height = 443
        Align = alClient
        BevelEdges = [beLeft, beTop, beBottom]
        BorderStyle = bsNone
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 0
        OnClick = ScriptMEMOClick
      end
    end
  end
  object Panel1: TPanel
    Left = 388
    Top = 0
    Width = 8
    Height = 469
    Align = alLeft
    Caption = '<'
    TabOrder = 4
    OnClick = Panel1Click
  end
  object ActionList1: TActionList
    Left = 169
    Top = 415
    object ZmienRozd: TAction
      Caption = 'ZmienRozd'
      OnExecute = ZmienRozdExecute
    end
    object AviPlayer: TAction
      Caption = 'AviPlayer'
      OnExecute = AviPlayerExecute
    end
    object ZmianaKadrowania: TAction
      Caption = 'ZmianaKadrowania'
    end
    object Tweak: TAction
      Caption = 'Tweak'
    end
    object Blur: TAction
      Caption = 'Blur'
      OnExecute = BlurExecute
    end
    object ShowScript: TAction
      Caption = 'ShowScript'
      OnExecute = ShowScriptExecute
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.avi'
    Filter = 'AVI|*.avi; *.divx|Projekt DGIndex|*.d2v|Skrypt AviSynth|*.avs'
    Left = 200
    Top = 416
  end
  object ImageList1: TImageList
    Left = 232
    Top = 416
    Bitmap = {
      494C01013A003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA5009C6363009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C6363009C63
      63009C6363009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500FFEFCE00FFEF
      CE00CECE9C00CE9C9C00F7CEA500FFCE9C00F7CEA500CE9C9C00CE9C9C00F7CE
      A500FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500FFEFCE00B5B5
      B5000031CE0031319C00CE9C9C00F7CEA500949494000000CE0031319C00CE9C
      6300F7CEA5009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      00000000000000000000000000000000000000000000F7CEA500FFEFCE000031
      CE000031FF000031FF0031319C00737373000000CE000000FF000000FF006363
      9C00FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000F7CEA500F7F7F7009C9C
      CE000031FF000031FF000031FF000000CE000000FF000000FF003131CE00CE9C
      9C00FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500F7F7F700F7F7
      F7009C9CCE000031FF000031FF000031FF000000FF002100A500CE9C9C00FFCE
      9C00FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500FFFFFF00F7F7
      F7009C9CCE000031CE000031FF000031FF000031FF0031319C00CE9C9C00F7CE
      A500FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000F7CEA500FFFFFF009C9C
      CE000063CE000063FF000063FF000031FF000031FF000031FF0031319C00CE9C
      9C00FFCE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000F7CEA500FFFFFF000063
      CE00009CFF00009CFF003131CE009C63CE000031FF000031FF000031FF006363
      9C00F7CEA5009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF00000000000000FF000000
      FF000000000000000000000000000000000000000000F7CEA500FFFFFF00C6D6
      EF000063CE003163CE00CECECE00F7F7F7009C9CCE000031CE003131CE00F7CE
      A500F7CEA5009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000F7CEA500FFFFFF00FFFF
      FF00C6D6EF00EFEFEF00F7F7F700F7F7F700F7F7F700C6C6C600FFEFCE00FFEF
      CE00FFEFCE009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000000FF000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000F7CEA500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFEFCE00F7CEA500CECE
      9C00CECE9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000F7CEA500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CECE9C00FFCE
      6300CE9C63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CECE9C00CECE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500CE9C6300CE9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000008484
      840084848400000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFF00000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFF00000000
      0000FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
      FF00FFFFFF0000000000C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
      FF00FFFFFF0000000000C6C6C6000000000000000000C6C6C60000000000FFFF
      FF00FF0000000000000000000000FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000C6C6C60000000000FFFF
      FF00FF0000000000000000000000FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00C6C6C60084848400FFFF0000848484000000
      00000000000084848400C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00C6C6C60084848400FFFF0000848484000000
      00000000000084848400C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF000000000084840000FFFF0000FFFF
      0000FFFF000000000000C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF000000000084840000FFFF0000FFFF
      0000FFFF000000000000C6C6C600000000000000000000000000FFFFFF00FF00
      0000FF000000FF0000000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000FFFFFF00FF00
      0000FF000000FF0000000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF0000000000FFFF000084840000000000008484
      840000000000FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF0000000000FFFF000084840000000000008484
      840000000000FFFFFF00C6C6C60000000000C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000C6C6C600FFFFFF0000000000FFFF00008484000000000000FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000C6C6C600FFFFFF0000000000FFFF00008484000000000000FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000FFFF0000FFFF000000
      000000FFFF00FFFFFF00C6C6C6000000000000000000FFFFFF000000FF00FFFF
      FF00FFFFFF000000FF00FFFFFF00848484000000000000FFFF0000FFFF000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000000000FFFF00008484000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000000000FFFF00008484000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF000000000000FFFF0000FF
      FF0000000000FFFFFF00C6C6C6000000000000000000000000000000FF000000
      FF00000000000000FF0000000000C6C6C600FFFFFF000000000000FFFF0000FF
      FF0000000000FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00008484000000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00008484000000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      FF00FFFFFF000000FF00C6C6C600000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF000000FF000000FF00FFFFFF00000000000000
      FF00FFFFFF000000FF00C6C6C6000000000000000000C6C6C600848484000000
      00000000000084848400FFFF000084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000C6C6C600848484000000
      00000000000084848400FFFF000084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00C6C6C6000000000000000000C6C6C600000000000000
      00000000000000000000FFFF000000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF00FFFF
      FF00FFFFFF00000000000000FF0000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000008400
      00008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600848484000000000084848400FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600848484000000000084848400FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF000084840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF000084840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FF000000FF000000FF000000FFFFFF00FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FF000000FF000000FF000000FFFFFF00FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000C6C6C60084848400000000000000000000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000C6C6C60084848400000000000000000000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400C6C6C60000FFFF0000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400C6C6C60000FFFF0000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084848400C6C6C60000FFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084848400C6C6C60000FFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0084848400FF00000084848400FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0084848400FF00000084848400FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      840000FFFF008484840000FFFF0000FFFF0000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      840000FFFF008484840000FFFF0000FFFF0000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000000000000000FF000000
      0000848484000000FF00FFFFFF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000000000008484840000FF
      FF00FFFFFF00C6C6C6008484840000FFFF0000FFFF0084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000000000008484840000FF
      FF00FFFFFF00C6C6C6008484840000FFFF0000FFFF0084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000FF000000
      FF00848484000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF0000FFFF000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF0000FFFF000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF00000000FFFF00FFFFFF00FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000000000008484840000FF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FF000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      840000FFFF00FFFFFF0000FFFF0000FFFF0000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000FFFF0000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FF000000FF00000000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FF00000000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600848484008484840000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF008484840000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FF000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      0000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000FF0000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF00FF000000FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00FF0000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FF000000FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FF000000FFFFFF00C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00C6C6C6000000FF000000FF00FFFFFF00C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFF00008484000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFF00008484000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF0000FFFF000084840000C6C6
      C600FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF0000FFFF000084840000C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000008484840084848400FFFF
      FF00FFFFFF00FFFFFF008484840084848400C6C6C600C6C6C600FFFF00000000
      000000FFFF00FFFFFF00C6C6C60000000000000000008484840084848400FFFF
      FF00FFFFFF00FFFFFF008484840084848400C6C6C600C6C6C600FFFF00000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      FF00C6C6C600C6C6C60000000000C6C6C600000000008484840000000000FFFF
      FF000000000000000000C6C6C600000000000000000084840000C6C6C600C6C6
      C600C6C6C6008484840000000000000000008484000000FFFF00008484000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000084840000C6C6C600C6C6
      C600C6C6C6008484840000000000000000008484000000FFFF00008484000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      FF00C6C6C600C6C6C60000000000C6C6C600000000008484840000000000FFFF
      FF000000000000000000C6C6C60000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400000000000000
      00008484840000000000C6C6C600000000000000000084000000848484008484
      84008484000000000000C6C6C60000000000C6C6C60084848400848484000000
      000000FFFF00FFFFFF00C6C6C600000000000000000084000000848484008484
      84008484000000000000C6C6C60000000000C6C6C60084848400848484000000
      000000FFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400000000000000
      00008484840000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C6008484840000000000FFFF
      FF00C6C6C60000000000C6C6C6000000000000000000840000000084840000FF
      0000C6C6C600848484000000000084848400C6C6C600C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C6000000000000000000840000000084840000FF
      0000C6C6C600848484000000000084848400C6C6C600C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C6008484840000000000FFFF
      FF00C6C6C60000000000C6C6C60000000000848484000000000000000000C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0084848400000000008484
      84008484840000000000C6C6C60000000000000000008484840000840000FFFF
      0000FFFF0000C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      840000FFFF00FFFFFF00C6C6C60000000000000000008484840000840000FFFF
      0000FFFF0000C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      840000FFFF00FFFFFF00C6C6C60000000000848484000000000000000000C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0084848400000000008484
      84008484840000000000C6C6C600000000008484840084848400C6C6C6008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF008484840084848400C6C6C6000000000000000000C6C6C60000000000FFFF
      0000FFFF0000FFFF000084848400FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000000000000C6C6C60000000000FFFF
      0000FFFF0000FFFF000084848400FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000008484840084848400C6C6C6008484
      840084848400848484008484840084848400848484008484840000FFFF00FFFF
      FF008484840084848400C6C6C6000000000084848400000000000000FF000000
      FF00848484000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000000
      0000FFFF000084848400C6C6C600FFFFFF00848484000084840084848400FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000000
      0000FFFF000084848400C6C6C600FFFFFF00848484000084840084848400FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000008484840000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C6008484840000000000000000008484840000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF00C6C6
      C6008484840000000000000000008484840000000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000000FF00000000000000FF000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000848484008400000000FF00000000000000FF000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000848400C6C6C60084848400C6C6C600C6C6
      C600C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000848400C6C6C60084848400C6C6C600C6C6
      C600C6C6C60000000000C6C6C600000000000000000000000000000000008400
      000000FFFF000000000000FFFF0000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000848484008400000000FFFF000000000000FFFF000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF008484840000FFFF00FFFF
      FF0000000000FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF008484840000FFFF00FFFF
      FF0000000000FFFFFF00C6C6C600000000000000000000000000000000008400
      000000FF00000000000000FF00000000000000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000848484008400000000FF00000000000000FF000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000084840000848400FFFFFF00FFFFFF0084848400FFFFFF000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000084840000848400FFFFFF00FFFFFF0084848400FFFFFF000000
      000000FFFF00FFFFFF00C6C6C600000000000000000084848400840000008400
      000000FFFF008400000000FFFF0000000000840000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400840000008400000000FFFF008400000000FFFF0000000000840000008484
      8400FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      00000084840000FFFF000000000000000000FFFFFF008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484000000
      00000084840000FFFF000000000000000000FFFFFF008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000008400000000FF00008400
      000000FF000000FFFF0000FF00000000000000FF000084000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000008400
      000000FF00008400000000FF000000FFFF0000FF00000000000000FF00008400
      000000FFFF00FFFFFF00C6C6C6000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000848400848484000000000084848400FFFFFF008484
      84000000000084848400C6C6C6000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF0000848400848484000000000084848400FFFFFF008484
      84000000000084848400C6C6C60000000000000000008400000000FFFF008400
      000000FFFF0000FF000000FFFF000000000000FFFF008400000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008400
      000000FFFF008400000000FFFF0000FF000000FFFF000000000000FFFF008400
      0000FFFFFF00FFFFFF00C6C6C60000000000000000000000000000848400FFFF
      FF0000FFFF0000FFFF0000000000C6C6C600000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000000848400FFFF
      FF0000FFFF0000FFFF0000000000C6C6C600000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000C6C6C6008400000000FF
      FF0000FF000000FFFF0000FF000000FFFF0084000000C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C6000000000000000000000000000000FF00C6C6
      C6008400000000FFFF0000FF000000FFFF0000FF000000FFFF0084000000C6C6
      C60000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000084
      8400FFFFFF0000FFFF000084840000000000FFFFFF0084848400FFFFFF000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000084
      8400FFFFFF0000FFFF000084840000000000FFFFFF0084848400FFFFFF000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008400
      000084000000840000008400000084000000C6C6C600FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000FF000000
      FF00C6C6C6008400000084000000840000008400000084000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000848400FFFFFF0000000000FFFFFF00FFFFFF008484840000FFFF00FFFF
      FF0000000000FFFFFF00C6C6C6000000000000000000000000000000FF00FFFF
      FF0000848400FFFFFF0000000000FFFFFF00FFFFFF008484840000FFFF00FFFF
      FF0000000000FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840084000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF000000FF008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000848400FFFFFF0000000000FFFFFF0084848400FFFFFF00FFFF
      FF0000FFFF0000000000C6C6C600000000000000000000000000000000000000
      FF000000FF0000848400FFFFFF0000000000FFFFFF0084848400FFFFFF00FFFF
      FF0000FFFF0000000000C6C6C600000000000000000000000000000000008484
      84008400000000FFFF0084000000C6C6C600FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF00848484008400000000FFFF0084000000C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF000084840000848400000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000084840000848400000000008484840000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      84008400000000FFFF0084000000C6C6C60000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00848484008400000000FFFF0084000000C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF000084840000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF000084840000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00008484840084000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF008484840084000000C6C6C600FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000C6C6C6000000000000000000C6C6C6008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000C6C6C6000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      000000848400C6C6C600C6C6C600C6C6C6008484840084848400C6C6C600C6C6
      C600C6C6C6000084840000000000C6C6C6000000000000000000C6C6C6000000
      000000848400C6C6C600C6C6C600C6C6C6008484840084848400C6C6C600C6C6
      C600C6C6C6000084840000000000C6C6C6000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      840000FFFF0000848400C6C6C60000848400000000000000000000848400C6C6
      C60000848400C6C6C60000000000C6C6C6000000000000000000C6C6C6008484
      840000FFFF0000848400C6C6C60000848400000000000000000000848400C6C6
      C60000848400C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF000084840000000000FFFFFF00FFFFFF00000000000084
      8400C6C6C600C6C6C60000000000C6C6C6000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF000084840000000000FFFFFF00FFFFFF00000000000084
      8400C6C6C600C6C6C60000000000C6C6C600000000008484840084848400C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000FFFFFF00FFFFFF00C6C6C60000000000000000008484840084848400C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      840000FFFF00C6C6C60000000000FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      000000848400C6C6C60000000000C6C6C6000000000000000000C6C6C6008484
      840000FFFF00C6C6C60000000000FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      000000848400C6C6C60000000000C6C6C6000000000084848400FFFFFF008484
      8400C6C6C600848484000000000084848400C6C6C60084848400C6C6C6000000
      000000FFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF008484
      8400C6C6C600848484000000000084848400C6C6C60084848400C6C6C6000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000000
      0000C6C6C6000000000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084840000000000C6C6C6000000000000000000C6C6C6000000
      0000C6C6C6000000000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084840000000000C6C6C6000000000084848400FFFFFF00FFFF
      FF008484840000000000FFFFFF000000000084848400C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF008484840000000000FFFFFF000000000084848400C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      840000000000FFFFFF00FF000000FF000000FF000000FF000000FF00000000FF
      FF00FFFFFF000000000000000000C6C6C60000000000000000000000FF008484
      8400000000000000FF00FF000000FF000000FF000000FF000000FF00000000FF
      FF00FFFFFF000000000000000000C6C6C6000000000084848400FFFFFF00C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C6000000
      000000FFFF00FFFFFF00C6C6C6000000000000000000848484000000FF00C6C6
      C600000000000000FF00FFFFFF00FFFFFF000000000084848400C6C6C6000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600848484000000000000000000000000000000FF000000
      FF00FFFFFF000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000848484000000
      0000FFFFFF00FFFFFF00C6C6C6000000000000000000848484000000FF000000
      FF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF0000000000848484000000
      0000FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      FF000000FF000000FF00C6C6C6000000FF000000FF00FF000000FF000000FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400000000008484
      8400848484008484840084848400848484008484840084848400000000000000
      000000FFFF00FFFFFF00C6C6C6000000000000000000C6C6C600C6C6C6000000
      FF000000FF000000FF00C6C6C6000000FF000000FF00C6C6C600000000000000
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00C6C6C600FF000000FF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6
      C600FFFFFF00848484000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000FFFF00FFFFFF00C6C6
      C600FFFFFF008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      FF00C6C6C6000000FF000000FF0084848400C6C6C60084848400C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000008400840084008400840084008400
      8400840084008400840084848400840084008400840084008400840084008400
      840084008400FFFFFF00C6C6C600000000008400840084008400840084008400
      8400840084008400840084848400840084008400840084008400840084008400
      840084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084008400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084008400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C6008484
      840000000000FFFFFF00C6C6C600000000000000000000000000C6C6C600C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C6008484
      840000000000FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0084008400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0084008400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000084848400000000000000
      000000000000C6C6C60084848400C6C6C6000000000000000000000000000000
      000084008400FFFFFF00C6C6C600000000000000000084848400000000000000
      000000000000C6C6C60084848400C6C6C6000000000000000000000000000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF008400840084008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF008400840084008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF008400840084008400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF008400840084008400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00840084008400840084008400FFFFFF00FFFF
      FF0084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      FF0084848400FFFFFF000000FF00840084008400840084008400FFFFFF00FFFF
      FF0084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF008400840084008400840084008400
      840084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF00FFFFFF008400840084008400840084008400
      840084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084008400840084008400
      840084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000FF000000FF000000FF00FFFFFF000000FF000000FF00840084008400
      840084008400FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00C6C6C6008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      000084008400FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF008400840084008400840084008400
      840084008400FFFFFF00C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0084008400840084008400
      840084008400FFFFFF00C6C6C600000000000000000000000000848484008484
      84000000000000000000FFFFFF0000000000848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000FF000000FF000000FF008484
      840000000000000000000000FF0000000000848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF00848484000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF008484840000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848484000000000000000000000000000000FF000000FF000000
      00000000FF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000FF00848484000000FF000000FF008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      FF00848484000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600840000008400000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600840000008400000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000000000000000000C6C6
      C60084000000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084000000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000008400
      0000FF000000FF000000FF00000084848400FFFFFF0000FFFF00840000008400
      0000C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008400
      0000FF000000FF000000FF00000084848400FFFFFF0000FFFF00840000008400
      0000C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C600FF00
      000000840000FF000000FF00000084848400FFFFFF0084840000FF000000FF00
      000084000000C6C6C600C6C6C600000000000000000000000000C6C6C600FF00
      000000840000FF000000FF00000084848400FFFFFF0084840000FF000000FF00
      000084000000C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000848484000084
      0000FF000000FF000000FF00000084848400FFFFFF0084840000848484000084
      00008400000084848400C6C6C600000000000000000000000000848484000084
      0000FF000000FF000000FF00000084848400FFFFFF0084840000848484000084
      00008400000084848400C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600FF000000FF0000008484000084848400FFFFFF0084840000FFFFFF008484
      840084000000C6C6C600C6C6C60000000000000000000000000084848400C6C6
      C600FF000000FF0000008484000084848400FFFFFF0084840000FFFFFF008484
      840084000000C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      0000C6C6C600FF000000C6C6C60084848400FFFFFF0000FFFF00848400008484
      0000C6C6C60000000000000000000000000000000000000000000000FF008484
      0000C6C6C6000000FF00C6C6C60084848400FFFFFF0000FFFF00848400008484
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF0084848400FFFFFF000000FF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00848484008484840000000000000000000000FF000000
      FF00FFFFFF000000FF00FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400848484000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C6008484
      8400C6C6C600FFFFFF000084000084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00C6C6C6008484840084848400C6C6C6000000000000000000C6C6C6000000
      FF000000FF000000FF00008400000000FF000000FF00FFFFFF00FFFFFF0000FF
      FF00C6C6C6008484840084848400C6C6C6000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000FF000000FF000000FF00FFFFFF000000FF000000FF0084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400FFFFFF00C6C6C60084840000848484008484840084848400848484008484
      8400848484008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000000000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084848400FFFFFF00C6C6C600FFFFFF0000840000FF000000008400000084
      0000FF00000084000000C6C6C6000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000840000FF000000008400000084
      0000FF00000084000000C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF000000FF00FFFFFF000000000084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840084848400C6C6C600FF0000008484000084840000FF00
      0000FF000000C6C6C6000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF008484000084840000FF00
      0000FF000000C6C6C60000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF00848484000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      00000000000000000000C6C6C60084848400848484008484840084848400C6C6
      C600000000000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00C6C6C60084848400848484008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848484000000000000000000000000000000FF000000FF000000
      00000000FF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00FFFFFF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000FF00848484000000FF000000FF008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600840000008400000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600840000008400000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084000000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C60000000000000000000000000000000000C6C6
      C60084000000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008400
      0000FF000000FF000000FF00000084848400FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000008400
      0000FF000000FF000000FF00000084848400FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C600FF00
      000000840000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000C6C6C600FF00
      000000840000FF000000FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C600000000000000000000000000848484000084
      0000FF000000FF000000FF00000084848400FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000848484000084
      0000FF000000FF000000FF00000084848400FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600FF000000FF000000848400008484840000FFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600FF000000FF000000848400008484840000FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00008484840000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      0000C6C6C600FF000000C6C6C60084848400FFFFFF00FFFFFF00FF000000FF00
      0000C6C6C60000000000000000000000000000000000000000000000FF008484
      0000C6C6C6000000FF00C6C6C60084848400FFFFFF00FFFFFF00FF000000FF00
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      FF0084848400FFFFFF000000FF00FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00848484008484840000000000000000000000FF000000
      FF00FFFFFF000000FF00FF00000084848400FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400848484000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00C6C6C600000000000000000000000000C6C6C6008484
      8400C6C6C600FFFFFF000084000084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00C6C6C6008484840084848400C6C6C6000000000000000000C6C6C6000000
      FF000000FF000000FF00008400000000FF000000FF00FFFFFF00FFFFFF0000FF
      FF00C6C6C6008484840084848400C6C6C6000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FF000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000FF000000FF000000FF00FF0000000000FF000000FF00FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400FFFFFF00C6C6C60084840000848484008484840084848400848484008484
      8400848484008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000C6C6
      C60084848400FFFFFF00C6C6C600FFFFFF0000840000FF000000008400000084
      0000FF00000084000000C6C6C6000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF0000840000FF000000008400000084
      0000FF00000084000000C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      0000C6C6C6008484840084848400C6C6C600FF0000008484000084840000FF00
      0000FF000000C6C6C6000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF008484000084840000FF00
      0000FF000000C6C6C60000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00C6C6C60084848400000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60084848400848484008484840084848400C6C6
      C600000000000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00C6C6C60084848400848484008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      840084848400000000000000000000000000000000000000FF000000FF000000
      00000000FF000000FF000000FF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF008484840000000000000000000000000084848400FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF0000FFFF008484840000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60084848400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF000000000084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FF000000FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FF000000FF000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6000000000084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C600848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0000FF
      FF00000000008484840084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840084848400C6C6C60084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000848484000000FF00C6C6
      C60000FFFF000000FF0000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C600848484000000000084848400848484000000FF008484
      8400848484000000FF0084848400848484008484840084848400848484008484
      84008484840000FFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FF000000FF00
      000000FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FF000000FF00
      000000FFFF00FFFFFF00C6C6C6000000000000000000848484000000FF000000
      FF00C6C6C6000000FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF008484840000000000FFFFFF00848484000000FF000000
      FF00C6C6C6000000FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000000000
      FF0084848400FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FF00
      0000FF000000FFFFFF00C6C6C600000000000000000084848400FFFFFF000000
      FF000000FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840000000000FFFFFF0084848400FFFFFF000000
      FF000000FF000000FF0000FFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF00FF000000FF000000FFFFFF00FFFFFF00FF00
      0000FF000000FFFFFF00C6C6C600000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000FFFF0084848400848484008484
      8400848484008484840084848400000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF0084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FF000000FF000000FFFFFF0000FFFF00FF00
      0000FF000000FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000FF000000FF000000FF00FF0000000000FF000000FF0000FFFF00FF00
      0000FF000000FFFFFF00C6C6C6000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF0000FFFF008484840000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      000000FFFF00FFFFFF00C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FF000000FF000000FF00
      000000FFFF00FFFFFF00C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF0084848400848484000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF0000FFFF008484840084848400000000000000000000000000000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      840084848400848484000000000000000000000000000000FF000000FF000000
      00000000FF000000FF000000FF00848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400840084008400840084008400840084008400
      8400840084008400840084008400000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000840084008400840000000000FFFFFF00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00000000008484840084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084008400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF008484840000000000000000000000000084848400FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF0000FFFF008484840000000000000000000000000000000000000000000000
      00008400840084008400840084000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF0000000000C6C6C600FFFFFF008484840084848400C6C6
      C600FFFFFF00FFFFFF0084008400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60084848400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF000000000084848400000000000000000000000000000000008400
      8400840084008400840084008400C6C6C600000000000000000084848400C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000840084008400
      8400FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C600FFFFFF0084008400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6000000000084848400000000000000000000000000840084008400
      84008400840084008400C6C6C600840084008400840084008400000000000000
      000084848400FFFFFF008484840000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C600848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0000FF
      FF00000000008484840084848400000000000000000084008400840084008400
      840084008400C6C6C60084008400840084008400840084008400840084008400
      840000000000000000008484840000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FF
      FF0084848400FFFFFF0084008400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840084848400C6C6C600848484000000000000000000840084000000FF008400
      8400C6C6C6000000FF0084008400840084008400840084008400840084008400
      84008400840084008400000000000000000000000000000000000000FF00FFFF
      FF00FFFFFF000000FF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60084848400000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840000FFFF00848484000000000000000000840084000000FF000000
      FF00840084000000FF0084008400840084008400840084008400840084008400
      84008400840084008400000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FF
      FF0084848400FFFFFF0084008400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000084008400C6C6C6000000
      FF000000FF000000FF00840084000000FF000000FF0084008400840084008400
      8400840084000000000000000000000000000000000000000000840084000000
      FF000000FF000000FF00000000000000FF000000FF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF008400840084008400840084008400
      8400000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF0084848400000000000000000000000000000000008484840000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0084848400848484008484
      8400848484008484840084848400000000000000000084848400FFFFFF0000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00FFFFFF0084848400848484008484
      84008484840084848400848484000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00840084008400840084008400840084000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF000000FF000000FF00FFFFFF008484840084848400FFFFFF00FFFF
      FF008484840000000000000000000000000000000000000000008484840000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF008484840000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0084008400000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000848484008484
      8400848484000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF0000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00848484000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031ADDE0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400840084008400840084008400840084008400
      8400840084008400840084008400000000000000000031ADDE009CDEEF0018AD
      DE0029A5CE005AB5D60084BDD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000840084008400840000000000FFFFFF00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00000000008484840084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084008400000000000000000031ADDE00CEEFFF007BDE
      FF007BDEFF005ACEF70042BDE70029B5DE0021A5D6004AADD60073BDD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400840084008400840084000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF0000000000C6C6C600FFFFFF008484840084848400C6C6
      C600FFFFFF00FFFFFF0084008400000000000000000031ADDE0094D6EF0094EF
      FF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF006BDEF7004AC6EF0042B5
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      8400840084008400840084008400C6C6C600000000000000000084848400C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000840084008400
      8400FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C600FFFFFF0084008400000000000000000031ADDE004ABDE700BDFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0084EFFF006BDE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840084008400
      84008400840084008400C6C6C600840084008400840084008400000000000000
      000084848400FFFFFF008484840000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000031ADDE0039B5EF00CEF7
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF00A5F7
      FF0063BDDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084008400840084008400
      840084008400C6C6C60084008400840084008400840084008400840084008400
      840000000000000000008484840000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FF
      FF0084848400FFFFFF0084008400000000000000000031ADDE0063CEFF008CD6
      EF00D6FFFF00C6FFFF00B5FFFF00ADFFFF00ADFFFF00ADFFFF0094EFFF00A5DE
      FF006B9CFF006B84EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084008400840084008400
      8400C6C6C6008400840084008400840084008400840084008400840084008400
      840084008400840084000000000000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000031ADDE007BDEFF005ACE
      F7006BCEEF0073CEEF008CD6EF00E7FFFF00D6FFFF00D6FFFF008CBDFF000842
      FF004A84FF003173F7000839FF008CA5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008400840084008400C6C6
      C600840084008400840084008400840084008400840084008400840084008400
      840084008400840084000000000000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF0000FF
      FF0084848400FFFFFF0084008400000000000000000031ADDE008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0063CEEF008CD6EF00BDDEF700A5C6FF00398C
      FF0031D6FF0029D6FF00427BF7009CADE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084008400C6C6C6008400
      8400840084008400840084008400840084008400840084008400840084008400
      840084008400000000000000000000000000000000000000000084008400FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0000FFFF00FFFFFF00FFFF
      FF0084848400FFFFFF0084008400000000000000000031ADDE009CFFFF009CFF
      FF009CFFFF00A5FFFF009CFFFF009CFFFF009CFFFF0063BDFF001863FF00006B
      FF00C6F7FF0094EFFF001863FF00315AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600840084008400
      8400840084008400840084008400840084008400840084008400840084008400
      840000000000000000000000000000000000000000000000000084008400FFFF
      FF00FFFFFF00C6C6C6008484840084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00848484000000000000000000000000000000000031ADDE00BDFFFF009CFF
      FF009CFFFF00C6EFF70084CEE70031ADDE0031ADDE0031ADDE0031ADDE000039
      FF000039FF001884FF000842FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      8400840084008400840084008400840084008400840084008400840084000000
      000000000000000000000000000000000000000000000000000084008400FFFF
      FF00FFFFFF008484840000000000000000008484840084848400FFFFFF00FFFF
      FF0084848400000000000000000000000000000000000000000031ADDE0031AD
      DE0031ADDE0031ADDE00000000000000000000000000000000000039FF006B9C
      FF000039FF006B84EF00849CE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400840084008400840084008400000000000000
      000000000000000000000000000000000000000000000000000084008400FFFF
      FF00C6C6C6008484840000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B9CFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C60084848400C6C6
      C600848484008484840000000000000000000000000000000000000000004242
      42000000000000000000000000000000000000422100426363004284A5004242
      6300000000000000000000000000000000000000000000214200002142000021
      4200002142000000000042000000420021004200210042002100002142000042
      4200004242000021420000000000FF00FF00000000000000000042212100C6DE
      C600426300000084840000422100004221000042210000422100004221000042
      2100004221000042210000422100004221000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084848400C6C6C6008484
      840084848400000000000000000000000000000000000000000042212100C6DE
      C60042630000008484000042210000422100424263004284A50042C6E7004284
      A50000422100004221000042210000422100000000000021E7000021C6000021
      C6000021C6000000840042002100C6006300C6006300422121000084840000C6
      C60000C6C60000A5A50000636300000000000000000042212100C6DEC600FFFF
      FF004284000000C6C60042840000428400004284000042840000428400004284
      0000428400004284000042840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000042212100C6DEC600FFFF
      FF004284000000C6C60084C60000428400004242630042A5C60084E7E70042A5
      C60042840000428400004284000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000216300C60042008400420000A5A50000FFFF0000FF
      FF0000FFFF0000FFFF0000A5A5000000000042212100C6C6C600FFFFFF00C6C6
      C60042840000FFFFFF00C6DEC600C6C68400C6C68400C6C66300C6C66300C6C6
      420084E7210084E7210084E70000004221000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6C6C600FFFFFF00C6C6
      C60042840000FFFFFF00C6DEC60084C621000042210042A5E700F7FFFF0084C6
      E70084E7000084E7210084E7000000422100000000000000FF00000084000000
      000000000000420084000021E700000000000000000000E7E70000C6C6004200
      00000000000000C6C60000FFFF0000000000C6A5A500FFFFFF00C6C6C6004221
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000C6A5A500FFFFFF00C6C6C6004221
      2100000000000000000000000000000000000000000084C6E700FFFFFF0084C6
      E70000000000000000000000000000000000000000000000FF0000008400FF00
      FF0084004200840042000000840000008400FF00FF000000000042002100C600
      84000021420000E7E70000FFFF000000000000000000C6C6C60000000000C6DE
      C600844200000084840084420000844200008442000084420000844200008442
      0000844200008442000084420000424200008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400C6C6C600000000000000000000000000C6C6C60000000000C6DE
      C60084420000008484004242630042C6E70084C6E700F7FFFF00FFFFFF0084E7
      E70084E7E70042A5C6004221000042420000000000000000FF0000008400FF00
      FF0084004200C60063000000840000008400FF00FF000021420042002100C600
      84000084840000C6C60000424200FF00FF00A5A5A50000000000C6DEC600FFFF
      FF00C663000000C6C600C6630000C6630000C663000084630000846300008463
      00008463000084630000846300000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0084848400000000000000
      000084848400C6C6C6000000000000000000A5A5A50000000000C6DEC600FFFF
      FF00C663000000C6C600008484004242630042C6E70084E7E700F7FFFF0084E7
      E70042C6E700846300008463000000000000000000000000FF00000084000000
      000084004200C600630000008400000084000000000000E7E70042002100C600
      8400000000000000000000000000FF00FF0042212100C6C6C600FFFFFF00C6C6
      C600C6630000FFFFFF00F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500F7CE
      A500F7CEA500C6C66300C6C663004242000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60084848400000000000000
      000084848400C6C6C600000000000000000042212100C6C6C600FFFFFF00C6C6
      C600C6630000FFFFFF00F7CEA500008484004242630042C6E70084E7E70042C6
      E700C6A52100C6A54200C6A5210042420000000000000000FF000021C6000000
      840042006300C600630042006300002142004200210000FFFF00424242008400
      4200000000000084840000A5A50000000000C6A5A500FFFFFF00C6C6C6004221
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C600FFFFFF0084848400000000000000
      000084848400C6C6C6000000000000000000C6A5A500FFFFFF00C6C6C6004221
      210000000000000000000000000000000000000000004242630084C6E7004242
      630000000000000000000000000000000000000000000000FF000000FF000000
      FF0000008400C6004200C6008400C60084008400420000C6C60000FFFF0000FF
      FF0000FFFF0000FFFF0000C6C6000000000000000000C6C6C60000000000C6DE
      C600002163000084840000216300002163000021630000216300002163000021
      63000021630000216300002163000021630084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60084848400000000000000
      000084848400C6C6C600000000000000000000000000C6C6C60000000000C6DE
      C600002163000084840000216300002163000021420000214200000000000021
      4200002142000021630000216300002163000000000000008400000084000000
      8400000084000000000084004200840042008400420042000000008484000084
      8400008484000042420000000000FF00FF00A5A5A50000000000C6DEC600FFFF
      FF004221630000C6C6004200A5004200A5004200A5004200A5004200A5004200
      A5004200A5004200A500420084000021630084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0084848400000000000000
      000084848400C6C6C6000000000000000000A5A5A50000000000C6DEC600FFFF
      FF004221630000C6C6004200A5004200A5004200A50042008400420084004200
      84004200A5004200A5004200840000216300FF00FF0084636300424242000000
      0000A5A5A5004242420000000000A5A5A5000000000042424200A5A5A5008463
      6300A5A5A5008484840000000000FF00FF0042212100C6C6C600FFFFFF00C6C6
      C60042008400FFFFFF00F7FFFF00C6A5E700C6A5E700C684E700C684E700C684
      E700C663E700C663E700C663E7000021630084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
      000084848400C6C6C600000000000000000042212100C6C6C600FFFFFF00C6C6
      C60042008400FFFFFF00F7FFFF00C6A5E700C6A5E700C684E700C684E700C684
      E700C663E700C663E700C663E70000216300FF00FF0084636300424242004242
      420084848400A5A5A50000000000A5A5A500000000004242420042424200FF00
      FF0042424200A5A5A50000000000FF00FF00C6A5A500FFFFFF00C6C6C6000021
      63008400A5008421A5008400A5008421A5008400A5008421A5008400A5008421
      A5008400A5004200A500420084000021630084848400C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60084848400848484008484840084848400000000000000
      000000000000C6C6C6000000000000000000C6A5A500FFFFFF00C6C6C6000021
      63008400A5008421A5008400A5008421A5008400A5008421A5008400A5008421
      A5008400A5004200A5004200840000216300FF00FF008463630042424200A5A5
      A50042212100A5A5A50042424200A5A5A5000000000000000000424242008463
      63008484840042212100FF00FF00FF00FF0000000000C6C6C600002163004200
      840000A5A50000E7E70000A5A500420084004200840042008400420084004200
      8400420084004200840000216300000000000000000084848400C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000C6C6C600002163004200
      840000A5A50000E7E70000A5A500420084004200840042008400420084004200
      840042008400420084000021630000000000FF00FF0084636300A5A5A5008484
      84000000000042424200C6C6C600A5A5A5000000000084636300846363000000
      0000000000000000000000000000FF00FF00A5A5A500002163004221630000A5
      A50000E7E70000A5A50042216300422184004221630042218400422163004221
      8400422163000021630000000000000000000000000000000000848484008484
      8400848484000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000A5A5A500002163004221630000A5
      A50000E7E70000A5A50042216300422184004221630042218400422163004221
      840042216300002163000000000000000000FF00FF0084636300C6C6C6004221
      2100FF00FF0000000000A5A5A500A5A5A5000000000084636300848484000000
      000042424200A5A5A50000000000FF00FF004200630000216300002163000021
      6300002163000021630000216300002163000021630000216300002163000021
      6300002163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484000000000000000000000000004200630000216300002163000021
      6300002163000021630000216300002163000021630000216300002163000021
      630000216300000000000000000000000000FF00FF0042424200426363000000
      0000FF00FF00FF00FF0042424200426363000000000000000000424242008463
      63004263630000000000FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000846B5A008C6B5A00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000821630008639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000946B4A00CE9C6B00AD7B4A00846B5A000000
      000000000000000000000000000000000000FFFFFF0084A5E7000042C6000042
      C6000042C6000042C6000042C6000042C6000042C6000042C6000042C6000021
      C6000021C6000021C60084A5E700FFFFFF000000000084848400FFFFFF00FFFF
      FF00848484000000000000000000000000008484840000FFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000831
      6B001031B5000873E70000FFFF00008CBD0008185200088CC600084A7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000946B4A00CEAD8400FFF7C60094634200846B5A000000
      000000000000000000000000000000000000FFFFFF000042E7000042E7004242
      E7004263E7004263E7004263E7004263E7004242E7000042E7000042E7000042
      E7000042E7000042E7000021C600FFFFFF000000000084848400FFFFFF00FFFF
      FF0084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104AC60000C6
      FF0000BDFF0000BDFF0000DEFF0000E7FF0000DEFF0000FFFF0000DEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000947363008C634A00E7CEAD00FFDEB500FFDEB500AD846300522908006B42
      3100846B5A00000000000000000000000000FFFFFF000042E7004263E7004263
      E7004263E70084A5E700F7FFFF00FFFFFF00FFFFFF00F7FFFF0084A5E7000042
      E7000042E7000042E7000021C600FFFFFF000000000084848400FFFFFF00FFFF
      FF0084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008319C000863EF00009C
      FF0000CEFF0000CEFF0000D6FF0000DEFF0000E7FF0000EFFF0000E7FF000821
      5A00000000000000000000000000000000000000000000000000BDA59C00BDA5
      9C00D6B59C00E7CEAD00FFE7BD00FFEFC600FFFFD600F7D6B500DEBD9400AD8C
      63005A291000846B5A000000000000000000FFFFFF004242E7004263E7004263
      E700C6A5E700FFFFFF00C6A5E7008484E7008484E700C6A5E700FFFFFF0084C6
      E7000042E7000042E7000021C600FFFFFF000000000084000000FF000000FF00
      000084000000C6C6C6000000000084848400848484008484840084848400C6C6
      C600C6C6C6008484840000000000000000000000000008216B000084FF00009C
      FF0000BDFF0000B5E70000ADBD0000D6F70000CEF70000CEF70000EFFF0000E7
      FF0000CEE700084A8400000000000000000000000000CEB5A500EFDEC600EFD6
      BD00FFEFCE00FFD6B500C6734A00EF946300DE8C5A00DEA57B00FFE7C600F7D6
      B500D6B59400734229008C6B630000000000FFFFFF004263E7004263E70084A5
      E700FFFFFF0084A5E7004263E7004263E7004263E7004263E70084A5E700FFFF
      FF008484E7000042E7000042C600FFFFFF000000000084000000FF000000FF00
      0000000000008400000000000000848484000000000000FFFF00000000000000
      0000C6C6C60084848400848484000000000008216B000084F70000ADFF0000AD
      FF0000B5FF00000000000000000000000000088CB5000894E70000B5EF0000EF
      FF0000F7FF00088CC6000000000000000000CEBDA500EFDEC600EFDEC600FFEF
      D600FFEFCE00FFFFE700B58463007B0000008C290000F7E7C600FFEFCE00FFE7
      C600F7D6B500DEBD9C005A29100000000000FFFFFF004263E7004263E700F7FF
      FF00C6A5E7004263E7004263E700FFFFFF00FFFFFF004263E7004263E700C6A5
      E700F7FFFF000042E7000042C600FFFFFF000000000084848400FFFFFF00FFFF
      FF00000000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840084848400000000000852B50000A5FF00009CFF0000A5
      FF0000ADFF0000000000000000000000000000000000105ABD00105AD60000C6
      F70000DEFF00001842000000000000000000C6B5A500EFDEC600FFF7D600FFEF
      D600FFE7CE00FFFFEF00CEB594006B000000A55A3100FFFFF700FFE7CE00FFE7
      C600FFEFCE00FFE7C600AD8C6B0094736B00FFFFFF004263E7004263E700FFFF
      FF0084A5E7004263E7004263E700FFFFFF00FFFFFF004263E7004263E7008484
      E700FFFFFF000042E7000042C600FFFFFF008484840084848400848484008484
      8400C6C6C6000000000000000000848484008484840084848400848484008484
      840084848400C6C6C600848484000000000000000000005AB50000ADFF0000A5
      FF0000A5FF0000000000000000000000000000000000000000001821C6000894
      EF0000E7FF00008CBD000010310000000000CEBDAD00FFE7D600FFF7DE00FFEF
      D600FFEFD600FFFFF700CEAD940073000000A5523100FFFFF700FFEFCE00FFE7
      CE00FFEFCE00FFEFD600E7CEAD008C6B5A00FFFFFF004263E7004284E700FFFF
      FF0084A5E7004263E7004263E700FFFFFF00FFFFFF004263E7004263E7008484
      E700FFFFFF004242E7000042C600FFFFFF0084848400FFFFFF0084848400C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      000000000000848484008484840000000000000000000008210000A5F700009C
      FF000094FF000094EF00000000000000000000000000000000001818C6000894
      EF0000D6FF0000E7FF000094CE0000000000CEC6B500FFEFE700FFF7E700FFEF
      DE00FFF7DE00FFFFFF00D6C6AD0073000000A55A3100FFFFFF00FFEFD600FFEF
      D600FFEFD600FFF7DE00EFD6C600846B5A00FFFFFF004263E7008484E700F7FF
      FF00C6A5E7004263E7004263E700FFFFFF00FFFFFF004263E7004242E700C6A5
      E700F7FFFF004263E7004242C600FFFFFF0084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000008529C0000CEFF00009C
      FF000094FF000094FF000084DE00000000000000000000000000104AD60000BD
      FF0000CEFF0000CEF700084A8C0000000000D6C6BD00FFF7EF00FFFFEF00FFF7
      E700FFFFEF00EFE7DE008C391800630000008C392100FFFFFF00FFF7DE00FFEF
      D600FFEFDE00FFFFE700F7DECE00947B7300FFFFFF004263E7008484E70084A5
      E700FFFFFF0084A5E7004263E7004263E7004263E7004263E7008484E700FFFF
      FF008484E7004263E7004242C600FFFFFF000000000084848400848484000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400C6C6C600000000000000000000000000000000000000000000B5EF0000BD
      FF0000D6FF0000B5FF000094FF00009CFF00007BC6000084D60000ADFF0000B5
      FF0000C6FF00083984000000000000000000DED6CE00F7F7EF00FFFFFF00FFF7
      EF00FFFFFF00E7DECE00B5948400BDA59C00C6ADA500FFFFFF00FFF7E700FFEF
      DE00FFFFEF00FFFFFF00E7CEB500947B7300FFFFFF004284E70084A5E7008484
      E700C6A5E700FFFFFF00C6A5E7008484E7008484E700C6A5E700FFFFFF0084A5
      E7004263E7004263E7004242C600FFFFFF000000000000000000000000000000
      000084848400FFFFFF0000000000FF000000FF000000FF000000FF0000008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      000000CEEF0000CEFF000084FF000094FF00009CFF0000A5FF0000ADFF0000BD
      FF0000BDFF000073C600000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFF700FFFFFF00FFFFFF00FFCEA500FFFFEF00FFFFFF00FFF7EF00FFFF
      EF00FFFFFF00FFFFFF00AD94840000000000FFFFFF008484E70084A5E70084A5
      E7008484E70084A5E700F7FFFF00FFFFFF00FFFFFF00F7FFFF0084A5E7004263
      E7004263E7004263E7000042C600FFFFFF000000000000000000000000000000
      000084848400FFFFFF0000000000FF000000FF000000FF000000FF0000008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      000000B5E70000F7FF0000A5FF0000C6FF0000DEFF00009CFF0000ADFF0000FF
      FF0000BDEF0000000000000000000000000000000000EFE7E700EFEFEF00FFFF
      FF00FFFFFF00FFFFFF008C524A005A0000009C422900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6BDAD000000000000000000FFFFFF008484E70084A5E70084A5
      E70084A5E7008484E7008484E7008484E7008484E7004284E7004284E7004263
      E7004263E7004263E7000042C600FFFFFF000000000000000000000000000000
      000084848400FFFFFF0000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000ADD60000316300007BAD0000FFFF0000E7FF000084DE00084A
      7B00000000000000000000000000000000000000000000000000F7EFE700F7F7
      F700FFFFFF00FFFFFF00D6CECE0063424200C6B5AD00FFFFFF00FFFFFF00FFFF
      FF00EFDED600000000000000000000000000FFFFFF00C6A5E7008484E7008484
      E7004284E7004284E7004263E7004263E7004263E7004263E7004263E7004263
      E7004263E7004242E70084A5E700FFFFFF000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008639C00084A7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE7DE00F7F7EF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DECEC6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400846363004263630084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000846363008463
      6300846363008463630084636300846363008463630084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000846363008484
      8400848484004263630042424200426363008463630084848400848484000000
      000000000000000000000000000000000000000000000084C6000084C6000084
      C6000084A5000084A5000084A5000084A5000084A5000063A5000063A5000063
      A5000063A5000063A50084636300846363000000000000000000000000000000
      0000008C1000089C100000A5100000A51000009C100000941000008C08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6DE
      C600C6C6C600F7FFFF00C6DEC600A5A5A5004263630042424200426363008463
      6300848484008484840000000000000000004284C60084C6E7000084C60084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70042A5E70084E7E7000063A5008463630000000000000000000000000010B5
      210010BD210008BD210029C6390018BD290000B5100008AD180000A510000094
      0800000000000000000000000000000000000000000000000000734A52006342
      4A007B636300B58C9400A57B8400BDBDBD00948C8C0052525200292121001008
      08000000000000000000000000000000000084848400C6C6C600A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A5008463
      6300424242004263630084636300848484004284C60084C6E7004284C60084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70042A5E70084E7E7000063A50084636300000000000000000018BD310010C6
      290008BD210029AD3100EFE7C600DEEFCE0052CE630000B5100000B5100008A5
      1000009410000000000000000000000000000000000042393900735252006B42
      4A00846B730084636B0094737300DEDEDE00D6D6D600CECEC600AD8484005239
      39002121210000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC600F7FFFF00C6DEC600A5A5A500A5A5A50084848400A5A5
      A500C6DEC600A5A5A50042636300424242004284C60084C6E70042A5C60084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70042C6E70084E7E7000063A500846363000000000031BD4A0021CE420018C6
      310008BD210063B56300FFEFDE00FFE7D600FFEFDE0084DE8C0008B5180000B5
      100000A51000008C0800000000000000000000000000634A4A0084525A00734A
      4A00947B7B0052424A007B737300E7E7E700DEDED600CECEC60084636B004231
      31003129310000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC600F7FFFF00C6C6C6008484840042424200424242004263
      6300A5A5A500C6DEC600A5A5A500424242004284C60084C6E70042A5C60084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70042C6E70084E7E7000063A500846363000000000042E76B0021C6390021CE
      390010BD29006BBD6B00FFF7EF00FFEFDE00FFDEC600FFE7DE00BDE7B50021BD
      310000AD100000941000000000000000000000000000735A5A008C5A63007B4A
      52008C636B007B7373009C949400DEDEDE00DEDEDE00CECECE0052424A003929
      31003931310000000000000000000000000084848400C6C6C600C6DEC600C6DE
      C600C6C6C600C6DEC600F7FFFF00C6C6C6004263630042424200426363004242
      420084636300C6C6C600A5A5A5004242420042A5C60084E7E70042A5C60084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70042C6E70084E7E7000063A50084636300000000004AE7730029CE420029D6
      4A0018C639006BBD7300FFF7F700FFF7E700FFEFDE00FFDEC600FFDECE00D6E7
      C60018BD2900009C1000000000000000000000000000846363008C5A63009473
      7B009CA5AD009CA5A5008C8C94007B7B7B007B7B7B007B737300423939004229
      31004231310000000000000000000000000084848400C6C6C600C6DEC600C6DE
      C600C6C6C600C6C6C600F7FFFF00C6C6C6004263630042636300C66300008463
      420042636300C6C6C600A5A5A5004242420042A5C60084E7E70042A5C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084E7E700FFFFFF000084A50084636300000000004AEF7B0031D6520031D6
      520021CE420073C67B00FFFFFF00FFF7EF00FFF7E700FFEFDE00FFE7CE00E7E7
      BD0018BD290000A51000000000000000000000000000946B6B00945A6300BDC6
      C600D6FFFF00C6FFFF00BDFFFF00B5F7FF00ADEFF7009CE7E70094D6DE007BAD
      AD0042313900000000000000000000000000A5A5A500C6C6C600C6DEC600C6DE
      C600C6C6C600C6DEC600F7FFFF00C6DEC6004263630042424200C68442004263
      420042636300C6DEC600A5A5A5004242420042A5C60084E7E70084E7E70042A5
      C60042A5C60042A5C60042A5C60042A5C60042A5C6004284C6004284C6000084
      C6000084C6000084C6000084C600000000000000000052F7840039DE630039DE
      630029D64A0073C67B00FFFFFF00FFFFF700FFF7EF00FFF7EF00E7E7C6004AC6
      4A0000B5180008AD1800000000000000000000000000A5737B00A5636B00C6D6
      D600CEF7F700C6EFEF00C6EFEF00BDEFEF00B5EFEF00B5F7F700ADFFFF00A5F7
      F7004A424200000000000000000000000000C6C6C600C6C6C600C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600A5A5A50084636300426363004263
      630084848400C6C6C600A5A5A5004242420042A5C60084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000084A500846363000000000000000000000000005AF78C0052EF7B0042E7
      730031D65A007BC68400FFFFFF00FFFFFF00FFFFFF00BDE7BD0031C6420008BD
      210010BD210008A51000000000000000000000000000B57B8400AD6B7300D6E7
      E700DEFFFF00D6F7F700CEF7F700CEF7FF00C6F7FF00BDF7F700BDF7F700A5DE
      E70052424200000000000000000000000000C6C6C600C6C6C600C6C6C600C6DE
      C600C6DEC600C6C6C600C6C6C600C6C6C600F7FFFF00A5A5A500848484008484
      8400C6DEC600C6C6C600A5A5A5004242420042A5C600FFFFFF0084E7E70084E7
      E70084E7E70084E7E700FFFFFF004284C6004284C6000084C6000084C6000084
      C6000084C6000000000000000000000000000000000042CE63006BFF9C0052F7
      840039DE630063BD7300FFFFFF00FFFFFF0094E7A50021C6390010C6290010BD
      290010BD210008941000000000000000000000000000C6848C00B5737B00E7EF
      EF00DEF7F700D6EFEF00CEEFEF00CEEFEF00C6EFEF00C6EFEF00BDF7F700ADD6
      DE0052394200000000000000000000000000A5A5A500C6DEC600F7FFFF00C6DE
      C600C6C6C60084848400A5A5A500A5A5A500A5A5A500A5A5A500C6C6C600A5A5
      A500848484008484840084848400424242000000000042A5C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004284C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AEF8C0063FF
      9C004AEF7B0039BD5200B5E7BD006BE7840021CE420021C6390018C6310010C6
      290010B5210000000000000000000000000000000000CE848C00C67B8400EFF7
      F700E7FFFF00E7F7F700DEF7F700D6F7F700D6F7F700CEF7F700CEFFFF00ADCE
      CE004A313900000000000000000000000000C6C6C600FFFFFF00C6DEC600A5A5
      A500F7FFFF00A5A5A500A5A5A500C6DEC600C6C6C600A5A5A500A5A5A5008463
      630042636300846363008463630084636300000000000000000042A5C60042A5
      C60042A5C60042A5C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005AE7
      840063FF9C0052F7840039DE630029D64A0029CE420021CE390029D6420018BD
      31000000000000000000000000000000000000000000B5737B00B57B8400F7F7
      F700E7EFEF00DEEFEF00DEEFEF00D6EFEF00D6EFEF00D6EFEF00D6FFFF00ADBD
      C6004229310000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A500C6C6C600F7FFFF00C6DEC600A5A5A50084848400A5A5
      A50084848400A5A5A50084636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039BD5A005AEF84005AF78C004AEF7B004AE7730042DE6B0031BD52000000
      00000000000000000000000000000000000000000000AD6B7300B58C9400F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00F7FFFF00ADAD
      B500291818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B525A00846B73008C8C
      8C00636363005A5A5A005A5A5A00525252003939390039393900393939002118
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00EFFF800300000000C7FF800300000000
      C78F800300000000C307800300000000E01B800300000000F03F800300000000
      F83F800300000000FE1F800300000000FC0F800300000000FC07800300000000
      F843800300000000F860800300000000FCF0800300000000FFF9800700000000
      FFFF800F00000000FFFF801F00000000FFFFFFFFFFFFFFFFE000E000F000F000
      C000C000F000F000C000C000F000F00080008000F000F00080008000F000F000
      80008000F000F00000000000F000F00000000000E000E00000000000C000C000
      F000E00080008000F000000098000000F000C000F000C000F0018001E0018001
      F0032003F0032003F007E007F007E007FFFFFFFFFFFFFFFFF000F000F000F000
      F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000
      F000F000E000E000F000F000C000C000F000D000C000C000F000C000C000C000
      F000E000C000C000F0000000E0000000F000C000F000C000F0018001F0018001
      F0032003D0030003F007E007F007E007FFFFFFFFFFFFFFFFF000F000F000F000
      C000C000F000F000C000C000F000C00080008000C000C00080008000C000C000
      80008000C0004000800080004000000080008000000000008000800000004000
      C000C0007000E000E0000000F0000000F000C000F000C000F0018001F0018001
      F0032003F0032003F007E007F007E007FFFFFFFFFFFFFFFFE000F000FE00FE00
      E000F000FC00FC00E000F000F800F800E000F000F000F0008000E000C000C000
      8000E000C000C0008000E000C000C0008000C000C000C000C000C000F000C000
      F000E000F000E000E0000000F0000000E000C000F000C000F0018001F0018001
      F0032003F0032003F007E007F007E007FFFFFFFFFFFFFFFFC000C000F000F000
      C000C000F000F000C000C000F000F000C000C00080008000C000C00080008000
      C000C00080008000C000C00080008000C000C00080008000C001C00180008000
      E001E00180008000E0010001F0000000E001C001F000C000E0038003F0018001
      E0072007F0032003E00FE00FF007E007FFFFFFFFFFFFFFFFF000F000F000F000
      F000F000F000F000F000F00000000000F000F00000000000F000F00000000000
      F000F00000000000F000F00000000000F000E00000000000F000E00000000000
      F000F00000000000F000800080000000F000E000F000C000F001C001F0018001
      F0039003F0032003F007F007F007E007FFFFFFFFFFFFFFFFFC00FC00F000F000
      F000F000F000F000E000E000F000F000E000E000F000F000C000C000F000F000
      C000C000F000F000C000C000F000F000C000C000F000E000C000C000F000E000
      C000C000F000F000E0010001F0008000E001C001F000E000F0038003F001C001
      FC0F200FF0039003FFFFE1FFF007F007FFFFFFFFFFFFFFFFF000F000FC00FC00
      F000F000F000F000F000F000E000E000F000F000E000E000F000F000C000C000
      F000F000C000C000F000F000C000C000F000F000C000C000F000E000C000C000
      F000E000C000C000F000F000E0010001F0008000E001C001F001E001F0038003
      F003C003FC0F200FF0079007FFFFE9FFFFFFFFFFFFFFFFFFC000E000F000F000
      8000C000F000F0008000C000F000F00080008000F000F00080008000F000F000
      80000000F000F00080000000F000F00080000000F000F00080000000F000E000
      80000000F000E00000010001F000F000C07FC07FF0008000807F807FF000E000
      23FF23FFF001C001E9FFE9FFF0039003FFFFFFFFFFFFFFFFFC7FF800C000E000
      F81FF0008000C000F007E0008000C000E001C00080008000C000800080008000
      8001800080000000000180008000000000008000800000000001800080008000
      00038000800080000007000180018001800F8007C07FC07F801F8047E0FFE0FF
      203F03FFFFFFFFFFE87FE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FF800
      9FFFFFFFF81FF00081FFFFFFF007E000801FFFFFE001C000800FFFFFC0008000
      800FFE7F800180008007FC3F000180008003FC3F000080008000FE7F00018000
      8000FFFF000380008000FFFF000780018001FFFF800F8307C3C1FFFFE01F83C7
      FFF7FFFFF83FC7FFFFFFFFFFFE7FEFFFE001FE01E0018402C000FE01C0008001
      8000FF87800080010000FC030000998900018001000180418000000180008000
      000000110000908E000000110000800900010011000180018000001180008402
      0000001100001282000000110000028200000011000000C0800180018001089E
      0003C403000304920007FE07000710C4FFFFFF3F8001861FF9FFFE1F0000830F
      E01FFC1F000081FFC01FF00700008003800FC003000080018003800100008000
      0703000100008000078300000000000087C100000000000183C1000000000003
      81C1000000009003C00300000000F003F00380010000F003F00780030000F003
      F80FC0070000F003FF3FF01F8001F807FFFFFFFFFFFFE0FFC001FFFFFFFFC01F
      8000F01FFFFF80030000E00FC00F00000000C007800700000000800380070000
      0000800380070000000080038007000000008003800700000001800380070000
      0003800380070000000780038007000081FFC00780070000C3FFE00F80078001
      FFFFF01F8007FE03FFFFFFFF800FFFFF00000000000000000000000000000000
      000000000000}
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen, cdAnyColor]
    Left = 264
    Top = 416
  end
  object SaveFrameDIALOG: TSavePictureDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 296
    Top = 416
  end
  object SaveAvsDIALOG: TSaveDialog
    DefaultExt = 'avs'
    Filter = 'AviSynth File|*.avs'
    Left = 328
    Top = 416
  end
end
