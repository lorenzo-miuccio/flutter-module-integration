package com.example.myandroidapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import io.flutter.embedding.android.FlutterActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val myButton = findViewById<Button>(R.id.flutterButton)

        myButton.setOnClickListener {
            startActivity(
                FlutterActivity
                    .withCachedEngine(AddFlutterApplication.FLUTTER_ENGINE_NAME)
                    .build(this)
            )
        }
    }
}