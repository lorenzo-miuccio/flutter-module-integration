//
//  AppDelegate.swift
//  MyiOSApplication
//
//  Created by Lorenzo Miuccio on 01/02/23.
//

import UIKit
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate {

    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run();
        // Connects plugins with iOS platform code to this app.
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
    
}

