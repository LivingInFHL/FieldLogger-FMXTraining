unit formMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TabControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBLiteDef,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.MultiView, FMX.Effects,
  FMX.Filter.Effects, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, FireDAC.Comp.DataSet, System.Actions, FMX.ActnList,
  FMX.ScrollBox, FMX.Memo, FMX.ListView, FMX.ListBox, FMX.MediaLibrary.Actions,
  FMX.StdActns, FMX.Media, FMX.Ani, System.Sensors, System.Sensors.Components;

type
  TfrmMain = class(TForm)
    CameraComponent1: TCameraComponent;
    mmoCreateDatabase: TMemo;
    tbcMain: TTabControl;
    tabWelcome: TTabItem;
    sbSterling: TStyleBook;
    BackgroundRect: TRectangle;
    BackgroundImage: TImage;
    BackgroundGaussianBlurEffect: TGaussianBlurEffect;
    MenuLayout: TLayout;
    LogoLayout: TLayout;
    LogoImage: TImage;
    MenuGridPanelLayout: TGridPanelLayout;
    LearnLayout: TLayout;
    LoginBackgroundRect: TRectangle;
    LearnCenterLayout: TLayout;
    LearnCircle: TCircle;
    LearnImage: TImage;
    LoginLabel: TLabel;
    SupportLayout: TLayout;
    SupportBackgroundRect: TRectangle;
    SupportCenterLayout: TLayout;
    SupportCircle: TCircle;
    SupportImage: TImage;
    SupportLabel: TLabel;
    AdvocateLayout: TLayout;
    AdvocateBackgroundRect: TRectangle;
    AdvocateCenterLayout: TLayout;
    AdvocateCircle: TCircle;
    AdvocateImage: TImage;
    AdvocateLabel: TLabel;
    EventsLayout: TLayout;
    EventsBackgroundRect: TRectangle;
    EventsCenterLayout: TLayout;
    EventsCircle: TCircle;
    EventsImage: TImage;
    EventsLabel: TLabel;
    HeaderToolBar: TToolBar;
    HeaderBackgroundRect: TRectangle;
    HeaderLabel: TLabel;
    MenuButton: TButton;
    DrawerMultiView: TMultiView;
    DrawerBackgroundRect: TRectangle;
    TopImage: TImage;
    tabSignin: TTabItem;
    Image1: TImage;
    GaussianBlurEffect1: TGaussianBlurEffect;
    VertScrollBox1: TVertScrollBox;
    SignUpLayout: TLayout;
    SignupTextBTN: TText;
    SignInBackgroundRect: TRectangle;
    FormLayout: TLayout;
    UsernameEdit: TEdit;
    UserImage: TImage;
    PasswordEdit: TEdit;
    LockImage: TImage;
    SignInRectBTN: TRectangle;
    SignInText: TText;
    FormSpacerLayout: TLayout;
    HeaderLayout: TLayout;
    CenterLayout: TLayout;
    LogoCircle: TCircle;
    Image2: TImage;
    Layout1: TLayout;
    WelcomeLabel: TLabel;
    tabProjects: TTabItem;
    tabProjectDetail: TTabItem;
    Splitter1: TSplitter;
    tabEntryDetail: TTabItem;
    imgPicture: TImage;
    ScrollBox1: TScrollBox;
    Rectangle1: TRectangle;
    GradientAnimation1: TGradientAnimation;
    Label2: TLabel;
    Rectangle2: TRectangle;
    GradientAnimation2: TGradientAnimation;
    Label7: TLabel;
    lblLongitude: TLabel;
    Rectangle3: TRectangle;
    GradientAnimation3: TGradientAnimation;
    Label9: TLabel;
    lblLatitude: TLabel;
    Rectangle4: TRectangle;
    GradientAnimation4: TGradientAnimation;
    Label11: TLabel;
    Rectangle5: TRectangle;
    GradientAnimation5: TGradientAnimation;
    Label12: TLabel;
    lblSubThoroughfare: TLabel;
    Rectangle6: TRectangle;
    GradientAnimation6: TGradientAnimation;
    Label14: TLabel;
    lblThoroughfare: TLabel;
    Rectangle7: TRectangle;
    GradientAnimation7: TGradientAnimation;
    Label16: TLabel;
    lblSubLocality: TLabel;
    Rectangle8: TRectangle;
    GradientAnimation8: TGradientAnimation;
    Label18: TLabel;
    lblSubAdminArea: TLabel;
    Rectangle9: TRectangle;
    GradientAnimation9: TGradientAnimation;
    Label20: TLabel;
    lblZipCode: TLabel;
    Rectangle10: TRectangle;
    GradientAnimation10: TGradientAnimation;
    Label22: TLabel;
    lblLocality: TLabel;
    Rectangle11: TRectangle;
    GradientAnimation11: TGradientAnimation;
    Label24: TLabel;
    lblFeature: TLabel;
    Rectangle12: TRectangle;
    GradientAnimation12: TGradientAnimation;
    Label26: TLabel;
    lblCountry: TLabel;
    Rectangle13: TRectangle;
    GradientAnimation13: TGradientAnimation;
    Label28: TLabel;
    lblCountryCode: TLabel;
    Rectangle14: TRectangle;
    GradientAnimation14: TGradientAnimation;
    Label30: TLabel;
    lblAdminArea: TLabel;
    tabNewEntry: TTabItem;
    tabNewProject: TTabItem;
    Layout4: TLayout;
    mmoNewProjDescription: TMemo;
    edtNewProjTitle: TEdit;
    LocationSensor1: TLocationSensor;
    ToolBar6: TToolBar;
    Rectangle15: TRectangle;
    Label10: TLabel;
    Button1: TButton;
    ToolBar1: TToolBar;
    Rectangle16: TRectangle;
    Label1: TLabel;
    Button2: TButton;
    speedButtonAdd: TSpeedButton;
    ToolBar7: TToolBar;
    Rectangle17: TRectangle;
    Label13: TLabel;
    Button3: TButton;
    spedProjBack: TSpeedButton;
    spedProjDelete: TSpeedButton;
    ToolBar3: TToolBar;
    Rectangle18: TRectangle;
    Label6: TLabel;
    Button4: TButton;
    btnEntriesBack: TButton;
    Image3: TImage;
    GaussianBlurEffect2: TGaussianBlurEffect;
    Image4: TImage;
    GaussianBlurEffect3: TGaussianBlurEffect;
    Image5: TImage;
    GaussianBlurEffect4: TGaussianBlurEffect;
    Layout7: TLayout;
    Layout9: TLayout;
    Rectangle22: TRectangle;
    Circle2: TCircle;
    Image7: TImage;
    Layout8: TLayout;
    Rectangle21: TRectangle;
    Circle1: TCircle;
    Image6: TImage;
    mmoProjDesc: TMemo;
    Label3: TLabel;
    edtProjTitle: TEdit;
    Label5: TLabel;
    Rectangle23: TRectangle;
    lstEntries: TListView;
    Rectangle24: TRectangle;
    listViewProjects: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Label8: TLabel;
    Image8: TImage;
    GaussianBlurEffect5: TGaussianBlurEffect;
    ToolBar2: TToolBar;
    Rectangle19: TRectangle;
    Label17: TLabel;
    Button5: TButton;
    btnNewEntryCancel: TButton;
    Layout3: TLayout;
    imgTakePicture: TImage;
    Rectangle25: TRectangle;
    btnTakePicture: TButton;
    Image10: TImage;
    GaussianBlurEffect6: TGaussianBlurEffect;
    Layout2: TLayout;
    Rectangle20: TRectangle;
    Circle3: TCircle;
    Image9: TImage;
    Layout5: TLayout;
    Rectangle26: TRectangle;
    Label21: TLabel;
    ToolBar4: TToolBar;
    Rectangle27: TRectangle;
    Label23: TLabel;
    Button7: TButton;
    spedCancelNewProject: TSpeedButton;
    ToolBar5: TToolBar;
    Rectangle28: TRectangle;
    Label19: TLabel;
    Button6: TButton;
    Label15: TLabel;
    Label4: TLabel;
    procedure LoginBackgroundRectClick(Sender: TObject);
    procedure SignInRectBTNClick(Sender: TObject);
    procedure listViewProjectsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure spedProjBackClick(Sender: TObject);
    procedure PasswordEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure lstEntriesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure FormShow(Sender: TObject);
    procedure spedNewEntryClick(Sender: TObject);
    procedure btnEntriesBackClick(Sender: TObject);
    procedure CameraComponent1SampleBufferReady(Sender: TObject; const ATime: TMediaTime);
    procedure btnTakePictureClick(Sender: TObject);
    procedure speedButtonAddClick(Sender: TObject);
    procedure spedCancelNewProjectClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D);
    procedure btnNewEntryCancelClick(Sender: TObject);
    procedure spedProjDeleteClick(Sender: TObject);
  private
    CurrentLocation: TLocationCoord2D;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
  IOUtils,
  fieldlogger.authentication,
  modMain;

