//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/widgets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_iconsThreesixty.funName] = _iconsThreesixty;
  m[_iconsThreedRotation.funName] = _iconsThreedRotation;
  m[_iconsFourK.funName] = _iconsFourK;
  m[_iconsAcUnit.funName] = _iconsAcUnit;
  m[_iconsAccessAlarm.funName] = _iconsAccessAlarm;
  m[_iconsAccessAlarms.funName] = _iconsAccessAlarms;
  m[_iconsAccessTime.funName] = _iconsAccessTime;
  m[_iconsAccessibility.funName] = _iconsAccessibility;
  m[_iconsAccessibilityNew.funName] = _iconsAccessibilityNew;
  m[_iconsAccessible.funName] = _iconsAccessible;
  m[_iconsAccessibleForward.funName] = _iconsAccessibleForward;
  m[_iconsAccountBalance.funName] = _iconsAccountBalance;
  m[_iconsAccountBalanceWallet.funName] = _iconsAccountBalanceWallet;
  m[_iconsAccountBox.funName] = _iconsAccountBox;
  m[_iconsAccountCircle.funName] = _iconsAccountCircle;
  m[_iconsAdb.funName] = _iconsAdb;
  m[_iconsAdd.funName] = _iconsAdd;
  m[_iconsAddAPhoto.funName] = _iconsAddAPhoto;
  m[_iconsAddAlarm.funName] = _iconsAddAlarm;
  m[_iconsAddAlert.funName] = _iconsAddAlert;
  m[_iconsAddBox.funName] = _iconsAddBox;
  m[_iconsAddCall.funName] = _iconsAddCall;
  m[_iconsAddCircle.funName] = _iconsAddCircle;
  m[_iconsAddCircleOutline.funName] = _iconsAddCircleOutline;
  m[_iconsAddComment.funName] = _iconsAddComment;
  m[_iconsAddLocation.funName] = _iconsAddLocation;
  m[_iconsAddPhotoAlternate.funName] = _iconsAddPhotoAlternate;
  m[_iconsAddShoppingCart.funName] = _iconsAddShoppingCart;
  m[_iconsAddToHomeScreen.funName] = _iconsAddToHomeScreen;
  m[_iconsAddToPhotos.funName] = _iconsAddToPhotos;
  m[_iconsAddToQueue.funName] = _iconsAddToQueue;
  m[_iconsAdjust.funName] = _iconsAdjust;
  m[_iconsAirlineSeatFlat.funName] = _iconsAirlineSeatFlat;
  m[_iconsAirlineSeatFlatAngled.funName] = _iconsAirlineSeatFlatAngled;
  m[_iconsAirlineSeatIndividualSuite.funName] =
      _iconsAirlineSeatIndividualSuite;
  m[_iconsAirlineSeatLegroomExtra.funName] = _iconsAirlineSeatLegroomExtra;
  m[_iconsAirlineSeatLegroomNormal.funName] = _iconsAirlineSeatLegroomNormal;
  m[_iconsAirlineSeatLegroomReduced.funName] = _iconsAirlineSeatLegroomReduced;
  m[_iconsAirlineSeatReclineExtra.funName] = _iconsAirlineSeatReclineExtra;
  m[_iconsAirlineSeatReclineNormal.funName] = _iconsAirlineSeatReclineNormal;
  m[_iconsAirplanemodeActive.funName] = _iconsAirplanemodeActive;
  m[_iconsAirplanemodeInactive.funName] = _iconsAirplanemodeInactive;
  m[_iconsAirplay.funName] = _iconsAirplay;
  m[_iconsAirportShuttle.funName] = _iconsAirportShuttle;
  m[_iconsAlarm.funName] = _iconsAlarm;
  m[_iconsAlarmAdd.funName] = _iconsAlarmAdd;
  m[_iconsAlarmOff.funName] = _iconsAlarmOff;
  m[_iconsAlarmOn.funName] = _iconsAlarmOn;
  m[_iconsAlbum.funName] = _iconsAlbum;
  m[_iconsAllInclusive.funName] = _iconsAllInclusive;
  m[_iconsAllOut.funName] = _iconsAllOut;
  m[_iconsAlternateEmail.funName] = _iconsAlternateEmail;
  m[_iconsAndroid.funName] = _iconsAndroid;
  m[_iconsAnnouncement.funName] = _iconsAnnouncement;
  m[_iconsApps.funName] = _iconsApps;
  m[_iconsArchive.funName] = _iconsArchive;
  m[_iconsArrowBack.funName] = _iconsArrowBack;
  m[_iconsArrowBackIos.funName] = _iconsArrowBackIos;
  m[_iconsArrowDownward.funName] = _iconsArrowDownward;
  m[_iconsArrowDropDown.funName] = _iconsArrowDropDown;
  m[_iconsArrowDropDownCircle.funName] = _iconsArrowDropDownCircle;
  m[_iconsArrowDropUp.funName] = _iconsArrowDropUp;
  m[_iconsArrowForward.funName] = _iconsArrowForward;
  m[_iconsArrowForwardIos.funName] = _iconsArrowForwardIos;
  m[_iconsArrowLeft.funName] = _iconsArrowLeft;
  m[_iconsArrowRight.funName] = _iconsArrowRight;
  m[_iconsArrowUpward.funName] = _iconsArrowUpward;
  m[_iconsArtTrack.funName] = _iconsArtTrack;
  m[_iconsAspectRatio.funName] = _iconsAspectRatio;
  m[_iconsAssessment.funName] = _iconsAssessment;
  m[_iconsAssignment.funName] = _iconsAssignment;
  m[_iconsAssignmentInd.funName] = _iconsAssignmentInd;
  m[_iconsAssignmentLate.funName] = _iconsAssignmentLate;
  m[_iconsAssignmentReturn.funName] = _iconsAssignmentReturn;
  m[_iconsAssignmentReturned.funName] = _iconsAssignmentReturned;
  m[_iconsAssignmentTurnedIn.funName] = _iconsAssignmentTurnedIn;
  m[_iconsAssistant.funName] = _iconsAssistant;
  m[_iconsAssistantPhoto.funName] = _iconsAssistantPhoto;
  m[_iconsAtm.funName] = _iconsAtm;
  m[_iconsAttachFile.funName] = _iconsAttachFile;
  m[_iconsAttachMoney.funName] = _iconsAttachMoney;
  m[_iconsAttachment.funName] = _iconsAttachment;
  m[_iconsAudiotrack.funName] = _iconsAudiotrack;
  m[_iconsAutorenew.funName] = _iconsAutorenew;
  m[_iconsAvTimer.funName] = _iconsAvTimer;
  m[_iconsBackspace.funName] = _iconsBackspace;
  m[_iconsBackup.funName] = _iconsBackup;
  m[_iconsBatteryAlert.funName] = _iconsBatteryAlert;
  m[_iconsBatteryChargingFull.funName] = _iconsBatteryChargingFull;
  m[_iconsBatteryFull.funName] = _iconsBatteryFull;
  m[_iconsBatteryStd.funName] = _iconsBatteryStd;
  m[_iconsBatteryUnknown.funName] = _iconsBatteryUnknown;
  m[_iconsBeachAccess.funName] = _iconsBeachAccess;
  m[_iconsBeenhere.funName] = _iconsBeenhere;
  m[_iconsBlock.funName] = _iconsBlock;
  m[_iconsBluetooth.funName] = _iconsBluetooth;
  m[_iconsBluetoothAudio.funName] = _iconsBluetoothAudio;
  m[_iconsBluetoothConnected.funName] = _iconsBluetoothConnected;
  m[_iconsBluetoothDisabled.funName] = _iconsBluetoothDisabled;
  m[_iconsBluetoothSearching.funName] = _iconsBluetoothSearching;
  m[_iconsBlurCircular.funName] = _iconsBlurCircular;
  m[_iconsBlurLinear.funName] = _iconsBlurLinear;
  m[_iconsBlurOff.funName] = _iconsBlurOff;
  m[_iconsBlurOn.funName] = _iconsBlurOn;
  m[_iconsBook.funName] = _iconsBook;
  m[_iconsBookmark.funName] = _iconsBookmark;
  m[_iconsBookmarkBorder.funName] = _iconsBookmarkBorder;
  m[_iconsBorderAll.funName] = _iconsBorderAll;
  m[_iconsBorderBottom.funName] = _iconsBorderBottom;
  m[_iconsBorderClear.funName] = _iconsBorderClear;
  m[_iconsBorderColor.funName] = _iconsBorderColor;
  m[_iconsBorderHorizontal.funName] = _iconsBorderHorizontal;
  m[_iconsBorderInner.funName] = _iconsBorderInner;
  m[_iconsBorderLeft.funName] = _iconsBorderLeft;
  m[_iconsBorderOuter.funName] = _iconsBorderOuter;
  m[_iconsBorderRight.funName] = _iconsBorderRight;
  m[_iconsBorderStyle.funName] = _iconsBorderStyle;
  m[_iconsBorderTop.funName] = _iconsBorderTop;
  m[_iconsBorderVertical.funName] = _iconsBorderVertical;
  m[_iconsBrandingWatermark.funName] = _iconsBrandingWatermark;
  m[_iconsBrightness1.funName] = _iconsBrightness1;
  m[_iconsBrightness2.funName] = _iconsBrightness2;
  m[_iconsBrightness3.funName] = _iconsBrightness3;
  m[_iconsBrightness4.funName] = _iconsBrightness4;
  m[_iconsBrightness5.funName] = _iconsBrightness5;
  m[_iconsBrightness6.funName] = _iconsBrightness6;
  m[_iconsBrightness7.funName] = _iconsBrightness7;
  m[_iconsBrightnessAuto.funName] = _iconsBrightnessAuto;
  m[_iconsBrightnessHigh.funName] = _iconsBrightnessHigh;
  m[_iconsBrightnessLow.funName] = _iconsBrightnessLow;
  m[_iconsBrightnessMedium.funName] = _iconsBrightnessMedium;
  m[_iconsBrokenImage.funName] = _iconsBrokenImage;
  m[_iconsBrush.funName] = _iconsBrush;
  m[_iconsBubbleChart.funName] = _iconsBubbleChart;
  m[_iconsBugReport.funName] = _iconsBugReport;
  m[_iconsBuild.funName] = _iconsBuild;
  m[_iconsBurstMode.funName] = _iconsBurstMode;
  m[_iconsBusiness.funName] = _iconsBusiness;
  m[_iconsBusinessCenter.funName] = _iconsBusinessCenter;
  m[_iconsCached.funName] = _iconsCached;
  m[_iconsCake.funName] = _iconsCake;
  m[_iconsCalendarToday.funName] = _iconsCalendarToday;
  m[_iconsCalendarViewDay.funName] = _iconsCalendarViewDay;
  m[_iconsCall.funName] = _iconsCall;
  m[_iconsCallEnd.funName] = _iconsCallEnd;
  m[_iconsCallMade.funName] = _iconsCallMade;
  m[_iconsCallMerge.funName] = _iconsCallMerge;
  m[_iconsCallMissed.funName] = _iconsCallMissed;
  m[_iconsCallMissedOutgoing.funName] = _iconsCallMissedOutgoing;
  m[_iconsCallReceived.funName] = _iconsCallReceived;
  m[_iconsCallSplit.funName] = _iconsCallSplit;
  m[_iconsCallToAction.funName] = _iconsCallToAction;
  m[_iconsCamera.funName] = _iconsCamera;
  m[_iconsCameraAlt.funName] = _iconsCameraAlt;
  m[_iconsCameraEnhance.funName] = _iconsCameraEnhance;
  m[_iconsCameraFront.funName] = _iconsCameraFront;
  m[_iconsCameraRear.funName] = _iconsCameraRear;
  m[_iconsCameraRoll.funName] = _iconsCameraRoll;
  m[_iconsCancel.funName] = _iconsCancel;
  m[_iconsCardGiftcard.funName] = _iconsCardGiftcard;
  m[_iconsCardMembership.funName] = _iconsCardMembership;
  m[_iconsCardTravel.funName] = _iconsCardTravel;
  m[_iconsCasino.funName] = _iconsCasino;
  m[_iconsCast.funName] = _iconsCast;
  m[_iconsCastConnected.funName] = _iconsCastConnected;
  m[_iconsCategory.funName] = _iconsCategory;
  m[_iconsCenterFocusStrong.funName] = _iconsCenterFocusStrong;
  m[_iconsCenterFocusWeak.funName] = _iconsCenterFocusWeak;
  m[_iconsChangeHistory.funName] = _iconsChangeHistory;
  m[_iconsChat.funName] = _iconsChat;
  m[_iconsChatBubble.funName] = _iconsChatBubble;
  m[_iconsChatBubbleOutline.funName] = _iconsChatBubbleOutline;
  m[_iconsCheck.funName] = _iconsCheck;
  m[_iconsCheckBox.funName] = _iconsCheckBox;
  m[_iconsCheckBoxOutlineBlank.funName] = _iconsCheckBoxOutlineBlank;
  m[_iconsCheckCircle.funName] = _iconsCheckCircle;
  m[_iconsCheckCircleOutline.funName] = _iconsCheckCircleOutline;
  m[_iconsChevronLeft.funName] = _iconsChevronLeft;
  m[_iconsChevronRight.funName] = _iconsChevronRight;
  m[_iconsChildCare.funName] = _iconsChildCare;
  m[_iconsChildFriendly.funName] = _iconsChildFriendly;
  m[_iconsChromeReaderMode.funName] = _iconsChromeReaderMode;
  m[_iconsClass.funName] = _iconsClass;
  m[_iconsClear.funName] = _iconsClear;
  m[_iconsClearAll.funName] = _iconsClearAll;
  m[_iconsClose.funName] = _iconsClose;
  m[_iconsClosedCaption.funName] = _iconsClosedCaption;
  m[_iconsCloud.funName] = _iconsCloud;
  m[_iconsCloudCircle.funName] = _iconsCloudCircle;
  m[_iconsCloudDone.funName] = _iconsCloudDone;
  m[_iconsCloudDownload.funName] = _iconsCloudDownload;
  m[_iconsCloudOff.funName] = _iconsCloudOff;
  m[_iconsCloudQueue.funName] = _iconsCloudQueue;
  m[_iconsCloudUpload.funName] = _iconsCloudUpload;
  m[_iconsCode.funName] = _iconsCode;
  m[_iconsCollections.funName] = _iconsCollections;
  m[_iconsCollectionsBookmark.funName] = _iconsCollectionsBookmark;
  m[_iconsColorLens.funName] = _iconsColorLens;
  m[_iconsColorize.funName] = _iconsColorize;
  m[_iconsComment.funName] = _iconsComment;
  m[_iconsCompare.funName] = _iconsCompare;
  m[_iconsCompareArrows.funName] = _iconsCompareArrows;
  m[_iconsComputer.funName] = _iconsComputer;
  m[_iconsConfirmationNumber.funName] = _iconsConfirmationNumber;
  m[_iconsContactMail.funName] = _iconsContactMail;
  m[_iconsContactPhone.funName] = _iconsContactPhone;
  m[_iconsContacts.funName] = _iconsContacts;
  m[_iconsContentCopy.funName] = _iconsContentCopy;
  m[_iconsContentCut.funName] = _iconsContentCut;
  m[_iconsContentPaste.funName] = _iconsContentPaste;
  m[_iconsControlPoint.funName] = _iconsControlPoint;
  m[_iconsControlPointDuplicate.funName] = _iconsControlPointDuplicate;
  m[_iconsCopyright.funName] = _iconsCopyright;
  m[_iconsCreate.funName] = _iconsCreate;
  m[_iconsCreateNewFolder.funName] = _iconsCreateNewFolder;
  m[_iconsCreditCard.funName] = _iconsCreditCard;
  m[_iconsCrop.funName] = _iconsCrop;
  m[_iconsCrop169.funName] = _iconsCrop169;
  m[_iconsCrop32.funName] = _iconsCrop32;
  m[_iconsCrop54.funName] = _iconsCrop54;
  m[_iconsCrop75.funName] = _iconsCrop75;
  m[_iconsCropDin.funName] = _iconsCropDin;
  m[_iconsCropFree.funName] = _iconsCropFree;
  m[_iconsCropLandscape.funName] = _iconsCropLandscape;
  m[_iconsCropOriginal.funName] = _iconsCropOriginal;
  m[_iconsCropPortrait.funName] = _iconsCropPortrait;
  m[_iconsCropRotate.funName] = _iconsCropRotate;
  m[_iconsCropSquare.funName] = _iconsCropSquare;
  m[_iconsDashboard.funName] = _iconsDashboard;
  m[_iconsDataUsage.funName] = _iconsDataUsage;
  m[_iconsDateRange.funName] = _iconsDateRange;
  m[_iconsDehaze.funName] = _iconsDehaze;
  m[_iconsDelete.funName] = _iconsDelete;
  m[_iconsDeleteForever.funName] = _iconsDeleteForever;
  m[_iconsDeleteOutline.funName] = _iconsDeleteOutline;
  m[_iconsDeleteSweep.funName] = _iconsDeleteSweep;
  m[_iconsDepartureBoard.funName] = _iconsDepartureBoard;
  m[_iconsDescription.funName] = _iconsDescription;
  m[_iconsDesktopMac.funName] = _iconsDesktopMac;
  m[_iconsDesktopWindows.funName] = _iconsDesktopWindows;
  m[_iconsDetails.funName] = _iconsDetails;
  m[_iconsDeveloperBoard.funName] = _iconsDeveloperBoard;
  m[_iconsDeveloperMode.funName] = _iconsDeveloperMode;
  m[_iconsDeviceHub.funName] = _iconsDeviceHub;
  m[_iconsDeviceUnknown.funName] = _iconsDeviceUnknown;
  m[_iconsDevices.funName] = _iconsDevices;
  m[_iconsDevicesOther.funName] = _iconsDevicesOther;
  m[_iconsDialerSip.funName] = _iconsDialerSip;
  m[_iconsDialpad.funName] = _iconsDialpad;
  m[_iconsDirections.funName] = _iconsDirections;
  m[_iconsDirectionsBike.funName] = _iconsDirectionsBike;
  m[_iconsDirectionsBoat.funName] = _iconsDirectionsBoat;
  m[_iconsDirectionsBus.funName] = _iconsDirectionsBus;
  m[_iconsDirectionsCar.funName] = _iconsDirectionsCar;
  m[_iconsDirectionsRailway.funName] = _iconsDirectionsRailway;
  m[_iconsDirectionsRun.funName] = _iconsDirectionsRun;
  m[_iconsDirectionsSubway.funName] = _iconsDirectionsSubway;
  m[_iconsDirectionsTransit.funName] = _iconsDirectionsTransit;
  m[_iconsDirectionsWalk.funName] = _iconsDirectionsWalk;
  m[_iconsDiscFull.funName] = _iconsDiscFull;
  m[_iconsDns.funName] = _iconsDns;
  m[_iconsDoNotDisturb.funName] = _iconsDoNotDisturb;
  m[_iconsDoNotDisturbAlt.funName] = _iconsDoNotDisturbAlt;
  m[_iconsDoNotDisturbOff.funName] = _iconsDoNotDisturbOff;
  m[_iconsDoNotDisturbOn.funName] = _iconsDoNotDisturbOn;
  m[_iconsDock.funName] = _iconsDock;
  m[_iconsDomain.funName] = _iconsDomain;
  m[_iconsDone.funName] = _iconsDone;
  m[_iconsDoneAll.funName] = _iconsDoneAll;
  m[_iconsDoneOutline.funName] = _iconsDoneOutline;
  m[_iconsDonutLarge.funName] = _iconsDonutLarge;
  m[_iconsDonutSmall.funName] = _iconsDonutSmall;
  m[_iconsDrafts.funName] = _iconsDrafts;
  m[_iconsDragHandle.funName] = _iconsDragHandle;
  m[_iconsDriveEta.funName] = _iconsDriveEta;
  m[_iconsDvr.funName] = _iconsDvr;
  m[_iconsEdit.funName] = _iconsEdit;
  m[_iconsEditAttributes.funName] = _iconsEditAttributes;
  m[_iconsEditLocation.funName] = _iconsEditLocation;
  m[_iconsEject.funName] = _iconsEject;
  m[_iconsEmail.funName] = _iconsEmail;
  m[_iconsEnhancedEncryption.funName] = _iconsEnhancedEncryption;
  m[_iconsEqualizer.funName] = _iconsEqualizer;
  m[_iconsError.funName] = _iconsError;
  m[_iconsErrorOutline.funName] = _iconsErrorOutline;
  m[_iconsEuroSymbol.funName] = _iconsEuroSymbol;
  m[_iconsEvStation.funName] = _iconsEvStation;
  m[_iconsEvent.funName] = _iconsEvent;
  m[_iconsEventAvailable.funName] = _iconsEventAvailable;
  m[_iconsEventBusy.funName] = _iconsEventBusy;
  m[_iconsEventNote.funName] = _iconsEventNote;
  m[_iconsEventSeat.funName] = _iconsEventSeat;
  m[_iconsExitToApp.funName] = _iconsExitToApp;
  m[_iconsExpandLess.funName] = _iconsExpandLess;
  m[_iconsExpandMore.funName] = _iconsExpandMore;
  m[_iconsExplicit.funName] = _iconsExplicit;
  m[_iconsExplore.funName] = _iconsExplore;
  m[_iconsExposure.funName] = _iconsExposure;
  m[_iconsExposureNeg1.funName] = _iconsExposureNeg1;
  m[_iconsExposureNeg2.funName] = _iconsExposureNeg2;
  m[_iconsExposurePlus1.funName] = _iconsExposurePlus1;
  m[_iconsExposurePlus2.funName] = _iconsExposurePlus2;
  m[_iconsExposureZero.funName] = _iconsExposureZero;
  m[_iconsExtension.funName] = _iconsExtension;
  m[_iconsFace.funName] = _iconsFace;
  m[_iconsFastForward.funName] = _iconsFastForward;
  m[_iconsFastRewind.funName] = _iconsFastRewind;
  m[_iconsFastfood.funName] = _iconsFastfood;
  m[_iconsFavorite.funName] = _iconsFavorite;
  m[_iconsFavoriteBorder.funName] = _iconsFavoriteBorder;
  m[_iconsFeaturedPlayList.funName] = _iconsFeaturedPlayList;
  m[_iconsFeaturedVideo.funName] = _iconsFeaturedVideo;
  m[_iconsFeedback.funName] = _iconsFeedback;
  m[_iconsFiberDvr.funName] = _iconsFiberDvr;
  m[_iconsFiberManualRecord.funName] = _iconsFiberManualRecord;
  m[_iconsFiberNew.funName] = _iconsFiberNew;
  m[_iconsFiberPin.funName] = _iconsFiberPin;
  m[_iconsFiberSmartRecord.funName] = _iconsFiberSmartRecord;
  m[_iconsFileDownload.funName] = _iconsFileDownload;
  m[_iconsFileUpload.funName] = _iconsFileUpload;
  m[_iconsFilter.funName] = _iconsFilter;
  m[_iconsFilter1.funName] = _iconsFilter1;
  m[_iconsFilter2.funName] = _iconsFilter2;
  m[_iconsFilter3.funName] = _iconsFilter3;
  m[_iconsFilter4.funName] = _iconsFilter4;
  m[_iconsFilter5.funName] = _iconsFilter5;
  m[_iconsFilter6.funName] = _iconsFilter6;
  m[_iconsFilter7.funName] = _iconsFilter7;
  m[_iconsFilter8.funName] = _iconsFilter8;
  m[_iconsFilter9.funName] = _iconsFilter9;
  m[_iconsFilter9Plus.funName] = _iconsFilter9Plus;
  m[_iconsFilterBAndW.funName] = _iconsFilterBAndW;
  m[_iconsFilterCenterFocus.funName] = _iconsFilterCenterFocus;
  m[_iconsFilterDrama.funName] = _iconsFilterDrama;
  m[_iconsFilterFrames.funName] = _iconsFilterFrames;
  m[_iconsFilterHdr.funName] = _iconsFilterHdr;
  m[_iconsFilterList.funName] = _iconsFilterList;
  m[_iconsFilterNone.funName] = _iconsFilterNone;
  m[_iconsFilterTiltShift.funName] = _iconsFilterTiltShift;
  m[_iconsFilterVintage.funName] = _iconsFilterVintage;
  m[_iconsFindInPage.funName] = _iconsFindInPage;
  m[_iconsFindReplace.funName] = _iconsFindReplace;
  m[_iconsFingerprint.funName] = _iconsFingerprint;
  m[_iconsFirstPage.funName] = _iconsFirstPage;
  m[_iconsFitnessCenter.funName] = _iconsFitnessCenter;
  m[_iconsFlag.funName] = _iconsFlag;
  m[_iconsFlare.funName] = _iconsFlare;
  m[_iconsFlashAuto.funName] = _iconsFlashAuto;
  m[_iconsFlashOff.funName] = _iconsFlashOff;
  m[_iconsFlashOn.funName] = _iconsFlashOn;
  m[_iconsFlight.funName] = _iconsFlight;
  m[_iconsFlightLand.funName] = _iconsFlightLand;
  m[_iconsFlightTakeoff.funName] = _iconsFlightTakeoff;
  m[_iconsFlip.funName] = _iconsFlip;
  m[_iconsFlipToBack.funName] = _iconsFlipToBack;
  m[_iconsFlipToFront.funName] = _iconsFlipToFront;
  m[_iconsFolder.funName] = _iconsFolder;
  m[_iconsFolderOpen.funName] = _iconsFolderOpen;
  m[_iconsFolderShared.funName] = _iconsFolderShared;
  m[_iconsFolderSpecial.funName] = _iconsFolderSpecial;
  m[_iconsFontDownload.funName] = _iconsFontDownload;
  m[_iconsFormatAlignCenter.funName] = _iconsFormatAlignCenter;
  m[_iconsFormatAlignJustify.funName] = _iconsFormatAlignJustify;
  m[_iconsFormatAlignLeft.funName] = _iconsFormatAlignLeft;
  m[_iconsFormatAlignRight.funName] = _iconsFormatAlignRight;
  m[_iconsFormatBold.funName] = _iconsFormatBold;
  m[_iconsFormatClear.funName] = _iconsFormatClear;
  m[_iconsFormatColorFill.funName] = _iconsFormatColorFill;
  m[_iconsFormatColorReset.funName] = _iconsFormatColorReset;
  m[_iconsFormatColorText.funName] = _iconsFormatColorText;
  m[_iconsFormatIndentDecrease.funName] = _iconsFormatIndentDecrease;
  m[_iconsFormatIndentIncrease.funName] = _iconsFormatIndentIncrease;
  m[_iconsFormatItalic.funName] = _iconsFormatItalic;
  m[_iconsFormatLineSpacing.funName] = _iconsFormatLineSpacing;
  m[_iconsFormatListBulleted.funName] = _iconsFormatListBulleted;
  m[_iconsFormatListNumbered.funName] = _iconsFormatListNumbered;
  m[_iconsFormatListNumberedRtl.funName] = _iconsFormatListNumberedRtl;
  m[_iconsFormatPaint.funName] = _iconsFormatPaint;
  m[_iconsFormatQuote.funName] = _iconsFormatQuote;
  m[_iconsFormatShapes.funName] = _iconsFormatShapes;
  m[_iconsFormatSize.funName] = _iconsFormatSize;
  m[_iconsFormatStrikethrough.funName] = _iconsFormatStrikethrough;
  m[_iconsFormatTextdirectionLToR.funName] = _iconsFormatTextdirectionLToR;
  m[_iconsFormatTextdirectionRToL.funName] = _iconsFormatTextdirectionRToL;
  m[_iconsFormatUnderlined.funName] = _iconsFormatUnderlined;
  m[_iconsForum.funName] = _iconsForum;
  m[_iconsForward.funName] = _iconsForward;
  m[_iconsForward10.funName] = _iconsForward10;
  m[_iconsForward30.funName] = _iconsForward30;
  m[_iconsForward5.funName] = _iconsForward5;
  m[_iconsFreeBreakfast.funName] = _iconsFreeBreakfast;
  m[_iconsFullscreen.funName] = _iconsFullscreen;
  m[_iconsFullscreenExit.funName] = _iconsFullscreenExit;
  m[_iconsFunctions.funName] = _iconsFunctions;
  m[_iconsGTranslate.funName] = _iconsGTranslate;
  m[_iconsGamepad.funName] = _iconsGamepad;
  m[_iconsGames.funName] = _iconsGames;
  m[_iconsGavel.funName] = _iconsGavel;
  m[_iconsGesture.funName] = _iconsGesture;
  m[_iconsGetApp.funName] = _iconsGetApp;
  m[_iconsGif.funName] = _iconsGif;
  m[_iconsGolfCourse.funName] = _iconsGolfCourse;
  m[_iconsGpsFixed.funName] = _iconsGpsFixed;
  m[_iconsGpsNotFixed.funName] = _iconsGpsNotFixed;
  m[_iconsGpsOff.funName] = _iconsGpsOff;
  m[_iconsGrade.funName] = _iconsGrade;
  m[_iconsGradient.funName] = _iconsGradient;
  m[_iconsGrain.funName] = _iconsGrain;
  m[_iconsGraphicEq.funName] = _iconsGraphicEq;
  m[_iconsGridOff.funName] = _iconsGridOff;
  m[_iconsGridOn.funName] = _iconsGridOn;
  m[_iconsGroup.funName] = _iconsGroup;
  m[_iconsGroupAdd.funName] = _iconsGroupAdd;
  m[_iconsGroupWork.funName] = _iconsGroupWork;
  m[_iconsHd.funName] = _iconsHd;
  m[_iconsHdrOff.funName] = _iconsHdrOff;
  m[_iconsHdrOn.funName] = _iconsHdrOn;
  m[_iconsHdrStrong.funName] = _iconsHdrStrong;
  m[_iconsHdrWeak.funName] = _iconsHdrWeak;
  m[_iconsHeadset.funName] = _iconsHeadset;
  m[_iconsHeadsetMic.funName] = _iconsHeadsetMic;
  m[_iconsHeadsetOff.funName] = _iconsHeadsetOff;
  m[_iconsHealing.funName] = _iconsHealing;
  m[_iconsHearing.funName] = _iconsHearing;
  m[_iconsHelp.funName] = _iconsHelp;
  m[_iconsHelpOutline.funName] = _iconsHelpOutline;
  m[_iconsHighQuality.funName] = _iconsHighQuality;
  m[_iconsHighlight.funName] = _iconsHighlight;
  m[_iconsHighlightOff.funName] = _iconsHighlightOff;
  m[_iconsHistory.funName] = _iconsHistory;
  m[_iconsHome.funName] = _iconsHome;
  m[_iconsHotTub.funName] = _iconsHotTub;
  m[_iconsHotel.funName] = _iconsHotel;
  m[_iconsHourglassEmpty.funName] = _iconsHourglassEmpty;
  m[_iconsHourglassFull.funName] = _iconsHourglassFull;
  m[_iconsHttp.funName] = _iconsHttp;
  m[_iconsHttps.funName] = _iconsHttps;
  m[_iconsImage.funName] = _iconsImage;
  m[_iconsImageAspectRatio.funName] = _iconsImageAspectRatio;
  m[_iconsImportContacts.funName] = _iconsImportContacts;
  m[_iconsImportExport.funName] = _iconsImportExport;
  m[_iconsImportantDevices.funName] = _iconsImportantDevices;
  m[_iconsInbox.funName] = _iconsInbox;
  m[_iconsIndeterminateCheckBox.funName] = _iconsIndeterminateCheckBox;
  m[_iconsInfo.funName] = _iconsInfo;
  m[_iconsInfoOutline.funName] = _iconsInfoOutline;
  m[_iconsInput.funName] = _iconsInput;
  m[_iconsInsertChart.funName] = _iconsInsertChart;
  m[_iconsInsertComment.funName] = _iconsInsertComment;
  m[_iconsInsertDriveFile.funName] = _iconsInsertDriveFile;
  m[_iconsInsertEmoticon.funName] = _iconsInsertEmoticon;
  m[_iconsInsertInvitation.funName] = _iconsInsertInvitation;
  m[_iconsInsertLink.funName] = _iconsInsertLink;
  m[_iconsInsertPhoto.funName] = _iconsInsertPhoto;
  m[_iconsInvertColors.funName] = _iconsInvertColors;
  m[_iconsInvertColorsOff.funName] = _iconsInvertColorsOff;
  m[_iconsIso.funName] = _iconsIso;
  m[_iconsKeyboard.funName] = _iconsKeyboard;
  m[_iconsKeyboardArrowDown.funName] = _iconsKeyboardArrowDown;
  m[_iconsKeyboardArrowLeft.funName] = _iconsKeyboardArrowLeft;
  m[_iconsKeyboardArrowRight.funName] = _iconsKeyboardArrowRight;
  m[_iconsKeyboardArrowUp.funName] = _iconsKeyboardArrowUp;
  m[_iconsKeyboardBackspace.funName] = _iconsKeyboardBackspace;
  m[_iconsKeyboardCapslock.funName] = _iconsKeyboardCapslock;
  m[_iconsKeyboardHide.funName] = _iconsKeyboardHide;
  m[_iconsKeyboardReturn.funName] = _iconsKeyboardReturn;
  m[_iconsKeyboardTab.funName] = _iconsKeyboardTab;
  m[_iconsKeyboardVoice.funName] = _iconsKeyboardVoice;
  m[_iconsKitchen.funName] = _iconsKitchen;
  m[_iconsLabel.funName] = _iconsLabel;
  m[_iconsLabelImportant.funName] = _iconsLabelImportant;
  m[_iconsLabelOutline.funName] = _iconsLabelOutline;
  m[_iconsLandscape.funName] = _iconsLandscape;
  m[_iconsLanguage.funName] = _iconsLanguage;
  m[_iconsLaptop.funName] = _iconsLaptop;
  m[_iconsLaptopChromebook.funName] = _iconsLaptopChromebook;
  m[_iconsLaptopMac.funName] = _iconsLaptopMac;
  m[_iconsLaptopWindows.funName] = _iconsLaptopWindows;
  m[_iconsLastPage.funName] = _iconsLastPage;
  m[_iconsLaunch.funName] = _iconsLaunch;
  m[_iconsLayers.funName] = _iconsLayers;
  m[_iconsLayersClear.funName] = _iconsLayersClear;
  m[_iconsLeakAdd.funName] = _iconsLeakAdd;
  m[_iconsLeakRemove.funName] = _iconsLeakRemove;
  m[_iconsLens.funName] = _iconsLens;
  m[_iconsLibraryAdd.funName] = _iconsLibraryAdd;
  m[_iconsLibraryBooks.funName] = _iconsLibraryBooks;
  m[_iconsLibraryMusic.funName] = _iconsLibraryMusic;
  m[_iconsLightbulbOutline.funName] = _iconsLightbulbOutline;
  m[_iconsLineStyle.funName] = _iconsLineStyle;
  m[_iconsLineWeight.funName] = _iconsLineWeight;
  m[_iconsLinearScale.funName] = _iconsLinearScale;
  m[_iconsLink.funName] = _iconsLink;
  m[_iconsLinkOff.funName] = _iconsLinkOff;
  m[_iconsLinkedCamera.funName] = _iconsLinkedCamera;
  m[_iconsList.funName] = _iconsList;
  m[_iconsLiveHelp.funName] = _iconsLiveHelp;
  m[_iconsLiveTv.funName] = _iconsLiveTv;
  m[_iconsLocalActivity.funName] = _iconsLocalActivity;
  m[_iconsLocalAirport.funName] = _iconsLocalAirport;
  m[_iconsLocalAtm.funName] = _iconsLocalAtm;
  m[_iconsLocalBar.funName] = _iconsLocalBar;
  m[_iconsLocalCafe.funName] = _iconsLocalCafe;
  m[_iconsLocalCarWash.funName] = _iconsLocalCarWash;
  m[_iconsLocalConvenienceStore.funName] = _iconsLocalConvenienceStore;
  m[_iconsLocalDining.funName] = _iconsLocalDining;
  m[_iconsLocalDrink.funName] = _iconsLocalDrink;
  m[_iconsLocalFlorist.funName] = _iconsLocalFlorist;
  m[_iconsLocalGasStation.funName] = _iconsLocalGasStation;
  m[_iconsLocalGroceryStore.funName] = _iconsLocalGroceryStore;
  m[_iconsLocalHospital.funName] = _iconsLocalHospital;
  m[_iconsLocalHotel.funName] = _iconsLocalHotel;
  m[_iconsLocalLaundryService.funName] = _iconsLocalLaundryService;
  m[_iconsLocalLibrary.funName] = _iconsLocalLibrary;
  m[_iconsLocalMall.funName] = _iconsLocalMall;
  m[_iconsLocalMovies.funName] = _iconsLocalMovies;
  m[_iconsLocalOffer.funName] = _iconsLocalOffer;
  m[_iconsLocalParking.funName] = _iconsLocalParking;
  m[_iconsLocalPharmacy.funName] = _iconsLocalPharmacy;
  m[_iconsLocalPhone.funName] = _iconsLocalPhone;
  m[_iconsLocalPizza.funName] = _iconsLocalPizza;
  m[_iconsLocalPlay.funName] = _iconsLocalPlay;
  m[_iconsLocalPostOffice.funName] = _iconsLocalPostOffice;
  m[_iconsLocalPrintshop.funName] = _iconsLocalPrintshop;
  m[_iconsLocalSee.funName] = _iconsLocalSee;
  m[_iconsLocalShipping.funName] = _iconsLocalShipping;
  m[_iconsLocalTaxi.funName] = _iconsLocalTaxi;
  m[_iconsLocationCity.funName] = _iconsLocationCity;
  m[_iconsLocationDisabled.funName] = _iconsLocationDisabled;
  m[_iconsLocationOff.funName] = _iconsLocationOff;
  m[_iconsLocationOn.funName] = _iconsLocationOn;
  m[_iconsLocationSearching.funName] = _iconsLocationSearching;
  m[_iconsLock.funName] = _iconsLock;
  m[_iconsLockOpen.funName] = _iconsLockOpen;
  m[_iconsLockOutline.funName] = _iconsLockOutline;
  m[_iconsLooks.funName] = _iconsLooks;
  m[_iconsLooks3.funName] = _iconsLooks3;
  m[_iconsLooks4.funName] = _iconsLooks4;
  m[_iconsLooks5.funName] = _iconsLooks5;
  m[_iconsLooks6.funName] = _iconsLooks6;
  m[_iconsLooksOne.funName] = _iconsLooksOne;
  m[_iconsLooksTwo.funName] = _iconsLooksTwo;
  m[_iconsLoop.funName] = _iconsLoop;
  m[_iconsLoupe.funName] = _iconsLoupe;
  m[_iconsLowPriority.funName] = _iconsLowPriority;
  m[_iconsLoyalty.funName] = _iconsLoyalty;
  m[_iconsMail.funName] = _iconsMail;
  m[_iconsMailOutline.funName] = _iconsMailOutline;
  m[_iconsMap.funName] = _iconsMap;
  m[_iconsMarkunread.funName] = _iconsMarkunread;
  m[_iconsMarkunreadMailbox.funName] = _iconsMarkunreadMailbox;
  m[_iconsMaximize.funName] = _iconsMaximize;
  m[_iconsMemory.funName] = _iconsMemory;
  m[_iconsMenu.funName] = _iconsMenu;
  m[_iconsMergeType.funName] = _iconsMergeType;
  m[_iconsMessage.funName] = _iconsMessage;
  m[_iconsMic.funName] = _iconsMic;
  m[_iconsMicNone.funName] = _iconsMicNone;
  m[_iconsMicOff.funName] = _iconsMicOff;
  m[_iconsMinimize.funName] = _iconsMinimize;
  m[_iconsMissedVideoCall.funName] = _iconsMissedVideoCall;
  m[_iconsMms.funName] = _iconsMms;
  m[_iconsMobileScreenShare.funName] = _iconsMobileScreenShare;
  m[_iconsModeComment.funName] = _iconsModeComment;
  m[_iconsModeEdit.funName] = _iconsModeEdit;
  m[_iconsMonetizationOn.funName] = _iconsMonetizationOn;
  m[_iconsMoneyOff.funName] = _iconsMoneyOff;
  m[_iconsMonochromePhotos.funName] = _iconsMonochromePhotos;
  m[_iconsMood.funName] = _iconsMood;
  m[_iconsMoodBad.funName] = _iconsMoodBad;
  m[_iconsMore.funName] = _iconsMore;
  m[_iconsMoreHoriz.funName] = _iconsMoreHoriz;
  m[_iconsMoreVert.funName] = _iconsMoreVert;
  m[_iconsMotorcycle.funName] = _iconsMotorcycle;
  m[_iconsMouse.funName] = _iconsMouse;
  m[_iconsMoveToInbox.funName] = _iconsMoveToInbox;
  m[_iconsMovie.funName] = _iconsMovie;
  m[_iconsMovieCreation.funName] = _iconsMovieCreation;
  m[_iconsMovieFilter.funName] = _iconsMovieFilter;
  m[_iconsMultilineChart.funName] = _iconsMultilineChart;
  m[_iconsMusicNote.funName] = _iconsMusicNote;
  m[_iconsMusicVideo.funName] = _iconsMusicVideo;
  m[_iconsMyLocation.funName] = _iconsMyLocation;
  m[_iconsNature.funName] = _iconsNature;
  m[_iconsNaturePeople.funName] = _iconsNaturePeople;
  m[_iconsNavigateBefore.funName] = _iconsNavigateBefore;
  m[_iconsNavigateNext.funName] = _iconsNavigateNext;
  m[_iconsNavigation.funName] = _iconsNavigation;
  m[_iconsNearMe.funName] = _iconsNearMe;
  m[_iconsNetworkCell.funName] = _iconsNetworkCell;
  m[_iconsNetworkCheck.funName] = _iconsNetworkCheck;
  m[_iconsNetworkLocked.funName] = _iconsNetworkLocked;
  m[_iconsNetworkWifi.funName] = _iconsNetworkWifi;
  m[_iconsNewReleases.funName] = _iconsNewReleases;
  m[_iconsNextWeek.funName] = _iconsNextWeek;
  m[_iconsNfc.funName] = _iconsNfc;
  m[_iconsNoEncryption.funName] = _iconsNoEncryption;
  m[_iconsNoSim.funName] = _iconsNoSim;
  m[_iconsNotInterested.funName] = _iconsNotInterested;
  m[_iconsNotListedLocation.funName] = _iconsNotListedLocation;
  m[_iconsNote.funName] = _iconsNote;
  m[_iconsNoteAdd.funName] = _iconsNoteAdd;
  m[_iconsNotificationImportant.funName] = _iconsNotificationImportant;
  m[_iconsNotifications.funName] = _iconsNotifications;
  m[_iconsNotificationsActive.funName] = _iconsNotificationsActive;
  m[_iconsNotificationsNone.funName] = _iconsNotificationsNone;
  m[_iconsNotificationsOff.funName] = _iconsNotificationsOff;
  m[_iconsNotificationsPaused.funName] = _iconsNotificationsPaused;
  m[_iconsOfflineBolt.funName] = _iconsOfflineBolt;
  m[_iconsOfflinePin.funName] = _iconsOfflinePin;
  m[_iconsOndemandVideo.funName] = _iconsOndemandVideo;
  m[_iconsOpacity.funName] = _iconsOpacity;
  m[_iconsOpenInBrowser.funName] = _iconsOpenInBrowser;
  m[_iconsOpenInNew.funName] = _iconsOpenInNew;
  m[_iconsOpenWith.funName] = _iconsOpenWith;
  m[_iconsOutlinedFlag.funName] = _iconsOutlinedFlag;
  m[_iconsPages.funName] = _iconsPages;
  m[_iconsPageview.funName] = _iconsPageview;
  m[_iconsPalette.funName] = _iconsPalette;
  m[_iconsPanTool.funName] = _iconsPanTool;
  m[_iconsPanorama.funName] = _iconsPanorama;
  m[_iconsPanoramaFishEye.funName] = _iconsPanoramaFishEye;
  m[_iconsPanoramaHorizontal.funName] = _iconsPanoramaHorizontal;
  m[_iconsPanoramaVertical.funName] = _iconsPanoramaVertical;
  m[_iconsPanoramaWideAngle.funName] = _iconsPanoramaWideAngle;
  m[_iconsPartyMode.funName] = _iconsPartyMode;
  m[_iconsPause.funName] = _iconsPause;
  m[_iconsPauseCircleFilled.funName] = _iconsPauseCircleFilled;
  m[_iconsPauseCircleOutline.funName] = _iconsPauseCircleOutline;
  m[_iconsPayment.funName] = _iconsPayment;
  m[_iconsPeople.funName] = _iconsPeople;
  m[_iconsPeopleOutline.funName] = _iconsPeopleOutline;
  m[_iconsPermCameraMic.funName] = _iconsPermCameraMic;
  m[_iconsPermContactCalendar.funName] = _iconsPermContactCalendar;
  m[_iconsPermDataSetting.funName] = _iconsPermDataSetting;
  m[_iconsPermDeviceInformation.funName] = _iconsPermDeviceInformation;
  m[_iconsPermIdentity.funName] = _iconsPermIdentity;
  m[_iconsPermMedia.funName] = _iconsPermMedia;
  m[_iconsPermPhoneMsg.funName] = _iconsPermPhoneMsg;
  m[_iconsPermScanWifi.funName] = _iconsPermScanWifi;
  m[_iconsPerson.funName] = _iconsPerson;
  m[_iconsPersonAdd.funName] = _iconsPersonAdd;
  m[_iconsPersonOutline.funName] = _iconsPersonOutline;
  m[_iconsPersonPin.funName] = _iconsPersonPin;
  m[_iconsPersonPinCircle.funName] = _iconsPersonPinCircle;
  m[_iconsPersonalVideo.funName] = _iconsPersonalVideo;
  m[_iconsPets.funName] = _iconsPets;
  m[_iconsPhone.funName] = _iconsPhone;
  m[_iconsPhoneAndroid.funName] = _iconsPhoneAndroid;
  m[_iconsPhoneBluetoothSpeaker.funName] = _iconsPhoneBluetoothSpeaker;
  m[_iconsPhoneForwarded.funName] = _iconsPhoneForwarded;
  m[_iconsPhoneInTalk.funName] = _iconsPhoneInTalk;
  m[_iconsPhoneIphone.funName] = _iconsPhoneIphone;
  m[_iconsPhoneLocked.funName] = _iconsPhoneLocked;
  m[_iconsPhoneMissed.funName] = _iconsPhoneMissed;
  m[_iconsPhonePaused.funName] = _iconsPhonePaused;
  m[_iconsPhonelink.funName] = _iconsPhonelink;
  m[_iconsPhonelinkErase.funName] = _iconsPhonelinkErase;
  m[_iconsPhonelinkLock.funName] = _iconsPhonelinkLock;
  m[_iconsPhonelinkOff.funName] = _iconsPhonelinkOff;
  m[_iconsPhonelinkRing.funName] = _iconsPhonelinkRing;
  m[_iconsPhonelinkSetup.funName] = _iconsPhonelinkSetup;
  m[_iconsPhoto.funName] = _iconsPhoto;
  m[_iconsPhotoAlbum.funName] = _iconsPhotoAlbum;
  m[_iconsPhotoCamera.funName] = _iconsPhotoCamera;
  m[_iconsPhotoFilter.funName] = _iconsPhotoFilter;
  m[_iconsPhotoLibrary.funName] = _iconsPhotoLibrary;
  m[_iconsPhotoSizeSelectActual.funName] = _iconsPhotoSizeSelectActual;
  m[_iconsPhotoSizeSelectLarge.funName] = _iconsPhotoSizeSelectLarge;
  m[_iconsPhotoSizeSelectSmall.funName] = _iconsPhotoSizeSelectSmall;
  m[_iconsPictureAsPdf.funName] = _iconsPictureAsPdf;
  m[_iconsPictureInPicture.funName] = _iconsPictureInPicture;
  m[_iconsPictureInPictureAlt.funName] = _iconsPictureInPictureAlt;
  m[_iconsPieChart.funName] = _iconsPieChart;
  m[_iconsPieChartOutlined.funName] = _iconsPieChartOutlined;
  m[_iconsPinDrop.funName] = _iconsPinDrop;
  m[_iconsPlace.funName] = _iconsPlace;
  m[_iconsPlayArrow.funName] = _iconsPlayArrow;
  m[_iconsPlayCircleFilled.funName] = _iconsPlayCircleFilled;
  m[_iconsPlayCircleOutline.funName] = _iconsPlayCircleOutline;
  m[_iconsPlayForWork.funName] = _iconsPlayForWork;
  m[_iconsPlaylistAdd.funName] = _iconsPlaylistAdd;
  m[_iconsPlaylistAddCheck.funName] = _iconsPlaylistAddCheck;
  m[_iconsPlaylistPlay.funName] = _iconsPlaylistPlay;
  m[_iconsPlusOne.funName] = _iconsPlusOne;
  m[_iconsPoll.funName] = _iconsPoll;
  m[_iconsPolymer.funName] = _iconsPolymer;
  m[_iconsPool.funName] = _iconsPool;
  m[_iconsPortableWifiOff.funName] = _iconsPortableWifiOff;
  m[_iconsPortrait.funName] = _iconsPortrait;
  m[_iconsPower.funName] = _iconsPower;
  m[_iconsPowerInput.funName] = _iconsPowerInput;
  m[_iconsPowerSettingsNew.funName] = _iconsPowerSettingsNew;
  m[_iconsPregnantWoman.funName] = _iconsPregnantWoman;
  m[_iconsPresentToAll.funName] = _iconsPresentToAll;
  m[_iconsPrint.funName] = _iconsPrint;
  m[_iconsPriorityHigh.funName] = _iconsPriorityHigh;
  m[_iconsPublic.funName] = _iconsPublic;
  m[_iconsPublish.funName] = _iconsPublish;
  m[_iconsQueryBuilder.funName] = _iconsQueryBuilder;
  m[_iconsQuestionAnswer.funName] = _iconsQuestionAnswer;
  m[_iconsQueue.funName] = _iconsQueue;
  m[_iconsQueueMusic.funName] = _iconsQueueMusic;
  m[_iconsQueuePlayNext.funName] = _iconsQueuePlayNext;
  m[_iconsRadio.funName] = _iconsRadio;
  m[_iconsRadioButtonChecked.funName] = _iconsRadioButtonChecked;
  m[_iconsRadioButtonUnchecked.funName] = _iconsRadioButtonUnchecked;
  m[_iconsRateReview.funName] = _iconsRateReview;
  m[_iconsReceipt.funName] = _iconsReceipt;
  m[_iconsRecentActors.funName] = _iconsRecentActors;
  m[_iconsRecordVoiceOver.funName] = _iconsRecordVoiceOver;
  m[_iconsRedeem.funName] = _iconsRedeem;
  m[_iconsRedo.funName] = _iconsRedo;
  m[_iconsRefresh.funName] = _iconsRefresh;
  m[_iconsRemove.funName] = _iconsRemove;
  m[_iconsRemoveCircle.funName] = _iconsRemoveCircle;
  m[_iconsRemoveCircleOutline.funName] = _iconsRemoveCircleOutline;
  m[_iconsRemoveFromQueue.funName] = _iconsRemoveFromQueue;
  m[_iconsRemoveRedEye.funName] = _iconsRemoveRedEye;
  m[_iconsRemoveShoppingCart.funName] = _iconsRemoveShoppingCart;
  m[_iconsReorder.funName] = _iconsReorder;
  m[_iconsRepeat.funName] = _iconsRepeat;
  m[_iconsRepeatOne.funName] = _iconsRepeatOne;
  m[_iconsReplay.funName] = _iconsReplay;
  m[_iconsReplay10.funName] = _iconsReplay10;
  m[_iconsReplay30.funName] = _iconsReplay30;
  m[_iconsReplay5.funName] = _iconsReplay5;
  m[_iconsReply.funName] = _iconsReply;
  m[_iconsReplyAll.funName] = _iconsReplyAll;
  m[_iconsReport.funName] = _iconsReport;
  m[_iconsReportOff.funName] = _iconsReportOff;
  m[_iconsReportProblem.funName] = _iconsReportProblem;
  m[_iconsRestaurant.funName] = _iconsRestaurant;
  m[_iconsRestaurantMenu.funName] = _iconsRestaurantMenu;
  m[_iconsRestore.funName] = _iconsRestore;
  m[_iconsRestoreFromTrash.funName] = _iconsRestoreFromTrash;
  m[_iconsRestorePage.funName] = _iconsRestorePage;
  m[_iconsRingVolume.funName] = _iconsRingVolume;
  m[_iconsRoom.funName] = _iconsRoom;
  m[_iconsRoomService.funName] = _iconsRoomService;
  m[_iconsRotate90DegreesCcw.funName] = _iconsRotate90DegreesCcw;
  m[_iconsRotateLeft.funName] = _iconsRotateLeft;
  m[_iconsRotateRight.funName] = _iconsRotateRight;
  m[_iconsRoundedCorner.funName] = _iconsRoundedCorner;
  m[_iconsRouter.funName] = _iconsRouter;
  m[_iconsRowing.funName] = _iconsRowing;
  m[_iconsRssFeed.funName] = _iconsRssFeed;
  m[_iconsRvHookup.funName] = _iconsRvHookup;
  m[_iconsSatellite.funName] = _iconsSatellite;
  m[_iconsSave.funName] = _iconsSave;
  m[_iconsSaveAlt.funName] = _iconsSaveAlt;
  m[_iconsScanner.funName] = _iconsScanner;
  m[_iconsScatterPlot.funName] = _iconsScatterPlot;
  m[_iconsSchedule.funName] = _iconsSchedule;
  m[_iconsSchool.funName] = _iconsSchool;
  m[_iconsScore.funName] = _iconsScore;
  m[_iconsScreenLockLandscape.funName] = _iconsScreenLockLandscape;
  m[_iconsScreenLockPortrait.funName] = _iconsScreenLockPortrait;
  m[_iconsScreenLockRotation.funName] = _iconsScreenLockRotation;
  m[_iconsScreenRotation.funName] = _iconsScreenRotation;
  m[_iconsScreenShare.funName] = _iconsScreenShare;
  m[_iconsSdCard.funName] = _iconsSdCard;
  m[_iconsSdStorage.funName] = _iconsSdStorage;
  m[_iconsSearch.funName] = _iconsSearch;
  m[_iconsSecurity.funName] = _iconsSecurity;
  m[_iconsSelectAll.funName] = _iconsSelectAll;
  m[_iconsSend.funName] = _iconsSend;
  m[_iconsSentimentDissatisfied.funName] = _iconsSentimentDissatisfied;
  m[_iconsSentimentNeutral.funName] = _iconsSentimentNeutral;
  m[_iconsSentimentSatisfied.funName] = _iconsSentimentSatisfied;
  m[_iconsSentimentVeryDissatisfied.funName] = _iconsSentimentVeryDissatisfied;
  m[_iconsSentimentVerySatisfied.funName] = _iconsSentimentVerySatisfied;
  m[_iconsSettings.funName] = _iconsSettings;
  m[_iconsSettingsApplications.funName] = _iconsSettingsApplications;
  m[_iconsSettingsBackupRestore.funName] = _iconsSettingsBackupRestore;
  m[_iconsSettingsBluetooth.funName] = _iconsSettingsBluetooth;
  m[_iconsSettingsBrightness.funName] = _iconsSettingsBrightness;
  m[_iconsSettingsCell.funName] = _iconsSettingsCell;
  m[_iconsSettingsEthernet.funName] = _iconsSettingsEthernet;
  m[_iconsSettingsInputAntenna.funName] = _iconsSettingsInputAntenna;
  m[_iconsSettingsInputComponent.funName] = _iconsSettingsInputComponent;
  m[_iconsSettingsInputComposite.funName] = _iconsSettingsInputComposite;
  m[_iconsSettingsInputHdmi.funName] = _iconsSettingsInputHdmi;
  m[_iconsSettingsInputSvideo.funName] = _iconsSettingsInputSvideo;
  m[_iconsSettingsOverscan.funName] = _iconsSettingsOverscan;
  m[_iconsSettingsPhone.funName] = _iconsSettingsPhone;
  m[_iconsSettingsPower.funName] = _iconsSettingsPower;
  m[_iconsSettingsRemote.funName] = _iconsSettingsRemote;
  m[_iconsSettingsSystemDaydream.funName] = _iconsSettingsSystemDaydream;
  m[_iconsSettingsVoice.funName] = _iconsSettingsVoice;
  m[_iconsShare.funName] = _iconsShare;
  m[_iconsShop.funName] = _iconsShop;
  m[_iconsShopTwo.funName] = _iconsShopTwo;
  m[_iconsShoppingBasket.funName] = _iconsShoppingBasket;
  m[_iconsShoppingCart.funName] = _iconsShoppingCart;
  m[_iconsShortText.funName] = _iconsShortText;
  m[_iconsShowChart.funName] = _iconsShowChart;
  m[_iconsShuffle.funName] = _iconsShuffle;
  m[_iconsShutterSpeed.funName] = _iconsShutterSpeed;
  m[_iconsSignalCellular4Bar.funName] = _iconsSignalCellular4Bar;
  m[_iconsSignalCellularConnectedNoInternet4Bar.funName] =
      _iconsSignalCellularConnectedNoInternet4Bar;
  m[_iconsSignalCellularNoSim.funName] = _iconsSignalCellularNoSim;
  m[_iconsSignalCellularNull.funName] = _iconsSignalCellularNull;
  m[_iconsSignalCellularOff.funName] = _iconsSignalCellularOff;
  m[_iconsSignalWifi4Bar.funName] = _iconsSignalWifi4Bar;
  m[_iconsSignalWifi4BarLock.funName] = _iconsSignalWifi4BarLock;
  m[_iconsSignalWifiOff.funName] = _iconsSignalWifiOff;
  m[_iconsSimCard.funName] = _iconsSimCard;
  m[_iconsSimCardAlert.funName] = _iconsSimCardAlert;
  m[_iconsSkipNext.funName] = _iconsSkipNext;
  m[_iconsSkipPrevious.funName] = _iconsSkipPrevious;
  m[_iconsSlideshow.funName] = _iconsSlideshow;
  m[_iconsSlowMotionVideo.funName] = _iconsSlowMotionVideo;
  m[_iconsSmartphone.funName] = _iconsSmartphone;
  m[_iconsSmokeFree.funName] = _iconsSmokeFree;
  m[_iconsSmokingRooms.funName] = _iconsSmokingRooms;
  m[_iconsSms.funName] = _iconsSms;
  m[_iconsSmsFailed.funName] = _iconsSmsFailed;
  m[_iconsSnooze.funName] = _iconsSnooze;
  m[_iconsSort.funName] = _iconsSort;
  m[_iconsSortByAlpha.funName] = _iconsSortByAlpha;
  m[_iconsSpa.funName] = _iconsSpa;
  m[_iconsSpaceBar.funName] = _iconsSpaceBar;
  m[_iconsSpeaker.funName] = _iconsSpeaker;
  m[_iconsSpeakerGroup.funName] = _iconsSpeakerGroup;
  m[_iconsSpeakerNotes.funName] = _iconsSpeakerNotes;
  m[_iconsSpeakerNotesOff.funName] = _iconsSpeakerNotesOff;
  m[_iconsSpeakerPhone.funName] = _iconsSpeakerPhone;
  m[_iconsSpellcheck.funName] = _iconsSpellcheck;
  m[_iconsStar.funName] = _iconsStar;
  m[_iconsStarBorder.funName] = _iconsStarBorder;
  m[_iconsStarHalf.funName] = _iconsStarHalf;
  m[_iconsStars.funName] = _iconsStars;
  m[_iconsStayCurrentLandscape.funName] = _iconsStayCurrentLandscape;
  m[_iconsStayCurrentPortrait.funName] = _iconsStayCurrentPortrait;
  m[_iconsStayPrimaryLandscape.funName] = _iconsStayPrimaryLandscape;
  m[_iconsStayPrimaryPortrait.funName] = _iconsStayPrimaryPortrait;
  m[_iconsStop.funName] = _iconsStop;
  m[_iconsStopScreenShare.funName] = _iconsStopScreenShare;
  m[_iconsStorage.funName] = _iconsStorage;
  m[_iconsStore.funName] = _iconsStore;
  m[_iconsStoreMallDirectory.funName] = _iconsStoreMallDirectory;
  m[_iconsStraighten.funName] = _iconsStraighten;
  m[_iconsStreetview.funName] = _iconsStreetview;
  m[_iconsStrikethroughS.funName] = _iconsStrikethroughS;
  m[_iconsStyle.funName] = _iconsStyle;
  m[_iconsSubdirectoryArrowLeft.funName] = _iconsSubdirectoryArrowLeft;
  m[_iconsSubdirectoryArrowRight.funName] = _iconsSubdirectoryArrowRight;
  m[_iconsSubject.funName] = _iconsSubject;
  m[_iconsSubscriptions.funName] = _iconsSubscriptions;
  m[_iconsSubtitles.funName] = _iconsSubtitles;
  m[_iconsSubway.funName] = _iconsSubway;
  m[_iconsSupervisedUserCircle.funName] = _iconsSupervisedUserCircle;
  m[_iconsSupervisorAccount.funName] = _iconsSupervisorAccount;
  m[_iconsSurroundSound.funName] = _iconsSurroundSound;
  m[_iconsSwapCalls.funName] = _iconsSwapCalls;
  m[_iconsSwapHoriz.funName] = _iconsSwapHoriz;
  m[_iconsSwapHorizontalCircle.funName] = _iconsSwapHorizontalCircle;
  m[_iconsSwapVert.funName] = _iconsSwapVert;
  m[_iconsSwapVerticalCircle.funName] = _iconsSwapVerticalCircle;
  m[_iconsSwitchCamera.funName] = _iconsSwitchCamera;
  m[_iconsSwitchVideo.funName] = _iconsSwitchVideo;
  m[_iconsSync.funName] = _iconsSync;
  m[_iconsSyncDisabled.funName] = _iconsSyncDisabled;
  m[_iconsSyncProblem.funName] = _iconsSyncProblem;
  m[_iconsSystemUpdate.funName] = _iconsSystemUpdate;
  m[_iconsSystemUpdateAlt.funName] = _iconsSystemUpdateAlt;
  m[_iconsTab.funName] = _iconsTab;
  m[_iconsTabUnselected.funName] = _iconsTabUnselected;
  m[_iconsTableChart.funName] = _iconsTableChart;
  m[_iconsTablet.funName] = _iconsTablet;
  m[_iconsTabletAndroid.funName] = _iconsTabletAndroid;
  m[_iconsTabletMac.funName] = _iconsTabletMac;
  m[_iconsTagFaces.funName] = _iconsTagFaces;
  m[_iconsTapAndPlay.funName] = _iconsTapAndPlay;
  m[_iconsTerrain.funName] = _iconsTerrain;
  m[_iconsTextFields.funName] = _iconsTextFields;
  m[_iconsTextFormat.funName] = _iconsTextFormat;
  m[_iconsTextRotateUp.funName] = _iconsTextRotateUp;
  m[_iconsTextRotateVertical.funName] = _iconsTextRotateVertical;
  m[_iconsTextRotationAngledown.funName] = _iconsTextRotationAngledown;
  m[_iconsTextRotationAngleup.funName] = _iconsTextRotationAngleup;
  m[_iconsTextRotationDown.funName] = _iconsTextRotationDown;
  m[_iconsTextRotationNone.funName] = _iconsTextRotationNone;
  m[_iconsTextsms.funName] = _iconsTextsms;
  m[_iconsTexture.funName] = _iconsTexture;
  m[_iconsTheaters.funName] = _iconsTheaters;
  m[_iconsThumbDown.funName] = _iconsThumbDown;
  m[_iconsThumbUp.funName] = _iconsThumbUp;
  m[_iconsThumbsUpDown.funName] = _iconsThumbsUpDown;
  m[_iconsTimeToLeave.funName] = _iconsTimeToLeave;
  m[_iconsTimelapse.funName] = _iconsTimelapse;
  m[_iconsTimeline.funName] = _iconsTimeline;
  m[_iconsTimer.funName] = _iconsTimer;
  m[_iconsTimer10.funName] = _iconsTimer10;
  m[_iconsTimer3.funName] = _iconsTimer3;
  m[_iconsTimerOff.funName] = _iconsTimerOff;
  m[_iconsTitle.funName] = _iconsTitle;
  m[_iconsToc.funName] = _iconsToc;
  m[_iconsToday.funName] = _iconsToday;
  m[_iconsToll.funName] = _iconsToll;
  m[_iconsTonality.funName] = _iconsTonality;
  m[_iconsTouchApp.funName] = _iconsTouchApp;
  m[_iconsToys.funName] = _iconsToys;
  m[_iconsTrackChanges.funName] = _iconsTrackChanges;
  m[_iconsTraffic.funName] = _iconsTraffic;
  m[_iconsTrain.funName] = _iconsTrain;
  m[_iconsTram.funName] = _iconsTram;
  m[_iconsTransferWithinAStation.funName] = _iconsTransferWithinAStation;
  m[_iconsTransform.funName] = _iconsTransform;
  m[_iconsTransitEnterexit.funName] = _iconsTransitEnterexit;
  m[_iconsTranslate.funName] = _iconsTranslate;
  m[_iconsTrendingDown.funName] = _iconsTrendingDown;
  m[_iconsTrendingFlat.funName] = _iconsTrendingFlat;
  m[_iconsTrendingUp.funName] = _iconsTrendingUp;
  m[_iconsTripOrigin.funName] = _iconsTripOrigin;
  m[_iconsTune.funName] = _iconsTune;
  m[_iconsTurnedIn.funName] = _iconsTurnedIn;
  m[_iconsTurnedInNot.funName] = _iconsTurnedInNot;
  m[_iconsTv.funName] = _iconsTv;
  m[_iconsUnarchive.funName] = _iconsUnarchive;
  m[_iconsUndo.funName] = _iconsUndo;
  m[_iconsUnfoldLess.funName] = _iconsUnfoldLess;
  m[_iconsUnfoldMore.funName] = _iconsUnfoldMore;
  m[_iconsUpdate.funName] = _iconsUpdate;
  m[_iconsUsb.funName] = _iconsUsb;
  m[_iconsVerifiedUser.funName] = _iconsVerifiedUser;
  m[_iconsVerticalAlignBottom.funName] = _iconsVerticalAlignBottom;
  m[_iconsVerticalAlignCenter.funName] = _iconsVerticalAlignCenter;
  m[_iconsVerticalAlignTop.funName] = _iconsVerticalAlignTop;
  m[_iconsVibration.funName] = _iconsVibration;
  m[_iconsVideoCall.funName] = _iconsVideoCall;
  m[_iconsVideoLabel.funName] = _iconsVideoLabel;
  m[_iconsVideoLibrary.funName] = _iconsVideoLibrary;
  m[_iconsVideocam.funName] = _iconsVideocam;
  m[_iconsVideocamOff.funName] = _iconsVideocamOff;
  m[_iconsVideogameAsset.funName] = _iconsVideogameAsset;
  m[_iconsViewAgenda.funName] = _iconsViewAgenda;
  m[_iconsViewArray.funName] = _iconsViewArray;
  m[_iconsViewCarousel.funName] = _iconsViewCarousel;
  m[_iconsViewColumn.funName] = _iconsViewColumn;
  m[_iconsViewComfy.funName] = _iconsViewComfy;
  m[_iconsViewCompact.funName] = _iconsViewCompact;
  m[_iconsViewDay.funName] = _iconsViewDay;
  m[_iconsViewHeadline.funName] = _iconsViewHeadline;
  m[_iconsViewList.funName] = _iconsViewList;
  m[_iconsViewModule.funName] = _iconsViewModule;
  m[_iconsViewQuilt.funName] = _iconsViewQuilt;
  m[_iconsViewStream.funName] = _iconsViewStream;
  m[_iconsViewWeek.funName] = _iconsViewWeek;
  m[_iconsVignette.funName] = _iconsVignette;
  m[_iconsVisibility.funName] = _iconsVisibility;
  m[_iconsVisibilityOff.funName] = _iconsVisibilityOff;
  m[_iconsVoiceChat.funName] = _iconsVoiceChat;
  m[_iconsVoicemail.funName] = _iconsVoicemail;
  m[_iconsVolumeDown.funName] = _iconsVolumeDown;
  m[_iconsVolumeMute.funName] = _iconsVolumeMute;
  m[_iconsVolumeOff.funName] = _iconsVolumeOff;
  m[_iconsVolumeUp.funName] = _iconsVolumeUp;
  m[_iconsVpnKey.funName] = _iconsVpnKey;
  m[_iconsVpnLock.funName] = _iconsVpnLock;
  m[_iconsWallpaper.funName] = _iconsWallpaper;
  m[_iconsWarning.funName] = _iconsWarning;
  m[_iconsWatch.funName] = _iconsWatch;
  m[_iconsWatchLater.funName] = _iconsWatchLater;
  m[_iconsWbAuto.funName] = _iconsWbAuto;
  m[_iconsWbCloudy.funName] = _iconsWbCloudy;
  m[_iconsWbIncandescent.funName] = _iconsWbIncandescent;
  m[_iconsWbIridescent.funName] = _iconsWbIridescent;
  m[_iconsWbSunny.funName] = _iconsWbSunny;
  m[_iconsWc.funName] = _iconsWc;
  m[_iconsWeb.funName] = _iconsWeb;
  m[_iconsWebAsset.funName] = _iconsWebAsset;
  m[_iconsWeekend.funName] = _iconsWeekend;
  m[_iconsWhatshot.funName] = _iconsWhatshot;
  m[_iconsWidgets.funName] = _iconsWidgets;
  m[_iconsWifi.funName] = _iconsWifi;
  m[_iconsWifiLock.funName] = _iconsWifiLock;
  m[_iconsWifiTethering.funName] = _iconsWifiTethering;
  m[_iconsWork.funName] = _iconsWork;
  m[_iconsWrapText.funName] = _iconsWrapText;
  m[_iconsYoutubeSearchedFor.funName] = _iconsYoutubeSearchedFor;
  m[_iconsZoomIn.funName] = _iconsZoomIn;
  m[_iconsZoomOut.funName] = _iconsZoomOut;
  m[_iconsZoomOutMap.funName] = _iconsZoomOutMap;
  return m;
}

