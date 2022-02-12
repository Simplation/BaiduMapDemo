package com.simplation.map

import android.app.Application
import com.baidu.mapapi.CoordType
import com.baidu.mapapi.SDKInitializer

class MapApplication : Application() {
    override fun onCreate() {
        super.onCreate()

        // 在使用 SDK 各组件之前初始化 context 信息，传入 ApplicationContext
        SDKInitializer.initialize(this)

        // 自 4.3.0 起，百度地图 SDK 所有接口均支持百度坐标和国测局坐标，用此方法设置您使用的坐标类型.
        // 包括 BD09LL 和 GCJ02 两种坐标，默认是 BD09LL 坐标。
        SDKInitializer.setCoordType(CoordType.BD09LL)
    }
}