{$R *.fmx}

function DataFilename: string;
const
  cDatafileName = 'EMBEDDEDIBLITE.IB';
begin
  Result := TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + cDatafileName;
end;


procedure TfrmMain.btnDoneClick(Sender: TObject);
begin
  dmMain.qryProjects.FieldByName('PROJ_ID').AsInteger := 0;
  dmMain.qryProjects.Post;
  tbcMain.SetActiveTabWithTransition(tabProjectDetail,TTabTransition.Slide,TTabTransitionDirection.Reversed);
  //- Disable sensors
  CameraComponent1.Active := False;
  LocationSensor1.Active := False;
end;

procedure TfrmMain.btnEntriesBackClick(Sender: TObject);
begin
  tbcMain.SetActiveTabWithTransition(tabProjectDetail,TTabTransition.Slide,TTabTransitionDirection.Reversed);
end;

procedure TfrmMain.btnNewEntryCancelClick(Sender: TObject);
begin
  tbcMain.SetActiveTabWithTransition(tabProjectDetail,TTabTransition.Slide,TTabTransitionDirection.Reversed);
  CameraComponent1.Active := False;
  LocationSensor1.Active := False;
end;

procedure TfrmMain.btnTakePictureClick(Sender: TObject);
var
  ms: TMemoryStream;