var _iconsThreesixty =
    MXFunctionInvoke("Icons.threesixty", () => Icons.threesixty);
var _iconsThreedRotation =
    MXFunctionInvoke("Icons.threed_rotation", () => Icons.threed_rotation);
var _iconsFourK = MXFunctionInvoke("Icons.four_k", () => Icons.four_k);
var _iconsAcUnit = MXFunctionInvoke("Icons.ac_unit", () => Icons.ac_unit);
var _iconsAccessAlarm =
    MXFunctionInvoke("Icons.access_alarm", () => Icons.access_alarm);
var _iconsAccessAlarms =
    MXFunctionInvoke("Icons.access_alarms", () => Icons.access_alarms);
var _iconsAccessTime =
    MXFunctionInvoke("Icons.access_time", () => Icons.access_time);
var _iconsAccessibility =
    MXFunctionInvoke("Icons.accessibility", () => Icons.accessibility);
var _iconsAccessibilityNew =
    MXFunctionInvoke("Icons.accessibility_new", () => Icons.accessibility_new);
var _iconsAccessible =
    MXFunctionInvoke("Icons.accessible", () => Icons.accessible);
var _iconsAccessibleForward = MXFunctionInvoke(
    "Icons.accessible_forward", () => Icons.accessible_forward);
var _iconsAccountBalance =
    MXFunctionInvoke("Icons.account_balance", () => Icons.account_balance);
