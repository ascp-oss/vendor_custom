WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true

# SetupWizard
ifneq ($(WITH_GMS), true)
PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.theme=glif_v4 \
    setupwizard.feature.day_night_mode_enabled=true
endif

ifeq ($(WITH_GMS), true)
PRODUCT_PRODUCT_PROPERTIES += \
    with_google_apps=true

$(call inherit-product, vendor/gms/products/gms.mk)
endif

# Clocks (SystemUI)
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Weather

# Utility Overlays
PRODUCT_PACKAGES += \
    HideSmartSpace \
    SmartSpaceOffset \
    HideClock

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    ClockFontACFilmstripOverlay \
    ClockFontAccuratistOverlay \
    ClockFontAclonicaOverlay \
    ClockFontAlmonteSnowOverlay \
    ClockFontAlphaCloudsOverlay \
    ClockFontAlphaFlowersOverlay \
    ClockFontAlphaWoodOverlay \
    ClockFontAmaranteOverlay \
    ClockFontAmpad3D2Overlay \
    ClockFontBariolOverlay \
    ClockFontBetsyFlanaganOverlay \
    ClockFontBigCheeseOverlay \
    ClockFontBrandayolqOverlay \
    ClockFontBudmoJigglerOverlay \
    ClockFontBunnyRabbitsOverlay \
    ClockFontCFBadNewsOverlay \
    ClockFontCFOneTwoTreesOverlay \
    ClockFontCagliostroOverlay \
    ClockFontCatOverlay \
    ClockFontCoconOverlay \
    ClockFontComfortaaOverlay \
    ClockFontComicSansOverlay \
    ClockFontConcentrateOverlay \
    ClockFontCookieRunOverlay \
    ClockFontCoolstoryOverlay \
    ClockFontCrackmanOverlay \
    ClockFontDiscoMidnightOverlay \
    ClockFontEasterBunnyOverlay \
    ClockFontEditPointsFilledOverlay \
    ClockFontEditPointsOverlay \
    ClockFontElriott2Overlay \
    ClockFontExotwoOverlay \
    ClockFontFibographyOverlay \
    ClockFontFifa2018Overlay \
    ClockFontFloorlightOverlay \
    ClockFontGautsMotelUpperRightOverlay \
    ClockFontGoogleSansFlexOverlay \
    ClockFontGrandHotelOverlay \
    ClockFontHangedOverlay \
    ClockFontHarmonySansOverlay \
    ClockFontHotSweatOverlay \
    ClockFontKGOnlyHopeOverlay \
    ClockFontKaramuruhOverlay \
    ClockFontKingthingsOverlay \
    ClockFontLMSCliffordOverlay \
    ClockFontLatoOverlay \
    ClockFontLinotteOverlay \
    ClockFontLittleBunnyOverlay \
    ClockFontLowerAtmosphereOverlay \
    ClockFontMessingLetternOverlay \
    ClockFontMonbijouxClownpieceOverlay \
    ClockFontMotorola \
    ClockFontNeonDiscoOverlay \
    ClockFontNinjasOverlay \
    ClockFontNokiaPureOverlay \
    ClockFontNothingDotHeadlineOverlay \
    ClockFontNunitoOverlay \
    ClockFontOneplusSansOverlay \
    ClockFontOneplusSlateOverlay \
    ClockFontOswaldOverlay \
    ClockFontPinewoodOverlay \
    ClockFontPlaidEventOverlay \
    ClockFontPlantsLettersOverlay \
    ClockFontPlayOverlay \
    ClockFontQuandoOverlay \
    ClockFontQuickSouthOverlay \
    ClockFontRedressedOverlay \
    ClockFontReemKufiOverlay \
    ClockFontRemponkOverlay \
    ClockFontRobotoCondensedOverlay \
    ClockFontRomantiquesOverlay \
    ClockFontRoundheadsOverlay \
    ClockFontRubikOverlay \
    ClockFontSamsungOneOverlay \
    ClockFontSansSerifOverlay \
    ClockFontScrapItUpOverlay \
    ClockFontSonySketchOverlay \
    ClockFontSpaceGameOverlay \
    ClockFontStandardHeaderOverlay \
    ClockFontStoropiaOverlay \
    ClockFontSurferOverlay \
    ClockFontTh3machineOverlay \
    ClockFontUbuntuOverlay \
    ClockFontVtksdura3dOverlay \
    ClockFontZnikomitNo24Overlay \
    ClockFontIOSOverlay \
    ClockFontHerculesOverlay \
    ClockFontSlimOverlay \
    ClockFontNtype82Overlay \
    ClockFontSubwayOverlay \
    FontAccuratistOverlay \
    FontAclonicaOverlay \
    FontAmaranteOverlay \
    FontBariolOverlay \
    FontCagliostroOverlay \
    FontCoconOverlay \
    FontComfortaaOverlay \
    FontComicSansOverlay \
    FontCookieRunOverlay \
    FontCoolstoryOverlay \
    FontExotwoOverlay \
    FontFifa2018Overlay \
    FontGrandHotelOverlay \
    FontGoogleSansFlexOverlay \
    FontHarmonySansOverlay \
    FontIBMPlexSansOverlay \
    FontLatoOverlay \
    FontLinotteOverlay \
    FontNokiaPureOverlay \
    FontNothingDotHeadlineOverlay \
    FontNothingDotOverlay \
    FontNunitoOverlay \
    FontOneplusSansOverlay \
    FontOneplusSlateOverlay \
    FontOswaldOverlay \
    FontPlayOverlay \
    FontQuandoOverlay \
    FontRecursiveCasualOverlay \
    FontRecursiveLinearOverlay \
    FontRedressedOverlay \
    FontReemKufiOverlay \
    FontRobotoCondensedOverlay \
    FontRookeryOverlay \
    FontRubikOverlay \
    FontSanFranciscoDisplayProSourceOverlay \
    FontSamsungOneOverlay \
    FontSansSerifOverlay \
    FontSonySketchOverlay \
    FontStoropiaOverlay \
    FontSurferOverlay \
    FontUbuntuOverlay \
    FontAtkinsonOverlay \
    FontAltAtkinsonOverlay \
    FontAuthenticSansOverlay \
    FontBigNoodleOverlay \
    FontBikoHankenOverlay \
    FontBlazmaHyperwaveOverlay \
    FontCardelinaOverlay \
    FontCircularStdOverlay \
    FontComicNeueOverlay \
    FontDecalotypeOverlay \
    FontExo2Overlay \
    FontFantasqueSansMonoOverlay \
    FontFinlandicaOverlay \
    FontFleuronOverlay \
    FontGemsbuckPunkMonoObliqueOverlay \
    FontGiganticFSHezaedrusOverlay \
    FontGothamonoOverlay \
    FontGravityOverlay \
    FontIgnazioTextOverlay \
    FontInterOverlay \
    FontJakartaPlusOverlay \
    FontJicaletaOverlay \
    FontJustSansOverlay \
    FontLeagueMonoNarrowOverlay \
    FontLeonSansOverlay \
    FontLumieOverlay \
    FontMesclaOverlay \
    FontMilimetreOverlay \
    FontMittelschriftOverlay \
    FontNowOverlay \
    FontOpenSauceOverlay \
    FontPTSansMonoOverlay \
    FontPanamericanaOverlay \
    FontPisselOverlay \
    FontPunkMonoOverlay \
    FontQTVagaRoundOverlay \
    FontRobotoOverlay \
    FontRoundedGothicNarrowOverlay \
    FontScientificaOverlay \
    FontSofiaSansOverlay \
    FontUniversalisRegOverlay \
    FontVladivostokOverlay \
    ClockFont26FGalaxySansOverlay \
    ClockFont3DIsometricBlackOverlay \
    ClockFont3DIsometricBoldOverlay \
    ClockFontAdventProOverlay \
    ClockFontAlexanaOverlay \
    ClockFontAlienLeagueOverlay \
    ClockFontArcadeInterlacedOverlay \
    ClockFontAtkinsonOverlay \
    ClockFontBalticBoddenOverlay \
    ClockFontBalticCoastOverlay \
    ClockFontBalticDuneOverlay \
    ClockFontBalticStormOverlay \
    ClockFontBigNoodleTiltingOverlay \
    ClockFontBikoOverlay \
    ClockFontCRACKMANOverlay \
    ClockFontCafe24DecoshadowOverlay \
    ClockFontCherrySwashOverlay \
    ClockFontDotComOverlay \
    ClockFontELRIOTT2Overlay \
    ClockFontExodarOverlay \
    ClockFontFortaOverlay \
    ClockFontFuturrOverlay \
    ClockFontGinoraSansOverlay \
    ClockFontHeadlineOverlay \
    ClockFontJetBrainsMonoOverlay \
    ClockFontKarmaticArcadeOverlay \
    ClockFontKlyukinOverlay \
    ClockFontKroppenFwOOverlay \
    ClockFontKroppenOutlineOverlay \
    ClockFontKroppenRoundOverlay \
    ClockFontLiquidCrystalOverlay \
    ClockFontMXWasgardOverlay \
    ClockFontMuseoModernoOverlay \
    ClockFontNINJASOverlay \
    ClockFontNeptunCATOverlay \
    ClockFontNewYork-HeavyOverlay \
    ClockFontNewYork-SemiboldOverlay \
    ClockFontNothingDotOverlay \
    ClockFontOdibeeSansOverlay \
    ClockFontPermanentMarkerOverlay \
    ClockFontProdeltCoOverlay \
    ClockFontREMPONKOverlay \
    ClockFontRivieraOverlay \
    ClockFontRoadRageOverlay \
    ClockFontRubikGlitchOverlay \
    ClockFontSFRoundedTimeOverlay \
    ClockFontSFSoftTimeOverlay \
    ClockFontSnowstormOverlay \
    ClockFontTH3MACHINEOverlay \
    ClockFontTourneyMediumOverlay \
    ClockFontUnionOverlay \
    ClockFontV5PRFOverlay \
    ClockFontVG5000Overlay \
    ClockFontVTKSDURA3dOverlay \
    ClockFontViburOverlay \
    ClockFontZeroFourOverlay \
    ClockFontfrankfrtOverlay \
    ClockFontlovenessthreeOverlay \
    ClockFontmunsteriaOverlay \
    ClockFontneon2Overlay \
    ClockFontxtrusionOverlay


# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/custom/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

# ASCP OS packages
PRODUCT_PACKAGES += \
    AxQuickLook \
    AxSandbox \
    AppLocker \
    OmniJaws \
    AxThemePicker

# PERF ANIMATION
PERF_ANIM_OVERRIDE ?= false

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.activity_anim_perf_override=$(PERF_ANIM_OVERRIDE)