package com.example.myandroidapplication

import android.app.Application
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

class AddFlutterApplication : Application() {
    private lateinit var flutterEngine: FlutterEngine

    companion object {
        const val FLUTTER_ENGINE_NAME = "flutter_engine"
    }

    override fun onCreate() {
        super.onCreate()
        flutterEngine = FlutterEngine(this)

        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
                FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                "package:flutter_module/main_${BuildConfig.FLAVOR}.dart",
                "main"
            )
        )

        FlutterEngineCache
            .getInstance()
            .put(FLUTTER_ENGINE_NAME, flutterEngine)
    }
}