var _iconsAccountBalanceWallet = MXFunctionInvoke(
    "Icons.account_balance_wallet", () => Icons.account_balance_wallet);
var _iconsAccountBox =
    MXFunctionInvoke("Icons.account_box", () => Icons.account_box);
var _iconsAccountCircle =
    MXFunctionInvoke("Icons.account_circle", () => Icons.account_circle);
var _iconsAdb = MXFunctionInvoke("Icons.adb", () => Icons.adb);
var _iconsAdd = MXFunctionInvoke("Icons.add", () => Icons.add);
var _iconsAddAPhoto =
    MXFunctionInvoke("Icons.add_a_photo", () => Icons.add_a_photo);
var _iconsAddAlarm = MXFunctionInvoke("Icons.add_alarm", () => Icons.add_alarm);
var _iconsAddAlert = MXFunctionInvoke("Icons.add_alert", () => Icons.add_alert);
var _iconsAddBox = MXFunctionInvoke("Icons.add_box", () => Icons.add_box);
var _iconsAddCall = MXFunctionInvoke("Icons.add_call", () => Icons.add_call);
var _iconsAddCircle =
    MXFunctionInvoke("Icons.add_circle", () => Icons.add_circle);
var _iconsAddCircleOutline = MXFunctionInvoke(
    "Icons.add_circle_outline", () => Icons.add_circle_outline);