begin
  dmMain.qryEntries.Append;
  ms := TMemoryStream.Create;
  try
    imgTakePicture.Bitmap.SaveToStream(ms);
    ms.Position := 0;
    dmMain.qryEntriesPICTURE.LoadFromStream(ms);
  finally
    ms.Free;
  end;
  dmMain.qryEntries.FieldByName('LATITUDE').AsFloat := CurrentLocation.Latitude;
  dmMain.qryEntries.FieldByName('LONGITUDE').AsFloat := CurrentLocation.Longitude;
  dmMain.qryEntries.FieldByName('TIMEDATESTAMP').AsDateTime := Now;
  dmMain.qryEntries.FieldByName('LOG_ID').AsInteger := 0;
  dmMain.qryEntries.Post;
  tbcMain.SetActiveTabWithTransition(tabEntryDetail,TTabTransition.Slide,TTabTransitionDirection.Reversed);
  CameraComponent1.Active := False;
  LocationSensor1.Active := False;
end;

procedure TfrmMain.CameraComponent1SampleBufferReady(Sender: TObject; const ATime: TMediaTime);
begin
  CameraComponent1.SampleBufferToBitmap(imgTakePicture.Bitmap,TRUE);
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  idx: uint32;
begin
  //- Ensure we're on the welcome tab
  tbcMain.ActiveTab := tabWelcome;
  //- Configure our connection to the database.
  dmMain.conn.LoginPrompt := False;
  dmMain.conn.Params.Database := DataFilename;
  //- Ensure the database file already exists, if not, create it.
  if not FileExists(DataFilename) then begin
    dmMain.conn.Params.Values['CreateDatabase'] := BoolToStr(True,True);
    dmMain.conn.Connected := True;
    for idx := 0 to pred(mmoCreateDatabase.Lines.Count) do begin
      if mmoCreateDatabase.Lines[idx].Trim<>'' then begin
        dmMain.conn.ExecSQL(mmoCreateDatabase.Lines[idx].Trim);
      end;
    end;
    dmMain.conn.Params.Values['CreateDatabase'] := BoolToStr(False,True);
    dmMain.conn.Connected := False;
  end;
  //- Connect to the database.
  dmMain.conn.Connected := True;
  if not dmMain.conn.Connected then begin
    raise
      Exception.Create('Unable to connect to database: '+DataFilename);
  end;
end;

procedure TfrmMain.listViewProjectsItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  tbcMain.SetActiveTabWithTransition(tabProjectDetail,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TfrmMain.LocationSensor1LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D );
begin
  CurrentLocation := NewLocation;
end;

procedure TfrmMain.LoginBackgroundRectClick(Sender: TObject);
begin
  tbcMain.SetActiveTabWithTransition(tabSignin,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TfrmMain.lstEntriesItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  tbcMain.SetActiveTabWithTransition(tabEntryDetail,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TfrmMain.PasswordEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key=vkReturn then begin
    SignInRectBTNClick(Sender);
  end else if Key=vkTab then begin
    PasswordEdit.SetFocus;
  end;
end;

procedure TfrmMain.SignInRectBTNClick(Sender: TObject);
begin
  SignInText.Text := 'Autenticating...';
  if TAuthentication.Authenticate(dmMain.conn,UsernameEdit.Text,PasswordEdit.Text,[dmMain.qryProjects,dmMain.qryEntries]) then begin
    tbcMain.SetActiveTabWithTransition(tabProjects,TTabTransition.Slide,TTabTransitionDirection.Normal);
  end else begin
    SignInText.Text := 'SIGN IN';
    ShowMessage('Invalid UserName/Password or Connection to IBLite database');
  end;
end;

procedure TfrmMain.spedCancelNewProjectClick(Sender: TObject);
begin
  dmMain.qryProjects.Cancel;
  tbcMain.SetActiveTabWithTransition(tabProjects,TTabTransition.Slide,TTabTransitionDirection.Reversed);
end;

procedure TfrmMain.spedNewEntryClick(Sender: TObject);
begin
  //- Set sensors active.
  CameraComponent1.Active := True;
  LocationSensor1.Active := True;
  //- Switch tab
  tbcMain.SetActiveTabWithTransition(tabNewEntry,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TfrmMain.spedProjBackClick(Sender: TObject);
begin
  tbcMain.SetActiveTabWithTransition(tabProjects,TTabTransition.Slide,TTabTransitionDirection.Reversed);
end;

procedure TfrmMain.spedProjDeleteClick(Sender: TObject);
begin
  dmMain.qryProjects.Delete;
end;

procedure TfrmMain.speedButtonAddClick(Sender: TObject);
begin
  dmMain.qryProjects.Insert;
  tbcMain.SetActiveTabWithTransition(tabNewProject,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TfrmMain.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  Image1.Bitmap.Assign(Image);
end;

end.
