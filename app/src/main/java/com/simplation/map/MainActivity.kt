package com.simplation.map

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.baidu.mapapi.map.MapView

class MainActivity : AppCompatActivity() {
    private lateinit var mMapView: MapView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        mMapView = findViewById(R.id.mapView)
    }

    override fun onResume() {
        super.onResume()
        // 在 activity 执行 onResume 时执行 mMapView.onResume ()，实现地图生命周期管理
        mMapView.onResume();
    }

    override fun onPause() {
        super.onPause()
        // 在 activity 执行 onPause 时执行 mMapView.onPause ()，实现地图生命周期管理
        mMapView.onPause();
    }

    override fun onDestroy() {
        super.onDestroy()
        // 在 activity 执行 onDestroy 时执行 mMapView.onDestroy()，实现地图生命周期管理
        mMapView.onDestroy();
    }
}