var _iconsAddComment =
    MXFunctionInvoke("Icons.add_comment", () => Icons.add_comment);
var _iconsAddLocation =
    MXFunctionInvoke("Icons.add_location", () => Icons.add_location);
var _iconsAddPhotoAlternate = MXFunctionInvoke(
    "Icons.add_photo_alternate", () => Icons.add_photo_alternate);
var _iconsAddShoppingCart =
    MXFunctionInvoke("Icons.add_shopping_cart", () => Icons.add_shopping_cart);
var _iconsAddToHomeScreen = MXFunctionInvoke(
    "Icons.add_to_home_screen", () => Icons.add_to_home_screen);
var _iconsAddToPhotos =
    MXFunctionInvoke("Icons.add_to_photos", () => Icons.add_to_photos);
var _iconsAddToQueue =
    MXFunctionInvoke("Icons.add_to_queue", () => Icons.add_to_queue);
var _iconsAdjust = MXFunctionInvoke("Icons.adjust", () => Icons.adjust);
var _iconsAirlineSeatFlat =
    MXFunctionInvoke("Icons.airline_seat_flat", () => Icons.airline_seat_flat);
var _iconsAirlineSeatFlatAngled = MXFunctionInvoke(
    "Icons.airline_seat_flat_angled", () => Icons.airline_seat_flat_angled);
var _iconsAirlineSeatIndividualSuite = MXFunctionInvoke(
    "Icons.airline_seat_individual_suite",
    () => Icons.airline_seat_individual_suite);
var _iconsAirlineSeatLegroomExtra = MXFunctionInvoke(
    "Icons.airline_seat_legroom_extra", () => Icons.airline_seat_legroom_extra);
var _iconsAirlineSeatLegroomNormal = MXFunctionInvoke(
    "Icons.airline_seat_legroom_normal",
    () => Icons.airline_seat_legroom_normal);
var _iconsAirlineSeatLegroomReduced = MXFunctionInvoke(
    "Icons.airline_seat_legroom_reduced",
    () => Icons.airline_seat_legroom_reduced);
var _iconsAirlineSeatReclineExtra = MXFunctionInvoke(
    "Icons.airline_seat_recline_extra", () => Icons.airline_seat_recline_extra);
var _iconsAirlineSeatReclineNormal = MXFunctionInvoke(
    "Icons.airline_seat_recline_normal",
    () => Icons.airline_seat_recline_normal);
var _iconsAirplanemodeActive = MXFunctionInvoke(
    "Icons.airplanemode_active", () => Icons.airplanemode_active);
var _iconsAirplanemodeInactive = MXFunctionInvoke(
    "Icons.airplanemode_inactive", () => Icons.airplanemode_inactive);
var _iconsAirplay = MXFunctionInvoke("Icons.airplay", () => Icons.airplay);
var _iconsAirportShuttle =
    MXFunctionInvoke("Icons.airport_shuttle", () => Icons.airport_shuttle);
var _iconsAlarm = MXFunctionInvoke("Icons.alarm", () => Icons.alarm);
var _iconsAlarmAdd = MXFunctionInvoke("Icons.alarm_add", () => Icons.alarm_add);
var _iconsAlarmOff = MXFunctionInvoke("Icons.alarm_off", () => Icons.alarm_off);
var _iconsAlarmOn = MXFunctionInvoke("Icons.alarm_on", () => Icons.alarm_on);
var _iconsAlbum = MXFunctionInvoke("Icons.album", () => Icons.album);
var _iconsAllInclusive =
    MXFunctionInvoke("Icons.all_inclusive", () => Icons.all_inclusive);
var _iconsAllOut = MXFunctionInvoke("Icons.all_out", () => Icons.all_out);
var _iconsAlternateEmail =
    MXFunctionInvoke("Icons.alternate_email", () => Icons.alternate_email);
var _iconsAndroid = MXFunctionInvoke("Icons.android", () => Icons.android);
var _iconsAnnouncement =
    MXFunctionInvoke("Icons.announcement", () => Icons.announcement);
var _iconsApps = MXFunctionInvoke("Icons.apps", () => Icons.apps);
var _iconsArchive = MXFunctionInvoke("Icons.archive", () => Icons.archive);
var _iconsArrowBack =
    MXFunctionInvoke("Icons.arrow_back", () => Icons.arrow_back);
var _iconsArrowBackIos =
    MXFunctionInvoke("Icons.arrow_back_ios", () => Icons.arrow_back_ios);
var _iconsArrowDownward =
    MXFunctionInvoke("Icons.arrow_downward", () => Icons.arrow_downward);
var _iconsArrowDropDown =
    MXFunctionInvoke("Icons.arrow_drop_down", () => Icons.arrow_drop_down);
var _iconsArrowDropDownCircle = MXFunctionInvoke(
    "Icons.arrow_drop_down_circle", () => Icons.arrow_drop_down_circle);
var _iconsArrowDropUp =
    MXFunctionInvoke("Icons.arrow_drop_up", () => Icons.arrow_drop_up);
var _iconsArrowForward =
    MXFunctionInvoke("Icons.arrow_forward", () => Icons.arrow_forward);
var _iconsArrowForwardIos =
    MXFunctionInvoke("Icons.arrow_forward_ios", () => Icons.arrow_forward_ios);
var _iconsArrowLeft =
    MXFunctionInvoke("Icons.arrow_left", () => Icons.arrow_left);
var _iconsArrowRight =
    MXFunctionInvoke("Icons.arrow_right", () => Icons.arrow_right);
var _iconsArrowUpward =
    MXFunctionInvoke("Icons.arrow_upward", () => Icons.arrow_upward);
var _iconsArtTrack = MXFunctionInvoke("Icons.art_track", () => Icons.art_track);
var _iconsAspectRatio =
    MXFunctionInvoke("Icons.aspect_ratio", () => Icons.aspect_ratio);
var _iconsAssessment =
    MXFunctionInvoke("Icons.assessment", () => Icons.assessment);
var _iconsAssignment =
    MXFunctionInvoke("Icons.assignment", () => Icons.assignment);
var _iconsAssignmentInd =
    MXFunctionInvoke("Icons.assignment_ind", () => Icons.assignment_ind);
var _iconsAssignmentLate =
    MXFunctionInvoke("Icons.assignment_late", () => Icons.assignment_late);
var _iconsAssignmentReturn =
    MXFunctionInvoke("Icons.assignment_return", () => Icons.assignment_return);
var _iconsAssignmentReturned = MXFunctionInvoke(
    "Icons.assignment_returned", () => Icons.assignment_returned);
var _iconsAssignmentTurnedIn = MXFunctionInvoke(
    "Icons.assignment_turned_in", () => Icons.assignment_turned_in);
var _iconsAssistant =
    MXFunctionInvoke("Icons.assistant", () => Icons.assistant);
var _iconsAssistantPhoto =
    MXFunctionInvoke("Icons.assistant_photo", () => Icons.assistant_photo);
var _iconsAtm = MXFunctionInvoke("Icons.atm", () => Icons.atm);
var _iconsAttachFile =
    MXFunctionInvoke("Icons.attach_file", () => Icons.attach_file);
var _iconsAttachMoney =
    MXFunctionInvoke("Icons.attach_money", () => Icons.attach_money);
var _iconsAttachment =
    MXFunctionInvoke("Icons.attachment", () => Icons.attachment);
var _iconsAudiotrack =
    MXFunctionInvoke("Icons.audiotrack", () => Icons.audiotrack);
var _iconsAutorenew =
    MXFunctionInvoke("Icons.autorenew", () => Icons.autorenew);
var _iconsAvTimer = MXFunctionInvoke("Icons.av_timer", () => Icons.av_timer);
var _iconsBackspace =
    MXFunctionInvoke("Icons.backspace", () => Icons.backspace);
var _iconsBackup = MXFunctionInvoke("Icons.backup", () => Icons.backup);
var _iconsBatteryAlert =
    MXFunctionInvoke("Icons.battery_alert", () => Icons.battery_alert);
var _iconsBatteryChargingFull = MXFunctionInvoke(
    "Icons.battery_charging_full", () => Icons.battery_charging_full);
var _iconsBatteryFull =
    MXFunctionInvoke("Icons.battery_full", () => Icons.battery_full);
var _iconsBatteryStd =
    MXFunctionInvoke("Icons.battery_std", () => Icons.battery_std);
var _iconsBatteryUnknown =
    MXFunctionInvoke("Icons.battery_unknown", () => Icons.battery_unknown);
var _iconsBeachAccess =
    MXFunctionInvoke("Icons.beach_access", () => Icons.beach_access);
var _iconsBeenhere = MXFunctionInvoke("Icons.beenhere", () => Icons.beenhere);
var _iconsBlock = MXFunctionInvoke("Icons.block", () => Icons.block);
var _iconsBluetooth =
    MXFunctionInvoke("Icons.bluetooth", () => Icons.bluetooth);
var _iconsBluetoothAudio =
    MXFunctionInvoke("Icons.bluetooth_audio", () => Icons.bluetooth_audio);
var _iconsBluetoothConnected = MXFunctionInvoke(
    "Icons.bluetooth_connected", () => Icons.bluetooth_connected);
var _iconsBluetoothDisabled = MXFunctionInvoke(
    "Icons.bluetooth_disabled", () => Icons.bluetooth_disabled);
var _iconsBluetoothSearching = MXFunctionInvoke(
    "Icons.bluetooth_searching", () => Icons.bluetooth_searching);
var _iconsBlurCircular =
    MXFunctionInvoke("Icons.blur_circular", () => Icons.blur_circular);
var _iconsBlurLinear =
    MXFunctionInvoke("Icons.blur_linear", () => Icons.blur_linear);
var _iconsBlurOff = MXFunctionInvoke("Icons.blur_off", () => Icons.blur_off);
var _iconsBlurOn = MXFunctionInvoke("Icons.blur_on", () => Icons.blur_on);
var _iconsBook = MXFunctionInvoke("Icons.book", () => Icons.book);
var _iconsBookmark = MXFunctionInvoke("Icons.bookmark", () => Icons.bookmark);
var _iconsBookmarkBorder =
    MXFunctionInvoke("Icons.bookmark_border", () => Icons.bookmark_border);
var _iconsBorderAll =
    MXFunctionInvoke("Icons.border_all", () => Icons.border_all);
var _iconsBorderBottom =
    MXFunctionInvoke("Icons.border_bottom", () => Icons.border_bottom);
var _iconsBorderClear =
    MXFunctionInvoke("Icons.border_clear", () => Icons.border_clear);
var _iconsBorderColor =
    MXFunctionInvoke("Icons.border_color", () => Icons.border_color);
var _iconsBorderHorizontal =
    MXFunctionInvoke("Icons.border_horizontal", () => Icons.border_horizontal);
var _iconsBorderInner =
    MXFunctionInvoke("Icons.border_inner", () => Icons.border_inner);
var _iconsBorderLeft =
    MXFunctionInvoke("Icons.border_left", () => Icons.border_left);
var _iconsBorderOuter =
    MXFunctionInvoke("Icons.border_outer", () => Icons.border_outer);
var _iconsBorderRight =
    MXFunctionInvoke("Icons.border_right", () => Icons.border_right);
var _iconsBorderStyle =
    MXFunctionInvoke("Icons.border_style", () => Icons.border_style);
var _iconsBorderTop =
    MXFunctionInvoke("Icons.border_top", () => Icons.border_top);
var _iconsBorderVertical =
    MXFunctionInvoke("Icons.border_vertical", () => Icons.border_vertical);
var _iconsBrandingWatermark = MXFunctionInvoke(
    "Icons.branding_watermark", () => Icons.branding_watermark);
var _iconsBrightness1 =
    MXFunctionInvoke("Icons.brightness_1", () => Icons.brightness_1);
var _iconsBrightness2 =
    MXFunctionInvoke("Icons.brightness_2", () => Icons.brightness_2);
var _iconsBrightness3 =
    MXFunctionInvoke("Icons.brightness_3", () => Icons.brightness_3);
var _iconsBrightness4 =
    MXFunctionInvoke("Icons.brightness_4", () => Icons.brightness_4);
var _iconsBrightness5 =
    MXFunctionInvoke("Icons.brightness_5", () => Icons.brightness_5);
var _iconsBrightness6 =
    MXFunctionInvoke("Icons.brightness_6", () => Icons.brightness_6);
var _iconsBrightness7 =
    MXFunctionInvoke("Icons.brightness_7", () => Icons.brightness_7);
var _iconsBrightnessAuto =
    MXFunctionInvoke("Icons.brightness_auto", () => Icons.brightness_auto);
var _iconsBrightnessHigh =
    MXFunctionInvoke("Icons.brightness_high", () => Icons.brightness_high);
var _iconsBrightnessLow =
    MXFunctionInvoke("Icons.brightness_low", () => Icons.brightness_low);
var _iconsBrightnessMedium =
    MXFunctionInvoke("Icons.brightness_medium", () => Icons.brightness_medium);
var _iconsBrokenImage =
    MXFunctionInvoke("Icons.broken_image", () => Icons.broken_image);
var _iconsBrush = MXFunctionInvoke("Icons.brush", () => Icons.brush);
var _iconsBubbleChart =
    MXFunctionInvoke("Icons.bubble_chart", () => Icons.bubble_chart);
var _iconsBugReport =
    MXFunctionInvoke("Icons.bug_report", () => Icons.bug_report);
var _iconsBuild = MXFunctionInvoke("Icons.build", () => Icons.build);
var _iconsBurstMode =
    MXFunctionInvoke("Icons.burst_mode", () => Icons.burst_mode);
var _iconsBusiness = MXFunctionInvoke("Icons.business", () => Icons.business);
var _iconsBusinessCenter =
    MXFunctionInvoke("Icons.business_center", () => Icons.business_center);
var _iconsCached = MXFunctionInvoke("Icons.cached", () => Icons.cached);
var _iconsCake = MXFunctionInvoke("Icons.cake", () => Icons.cake);
var _iconsCalendarToday =
    MXFunctionInvoke("Icons.calendar_today", () => Icons.calendar_today);
var _iconsCalendarViewDay =
    MXFunctionInvoke("Icons.calendar_view_day", () => Icons.calendar_view_day);
var _iconsCall = MXFunctionInvoke("Icons.call", () => Icons.call);
var _iconsCallEnd = MXFunctionInvoke("Icons.call_end", () => Icons.call_end);
var _iconsCallMade = MXFunctionInvoke("Icons.call_made", () => Icons.call_made);
var _iconsCallMerge =
    MXFunctionInvoke("Icons.call_merge", () => Icons.call_merge);
var _iconsCallMissed =
    MXFunctionInvoke("Icons.call_missed", () => Icons.call_missed);
var _iconsCallMissedOutgoing = MXFunctionInvoke(
    "Icons.call_missed_outgoing", () => Icons.call_missed_outgoing);
var _iconsCallReceived =
    MXFunctionInvoke("Icons.call_received", () => Icons.call_received);
var _iconsCallSplit =
    MXFunctionInvoke("Icons.call_split", () => Icons.call_split);
var _iconsCallToAction =
    MXFunctionInvoke("Icons.call_to_action", () => Icons.call_to_action);
var _iconsCamera = MXFunctionInvoke("Icons.camera", () => Icons.camera);
var _iconsCameraAlt =
    MXFunctionInvoke("Icons.camera_alt", () => Icons.camera_alt);
var _iconsCameraEnhance =
    MXFunctionInvoke("Icons.camera_enhance", () => Icons.camera_enhance);
var _iconsCameraFront =
    MXFunctionInvoke("Icons.camera_front", () => Icons.camera_front);
var _iconsCameraRear =
    MXFunctionInvoke("Icons.camera_rear", () => Icons.camera_rear);
var _iconsCameraRoll =
    MXFunctionInvoke("Icons.camera_roll", () => Icons.camera_roll);
var _iconsCancel = MXFunctionInvoke("Icons.cancel", () => Icons.cancel);
var _iconsCardGiftcard =
    MXFunctionInvoke("Icons.card_giftcard", () => Icons.card_giftcard);
var _iconsCardMembership =
    MXFunctionInvoke("Icons.card_membership", () => Icons.card_membership);
var _iconsCardTravel =
    MXFunctionInvoke("Icons.card_travel", () => Icons.card_travel);
var _iconsCasino = MXFunctionInvoke("Icons.casino", () => Icons.casino);
var _iconsCast = MXFunctionInvoke("Icons.cast", () => Icons.cast);
var _iconsCastConnected =
    MXFunctionInvoke("Icons.cast_connected", () => Icons.cast_connected);
var _iconsCategory = MXFunctionInvoke("Icons.category", () => Icons.category);
var _iconsCenterFocusStrong = MXFunctionInvoke(
    "Icons.center_focus_strong", () => Icons.center_focus_strong);
var _iconsCenterFocusWeak =
    MXFunctionInvoke("Icons.center_focus_weak", () => Icons.center_focus_weak);
var _iconsChangeHistory =
    MXFunctionInvoke("Icons.change_history", () => Icons.change_history);
var _iconsChat = MXFunctionInvoke("Icons.chat", () => Icons.chat);
var _iconsChatBubble =
    MXFunctionInvoke("Icons.chat_bubble", () => Icons.chat_bubble);
var _iconsChatBubbleOutline = MXFunctionInvoke(
    "Icons.chat_bubble_outline", () => Icons.chat_bubble_outline);
var _iconsCheck = MXFunctionInvoke("Icons.check", () => Icons.check);
var _iconsCheckBox = MXFunctionInvoke("Icons.check_box", () => Icons.check_box);
var _iconsCheckBoxOutlineBlank = MXFunctionInvoke(
    "Icons.check_box_outline_blank", () => Icons.check_box_outline_blank);
var _iconsCheckCircle =
    MXFunctionInvoke("Icons.check_circle", () => Icons.check_circle);
var _iconsCheckCircleOutline = MXFunctionInvoke(
    "Icons.check_circle_outline", () => Icons.check_circle_outline);
