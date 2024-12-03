package com.yakuran.flutter_laboratory

import android.content.Context
import android.content.ContextWrapper
import android.app.UiModeManager
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "samples.flutter.dev/color_contrast"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            val uiModeManager = getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            val contrast = uiModeManager.getContrast();
            result.success(contrast.toString());
        }
    }
}
