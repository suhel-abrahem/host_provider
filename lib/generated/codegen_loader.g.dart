// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "app_name": "هوستا للمزودين",
  "loginPage": {
    "welcome": "مرحباً بك في هوستا",
    "signIn": "تسجيل الدخول إلى حسابك",
    "email": "البريد الإلكتروني",
    "emailIsRequired": "البريد الإلكتروني مطلوب",
    "password": "كلمة المرور",
    "confirmPassword": "تأكيد كلمة المرور",
    "passwordDoesNotMatch": "كلمتا المرور غير متطابقتان",
    "forgotPassword": "هل نسيت كلمة المرور؟",
    "no_account": "ليس لديك حساب؟",
    "signUp": "سجل الآن",
    "login": "تسجيل الدخول",
    "passwordIsRequired": "كلمة المرور مطلوبة",
    "name": "الاسم",
    "nameIsRequired": "الاسم مطلوب",
    "mobile": "رقم الهاتف",
    "mobileIsRequired": "رقم الهاتف مطلوب",
    "city": "المدينة",
    "cityIsRequired": "المدينة مطلوبة",
    "address": "العنوان",
    "addressIsRequired": "العنوان مطلوب",
    "dateOfBirth": "تاريخ الميلاد",
    "dateOfBirthIsRequired": "تاريخ الميلاد مطلوب",
    "already_have_account": "هل لديك حساب؟",
    "loginFailed": "فشل تسجيل الدخول. يرجى التحقق من بيانات الاعتماد الخاصة بك والمحاولة مرة أخرى.",
    "country": "الدولة",
    "countryIsRequired": "الدولة مطلوبة",
    "thisPhoneIsTaken": "This phone Is taken",
    "thisEmailIsTaken": "This email Is taken",
    "ThePasswordFieldMustBeAtLeast8Characters": "The password field must be at least 8 characters",
    "errors": "Errors"
  },
  "common": {
    "loading": "جاري التحميل...",
    "error": "خطأ",
    "anErrorHasOccurs": "An Error has occurs. try again by pulling the page down!",
    "noInternetPullDown": "Seams like You don't have internet connection. Check Your connection and try again by pulling the page down!",
    "success": "نجاح",
    "retry": "إعادة المحاولة",
    "cancel": "إلغاء",
    "save": "حفظ",
    "delete": "حذف",
    "edit": "تعديل",
    "close": "إغلاق",
    "youMustEnableLocationServices": "You must enable Location Services!",
    "youMustAcceptLocationPermission": "You must accept Location Permission!",
    "youDeniedLocationPermissionForever": "Seams like You denied Location Permission forever!. so You must go to device setting and accept it!",
    "add": "Add",
    "price": "Price",
    "noThingToShow": "No Thing to Show"
  },
  "theme": {
    "choose": "اختر سمة",
    "system": "النظام",
    "light": "فاتح",
    "dark": "داكن"
  },
  "language": {
    "choose": "اختر لغة",
    "selected": "تم اختيار اللغة",
    "arabic": "العربية",
    "english": "الإنجليزية",
    "kurdish": "الكردية"
  },
  "registration": "التسجيل",
  "registration_screen": "شاشة التسجيل",
  "coming_soon": "قريباً",
  "cities": {
    "baghdad": "بغداد",
    "basra": "البصرة",
    "mosul": "الموصل",
    "erbil": "أربيل",
    "sulaymaniyah": "السليمانية",
    "dohuk": "دهوك",
    "najaf": "النجف",
    "kirkuk": "كركوك",
    "karbala": "كربلاء",
    "anbar": "الأنبار",
    "babylon": "بابل",
    "saladin": "صلاح الدين",
    "nasiriyah": "الناصرية",
    "kut": "الكوت",
    "samawah": "السماوة",
    "amarah": "العمارة",
    "diwaniyah": "الديوانية",
    "halabja": "حلبجة"
  },
  "homePage": {
    "title": "الصفحة الرئيسية",
    "label": "الرئيسية",
    "welcomeMessage": "مرحباً بك في هوستا للمزودين",
    "subtitle": "إدارة خدماتك بسهولة",
    "myRating": "تقييمي",
    "totalServices": "إجمالي الخدمات",
    "daylyBookings": "الحجوزات اليومية",
    "viewDetails": "عرض التفاصيل",
    "daylyTotal": "الإجمالي اليومي",
    "monthlyTotal": "الإجمالي الشهري",
    "monthlyBookings": "الحجوزات الشهرية",
    "currentBookings": "الحجوزات الحالية",
    "pendingBookings": "الحجوزات المعلقة",
    "completedBookings": "الحجوزات المكتملة",
    "annualTotal": "الإجمالي السنوي",
    "annualStatistics": "الإحصائيات السنوية"
  },
  "bookingPage": {
    "title": "Booking Page",
    "label": "Booking"
  },
  "profilePage": {
    "title": "Profile Page",
    "label": "Profile"
  },
  "myServicesPage": {
    "title": "My Services Page",
    "label": "My Services",
    "active": "Active",
    "inactive": "Inactive",
    "iqd": "IQD",
    "edit": "تعديل",
    "toggleStatus": "Toggle Status",
    "delete": "حذف"
  },
  "categoriesPage": {
    "title": "Categories Page",
    "servicesCategories": " Services Categories",
    "services": "Services"
  },
  "otpPage": {
    "title": "Otp Page",
    "verification": "Verification",
    "enterTheCodeSentToTheNumber": "enter The code sent To The number",
    "didntReceiveCode": "Didnt receive code",
    "resend": "Resend",
    "wrongOtp": "Wrong Otp",
    "verified": "Verified",
    "verify": "Verify"
  },
  "categoryServices": {
    "title": "Category Services",
    "theServiceIdFieldIsRequired": "The service id field is required.",
    "thePriceFieldIsRequired": "The price field is required.",
    "theIsActiveFieldMustBeTrueOrFalse": "The is active field must be true or false.",
    "serviceIsAlreadyAdded": "Service is already added",
    "addService": "Add Service",
    "price": "Price",
    "isActive": "Is Active",
    "durationInMinutes": "Duration In Minutes",
    "durationInMinutesIsRequired": "Duration In Minutes Is Required",
    "bufferInMinutes": "bufferInMinutes",
    "bufferInMinutesIsRequired": "buffer In Minutes Is Required",
    "notes": "Notes"
  }
};
static const Map<String,dynamic> _en = {
  "app_name": "Hosta Provider",
  "loginPage": {
    "welcome": "Welcome to Hosta",
    "signIn": "Sign in to your account",
    "email": "Email",
    "emailIsRequired": "Email is required",
    "password": "Password",
    "confirmPassword": "Confirm Password",
    "passwordDoesNotMatch": "Passwords do not match",
    "forgotPassword": "Forgot Password?",
    "no_account": "Don't have an account?",
    "signUp": "Sign Up Now",
    "login": "Login",
    "passwordIsRequired": "Password is required",
    "name": "Name",
    "nameIsRequired": "Name is required",
    "mobile": "Mobile",
    "mobileIsRequired": "Mobile is required",
    "city": "City",
    "cityIsRequired": "City is required",
    "address": "Address",
    "addressIsRequired": "Address is required",
    "dateOfBirth": "Date of Birth",
    "dateOfBirthIsRequired": "Date of Birth is required",
    "already_have_account": "Already have an account?",
    "loginFailed": "Login failed. Please check your credentials and try again.",
    "country": "Country",
    "countryIsRequired": "Country is required",
    "thisPhoneIsTaken": "This phone Is taken",
    "thisEmailIsTaken": "This email Is taken",
    "ThePasswordFieldMustBeAtLeast8Characters": "The password field must be at least 8 characters",
    "errors": "Errors"
  },
  "common": {
    "loading": "Loading...",
    "error": "Error",
    "anErrorHasOccurs": "An Error has occurs. try again by pulling the page down!",
    "noInternetPullDown": "Seams like You don't have internet connection. Check Your connection and try again by pulling the page down!",
    "success": "Success",
    "retry": "Retry",
    "cancel": "Cancel",
    "save": "Save",
    "delete": "Delete",
    "edit": "Edit",
    "close": "Close",
    "youMustEnableLocationServices": "You must enable Location Services!",
    "youMustAcceptLocationPermission": "You must accept Location Permission!",
    "youDeniedLocationPermissionForever": "Seams like You denied Location Permission forever!. so You must go to device setting and accept it!",
    "add": "Add",
    "price": "Price",
    "noThingToShow": "No Thing to Show"
  },
  "theme": {
    "choose": "Choose a theme",
    "system": "System",
    "light": "Light",
    "dark": "Dark"
  },
  "language": {
    "choose": "Choose a language",
    "selected": "Language selected",
    "arabic": "Arabic",
    "english": "English",
    "kurdish": "Kurdish"
  },
  "registration": "Registration",
  "registration_screen": "Registration Screen",
  "coming_soon": "Coming Soon",
  "cities": {
    "baghdad": "Baghdad",
    "basra": "Basra",
    "mosul": "Mosul",
    "erbil": "Erbil",
    "sulaymaniyah": "Sulaymaniyah",
    "dohuk": "Dohuk",
    "najaf": "Najaf",
    "kirkuk": "Kirkuk",
    "kut": "Kut",
    "diwaniyah": "Diwaniyah",
    "karbala": "Karbala",
    "anbar": "Anbar",
    "saladin": "Saladin",
    "babylon": "Babylon",
    "samawah": "Samawah",
    "amarah": "Amarah",
    "halabja": "Halabja",
    "nasiriyah": "Nasiriyah"
  },
  "homepage": {
    "title": "Home Page",
    "welcomeMessage": "Welcome to Hosta for Providers",
    "subtitle": "Manage your services with ease",
    "myRating": "My Ratings",
    "totalServices": "Total Services",
    "daylyBookings": "Dayly Bookings",
    "viewDetails": "View Details",
    "daylyTotal": "Dayly Total",
    "monthlyTotal": "Monthly Total",
    "monthlyBookings": "Monthly Bookings",
    "currentBookings": "Current Bookings",
    "pendingBookings": "Pending Bookings",
    "completedBookings": "Completed Bookings",
    "annualTotal": "Annual Total",
    "annualStatistics": "Annual Statistics"
  },
  "bookingPage": {
    "title": "Booking Page",
    "label": "Booking"
  },
  "profilePage": {
    "title": "Profile Page",
    "label": "Profile"
  },
  "myServicesPage": {
    "title": "My Services Page",
    "label": "My Services",
    "active": "Active",
    "inactive": "Inactive",
    "iqd": "IQD",
    "edit": "تعديل",
    "toggleStatus": "Toggle Status",
    "delete": "حذف"
  },
  "categoriesPage": {
    "title": "Categories Page",
    "servicesCategories": " Services Categories",
    "services": "Services"
  },
  "otpPage": {
    "title": "Otp Page",
    "verification": "Verification",
    "enterTheCodeSentToTheNumber": "enter The code sent To The number",
    "didntReceiveCode": "Didnt receive code",
    "resend": "Resend",
    "wrongOtp": "Wrong Otp",
    "verified": "Verified",
    "verify": "Verify"
  },
  "categoryServices": {
    "title": "Category Services",
    "theServiceIdFieldIsRequired": "The service id field is required.",
    "thePriceFieldIsRequired": "The price field is required.",
    "theIsActiveFieldMustBeTrueOrFalse": "The is active field must be true or false.",
    "serviceIsAlreadyAdded": "Service is already added",
    "addService": "Add Service",
    "price": "Price",
    "isActive": "Is Active",
    "durationInMinutes": "Duration In Minutes",
    "durationInMinutesIsRequired": "Duration In Minutes Is Required",
    "bufferInMinutes": "bufferInMinutes",
    "bufferInMinutesIsRequired": "buffer In Minutes Is Required",
    "notes": "Notes"
  }
};
static const Map<String,dynamic> _fa = {
  "app_name": "هۆستا بۆ دابینکەران",
  "loginPage": {
    "welcome": "بەخێربێیت بۆ هۆستا",
    "signIn": "چوونەژوورەوە بۆ ئەژماری خۆت",
    "email": "ئیمەیڵ",
    "emailIsRequired": "ئیمەیڵ پێویستە",
    "password": "وشەی نهێنی",
    "confirmPassword": "دووبارە وشەی نهێنی بنووسە",
    "passwordDoesNotMatch": "وشەی نهێنی جیاوازن",
    "forgotPassword": "وشەی نهێنی لەبیرکردووە؟",
    "no_account": "ئەژماری نیە؟",
    "signUp": "ئێستا تۆماربکە",
    "login": "چوونەژوورەوە",
    "passwordIsRequired": "وشەی نهێنی پێویستە",
    "name": "ناو",
    "nameIsRequired": "ناو پێویستە",
    "mobile": "ژمارەی مۆبایل",
    "mobileIsRequired": "ژمارەی مۆبایل پێویست",
    "city": "شار",
    "cityIsRequired": "شار پێویستە",
    "address": "ناونیشان",
    "addressIsRequired": "ناونیشان پێویستە",
    "dateOfBirth": "ڕۆژی لەدایکبوون",
    "dateOfBirthIsRequired": "ڕۆژی لەدایکبوون پێویستە",
    "already_have_account": "ئەژماری هەیە؟",
    "loginFailed": "چوونەژوورەوە سەرکەوتوو نەبو. تکایە دڵنیابە لە زانیاریەکانت و دووبارە هەوڵبدەرەوە.",
    "country": "Country",
    "countryIsRequired": "Country is required",
    "thisPhoneIsTaken": "This phone Is taken",
    "thisEmailIsTaken": "This email Is taken",
    "ThePasswordFieldMustBeAtLeast8Characters": "The password field must be at least 8 characters",
    "errors": "Errors"
  },
  "common": {
    "loading": "چاوەڕێ بکە...",
    "error": "هەڵە",
    "anErrorHasOccurs": "An Error has occurs. try again by pulling the page down!",
    "noInternetPullDown": "Seams like You don't have internet connection. Check Your connection and try again by pulling the page down!",
    "success": "سەرکەوتوو",
    "retry": "دووبارە هەوڵدان",
    "cancel": "هەڵوەشاندنەوە",
    "save": "پاشەکەوت",
    "delete": "سڕینەوە",
    "edit": "دەستکاری",
    "close": "داخستن",
    "youMustEnableLocationServices": "You must enable Location Services!",
    "youMustAcceptLocationPermission": "You must accept Location Permission!",
    "youDeniedLocationPermissionForever": "Seams like You denied Location Permission forever!. so You must go to device setting and accept it!",
    "add": "Add",
    "price": "Price",
    "noThingToShow": "No Thing to Show"
  },
  "theme": {
    "choose": "مۆدێلێک هەڵبژێرە",
    "system": "سیستەم",
    "light": "ڕووناک",
    "dark": "تاریک"
  },
  "language": {
    "choose": "زمانێک هەڵبژێرە",
    "selected": "زمان هەڵبژێردرا",
    "arabic": "عەرەبی",
    "english": "ئینگلیزی",
    "kurdish": "کوردی"
  },
  "registration": "تۆمارکردن",
  "registration_screen": "شاشەی تۆمارکردن",
  "coming_soon": "بەزوویی دێت",
  "cities": {
    "baghdad": "بەغدا",
    "basra": "بەصرە",
    "mosul": "مووسڵ",
    "erbil": "هەولێر",
    "sulaymaniyah": "سلێمانی",
    "najaf": "نجف",
    "kirkuk": "کەرکووک",
    "kut": "كوت",
    "diwaniyah": "دیوانیە",
    "karbala": "کەرەباڵا",
    "anbar": "انبەر",
    "saladin": "سەڵاحەدین",
    "babylon": "بابڵۆن",
    "samawah": "سەماوە",
    "amarah": "ئەمەرە",
    "nasiriyah": "ناسریا",
    "dohuk": "دهۆک",
    "halabja": "ھەڵەبجە"
  },
  "homePage": {
    "title": "ماڵەوە",
    "welcomeMessage": "بەخێربێیت بۆ هۆستا بۆ دابینکەران",
    "subtitle": "خزمەتگوزاریەکانت بە ئاسانیدا بەڕێوەببە",
    "myRating": "هەڵسەنگاندنەکانم",
    "totalServices": "کۆی خزمەتگوزاریەکان",
    "daylyBookings": "بۆکینگەکانی ڕۆژانە",
    "viewDetails": "پیشاندانی وردەکاریەکان",
    "daylyTotal": "کۆی ڕۆژانە",
    "monthlyTotal": "کۆی مانگانە",
    "monthlyBookings": "بۆکینگەکانی مانگانە",
    "currentBookings": "بۆکینگەکانی ئێستا",
    "pendingBookings": "بۆکینگەکانی چاوەڕوان",
    "completedBookings": "بۆکینگەکانی تەواوکراو",
    "annualTotal": "کۆی ساڵانە",
    "annualStatistics": "ئامارەکانی ساڵانە"
  },
  "bookingPage": {
    "title": "Booking Page",
    "label": "Booking"
  },
  "profilePage": {
    "title": "Profile Page",
    "label": "Profile"
  },
  "myServicesPage": {
    "title": "My Services Page",
    "label": "My Services",
    "active": "Active",
    "inactive": "Inactive",
    "iqd": "IQD",
    "edit": "تعديل",
    "toggleStatus": "Toggle Status",
    "delete": "حذف"
  },
  "categoriesPage": {
    "title": "Categories Page",
    "servicesCategories": " Services Categories",
    "services": "Services"
  },
  "otpPage": {
    "title": "Otp Page",
    "verification": "Verification",
    "enterTheCodeSentToTheNumber": "enter The code sent To The number",
    "didntReceiveCode": "Didnt receive code",
    "resend": "Resend",
    "wrongOtp": "Wrong Otp",
    "verified": "Verified",
    "verify": "Verify"
  },
  "categoryServices": {
    "title": "Category Services",
    "theServiceIdFieldIsRequired": "The service id field is required.",
    "thePriceFieldIsRequired": "The price field is required.",
    "theIsActiveFieldMustBeTrueOrFalse": "The is active field must be true or false.",
    "serviceIsAlreadyAdded": "Service is already added",
    "addService": "Add Service",
    "price": "Price",
    "isActive": "Is Active",
    "durationInMinutes": "Duration In Minutes",
    "durationInMinutesIsRequired": "Duration In Minutes Is Required",
    "bufferInMinutes": "bufferInMinutes",
    "bufferInMinutesIsRequired": "buffer In Minutes Is Required",
    "notes": "Notes"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en, "fa": _fa};
}