var _iconsChevronLeft =
    MXFunctionInvoke("Icons.chevron_left", () => Icons.chevron_left);
var _iconsChevronRight =
    MXFunctionInvoke("Icons.chevron_right", () => Icons.chevron_right);
var _iconsChildCare =
    MXFunctionInvoke("Icons.child_care", () => Icons.child_care);
var _iconsChildFriendly =
    MXFunctionInvoke("Icons.child_friendly", () => Icons.child_friendly);
var _iconsChromeReaderMode = MXFunctionInvoke(
    "Icons.chrome_reader_mode", () => Icons.chrome_reader_mode);
var _iconsClass = MXFunctionInvoke("Icons.class_", () => Icons.class_);
var _iconsClear = MXFunctionInvoke("Icons.clear", () => Icons.clear);
var _iconsClearAll = MXFunctionInvoke("Icons.clear_all", () => Icons.clear_all);
var _iconsClose = MXFunctionInvoke("Icons.close", () => Icons.close);
var _iconsClosedCaption =
    MXFunctionInvoke("Icons.closed_caption", () => Icons.closed_caption);
var _iconsCloud = MXFunctionInvoke("Icons.cloud", () => Icons.cloud);
var _iconsCloudCircle =
    MXFunctionInvoke("Icons.cloud_circle", () => Icons.cloud_circle);
var _iconsCloudDone =
    MXFunctionInvoke("Icons.cloud_done", () => Icons.cloud_done);
var _iconsCloudDownload =
    MXFunctionInvoke("Icons.cloud_download", () => Icons.cloud_download);
var _iconsCloudOff = MXFunctionInvoke("Icons.cloud_off", () => Icons.cloud_off);
var _iconsCloudQueue =
    MXFunctionInvoke("Icons.cloud_queue", () => Icons.cloud_queue);
var _iconsCloudUpload =
    MXFunctionInvoke("Icons.cloud_upload", () => Icons.cloud_upload);
var _iconsCode = MXFunctionInvoke("Icons.code", () => Icons.code);
var _iconsCollections =
    MXFunctionInvoke("Icons.collections", () => Icons.collections);
var _iconsCollectionsBookmark = MXFunctionInvoke(
    "Icons.collections_bookmark", () => Icons.collections_bookmark);
var _iconsColorLens =
    MXFunctionInvoke("Icons.color_lens", () => Icons.color_lens);
var _iconsColorize = MXFunctionInvoke("Icons.colorize", () => Icons.colorize);
var _iconsComment = MXFunctionInvoke("Icons.comment", () => Icons.comment);
var _iconsCompare = MXFunctionInvoke("Icons.compare", () => Icons.compare);
var _iconsCompareArrows =
    MXFunctionInvoke("Icons.compare_arrows", () => Icons.compare_arrows);
var _iconsComputer = MXFunctionInvoke("Icons.computer", () => Icons.computer);
var _iconsConfirmationNumber = MXFunctionInvoke(
    "Icons.confirmation_number", () => Icons.confirmation_number);
var _iconsContactMail =
    MXFunctionInvoke("Icons.contact_mail", () => Icons.contact_mail);
var _iconsContactPhone =
    MXFunctionInvoke("Icons.contact_phone", () => Icons.contact_phone);
var _iconsContacts = MXFunctionInvoke("Icons.contacts", () => Icons.contacts);
var _iconsContentCopy =
    MXFunctionInvoke("Icons.content_copy", () => Icons.content_copy);
var _iconsContentCut =
    MXFunctionInvoke("Icons.content_cut", () => Icons.content_cut);
var _iconsContentPaste =
    MXFunctionInvoke("Icons.content_paste", () => Icons.content_paste);
var _iconsControlPoint =
    MXFunctionInvoke("Icons.control_point", () => Icons.control_point);
var _iconsControlPointDuplicate = MXFunctionInvoke(
    "Icons.control_point_duplicate", () => Icons.control_point_duplicate);
var _iconsCopyright =
    MXFunctionInvoke("Icons.copyright", () => Icons.copyright);
var _iconsCreate = MXFunctionInvoke("Icons.create", () => Icons.create);
var _iconsCreateNewFolder =
    MXFunctionInvoke("Icons.create_new_folder", () => Icons.create_new_folder);
var _iconsCreditCard =
    MXFunctionInvoke("Icons.credit_card", () => Icons.credit_card);
var _iconsCrop = MXFunctionInvoke("Icons.crop", () => Icons.crop);
var _iconsCrop169 = MXFunctionInvoke("Icons.crop_16_9", () => Icons.crop_16_9);
var _iconsCrop32 = MXFunctionInvoke("Icons.crop_3_2", () => Icons.crop_3_2);
var _iconsCrop54 = MXFunctionInvoke("Icons.crop_5_4", () => Icons.crop_5_4);
var _iconsCrop75 = MXFunctionInvoke("Icons.crop_7_5", () => Icons.crop_7_5);
var _iconsCropDin = MXFunctionInvoke("Icons.crop_din", () => Icons.crop_din);
var _iconsCropFree = MXFunctionInvoke("Icons.crop_free", () => Icons.crop_free);
var _iconsCropLandscape =
    MXFunctionInvoke("Icons.crop_landscape", () => Icons.crop_landscape);
var _iconsCropOriginal =
    MXFunctionInvoke("Icons.crop_original", () => Icons.crop_original);
var _iconsCropPortrait =
    MXFunctionInvoke("Icons.crop_portrait", () => Icons.crop_portrait);
var _iconsCropRotate =
    MXFunctionInvoke("Icons.crop_rotate", () => Icons.crop_rotate);
var _iconsCropSquare =
    MXFunctionInvoke("Icons.crop_square", () => Icons.crop_square);
var _iconsDashboard =
    MXFunctionInvoke("Icons.dashboard", () => Icons.dashboard);
var _iconsDataUsage =
    MXFunctionInvoke("Icons.data_usage", () => Icons.data_usage);
var _iconsDateRange =
    MXFunctionInvoke("Icons.date_range", () => Icons.date_range);
var _iconsDehaze = MXFunctionInvoke("Icons.dehaze", () => Icons.dehaze);
var _iconsDelete = MXFunctionInvoke("Icons.delete", () => Icons.delete);
var _iconsDeleteForever =
    MXFunctionInvoke("Icons.delete_forever", () => Icons.delete_forever);
var _iconsDeleteOutline =
    MXFunctionInvoke("Icons.delete_outline", () => Icons.delete_outline);
var _iconsDeleteSweep =
    MXFunctionInvoke("Icons.delete_sweep", () => Icons.delete_sweep);
var _iconsDepartureBoard =
    MXFunctionInvoke("Icons.departure_board", () => Icons.departure_board);
var _iconsDescription =
    MXFunctionInvoke("Icons.description", () => Icons.description);
var _iconsDesktopMac =
    MXFunctionInvoke("Icons.desktop_mac", () => Icons.desktop_mac);
var _iconsDesktopWindows =
    MXFunctionInvoke("Icons.desktop_windows", () => Icons.desktop_windows);
var _iconsDetails = MXFunctionInvoke("Icons.details", () => Icons.details);
var _iconsDeveloperBoard =
    MXFunctionInvoke("Icons.developer_board", () => Icons.developer_board);
var _iconsDeveloperMode =
    MXFunctionInvoke("Icons.developer_mode", () => Icons.developer_mode);
var _iconsDeviceHub =
    MXFunctionInvoke("Icons.device_hub", () => Icons.device_hub);
var _iconsDeviceUnknown =
    MXFunctionInvoke("Icons.device_unknown", () => Icons.device_unknown);
var _iconsDevices = MXFunctionInvoke("Icons.devices", () => Icons.devices);
var _iconsDevicesOther =
    MXFunctionInvoke("Icons.devices_other", () => Icons.devices_other);
var _iconsDialerSip =
    MXFunctionInvoke("Icons.dialer_sip", () => Icons.dialer_sip);
var _iconsDialpad = MXFunctionInvoke("Icons.dialpad", () => Icons.dialpad);
var _iconsDirections =
    MXFunctionInvoke("Icons.directions", () => Icons.directions);
var _iconsDirectionsBike =
    MXFunctionInvoke("Icons.directions_bike", () => Icons.directions_bike);
var _iconsDirectionsBoat =
    MXFunctionInvoke("Icons.directions_boat", () => Icons.directions_boat);
var _iconsDirectionsBus =
    MXFunctionInvoke("Icons.directions_bus", () => Icons.directions_bus);
var _iconsDirectionsCar =
    MXFunctionInvoke("Icons.directions_car", () => Icons.directions_car);
var _iconsDirectionsRailway = MXFunctionInvoke(
    "Icons.directions_railway", () => Icons.directions_railway);
var _iconsDirectionsRun =
    MXFunctionInvoke("Icons.directions_run", () => Icons.directions_run);
var _iconsDirectionsSubway =
    MXFunctionInvoke("Icons.directions_subway", () => Icons.directions_subway);
var _iconsDirectionsTransit = MXFunctionInvoke(
    "Icons.directions_transit", () => Icons.directions_transit);
var _iconsDirectionsWalk =
    MXFunctionInvoke("Icons.directions_walk", () => Icons.directions_walk);
var _iconsDiscFull = MXFunctionInvoke("Icons.disc_full", () => Icons.disc_full);
var _iconsDns = MXFunctionInvoke("Icons.dns", () => Icons.dns);
var _iconsDoNotDisturb =
    MXFunctionInvoke("Icons.do_not_disturb", () => Icons.do_not_disturb);
var _iconsDoNotDisturbAlt = MXFunctionInvoke(
    "Icons.do_not_disturb_alt", () => Icons.do_not_disturb_alt);
var _iconsDoNotDisturbOff = MXFunctionInvoke(
    "Icons.do_not_disturb_off", () => Icons.do_not_disturb_off);
var _iconsDoNotDisturbOn =
    MXFunctionInvoke("Icons.do_not_disturb_on", () => Icons.do_not_disturb_on);
var _iconsDock = MXFunctionInvoke("Icons.dock", () => Icons.dock);
var _iconsDomain = MXFunctionInvoke("Icons.domain", () => Icons.domain);
var _iconsDone = MXFunctionInvoke("Icons.done", () => Icons.done);
var _iconsDoneAll = MXFunctionInvoke("Icons.done_all", () => Icons.done_all);
var _iconsDoneOutline =
    MXFunctionInvoke("Icons.done_outline", () => Icons.done_outline);
var _iconsDonutLarge =
    MXFunctionInvoke("Icons.donut_large", () => Icons.donut_large);
var _iconsDonutSmall =
    MXFunctionInvoke("Icons.donut_small", () => Icons.donut_small);
var _iconsDrafts = MXFunctionInvoke("Icons.drafts", () => Icons.drafts);
var _iconsDragHandle =
    MXFunctionInvoke("Icons.drag_handle", () => Icons.drag_handle);
var _iconsDriveEta = MXFunctionInvoke("Icons.drive_eta", () => Icons.drive_eta);
var _iconsDvr = MXFunctionInvoke("Icons.dvr", () => Icons.dvr);
var _iconsEdit = MXFunctionInvoke("Icons.edit", () => Icons.edit);
var _iconsEditAttributes =
    MXFunctionInvoke("Icons.edit_attributes", () => Icons.edit_attributes);
var _iconsEditLocation =
    MXFunctionInvoke("Icons.edit_location", () => Icons.edit_location);
var _iconsEject = MXFunctionInvoke("Icons.eject", () => Icons.eject);
var _iconsEmail = MXFunctionInvoke("Icons.email", () => Icons.email);
var _iconsEnhancedEncryption = MXFunctionInvoke(
    "Icons.enhanced_encryption", () => Icons.enhanced_encryption);
var _iconsEqualizer =
    MXFunctionInvoke("Icons.equalizer", () => Icons.equalizer);
var _iconsError = MXFunctionInvoke("Icons.error", () => Icons.error);
var _iconsErrorOutline =
    MXFunctionInvoke("Icons.error_outline", () => Icons.error_outline);
var _iconsEuroSymbol =
    MXFunctionInvoke("Icons.euro_symbol", () => Icons.euro_symbol);
var _iconsEvStation =
    MXFunctionInvoke("Icons.ev_station", () => Icons.ev_station);
var _iconsEvent = MXFunctionInvoke("Icons.event", () => Icons.event);
var _iconsEventAvailable =
    MXFunctionInvoke("Icons.event_available", () => Icons.event_available);
var _iconsEventBusy =
    MXFunctionInvoke("Icons.event_busy", () => Icons.event_busy);
var _iconsEventNote =
    MXFunctionInvoke("Icons.event_note", () => Icons.event_note);
var _iconsEventSeat =
    MXFunctionInvoke("Icons.event_seat", () => Icons.event_seat);
var _iconsExitToApp =
    MXFunctionInvoke("Icons.exit_to_app", () => Icons.exit_to_app);
var _iconsExpandLess =
    MXFunctionInvoke("Icons.expand_less", () => Icons.expand_less);
var _iconsExpandMore =
    MXFunctionInvoke("Icons.expand_more", () => Icons.expand_more);
var _iconsExplicit = MXFunctionInvoke("Icons.explicit", () => Icons.explicit);
var _iconsExplore = MXFunctionInvoke("Icons.explore", () => Icons.explore);
var _iconsExposure = MXFunctionInvoke("Icons.exposure", () => Icons.exposure);
var _iconsExposureNeg1 =
    MXFunctionInvoke("Icons.exposure_neg_1", () => Icons.exposure_neg_1);
var _iconsExposureNeg2 =
    MXFunctionInvoke("Icons.exposure_neg_2", () => Icons.exposure_neg_2);
var _iconsExposurePlus1 =
    MXFunctionInvoke("Icons.exposure_plus_1", () => Icons.exposure_plus_1);
var _iconsExposurePlus2 =
    MXFunctionInvoke("Icons.exposure_plus_2", () => Icons.exposure_plus_2);
var _iconsExposureZero =
    MXFunctionInvoke("Icons.exposure_zero", () => Icons.exposure_zero);
var _iconsExtension =
    MXFunctionInvoke("Icons.extension", () => Icons.extension);
var _iconsFace = MXFunctionInvoke("Icons.face", () => Icons.face);
var _iconsFastForward =
    MXFunctionInvoke("Icons.fast_forward", () => Icons.fast_forward);
var _iconsFastRewind =
    MXFunctionInvoke("Icons.fast_rewind", () => Icons.fast_rewind);
var _iconsFastfood = MXFunctionInvoke("Icons.fastfood", () => Icons.fastfood);
var _iconsFavorite = MXFunctionInvoke("Icons.favorite", () => Icons.favorite);
var _iconsFavoriteBorder =
    MXFunctionInvoke("Icons.favorite_border", () => Icons.favorite_border);
var _iconsFeaturedPlayList = MXFunctionInvoke(
    "Icons.featured_play_list", () => Icons.featured_play_list);
var _iconsFeaturedVideo =
    MXFunctionInvoke("Icons.featured_video", () => Icons.featured_video);
var _iconsFeedback = MXFunctionInvoke("Icons.feedback", () => Icons.feedback);
var _iconsFiberDvr = MXFunctionInvoke("Icons.fiber_dvr", () => Icons.fiber_dvr);
var _iconsFiberManualRecord = MXFunctionInvoke(
    "Icons.fiber_manual_record", () => Icons.fiber_manual_record);
var _iconsFiberNew = MXFunctionInvoke("Icons.fiber_new", () => Icons.fiber_new);
var _iconsFiberPin = MXFunctionInvoke("Icons.fiber_pin", () => Icons.fiber_pin);
var _iconsFiberSmartRecord = MXFunctionInvoke(
    "Icons.fiber_smart_record", () => Icons.fiber_smart_record);
var _iconsFileDownload =
    MXFunctionInvoke("Icons.file_download", () => Icons.file_download);
var _iconsFileUpload =
    MXFunctionInvoke("Icons.file_upload", () => Icons.file_upload);
var _iconsFilter = MXFunctionInvoke("Icons.filter", () => Icons.filter);
var _iconsFilter1 = MXFunctionInvoke("Icons.filter_1", () => Icons.filter_1);
var _iconsFilter2 = MXFunctionInvoke("Icons.filter_2", () => Icons.filter_2);
var _iconsFilter3 = MXFunctionInvoke("Icons.filter_3", () => Icons.filter_3);
var _iconsFilter4 = MXFunctionInvoke("Icons.filter_4", () => Icons.filter_4);
var _iconsFilter5 = MXFunctionInvoke("Icons.filter_5", () => Icons.filter_5);
var _iconsFilter6 = MXFunctionInvoke("Icons.filter_6", () => Icons.filter_6);
var _iconsFilter7 = MXFunctionInvoke("Icons.filter_7", () => Icons.filter_7);
var _iconsFilter8 = MXFunctionInvoke("Icons.filter_8", () => Icons.filter_8);
var _iconsFilter9 = MXFunctionInvoke("Icons.filter_9", () => Icons.filter_9);
var _iconsFilter9Plus =
    MXFunctionInvoke("Icons.filter_9_plus", () => Icons.filter_9_plus);
var _iconsFilterBAndW =
    MXFunctionInvoke("Icons.filter_b_and_w", () => Icons.filter_b_and_w);
var _iconsFilterCenterFocus = MXFunctionInvoke(
    "Icons.filter_center_focus", () => Icons.filter_center_focus);
var _iconsFilterDrama =
    MXFunctionInvoke("Icons.filter_drama", () => Icons.filter_drama);
var _iconsFilterFrames =
    MXFunctionInvoke("Icons.filter_frames", () => Icons.filter_frames);
var _iconsFilterHdr =
    MXFunctionInvoke("Icons.filter_hdr", () => Icons.filter_hdr);
var _iconsFilterList =
    MXFunctionInvoke("Icons.filter_list", () => Icons.filter_list);
var _iconsFilterNone =
    MXFunctionInvoke("Icons.filter_none", () => Icons.filter_none);
var _iconsFilterTiltShift =
    MXFunctionInvoke("Icons.filter_tilt_shift", () => Icons.filter_tilt_shift);
var _iconsFilterVintage =
    MXFunctionInvoke("Icons.filter_vintage", () => Icons.filter_vintage);
var _iconsFindInPage =
    MXFunctionInvoke("Icons.find_in_page", () => Icons.find_in_page);
var _iconsFindReplace =
    MXFunctionInvoke("Icons.find_replace", () => Icons.find_replace);
var _iconsFingerprint =
    MXFunctionInvoke("Icons.fingerprint", () => Icons.fingerprint);
var _iconsFirstPage =
    MXFunctionInvoke("Icons.first_page", () => Icons.first_page);
var _iconsFitnessCenter =
    MXFunctionInvoke("Icons.fitness_center", () => Icons.fitness_center);
var _iconsFlag = MXFunctionInvoke("Icons.flag", () => Icons.flag);
var _iconsFlare = MXFunctionInvoke("Icons.flare", () => Icons.flare);
var _iconsFlashAuto =
    MXFunctionInvoke("Icons.flash_auto", () => Icons.flash_auto);
var _iconsFlashOff = MXFunctionInvoke("Icons.flash_off", () => Icons.flash_off);
var _iconsFlashOn = MXFunctionInvoke("Icons.flash_on", () => Icons.flash_on);
var _iconsFlight = MXFunctionInvoke("Icons.flight", () => Icons.flight);
var _iconsFlightLand =
    MXFunctionInvoke("Icons.flight_land", () => Icons.flight_land);
var _iconsFlightTakeoff =
    MXFunctionInvoke("Icons.flight_takeoff", () => Icons.flight_takeoff);
var _iconsFlip = MXFunctionInvoke("Icons.flip", () => Icons.flip);
var _iconsFlipToBack =
    MXFunctionInvoke("Icons.flip_to_back", () => Icons.flip_to_back);
var _iconsFlipToFront =
    MXFunctionInvoke("Icons.flip_to_front", () => Icons.flip_to_front);
var _iconsFolder = MXFunctionInvoke("Icons.folder", () => Icons.folder);
var _iconsFolderOpen =
    MXFunctionInvoke("Icons.folder_open", () => Icons.folder_open);
var _iconsFolderShared =
    MXFunctionInvoke("Icons.folder_shared", () => Icons.folder_shared);
var _iconsFolderSpecial =
    MXFunctionInvoke("Icons.folder_special", () => Icons.folder_special);
var _iconsFontDownload =
    MXFunctionInvoke("Icons.font_download", () => Icons.font_download);
var _iconsFormatAlignCenter = MXFunctionInvoke(
    "Icons.format_align_center", () => Icons.format_align_center);
var _iconsFormatAlignJustify = MXFunctionInvoke(
    "Icons.format_align_justify", () => Icons.format_align_justify);
var _iconsFormatAlignLeft =
    MXFunctionInvoke("Icons.format_align_left", () => Icons.format_align_left);
var _iconsFormatAlignRight = MXFunctionInvoke(
    "Icons.format_align_right", () => Icons.format_align_right);
var _iconsFormatBold =
    MXFunctionInvoke("Icons.format_bold", () => Icons.format_bold);
var _iconsFormatClear =
    MXFunctionInvoke("Icons.format_clear", () => Icons.format_clear);
var _iconsFormatColorFill =
    MXFunctionInvoke("Icons.format_color_fill", () => Icons.format_color_fill);
var _iconsFormatColorReset = MXFunctionInvoke(
    "Icons.format_color_reset", () => Icons.format_color_reset);
var _iconsFormatColorText =
    MXFunctionInvoke("Icons.format_color_text", () => Icons.format_color_text);
var _iconsFormatIndentDecrease = MXFunctionInvoke(
    "Icons.format_indent_decrease", () => Icons.format_indent_decrease);
var _iconsFormatIndentIncrease = MXFunctionInvoke(
    "Icons.format_indent_increase", () => Icons.format_indent_increase);
var _iconsFormatItalic =
    MXFunctionInvoke("Icons.format_italic", () => Icons.format_italic);
var _iconsFormatLineSpacing = MXFunctionInvoke(
    "Icons.format_line_spacing", () => Icons.format_line_spacing);
var _iconsFormatListBulleted = MXFunctionInvoke(
    "Icons.format_list_bulleted", () => Icons.format_list_bulleted);
var _iconsFormatListNumbered = MXFunctionInvoke(
    "Icons.format_list_numbered", () => Icons.format_list_numbered);
var _iconsFormatListNumberedRtl = MXFunctionInvoke(
    "Icons.format_list_numbered_rtl", () => Icons.format_list_numbered_rtl);
var _iconsFormatPaint =
    MXFunctionInvoke("Icons.format_paint", () => Icons.format_paint);
var _iconsFormatQuote =
    MXFunctionInvoke("Icons.format_quote", () => Icons.format_quote);
var _iconsFormatShapes =
    MXFunctionInvoke("Icons.format_shapes", () => Icons.format_shapes);
var _iconsFormatSize =
    MXFunctionInvoke("Icons.format_size", () => Icons.format_size);
