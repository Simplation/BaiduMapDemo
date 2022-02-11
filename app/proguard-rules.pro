# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


-dontskipnonpubliclibraryclassmembers
-useuniqueclassmembernames
-keeppackagenames
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,Synthetic,EnclosingMethod
-keepparameternames

-keep class com.baidu.lbsapi.panoramaview.ImageMarker{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.tools.CoordinateConverter{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.tools.Point{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.model.BaiduPanoData{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.model.BaiduPoiPanoData{
    public protected <fields>;
    public protected <methods>;
}
-keep class com.baidu.lbsapi.model.StatisticsEvent{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.panoramaview.TextMarker{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.panoramaview.StatisticsCallback{
    public protected <fields>;
    public protected <methods>;
}


-keep class com.baidu.lbsapi.panoramaview.OnTabMarkListener{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.panoramaview.PanoramaRequest{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.panoramaview.PanoramaView{
                                  public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.panoramaview.PanoramaViewListener{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.BMapManager{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.lbsapi.MKGeneralListener{
    public protected <fields>;
    public protected <methods>;
}

-keep class com.baidu.pano.platform.plugin.PluginManager{
	public static *;
	public *;
}

-keep class com.baidu.pano.platform.plugin.PluginHttpExecutor{*;}

-keep interface com.baidu.pano.platform.plugin.indooralbum.**{ *; }
-keep class com.baidu.pano.platform.plugin.indooralbum.**{ *; }

-keep class com.baidu.pano.platform.comjni.** { *; }
-keep class com.baidu.lbsapi.panoramaview.PanoramaView$* { *; }
-keep class com.baidu.lbsapi.panoramaview.PanoramaRequest$* { *; }
-keep class com.baidu.lbsapi.tools.CoordinateConverter$* { *; }

-keepclasseswithmembernames class * {
    native <methods>;
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}