var _iconsFormatStrikethrough = MXFunctionInvoke(
    "Icons.format_strikethrough", () => Icons.format_strikethrough);
var _iconsFormatTextdirectionLToR = MXFunctionInvoke(
    "Icons.format_textdirection_l_to_r",
    () => Icons.format_textdirection_l_to_r);
var _iconsFormatTextdirectionRToL = MXFunctionInvoke(
    "Icons.format_textdirection_r_to_l",
    () => Icons.format_textdirection_r_to_l);
var _iconsFormatUnderlined =
    MXFunctionInvoke("Icons.format_underlined", () => Icons.format_underlined);
var _iconsForum = MXFunctionInvoke("Icons.forum", () => Icons.forum);
var _iconsForward = MXFunctionInvoke("Icons.forward", () => Icons.forward);
var _iconsForward10 =
    MXFunctionInvoke("Icons.forward_10", () => Icons.forward_10);
var _iconsForward30 =
    MXFunctionInvoke("Icons.forward_30", () => Icons.forward_30);
var _iconsForward5 = MXFunctionInvoke("Icons.forward_5", () => Icons.forward_5);
var _iconsFreeBreakfast =
    MXFunctionInvoke("Icons.free_breakfast", () => Icons.free_breakfast);
var _iconsFullscreen =
    MXFunctionInvoke("Icons.fullscreen", () => Icons.fullscreen);
var _iconsFullscreenExit =
    MXFunctionInvoke("Icons.fullscreen_exit", () => Icons.fullscreen_exit);
var _iconsFunctions =
    MXFunctionInvoke("Icons.functions", () => Icons.functions);
var _iconsGTranslate =
    MXFunctionInvoke("Icons.g_translate", () => Icons.g_translate);
var _iconsGamepad = MXFunctionInvoke("Icons.gamepad", () => Icons.gamepad);
var _iconsGames = MXFunctionInvoke("Icons.games", () => Icons.games);
var _iconsGavel = MXFunctionInvoke("Icons.gavel", () => Icons.gavel);
var _iconsGesture = MXFunctionInvoke("Icons.gesture", () => Icons.gesture);
var _iconsGetApp = MXFunctionInvoke("Icons.get_app", () => Icons.get_app);
var _iconsGif = MXFunctionInvoke("Icons.gif", () => Icons.gif);
var _iconsGolfCourse =
    MXFunctionInvoke("Icons.golf_course", () => Icons.golf_course);
var _iconsGpsFixed = MXFunctionInvoke("Icons.gps_fixed", () => Icons.gps_fixed);
var _iconsGpsNotFixed =
    MXFunctionInvoke("Icons.gps_not_fixed", () => Icons.gps_not_fixed);
var _iconsGpsOff = MXFunctionInvoke("Icons.gps_off", () => Icons.gps_off);
var _iconsGrade = MXFunctionInvoke("Icons.grade", () => Icons.grade);
var _iconsGradient = MXFunctionInvoke("Icons.gradient", () => Icons.gradient);
var _iconsGrain = MXFunctionInvoke("Icons.grain", () => Icons.grain);
var _iconsGraphicEq =
    MXFunctionInvoke("Icons.graphic_eq", () => Icons.graphic_eq);
var _iconsGridOff = MXFunctionInvoke("Icons.grid_off", () => Icons.grid_off);
var _iconsGridOn = MXFunctionInvoke("Icons.grid_on", () => Icons.grid_on);
var _iconsGroup = MXFunctionInvoke("Icons.group", () => Icons.group);
var _iconsGroupAdd = MXFunctionInvoke("Icons.group_add", () => Icons.group_add);
var _iconsGroupWork =
    MXFunctionInvoke("Icons.group_work", () => Icons.group_work);
var _iconsHd = MXFunctionInvoke("Icons.hd", () => Icons.hd);
var _iconsHdrOff = MXFunctionInvoke("Icons.hdr_off", () => Icons.hdr_off);
var _iconsHdrOn = MXFunctionInvoke("Icons.hdr_on", () => Icons.hdr_on);
var _iconsHdrStrong =
    MXFunctionInvoke("Icons.hdr_strong", () => Icons.hdr_strong);
var _iconsHdrWeak = MXFunctionInvoke("Icons.hdr_weak", () => Icons.hdr_weak);
var _iconsHeadset = MXFunctionInvoke("Icons.headset", () => Icons.headset);
var _iconsHeadsetMic =
    MXFunctionInvoke("Icons.headset_mic", () => Icons.headset_mic);
var _iconsHeadsetOff =
    MXFunctionInvoke("Icons.headset_off", () => Icons.headset_off);
var _iconsHealing = MXFunctionInvoke("Icons.healing", () => Icons.healing);
var _iconsHearing = MXFunctionInvoke("Icons.hearing", () => Icons.hearing);
var _iconsHelp = MXFunctionInvoke("Icons.help", () => Icons.help);
var _iconsHelpOutline =
    MXFunctionInvoke("Icons.help_outline", () => Icons.help_outline);
var _iconsHighQuality =
    MXFunctionInvoke("Icons.high_quality", () => Icons.high_quality);
var _iconsHighlight =
    MXFunctionInvoke("Icons.highlight", () => Icons.highlight);
var _iconsHighlightOff =
    MXFunctionInvoke("Icons.highlight_off", () => Icons.highlight_off);
var _iconsHistory = MXFunctionInvoke("Icons.history", () => Icons.history);
var _iconsHome = MXFunctionInvoke("Icons.home", () => Icons.home);
var _iconsHotTub = MXFunctionInvoke("Icons.hot_tub", () => Icons.hot_tub);
var _iconsHotel = MXFunctionInvoke("Icons.hotel", () => Icons.hotel);
var _iconsHourglassEmpty =
    MXFunctionInvoke("Icons.hourglass_empty", () => Icons.hourglass_empty);
var _iconsHourglassFull =
    MXFunctionInvoke("Icons.hourglass_full", () => Icons.hourglass_full);
var _iconsHttp = MXFunctionInvoke("Icons.http", () => Icons.http);
var _iconsHttps = MXFunctionInvoke("Icons.https", () => Icons.https);
var _iconsImage = MXFunctionInvoke("Icons.image", () => Icons.image);
var _iconsImageAspectRatio = MXFunctionInvoke(
    "Icons.image_aspect_ratio", () => Icons.image_aspect_ratio);
var _iconsImportContacts =
    MXFunctionInvoke("Icons.import_contacts", () => Icons.import_contacts);
var _iconsImportExport =
    MXFunctionInvoke("Icons.import_export", () => Icons.import_export);
var _iconsImportantDevices =
    MXFunctionInvoke("Icons.important_devices", () => Icons.important_devices);
var _iconsInbox = MXFunctionInvoke("Icons.inbox", () => Icons.inbox);
var _iconsIndeterminateCheckBox = MXFunctionInvoke(
    "Icons.indeterminate_check_box", () => Icons.indeterminate_check_box);
var _iconsInfo = MXFunctionInvoke("Icons.info", () => Icons.info);
var _iconsInfoOutline =
    MXFunctionInvoke("Icons.info_outline", () => Icons.info_outline);
var _iconsInput = MXFunctionInvoke("Icons.input", () => Icons.input);
var _iconsInsertChart =
    MXFunctionInvoke("Icons.insert_chart", () => Icons.insert_chart);
var _iconsInsertComment =
    MXFunctionInvoke("Icons.insert_comment", () => Icons.insert_comment);
var _iconsInsertDriveFile =
    MXFunctionInvoke("Icons.insert_drive_file", () => Icons.insert_drive_file);
var _iconsInsertEmoticon =
    MXFunctionInvoke("Icons.insert_emoticon", () => Icons.insert_emoticon);
var _iconsInsertInvitation =
    MXFunctionInvoke("Icons.insert_invitation", () => Icons.insert_invitation);
var _iconsInsertLink =
    MXFunctionInvoke("Icons.insert_link", () => Icons.insert_link);
var _iconsInsertPhoto =
    MXFunctionInvoke("Icons.insert_photo", () => Icons.insert_photo);
var _iconsInvertColors =
    MXFunctionInvoke("Icons.invert_colors", () => Icons.invert_colors);
var _iconsInvertColorsOff =
    MXFunctionInvoke("Icons.invert_colors_off", () => Icons.invert_colors_off);
var _iconsIso = MXFunctionInvoke("Icons.iso", () => Icons.iso);
var _iconsKeyboard = MXFunctionInvoke("Icons.keyboard", () => Icons.keyboard);
var _iconsKeyboardArrowDown = MXFunctionInvoke(
    "Icons.keyboard_arrow_down", () => Icons.keyboard_arrow_down);
var _iconsKeyboardArrowLeft = MXFunctionInvoke(
    "Icons.keyboard_arrow_left", () => Icons.keyboard_arrow_left);
var _iconsKeyboardArrowRight = MXFunctionInvoke(
    "Icons.keyboard_arrow_right", () => Icons.keyboard_arrow_right);
var _iconsKeyboardArrowUp =
    MXFunctionInvoke("Icons.keyboard_arrow_up", () => Icons.keyboard_arrow_up);
var _iconsKeyboardBackspace = MXFunctionInvoke(
    "Icons.keyboard_backspace", () => Icons.keyboard_backspace);
var _iconsKeyboardCapslock =
    MXFunctionInvoke("Icons.keyboard_capslock", () => Icons.keyboard_capslock);
var _iconsKeyboardHide =
    MXFunctionInvoke("Icons.keyboard_hide", () => Icons.keyboard_hide);
var _iconsKeyboardReturn =
    MXFunctionInvoke("Icons.keyboard_return", () => Icons.keyboard_return);
var _iconsKeyboardTab =
    MXFunctionInvoke("Icons.keyboard_tab", () => Icons.keyboard_tab);
var _iconsKeyboardVoice =
    MXFunctionInvoke("Icons.keyboard_voice", () => Icons.keyboard_voice);
var _iconsKitchen = MXFunctionInvoke("Icons.kitchen", () => Icons.kitchen);
var _iconsLabel = MXFunctionInvoke("Icons.label", () => Icons.label);
var _iconsLabelImportant =
    MXFunctionInvoke("Icons.label_important", () => Icons.label_important);
var _iconsLabelOutline =
    MXFunctionInvoke("Icons.label_outline", () => Icons.label_outline);
var _iconsLandscape =
    MXFunctionInvoke("Icons.landscape", () => Icons.landscape);
var _iconsLanguage = MXFunctionInvoke("Icons.language", () => Icons.language);
var _iconsLaptop = MXFunctionInvoke("Icons.laptop", () => Icons.laptop);
var _iconsLaptopChromebook =
    MXFunctionInvoke("Icons.laptop_chromebook", () => Icons.laptop_chromebook);
var _iconsLaptopMac =
    MXFunctionInvoke("Icons.laptop_mac", () => Icons.laptop_mac);
var _iconsLaptopWindows =
    MXFunctionInvoke("Icons.laptop_windows", () => Icons.laptop_windows);
var _iconsLastPage = MXFunctionInvoke("Icons.last_page", () => Icons.last_page);
var _iconsLaunch = MXFunctionInvoke("Icons.launch", () => Icons.launch);
var _iconsLayers = MXFunctionInvoke("Icons.layers", () => Icons.layers);
var _iconsLayersClear =
    MXFunctionInvoke("Icons.layers_clear", () => Icons.layers_clear);
var _iconsLeakAdd = MXFunctionInvoke("Icons.leak_add", () => Icons.leak_add);
var _iconsLeakRemove =
    MXFunctionInvoke("Icons.leak_remove", () => Icons.leak_remove);
var _iconsLens = MXFunctionInvoke("Icons.lens", () => Icons.lens);
var _iconsLibraryAdd =
    MXFunctionInvoke("Icons.library_add", () => Icons.library_add);
var _iconsLibraryBooks =
    MXFunctionInvoke("Icons.library_books", () => Icons.library_books);
var _iconsLibraryMusic =
    MXFunctionInvoke("Icons.library_music", () => Icons.library_music);
var _iconsLightbulbOutline =
    MXFunctionInvoke("Icons.lightbulb_outline", () => Icons.lightbulb_outline);
var _iconsLineStyle =
    MXFunctionInvoke("Icons.line_style", () => Icons.line_style);
var _iconsLineWeight =
    MXFunctionInvoke("Icons.line_weight", () => Icons.line_weight);
var _iconsLinearScale =
    MXFunctionInvoke("Icons.linear_scale", () => Icons.linear_scale);
var _iconsLink = MXFunctionInvoke("Icons.link", () => Icons.link);
var _iconsLinkOff = MXFunctionInvoke("Icons.link_off", () => Icons.link_off);
var _iconsLinkedCamera =
    MXFunctionInvoke("Icons.linked_camera", () => Icons.linked_camera);
var _iconsList = MXFunctionInvoke("Icons.list", () => Icons.list);
var _iconsLiveHelp = MXFunctionInvoke("Icons.live_help", () => Icons.live_help);
var _iconsLiveTv = MXFunctionInvoke("Icons.live_tv", () => Icons.live_tv);
var _iconsLocalActivity =
    MXFunctionInvoke("Icons.local_activity", () => Icons.local_activity);
var _iconsLocalAirport =
    MXFunctionInvoke("Icons.local_airport", () => Icons.local_airport);
var _iconsLocalAtm = MXFunctionInvoke("Icons.local_atm", () => Icons.local_atm);
var _iconsLocalBar = MXFunctionInvoke("Icons.local_bar", () => Icons.local_bar);
var _iconsLocalCafe =
    MXFunctionInvoke("Icons.local_cafe", () => Icons.local_cafe);
var _iconsLocalCarWash =
    MXFunctionInvoke("Icons.local_car_wash", () => Icons.local_car_wash);
var _iconsLocalConvenienceStore = MXFunctionInvoke(
    "Icons.local_convenience_store", () => Icons.local_convenience_store);
var _iconsLocalDining =
    MXFunctionInvoke("Icons.local_dining", () => Icons.local_dining);
var _iconsLocalDrink =
    MXFunctionInvoke("Icons.local_drink", () => Icons.local_drink);
var _iconsLocalFlorist =
    MXFunctionInvoke("Icons.local_florist", () => Icons.local_florist);
var _iconsLocalGasStation =
    MXFunctionInvoke("Icons.local_gas_station", () => Icons.local_gas_station);
var _iconsLocalGroceryStore = MXFunctionInvoke(
    "Icons.local_grocery_store", () => Icons.local_grocery_store);
var _iconsLocalHospital =
    MXFunctionInvoke("Icons.local_hospital", () => Icons.local_hospital);
var _iconsLocalHotel =
    MXFunctionInvoke("Icons.local_hotel", () => Icons.local_hotel);
var _iconsLocalLaundryService = MXFunctionInvoke(
    "Icons.local_laundry_service", () => Icons.local_laundry_service);
var _iconsLocalLibrary =
    MXFunctionInvoke("Icons.local_library", () => Icons.local_library);
var _iconsLocalMall =
    MXFunctionInvoke("Icons.local_mall", () => Icons.local_mall);
var _iconsLocalMovies =
    MXFunctionInvoke("Icons.local_movies", () => Icons.local_movies);
var _iconsLocalOffer =
    MXFunctionInvoke("Icons.local_offer", () => Icons.local_offer);
var _iconsLocalParking =
    MXFunctionInvoke("Icons.local_parking", () => Icons.local_parking);
var _iconsLocalPharmacy =
    MXFunctionInvoke("Icons.local_pharmacy", () => Icons.local_pharmacy);
var _iconsLocalPhone =
    MXFunctionInvoke("Icons.local_phone", () => Icons.local_phone);
var _iconsLocalPizza =
    MXFunctionInvoke("Icons.local_pizza", () => Icons.local_pizza);
var _iconsLocalPlay =
    MXFunctionInvoke("Icons.local_play", () => Icons.local_play);
var _iconsLocalPostOffice =
    MXFunctionInvoke("Icons.local_post_office", () => Icons.local_post_office);
var _iconsLocalPrintshop =
    MXFunctionInvoke("Icons.local_printshop", () => Icons.local_printshop);
var _iconsLocalSee = MXFunctionInvoke("Icons.local_see", () => Icons.local_see);
var _iconsLocalShipping =
    MXFunctionInvoke("Icons.local_shipping", () => Icons.local_shipping);
var _iconsLocalTaxi =
    MXFunctionInvoke("Icons.local_taxi", () => Icons.local_taxi);
var _iconsLocationCity =
    MXFunctionInvoke("Icons.location_city", () => Icons.location_city);
var _iconsLocationDisabled =
    MXFunctionInvoke("Icons.location_disabled", () => Icons.location_disabled);
var _iconsLocationOff =
    MXFunctionInvoke("Icons.location_off", () => Icons.location_off);
var _iconsLocationOn =
    MXFunctionInvoke("Icons.location_on", () => Icons.location_on);
var _iconsLocationSearching = MXFunctionInvoke(
    "Icons.location_searching", () => Icons.location_searching);
var _iconsLock = MXFunctionInvoke("Icons.lock", () => Icons.lock);
var _iconsLockOpen = MXFunctionInvoke("Icons.lock_open", () => Icons.lock_open);
var _iconsLockOutline =
    MXFunctionInvoke("Icons.lock_outline", () => Icons.lock_outline);
var _iconsLooks = MXFunctionInvoke("Icons.looks", () => Icons.looks);
var _iconsLooks3 = MXFunctionInvoke("Icons.looks_3", () => Icons.looks_3);
var _iconsLooks4 = MXFunctionInvoke("Icons.looks_4", () => Icons.looks_4);
var _iconsLooks5 = MXFunctionInvoke("Icons.looks_5", () => Icons.looks_5);
var _iconsLooks6 = MXFunctionInvoke("Icons.looks_6", () => Icons.looks_6);
var _iconsLooksOne = MXFunctionInvoke("Icons.looks_one", () => Icons.looks_one);
var _iconsLooksTwo = MXFunctionInvoke("Icons.looks_two", () => Icons.looks_two);
var _iconsLoop = MXFunctionInvoke("Icons.loop", () => Icons.loop);
var _iconsLoupe = MXFunctionInvoke("Icons.loupe", () => Icons.loupe);
var _iconsLowPriority =
    MXFunctionInvoke("Icons.low_priority", () => Icons.low_priority);
var _iconsLoyalty = MXFunctionInvoke("Icons.loyalty", () => Icons.loyalty);
var _iconsMail = MXFunctionInvoke("Icons.mail", () => Icons.mail);
var _iconsMailOutline =
    MXFunctionInvoke("Icons.mail_outline", () => Icons.mail_outline);
var _iconsMap = MXFunctionInvoke("Icons.map", () => Icons.map);
var _iconsMarkunread =
    MXFunctionInvoke("Icons.markunread", () => Icons.markunread);
var _iconsMarkunreadMailbox = MXFunctionInvoke(
    "Icons.markunread_mailbox", () => Icons.markunread_mailbox);
var _iconsMaximize = MXFunctionInvoke("Icons.maximize", () => Icons.maximize);
var _iconsMemory = MXFunctionInvoke("Icons.memory", () => Icons.memory);
var _iconsMenu = MXFunctionInvoke("Icons.menu", () => Icons.menu);
var _iconsMergeType =
    MXFunctionInvoke("Icons.merge_type", () => Icons.merge_type);
var _iconsMessage = MXFunctionInvoke("Icons.message", () => Icons.message);
var _iconsMic = MXFunctionInvoke("Icons.mic", () => Icons.mic);
var _iconsMicNone = MXFunctionInvoke("Icons.mic_none", () => Icons.mic_none);
var _iconsMicOff = MXFunctionInvoke("Icons.mic_off", () => Icons.mic_off);
var _iconsMinimize = MXFunctionInvoke("Icons.minimize", () => Icons.minimize);
var _iconsMissedVideoCall =
    MXFunctionInvoke("Icons.missed_video_call", () => Icons.missed_video_call);
var _iconsMms = MXFunctionInvoke("Icons.mms", () => Icons.mms);
var _iconsMobileScreenShare = MXFunctionInvoke(
    "Icons.mobile_screen_share", () => Icons.mobile_screen_share);
var _iconsModeComment =
    MXFunctionInvoke("Icons.mode_comment", () => Icons.mode_comment);
var _iconsModeEdit = MXFunctionInvoke("Icons.mode_edit", () => Icons.mode_edit);
var _iconsMonetizationOn =
    MXFunctionInvoke("Icons.monetization_on", () => Icons.monetization_on);
var _iconsMoneyOff = MXFunctionInvoke("Icons.money_off", () => Icons.money_off);
var _iconsMonochromePhotos =
    MXFunctionInvoke("Icons.monochrome_photos", () => Icons.monochrome_photos);
var _iconsMood = MXFunctionInvoke("Icons.mood", () => Icons.mood);
var _iconsMoodBad = MXFunctionInvoke("Icons.mood_bad", () => Icons.mood_bad);
var _iconsMore = MXFunctionInvoke("Icons.more", () => Icons.more);
var _iconsMoreHoriz =
    MXFunctionInvoke("Icons.more_horiz", () => Icons.more_horiz);
var _iconsMoreVert = MXFunctionInvoke("Icons.more_vert", () => Icons.more_vert);
var _iconsMotorcycle =
    MXFunctionInvoke("Icons.motorcycle", () => Icons.motorcycle);
var _iconsMouse = MXFunctionInvoke("Icons.mouse", () => Icons.mouse);
var _iconsMoveToInbox =
    MXFunctionInvoke("Icons.move_to_inbox", () => Icons.move_to_inbox);
var _iconsMovie = MXFunctionInvoke("Icons.movie", () => Icons.movie);
var _iconsMovieCreation =
    MXFunctionInvoke("Icons.movie_creation", () => Icons.movie_creation);
var _iconsMovieFilter =
    MXFunctionInvoke("Icons.movie_filter", () => Icons.movie_filter);
var _iconsMultilineChart =
    MXFunctionInvoke("Icons.multiline_chart", () => Icons.multiline_chart);
var _iconsMusicNote =
    MXFunctionInvoke("Icons.music_note", () => Icons.music_note);
var _iconsMusicVideo =
    MXFunctionInvoke("Icons.music_video", () => Icons.music_video);
var _iconsMyLocation =
    MXFunctionInvoke("Icons.my_location", () => Icons.my_location);
var _iconsNature = MXFunctionInvoke("Icons.nature", () => Icons.nature);
var _iconsNaturePeople =
    MXFunctionInvoke("Icons.nature_people", () => Icons.nature_people);
var _iconsNavigateBefore =
    MXFunctionInvoke("Icons.navigate_before", () => Icons.navigate_before);
var _iconsNavigateNext =
    MXFunctionInvoke("Icons.navigate_next", () => Icons.navigate_next);
var _iconsNavigation =
    MXFunctionInvoke("Icons.navigation", () => Icons.navigation);
var _iconsNearMe = MXFunctionInvoke("Icons.near_me", () => Icons.near_me);
var _iconsNetworkCell =
    MXFunctionInvoke("Icons.network_cell", () => Icons.network_cell);
var _iconsNetworkCheck =
    MXFunctionInvoke("Icons.network_check", () => Icons.network_check);
var _iconsNetworkLocked =
    MXFunctionInvoke("Icons.network_locked", () => Icons.network_locked);
var _iconsNetworkWifi =
    MXFunctionInvoke("Icons.network_wifi", () => Icons.network_wifi);
var _iconsNewReleases =
    MXFunctionInvoke("Icons.new_releases", () => Icons.new_releases);
var _iconsNextWeek = MXFunctionInvoke("Icons.next_week", () => Icons.next_week);
var _iconsNfc = MXFunctionInvoke("Icons.nfc", () => Icons.nfc);
var _iconsNoEncryption =
    MXFunctionInvoke("Icons.no_encryption", () => Icons.no_encryption);
var _iconsNoSim = MXFunctionInvoke("Icons.no_sim", () => Icons.no_sim);
var _iconsNotInterested =
    MXFunctionInvoke("Icons.not_interested", () => Icons.not_interested);
var _iconsNotListedLocation = MXFunctionInvoke(
    "Icons.not_listed_location", () => Icons.not_listed_location);
var _iconsNote = MXFunctionInvoke("Icons.note", () => Icons.note);
var _iconsNoteAdd = MXFunctionInvoke("Icons.note_add", () => Icons.note_add);
var _iconsNotificationImportant = MXFunctionInvoke(
    "Icons.notification_important", () => Icons.notification_important);
var _iconsNotifications =
    MXFunctionInvoke("Icons.notifications", () => Icons.notifications);
var _iconsNotificationsActive = MXFunctionInvoke(
    "Icons.notifications_active", () => Icons.notifications_active);
var _iconsNotificationsNone = MXFunctionInvoke(
    "Icons.notifications_none", () => Icons.notifications_none);
var _iconsNotificationsOff =
    MXFunctionInvoke("Icons.notifications_off", () => Icons.notifications_off);
var _iconsNotificationsPaused = MXFunctionInvoke(
    "Icons.notifications_paused", () => Icons.notifications_paused);
var _iconsOfflineBolt =
    MXFunctionInvoke("Icons.offline_bolt", () => Icons.offline_bolt);
var _iconsOfflinePin =
    MXFunctionInvoke("Icons.offline_pin", () => Icons.offline_pin);
var _iconsOndemandVideo =
    MXFunctionInvoke("Icons.ondemand_video", () => Icons.ondemand_video);
var _iconsOpacity = MXFunctionInvoke("Icons.opacity", () => Icons.opacity);
var _iconsOpenInBrowser =
    MXFunctionInvoke("Icons.open_in_browser", () => Icons.open_in_browser);
var _iconsOpenInNew =
    MXFunctionInvoke("Icons.open_in_new", () => Icons.open_in_new);
var _iconsOpenWith = MXFunctionInvoke("Icons.open_with", () => Icons.open_with);
var _iconsOutlinedFlag =
    MXFunctionInvoke("Icons.outlined_flag", () => Icons.outlined_flag);
var _iconsPages = MXFunctionInvoke("Icons.pages", () => Icons.pages);
var _iconsPageview = MXFunctionInvoke("Icons.pageview", () => Icons.pageview);
var _iconsPalette = MXFunctionInvoke("Icons.palette", () => Icons.palette);
var _iconsPanTool = MXFunctionInvoke("Icons.pan_tool", () => Icons.pan_tool);
var _iconsPanorama = MXFunctionInvoke("Icons.panorama", () => Icons.panorama);
var _iconsPanoramaFishEye =
    MXFunctionInvoke("Icons.panorama_fish_eye", () => Icons.panorama_fish_eye);
var _iconsPanoramaHorizontal = MXFunctionInvoke(
    "Icons.panorama_horizontal", () => Icons.panorama_horizontal);
var _iconsPanoramaVertical =
    MXFunctionInvoke("Icons.panorama_vertical", () => Icons.panorama_vertical);
var _iconsPanoramaWideAngle = MXFunctionInvoke(
    "Icons.panorama_wide_angle", () => Icons.panorama_wide_angle);
var _iconsPartyMode =
    MXFunctionInvoke("Icons.party_mode", () => Icons.party_mode);
var _iconsPause = MXFunctionInvoke("Icons.pause", () => Icons.pause);
var _iconsPauseCircleFilled = MXFunctionInvoke(
    "Icons.pause_circle_filled", () => Icons.pause_circle_filled);
var _iconsPauseCircleOutline = MXFunctionInvoke(
    "Icons.pause_circle_outline", () => Icons.pause_circle_outline);
var _iconsPayment = MXFunctionInvoke("Icons.payment", () => Icons.payment);
var _iconsPeople = MXFunctionInvoke("Icons.people", () => Icons.people);
var _iconsPeopleOutline =
    MXFunctionInvoke("Icons.people_outline", () => Icons.people_outline);
var _iconsPermCameraMic =
    MXFunctionInvoke("Icons.perm_camera_mic", () => Icons.perm_camera_mic);
var _iconsPermContactCalendar = MXFunctionInvoke(
    "Icons.perm_contact_calendar", () => Icons.perm_contact_calendar);
var _iconsPermDataSetting =
    MXFunctionInvoke("Icons.perm_data_setting", () => Icons.perm_data_setting);
var _iconsPermDeviceInformation = MXFunctionInvoke(
    "Icons.perm_device_information", () => Icons.perm_device_information);
var _iconsPermIdentity =
    MXFunctionInvoke("Icons.perm_identity", () => Icons.perm_identity);
var _iconsPermMedia =
    MXFunctionInvoke("Icons.perm_media", () => Icons.perm_media);
var _iconsPermPhoneMsg =
    MXFunctionInvoke("Icons.perm_phone_msg", () => Icons.perm_phone_msg);
var _iconsPermScanWifi =
    MXFunctionInvoke("Icons.perm_scan_wifi", () => Icons.perm_scan_wifi);
var _iconsPerson = MXFunctionInvoke("Icons.person", () => Icons.person);
var _iconsPersonAdd =
    MXFunctionInvoke("Icons.person_add", () => Icons.person_add);
var _iconsPersonOutline =
    MXFunctionInvoke("Icons.person_outline", () => Icons.person_outline);
var _iconsPersonPin =
    MXFunctionInvoke("Icons.person_pin", () => Icons.person_pin);
var _iconsPersonPinCircle =
    MXFunctionInvoke("Icons.person_pin_circle", () => Icons.person_pin_circle);
var _iconsPersonalVideo =
    MXFunctionInvoke("Icons.personal_video", () => Icons.personal_video);
var _iconsPets = MXFunctionInvoke("Icons.pets", () => Icons.pets);
var _iconsPhone = MXFunctionInvoke("Icons.phone", () => Icons.phone);
var _iconsPhoneAndroid =
    MXFunctionInvoke("Icons.phone_android", () => Icons.phone_android);
var _iconsPhoneBluetoothSpeaker = MXFunctionInvoke(
    "Icons.phone_bluetooth_speaker", () => Icons.phone_bluetooth_speaker);
var _iconsPhoneForwarded =
    MXFunctionInvoke("Icons.phone_forwarded", () => Icons.phone_forwarded);
var _iconsPhoneInTalk =
    MXFunctionInvoke("Icons.phone_in_talk", () => Icons.phone_in_talk);
var _iconsPhoneIphone =
    MXFunctionInvoke("Icons.phone_iphone", () => Icons.phone_iphone);
var _iconsPhoneLocked =
    MXFunctionInvoke("Icons.phone_locked", () => Icons.phone_locked);
var _iconsPhoneMissed =
    MXFunctionInvoke("Icons.phone_missed", () => Icons.phone_missed);
var _iconsPhonePaused =
    MXFunctionInvoke("Icons.phone_paused", () => Icons.phone_paused);
var _iconsPhonelink =
    MXFunctionInvoke("Icons.phonelink", () => Icons.phonelink);
var _iconsPhonelinkErase =
    MXFunctionInvoke("Icons.phonelink_erase", () => Icons.phonelink_erase);
var _iconsPhonelinkLock =
    MXFunctionInvoke("Icons.phonelink_lock", () => Icons.phonelink_lock);
var _iconsPhonelinkOff =
    MXFunctionInvoke("Icons.phonelink_off", () => Icons.phonelink_off);
var _iconsPhonelinkRing =
    MXFunctionInvoke("Icons.phonelink_ring", () => Icons.phonelink_ring);
var _iconsPhonelinkSetup =
    MXFunctionInvoke("Icons.phonelink_setup", () => Icons.phonelink_setup);
var _iconsPhoto = MXFunctionInvoke("Icons.photo", () => Icons.photo);
var _iconsPhotoAlbum =
    MXFunctionInvoke("Icons.photo_album", () => Icons.photo_album);
var _iconsPhotoCamera =
    MXFunctionInvoke("Icons.photo_camera", () => Icons.photo_camera);
var _iconsPhotoFilter =
    MXFunctionInvoke("Icons.photo_filter", () => Icons.photo_filter);
var _iconsPhotoLibrary =
    MXFunctionInvoke("Icons.photo_library", () => Icons.photo_library);
var _iconsPhotoSizeSelectActual = MXFunctionInvoke(
    "Icons.photo_size_select_actual", () => Icons.photo_size_select_actual);
var _iconsPhotoSizeSelectLarge = MXFunctionInvoke(
    "Icons.photo_size_select_large", () => Icons.photo_size_select_large);
var _iconsPhotoSizeSelectSmall = MXFunctionInvoke(
    "Icons.photo_size_select_small", () => Icons.photo_size_select_small);
var _iconsPictureAsPdf =
    MXFunctionInvoke("Icons.picture_as_pdf", () => Icons.picture_as_pdf);
var _iconsPictureInPicture = MXFunctionInvoke(
    "Icons.picture_in_picture", () => Icons.picture_in_picture);
var _iconsPictureInPictureAlt = MXFunctionInvoke(
    "Icons.picture_in_picture_alt", () => Icons.picture_in_picture_alt);
var _iconsPieChart = MXFunctionInvoke("Icons.pie_chart", () => Icons.pie_chart);
var _iconsPieChartOutlined = MXFunctionInvoke(
    "Icons.pie_chart_outlined", () => Icons.pie_chart_outlined);
var _iconsPinDrop = MXFunctionInvoke("Icons.pin_drop", () => Icons.pin_drop);
var _iconsPlace = MXFunctionInvoke("Icons.place", () => Icons.place);
var _iconsPlayArrow =
    MXFunctionInvoke("Icons.play_arrow", () => Icons.play_arrow);
var _iconsPlayCircleFilled = MXFunctionInvoke(
    "Icons.play_circle_filled", () => Icons.play_circle_filled);
var _iconsPlayCircleOutline = MXFunctionInvoke(
    "Icons.play_circle_outline", () => Icons.play_circle_outline);
var _iconsPlayForWork =
    MXFunctionInvoke("Icons.play_for_work", () => Icons.play_for_work);
var _iconsPlaylistAdd =
    MXFunctionInvoke("Icons.playlist_add", () => Icons.playlist_add);
var _iconsPlaylistAddCheck = MXFunctionInvoke(
    "Icons.playlist_add_check", () => Icons.playlist_add_check);
var _iconsPlaylistPlay =
    MXFunctionInvoke("Icons.playlist_play", () => Icons.playlist_play);
var _iconsPlusOne = MXFunctionInvoke("Icons.plus_one", () => Icons.plus_one);
var _iconsPoll = MXFunctionInvoke("Icons.poll", () => Icons.poll);
var _iconsPolymer = MXFunctionInvoke("Icons.polymer", () => Icons.polymer);
var _iconsPool = MXFunctionInvoke("Icons.pool", () => Icons.pool);
var _iconsPortableWifiOff =
    MXFunctionInvoke("Icons.portable_wifi_off", () => Icons.portable_wifi_off);
var _iconsPortrait = MXFunctionInvoke("Icons.portrait", () => Icons.portrait);
var _iconsPower = MXFunctionInvoke("Icons.power", () => Icons.power);
var _iconsPowerInput =
    MXFunctionInvoke("Icons.power_input", () => Icons.power_input);
var _iconsPowerSettingsNew = MXFunctionInvoke(
    "Icons.power_settings_new", () => Icons.power_settings_new);
var _iconsPregnantWoman =
    MXFunctionInvoke("Icons.pregnant_woman", () => Icons.pregnant_woman);
var _iconsPresentToAll =
    MXFunctionInvoke("Icons.present_to_all", () => Icons.present_to_all);
var _iconsPrint = MXFunctionInvoke("Icons.print", () => Icons.print);
var _iconsPriorityHigh =
    MXFunctionInvoke("Icons.priority_high", () => Icons.priority_high);
var _iconsPublic = MXFunctionInvoke("Icons.public", () => Icons.public);
var _iconsPublish = MXFunctionInvoke("Icons.publish", () => Icons.publish);
var _iconsQueryBuilder =
    MXFunctionInvoke("Icons.query_builder", () => Icons.query_builder);
var _iconsQuestionAnswer =
    MXFunctionInvoke("Icons.question_answer", () => Icons.question_answer);
var _iconsQueue = MXFunctionInvoke("Icons.queue", () => Icons.queue);
var _iconsQueueMusic =
    MXFunctionInvoke("Icons.queue_music", () => Icons.queue_music);
var _iconsQueuePlayNext =
    MXFunctionInvoke("Icons.queue_play_next", () => Icons.queue_play_next);
var _iconsRadio = MXFunctionInvoke("Icons.radio", () => Icons.radio);
var _iconsRadioButtonChecked = MXFunctionInvoke(
    "Icons.radio_button_checked", () => Icons.radio_button_checked);
var _iconsRadioButtonUnchecked = MXFunctionInvoke(
    "Icons.radio_button_unchecked", () => Icons.radio_button_unchecked);
var _iconsRateReview =
    MXFunctionInvoke("Icons.rate_review", () => Icons.rate_review);
var _iconsReceipt = MXFunctionInvoke("Icons.receipt", () => Icons.receipt);
var _iconsRecentActors =
    MXFunctionInvoke("Icons.recent_actors", () => Icons.recent_actors);
var _iconsRecordVoiceOver =
    MXFunctionInvoke("Icons.record_voice_over", () => Icons.record_voice_over);
var _iconsRedeem = MXFunctionInvoke("Icons.redeem", () => Icons.redeem);
var _iconsRedo = MXFunctionInvoke("Icons.redo", () => Icons.redo);
var _iconsRefresh = MXFunctionInvoke("Icons.refresh", () => Icons.refresh);
var _iconsRemove = MXFunctionInvoke("Icons.remove", () => Icons.remove);
var _iconsRemoveCircle =
    MXFunctionInvoke("Icons.remove_circle", () => Icons.remove_circle);
var _iconsRemoveCircleOutline = MXFunctionInvoke(
    "Icons.remove_circle_outline", () => Icons.remove_circle_outline);
var _iconsRemoveFromQueue =
    MXFunctionInvoke("Icons.remove_from_queue", () => Icons.remove_from_queue);
var _iconsRemoveRedEye =
    MXFunctionInvoke("Icons.remove_red_eye", () => Icons.remove_red_eye);
var _iconsRemoveShoppingCart = MXFunctionInvoke(
    "Icons.remove_shopping_cart", () => Icons.remove_shopping_cart);
var _iconsReorder = MXFunctionInvoke("Icons.reorder", () => Icons.reorder);
var _iconsRepeat = MXFunctionInvoke("Icons.repeat", () => Icons.repeat);
var _iconsRepeatOne =
    MXFunctionInvoke("Icons.repeat_one", () => Icons.repeat_one);
var _iconsReplay = MXFunctionInvoke("Icons.replay", () => Icons.replay);
var _iconsReplay10 = MXFunctionInvoke("Icons.replay_10", () => Icons.replay_10);
var _iconsReplay30 = MXFunctionInvoke("Icons.replay_30", () => Icons.replay_30);
var _iconsReplay5 = MXFunctionInvoke("Icons.replay_5", () => Icons.replay_5);
var _iconsReply = MXFunctionInvoke("Icons.reply", () => Icons.reply);
var _iconsReplyAll = MXFunctionInvoke("Icons.reply_all", () => Icons.reply_all);
var _iconsReport = MXFunctionInvoke("Icons.report", () => Icons.report);
var _iconsReportOff =
    MXFunctionInvoke("Icons.report_off", () => Icons.report_off);
var _iconsReportProblem =
    MXFunctionInvoke("Icons.report_problem", () => Icons.report_problem);
var _iconsRestaurant =
    MXFunctionInvoke("Icons.restaurant", () => Icons.restaurant);
var _iconsRestaurantMenu =
    MXFunctionInvoke("Icons.restaurant_menu", () => Icons.restaurant_menu);
var _iconsRestore = MXFunctionInvoke("Icons.restore", () => Icons.restore);
var _iconsRestoreFromTrash = MXFunctionInvoke(
    "Icons.restore_from_trash", () => Icons.restore_from_trash);
var _iconsRestorePage =
    MXFunctionInvoke("Icons.restore_page", () => Icons.restore_page);
var _iconsRingVolume =
    MXFunctionInvoke("Icons.ring_volume", () => Icons.ring_volume);
var _iconsRoom = MXFunctionInvoke("Icons.room", () => Icons.room);
var _iconsRoomService =
    MXFunctionInvoke("Icons.room_service", () => Icons.room_service);
var _iconsRotate90DegreesCcw = MXFunctionInvoke(
    "Icons.rotate_90_degrees_ccw", () => Icons.rotate_90_degrees_ccw);
var _iconsRotateLeft =
    MXFunctionInvoke("Icons.rotate_left", () => Icons.rotate_left);
var _iconsRotateRight =
    MXFunctionInvoke("Icons.rotate_right", () => Icons.rotate_right);
var _iconsRoundedCorner =
    MXFunctionInvoke("Icons.rounded_corner", () => Icons.rounded_corner);
var _iconsRouter = MXFunctionInvoke("Icons.router", () => Icons.router);
var _iconsRowing = MXFunctionInvoke("Icons.rowing", () => Icons.rowing);
var _iconsRssFeed = MXFunctionInvoke("Icons.rss_feed", () => Icons.rss_feed);
var _iconsRvHookup = MXFunctionInvoke("Icons.rv_hookup", () => Icons.rv_hookup);
var _iconsSatellite =
    MXFunctionInvoke("Icons.satellite", () => Icons.satellite);
var _iconsSave = MXFunctionInvoke("Icons.save", () => Icons.save);
var _iconsSaveAlt = MXFunctionInvoke("Icons.save_alt", () => Icons.save_alt);
var _iconsScanner = MXFunctionInvoke("Icons.scanner", () => Icons.scanner);
var _iconsScatterPlot =
    MXFunctionInvoke("Icons.scatter_plot", () => Icons.scatter_plot);
var _iconsSchedule = MXFunctionInvoke("Icons.schedule", () => Icons.schedule);
var _iconsSchool = MXFunctionInvoke("Icons.school", () => Icons.school);
var _iconsScore = MXFunctionInvoke("Icons.score", () => Icons.score);
var _iconsScreenLockLandscape = MXFunctionInvoke(
    "Icons.screen_lock_landscape", () => Icons.screen_lock_landscape);
var _iconsScreenLockPortrait = MXFunctionInvoke(
    "Icons.screen_lock_portrait", () => Icons.screen_lock_portrait);
var _iconsScreenLockRotation = MXFunctionInvoke(
    "Icons.screen_lock_rotation", () => Icons.screen_lock_rotation);
var _iconsScreenRotation =
    MXFunctionInvoke("Icons.screen_rotation", () => Icons.screen_rotation);
var _iconsScreenShare =
    MXFunctionInvoke("Icons.screen_share", () => Icons.screen_share);
var _iconsSdCard = MXFunctionInvoke("Icons.sd_card", () => Icons.sd_card);
var _iconsSdStorage =
    MXFunctionInvoke("Icons.sd_storage", () => Icons.sd_storage);
var _iconsSearch = MXFunctionInvoke("Icons.search", () => Icons.search);
var _iconsSecurity = MXFunctionInvoke("Icons.security", () => Icons.security);
var _iconsSelectAll =
    MXFunctionInvoke("Icons.select_all", () => Icons.select_all);
var _iconsSend = MXFunctionInvoke("Icons.send", () => Icons.send);
var _iconsSentimentDissatisfied = MXFunctionInvoke(
    "Icons.sentiment_dissatisfied", () => Icons.sentiment_dissatisfied);
var _iconsSentimentNeutral =
    MXFunctionInvoke("Icons.sentiment_neutral", () => Icons.sentiment_neutral);
var _iconsSentimentSatisfied = MXFunctionInvoke(
    "Icons.sentiment_satisfied", () => Icons.sentiment_satisfied);
var _iconsSentimentVeryDissatisfied = MXFunctionInvoke(
    "Icons.sentiment_very_dissatisfied",
    () => Icons.sentiment_very_dissatisfied);
var _iconsSentimentVerySatisfied = MXFunctionInvoke(
    "Icons.sentiment_very_satisfied", () => Icons.sentiment_very_satisfied);
var _iconsSettings = MXFunctionInvoke("Icons.settings", () => Icons.settings);
var _iconsSettingsApplications = MXFunctionInvoke(
    "Icons.settings_applications", () => Icons.settings_applications);
var _iconsSettingsBackupRestore = MXFunctionInvoke(
    "Icons.settings_backup_restore", () => Icons.settings_backup_restore);
var _iconsSettingsBluetooth = MXFunctionInvoke(
    "Icons.settings_bluetooth", () => Icons.settings_bluetooth);
var _iconsSettingsBrightness = MXFunctionInvoke(
    "Icons.settings_brightness", () => Icons.settings_brightness);
var _iconsSettingsCell =
    MXFunctionInvoke("Icons.settings_cell", () => Icons.settings_cell);
var _iconsSettingsEthernet =
    MXFunctionInvoke("Icons.settings_ethernet", () => Icons.settings_ethernet);
var _iconsSettingsInputAntenna = MXFunctionInvoke(
    "Icons.settings_input_antenna", () => Icons.settings_input_antenna);
var _iconsSettingsInputComponent = MXFunctionInvoke(
    "Icons.settings_input_component", () => Icons.settings_input_component);
var _iconsSettingsInputComposite = MXFunctionInvoke(
    "Icons.settings_input_composite", () => Icons.settings_input_composite);
var _iconsSettingsInputHdmi = MXFunctionInvoke(
    "Icons.settings_input_hdmi", () => Icons.settings_input_hdmi);
var _iconsSettingsInputSvideo = MXFunctionInvoke(
    "Icons.settings_input_svideo", () => Icons.settings_input_svideo);
var _iconsSettingsOverscan =
    MXFunctionInvoke("Icons.settings_overscan", () => Icons.settings_overscan);
var _iconsSettingsPhone =
    MXFunctionInvoke("Icons.settings_phone", () => Icons.settings_phone);
var _iconsSettingsPower =
    MXFunctionInvoke("Icons.settings_power", () => Icons.settings_power);
var _iconsSettingsRemote =
    MXFunctionInvoke("Icons.settings_remote", () => Icons.settings_remote);
var _iconsSettingsSystemDaydream = MXFunctionInvoke(
    "Icons.settings_system_daydream", () => Icons.settings_system_daydream);
var _iconsSettingsVoice =
    MXFunctionInvoke("Icons.settings_voice", () => Icons.settings_voice);
var _iconsShare = MXFunctionInvoke("Icons.share", () => Icons.share);
var _iconsShop = MXFunctionInvoke("Icons.shop", () => Icons.shop);
var _iconsShopTwo = MXFunctionInvoke("Icons.shop_two", () => Icons.shop_two);
var _iconsShoppingBasket =
    MXFunctionInvoke("Icons.shopping_basket", () => Icons.shopping_basket);
var _iconsShoppingCart =
    MXFunctionInvoke("Icons.shopping_cart", () => Icons.shopping_cart);
var _iconsShortText =
    MXFunctionInvoke("Icons.short_text", () => Icons.short_text);
var _iconsShowChart =
    MXFunctionInvoke("Icons.show_chart", () => Icons.show_chart);
var _iconsShuffle = MXFunctionInvoke("Icons.shuffle", () => Icons.shuffle);
var _iconsShutterSpeed =
    MXFunctionInvoke("Icons.shutter_speed", () => Icons.shutter_speed);
var _iconsSignalCellular4Bar = MXFunctionInvoke(
    "Icons.signal_cellular_4_bar", () => Icons.signal_cellular_4_bar);
var _iconsSignalCellularConnectedNoInternet4Bar = MXFunctionInvoke(
    "Icons.signal_cellular_connected_no_internet_4_bar",
    () => Icons.signal_cellular_connected_no_internet_4_bar);
var _iconsSignalCellularNoSim = MXFunctionInvoke(
    "Icons.signal_cellular_no_sim", () => Icons.signal_cellular_no_sim);
var _iconsSignalCellularNull = MXFunctionInvoke(
    "Icons.signal_cellular_null", () => Icons.signal_cellular_null);
var _iconsSignalCellularOff = MXFunctionInvoke(
    "Icons.signal_cellular_off", () => Icons.signal_cellular_off);
var _iconsSignalWifi4Bar =
    MXFunctionInvoke("Icons.signal_wifi_4_bar", () => Icons.signal_wifi_4_bar);
var _iconsSignalWifi4BarLock = MXFunctionInvoke(
    "Icons.signal_wifi_4_bar_lock", () => Icons.signal_wifi_4_bar_lock);
var _iconsSignalWifiOff =
    MXFunctionInvoke("Icons.signal_wifi_off", () => Icons.signal_wifi_off);
var _iconsSimCard = MXFunctionInvoke("Icons.sim_card", () => Icons.sim_card);
var _iconsSimCardAlert =
    MXFunctionInvoke("Icons.sim_card_alert", () => Icons.sim_card_alert);
var _iconsSkipNext = MXFunctionInvoke("Icons.skip_next", () => Icons.skip_next);
var _iconsSkipPrevious =
    MXFunctionInvoke("Icons.skip_previous", () => Icons.skip_previous);
var _iconsSlideshow =
    MXFunctionInvoke("Icons.slideshow", () => Icons.slideshow);
var _iconsSlowMotionVideo =
    MXFunctionInvoke("Icons.slow_motion_video", () => Icons.slow_motion_video);
var _iconsSmartphone =
    MXFunctionInvoke("Icons.smartphone", () => Icons.smartphone);
var _iconsSmokeFree =
    MXFunctionInvoke("Icons.smoke_free", () => Icons.smoke_free);
var _iconsSmokingRooms =
    MXFunctionInvoke("Icons.smoking_rooms", () => Icons.smoking_rooms);
var _iconsSms = MXFunctionInvoke("Icons.sms", () => Icons.sms);
var _iconsSmsFailed =
    MXFunctionInvoke("Icons.sms_failed", () => Icons.sms_failed);
var _iconsSnooze = MXFunctionInvoke("Icons.snooze", () => Icons.snooze);
var _iconsSort = MXFunctionInvoke("Icons.sort", () => Icons.sort);
var _iconsSortByAlpha =
    MXFunctionInvoke("Icons.sort_by_alpha", () => Icons.sort_by_alpha);
var _iconsSpa = MXFunctionInvoke("Icons.spa", () => Icons.spa);
var _iconsSpaceBar = MXFunctionInvoke("Icons.space_bar", () => Icons.space_bar);
var _iconsSpeaker = MXFunctionInvoke("Icons.speaker", () => Icons.speaker);
var _iconsSpeakerGroup =
    MXFunctionInvoke("Icons.speaker_group", () => Icons.speaker_group);
var _iconsSpeakerNotes =
    MXFunctionInvoke("Icons.speaker_notes", () => Icons.speaker_notes);
var _iconsSpeakerNotesOff =
    MXFunctionInvoke("Icons.speaker_notes_off", () => Icons.speaker_notes_off);
var _iconsSpeakerPhone =
    MXFunctionInvoke("Icons.speaker_phone", () => Icons.speaker_phone);
var _iconsSpellcheck =
    MXFunctionInvoke("Icons.spellcheck", () => Icons.spellcheck);
var _iconsStar = MXFunctionInvoke("Icons.star", () => Icons.star);
var _iconsStarBorder =
    MXFunctionInvoke("Icons.star_border", () => Icons.star_border);
var _iconsStarHalf = MXFunctionInvoke("Icons.star_half", () => Icons.star_half);
var _iconsStars = MXFunctionInvoke("Icons.stars", () => Icons.stars);
var _iconsStayCurrentLandscape = MXFunctionInvoke(
    "Icons.stay_current_landscape", () => Icons.stay_current_landscape);
var _iconsStayCurrentPortrait = MXFunctionInvoke(
    "Icons.stay_current_portrait", () => Icons.stay_current_portrait);
var _iconsStayPrimaryLandscape = MXFunctionInvoke(
    "Icons.stay_primary_landscape", () => Icons.stay_primary_landscape);
var _iconsStayPrimaryPortrait = MXFunctionInvoke(
    "Icons.stay_primary_portrait", () => Icons.stay_primary_portrait);
var _iconsStop = MXFunctionInvoke("Icons.stop", () => Icons.stop);
var _iconsStopScreenShare =
    MXFunctionInvoke("Icons.stop_screen_share", () => Icons.stop_screen_share);
var _iconsStorage = MXFunctionInvoke("Icons.storage", () => Icons.storage);
var _iconsStore = MXFunctionInvoke("Icons.store", () => Icons.store);
var _iconsStoreMallDirectory = MXFunctionInvoke(
    "Icons.store_mall_directory", () => Icons.store_mall_directory);
var _iconsStraighten =
    MXFunctionInvoke("Icons.straighten", () => Icons.straighten);
var _iconsStreetview =
    MXFunctionInvoke("Icons.streetview", () => Icons.streetview);
var _iconsStrikethroughS =
    MXFunctionInvoke("Icons.strikethrough_s", () => Icons.strikethrough_s);
var _iconsStyle = MXFunctionInvoke("Icons.style", () => Icons.style);
var _iconsSubdirectoryArrowLeft = MXFunctionInvoke(
    "Icons.subdirectory_arrow_left", () => Icons.subdirectory_arrow_left);
var _iconsSubdirectoryArrowRight = MXFunctionInvoke(
    "Icons.subdirectory_arrow_right", () => Icons.subdirectory_arrow_right);
var _iconsSubject = MXFunctionInvoke("Icons.subject", () => Icons.subject);
var _iconsSubscriptions =
    MXFunctionInvoke("Icons.subscriptions", () => Icons.subscriptions);
var _iconsSubtitles =
    MXFunctionInvoke("Icons.subtitles", () => Icons.subtitles);
var _iconsSubway = MXFunctionInvoke("Icons.subway", () => Icons.subway);
var _iconsSupervisedUserCircle = MXFunctionInvoke(
    "Icons.supervised_user_circle", () => Icons.supervised_user_circle);
var _iconsSupervisorAccount = MXFunctionInvoke(
    "Icons.supervisor_account", () => Icons.supervisor_account);
var _iconsSurroundSound =
    MXFunctionInvoke("Icons.surround_sound", () => Icons.surround_sound);
var _iconsSwapCalls =
    MXFunctionInvoke("Icons.swap_calls", () => Icons.swap_calls);
var _iconsSwapHoriz =
    MXFunctionInvoke("Icons.swap_horiz", () => Icons.swap_horiz);
var _iconsSwapHorizontalCircle = MXFunctionInvoke(
    "Icons.swap_horizontal_circle", () => Icons.swap_horizontal_circle);
var _iconsSwapVert = MXFunctionInvoke("Icons.swap_vert", () => Icons.swap_vert);
var _iconsSwapVerticalCircle = MXFunctionInvoke(
    "Icons.swap_vertical_circle", () => Icons.swap_vertical_circle);
var _iconsSwitchCamera =
    MXFunctionInvoke("Icons.switch_camera", () => Icons.switch_camera);
var _iconsSwitchVideo =
    MXFunctionInvoke("Icons.switch_video", () => Icons.switch_video);
var _iconsSync = MXFunctionInvoke("Icons.sync", () => Icons.sync);
var _iconsSyncDisabled =
    MXFunctionInvoke("Icons.sync_disabled", () => Icons.sync_disabled);
var _iconsSyncProblem =
    MXFunctionInvoke("Icons.sync_problem", () => Icons.sync_problem);
var _iconsSystemUpdate =
    MXFunctionInvoke("Icons.system_update", () => Icons.system_update);
var _iconsSystemUpdateAlt =
    MXFunctionInvoke("Icons.system_update_alt", () => Icons.system_update_alt);
var _iconsTab = MXFunctionInvoke("Icons.tab", () => Icons.tab);
var _iconsTabUnselected =
    MXFunctionInvoke("Icons.tab_unselected", () => Icons.tab_unselected);
var _iconsTableChart =
    MXFunctionInvoke("Icons.table_chart", () => Icons.table_chart);
var _iconsTablet = MXFunctionInvoke("Icons.tablet", () => Icons.tablet);
var _iconsTabletAndroid =
    MXFunctionInvoke("Icons.tablet_android", () => Icons.tablet_android);
var _iconsTabletMac =
    MXFunctionInvoke("Icons.tablet_mac", () => Icons.tablet_mac);
var _iconsTagFaces = MXFunctionInvoke("Icons.tag_faces", () => Icons.tag_faces);
var _iconsTapAndPlay =
    MXFunctionInvoke("Icons.tap_and_play", () => Icons.tap_and_play);
var _iconsTerrain = MXFunctionInvoke("Icons.terrain", () => Icons.terrain);
var _iconsTextFields =
    MXFunctionInvoke("Icons.text_fields", () => Icons.text_fields);
var _iconsTextFormat =
    MXFunctionInvoke("Icons.text_format", () => Icons.text_format);
var _iconsTextRotateUp =
    MXFunctionInvoke("Icons.text_rotate_up", () => Icons.text_rotate_up);
var _iconsTextRotateVertical = MXFunctionInvoke(
    "Icons.text_rotate_vertical", () => Icons.text_rotate_vertical);
var _iconsTextRotationAngledown = MXFunctionInvoke(
    "Icons.text_rotation_angledown", () => Icons.text_rotation_angledown);
var _iconsTextRotationAngleup = MXFunctionInvoke(
    "Icons.text_rotation_angleup", () => Icons.text_rotation_angleup);
var _iconsTextRotationDown = MXFunctionInvoke(
    "Icons.text_rotation_down", () => Icons.text_rotation_down);
var _iconsTextRotationNone = MXFunctionInvoke(
    "Icons.text_rotation_none", () => Icons.text_rotation_none);
var _iconsTextsms = MXFunctionInvoke("Icons.textsms", () => Icons.textsms);
var _iconsTexture = MXFunctionInvoke("Icons.texture", () => Icons.texture);
var _iconsTheaters = MXFunctionInvoke("Icons.theaters", () => Icons.theaters);
var _iconsThumbDown =
    MXFunctionInvoke("Icons.thumb_down", () => Icons.thumb_down);
var _iconsThumbUp = MXFunctionInvoke("Icons.thumb_up", () => Icons.thumb_up);
var _iconsThumbsUpDown =
    MXFunctionInvoke("Icons.thumbs_up_down", () => Icons.thumbs_up_down);
var _iconsTimeToLeave =
    MXFunctionInvoke("Icons.time_to_leave", () => Icons.time_to_leave);
var _iconsTimelapse =
    MXFunctionInvoke("Icons.timelapse", () => Icons.timelapse);
var _iconsTimeline = MXFunctionInvoke("Icons.timeline", () => Icons.timeline);
var _iconsTimer = MXFunctionInvoke("Icons.timer", () => Icons.timer);
var _iconsTimer10 = MXFunctionInvoke("Icons.timer_10", () => Icons.timer_10);
var _iconsTimer3 = MXFunctionInvoke("Icons.timer_3", () => Icons.timer_3);
var _iconsTimerOff = MXFunctionInvoke("Icons.timer_off", () => Icons.timer_off);
var _iconsTitle = MXFunctionInvoke("Icons.title", () => Icons.title);
var _iconsToc = MXFunctionInvoke("Icons.toc", () => Icons.toc);
var _iconsToday = MXFunctionInvoke("Icons.today", () => Icons.today);
var _iconsToll = MXFunctionInvoke("Icons.toll", () => Icons.toll);
var _iconsTonality = MXFunctionInvoke("Icons.tonality", () => Icons.tonality);
var _iconsTouchApp = MXFunctionInvoke("Icons.touch_app", () => Icons.touch_app);
var _iconsToys = MXFunctionInvoke("Icons.toys", () => Icons.toys);
var _iconsTrackChanges =
    MXFunctionInvoke("Icons.track_changes", () => Icons.track_changes);
var _iconsTraffic = MXFunctionInvoke("Icons.traffic", () => Icons.traffic);
var _iconsTrain = MXFunctionInvoke("Icons.train", () => Icons.train);
var _iconsTram = MXFunctionInvoke("Icons.tram", () => Icons.tram);
var _iconsTransferWithinAStation = MXFunctionInvoke(
    "Icons.transfer_within_a_station", () => Icons.transfer_within_a_station);
var _iconsTransform =
    MXFunctionInvoke("Icons.transform", () => Icons.transform);
var _iconsTransitEnterexit =
    MXFunctionInvoke("Icons.transit_enterexit", () => Icons.transit_enterexit);
var _iconsTranslate =
    MXFunctionInvoke("Icons.translate", () => Icons.translate);
var _iconsTrendingDown =
    MXFunctionInvoke("Icons.trending_down", () => Icons.trending_down);
var _iconsTrendingFlat =
    MXFunctionInvoke("Icons.trending_flat", () => Icons.trending_flat);
var _iconsTrendingUp =
    MXFunctionInvoke("Icons.trending_up", () => Icons.trending_up);
var _iconsTripOrigin =
    MXFunctionInvoke("Icons.trip_origin", () => Icons.trip_origin);
var _iconsTune = MXFunctionInvoke("Icons.tune", () => Icons.tune);
var _iconsTurnedIn = MXFunctionInvoke("Icons.turned_in", () => Icons.turned_in);
var _iconsTurnedInNot =
    MXFunctionInvoke("Icons.turned_in_not", () => Icons.turned_in_not);
var _iconsTv = MXFunctionInvoke("Icons.tv", () => Icons.tv);
var _iconsUnarchive =
    MXFunctionInvoke("Icons.unarchive", () => Icons.unarchive);
var _iconsUndo = MXFunctionInvoke("Icons.undo", () => Icons.undo);
var _iconsUnfoldLess =
    MXFunctionInvoke("Icons.unfold_less", () => Icons.unfold_less);
var _iconsUnfoldMore =
    MXFunctionInvoke("Icons.unfold_more", () => Icons.unfold_more);
var _iconsUpdate = MXFunctionInvoke("Icons.update", () => Icons.update);
var _iconsUsb = MXFunctionInvoke("Icons.usb", () => Icons.usb);
var _iconsVerifiedUser =
    MXFunctionInvoke("Icons.verified_user", () => Icons.verified_user);
var _iconsVerticalAlignBottom = MXFunctionInvoke(
    "Icons.vertical_align_bottom", () => Icons.vertical_align_bottom);
var _iconsVerticalAlignCenter = MXFunctionInvoke(
    "Icons.vertical_align_center", () => Icons.vertical_align_center);
var _iconsVerticalAlignTop = MXFunctionInvoke(
    "Icons.vertical_align_top", () => Icons.vertical_align_top);
var _iconsVibration =
    MXFunctionInvoke("Icons.vibration", () => Icons.vibration);
var _iconsVideoCall =
    MXFunctionInvoke("Icons.video_call", () => Icons.video_call);
var _iconsVideoLabel =
    MXFunctionInvoke("Icons.video_label", () => Icons.video_label);
var _iconsVideoLibrary =
    MXFunctionInvoke("Icons.video_library", () => Icons.video_library);
var _iconsVideocam = MXFunctionInvoke("Icons.videocam", () => Icons.videocam);
var _iconsVideocamOff =
    MXFunctionInvoke("Icons.videocam_off", () => Icons.videocam_off);
var _iconsVideogameAsset =
    MXFunctionInvoke("Icons.videogame_asset", () => Icons.videogame_asset);
var _iconsViewAgenda =
    MXFunctionInvoke("Icons.view_agenda", () => Icons.view_agenda);
var _iconsViewArray =
    MXFunctionInvoke("Icons.view_array", () => Icons.view_array);
var _iconsViewCarousel =
    MXFunctionInvoke("Icons.view_carousel", () => Icons.view_carousel);
var _iconsViewColumn =
    MXFunctionInvoke("Icons.view_column", () => Icons.view_column);
var _iconsViewComfy =
    MXFunctionInvoke("Icons.view_comfy", () => Icons.view_comfy);
var _iconsViewCompact =
    MXFunctionInvoke("Icons.view_compact", () => Icons.view_compact);
var _iconsViewDay = MXFunctionInvoke("Icons.view_day", () => Icons.view_day);
var _iconsViewHeadline =
    MXFunctionInvoke("Icons.view_headline", () => Icons.view_headline);
var _iconsViewList = MXFunctionInvoke("Icons.view_list", () => Icons.view_list);
var _iconsViewModule =
    MXFunctionInvoke("Icons.view_module", () => Icons.view_module);
var _iconsViewQuilt =
    MXFunctionInvoke("Icons.view_quilt", () => Icons.view_quilt);
var _iconsViewStream =
    MXFunctionInvoke("Icons.view_stream", () => Icons.view_stream);
var _iconsViewWeek = MXFunctionInvoke("Icons.view_week", () => Icons.view_week);
var _iconsVignette = MXFunctionInvoke("Icons.vignette", () => Icons.vignette);
var _iconsVisibility =
    MXFunctionInvoke("Icons.visibility", () => Icons.visibility);
var _iconsVisibilityOff =
    MXFunctionInvoke("Icons.visibility_off", () => Icons.visibility_off);
var _iconsVoiceChat =
    MXFunctionInvoke("Icons.voice_chat", () => Icons.voice_chat);
var _iconsVoicemail =
    MXFunctionInvoke("Icons.voicemail", () => Icons.voicemail);
var _iconsVolumeDown =
    MXFunctionInvoke("Icons.volume_down", () => Icons.volume_down);
var _iconsVolumeMute =
    MXFunctionInvoke("Icons.volume_mute", () => Icons.volume_mute);
var _iconsVolumeOff =
    MXFunctionInvoke("Icons.volume_off", () => Icons.volume_off);
var _iconsVolumeUp = MXFunctionInvoke("Icons.volume_up", () => Icons.volume_up);
var _iconsVpnKey = MXFunctionInvoke("Icons.vpn_key", () => Icons.vpn_key);
var _iconsVpnLock = MXFunctionInvoke("Icons.vpn_lock", () => Icons.vpn_lock);
var _iconsWallpaper =
    MXFunctionInvoke("Icons.wallpaper", () => Icons.wallpaper);
var _iconsWarning = MXFunctionInvoke("Icons.warning", () => Icons.warning);
var _iconsWatch = MXFunctionInvoke("Icons.watch", () => Icons.watch);
var _iconsWatchLater =
    MXFunctionInvoke("Icons.watch_later", () => Icons.watch_later);
var _iconsWbAuto = MXFunctionInvoke("Icons.wb_auto", () => Icons.wb_auto);
var _iconsWbCloudy = MXFunctionInvoke("Icons.wb_cloudy", () => Icons.wb_cloudy);
var _iconsWbIncandescent =
    MXFunctionInvoke("Icons.wb_incandescent", () => Icons.wb_incandescent);
var _iconsWbIridescent =
    MXFunctionInvoke("Icons.wb_iridescent", () => Icons.wb_iridescent);
var _iconsWbSunny = MXFunctionInvoke("Icons.wb_sunny", () => Icons.wb_sunny);
var _iconsWc = MXFunctionInvoke("Icons.wc", () => Icons.wc);
var _iconsWeb = MXFunctionInvoke("Icons.web", () => Icons.web);
var _iconsWebAsset = MXFunctionInvoke("Icons.web_asset", () => Icons.web_asset);
var _iconsWeekend = MXFunctionInvoke("Icons.weekend", () => Icons.weekend);
var _iconsWhatshot = MXFunctionInvoke("Icons.whatshot", () => Icons.whatshot);
var _iconsWidgets = MXFunctionInvoke("Icons.widgets", () => Icons.widgets);
var _iconsWifi = MXFunctionInvoke("Icons.wifi", () => Icons.wifi);
var _iconsWifiLock = MXFunctionInvoke("Icons.wifi_lock", () => Icons.wifi_lock);
var _iconsWifiTethering =
    MXFunctionInvoke("Icons.wifi_tethering", () => Icons.wifi_tethering);
var _iconsWork = MXFunctionInvoke("Icons.work", () => Icons.work);
var _iconsWrapText = MXFunctionInvoke("Icons.wrap_text", () => Icons.wrap_text);
var _iconsYoutubeSearchedFor = MXFunctionInvoke(
    "Icons.youtube_searched_for", () => Icons.youtube_searched_for);
var _iconsZoomIn = MXFunctionInvoke("Icons.zoom_in", () => Icons.zoom_in);
var _iconsZoomOut = MXFunctionInvoke("Icons.zoom_out", () => Icons.zoom_out);
var _iconsZoomOutMap =
    MXFunctionInvoke("Icons.zoom_out_map", () => Icons.zoom_out_map);
