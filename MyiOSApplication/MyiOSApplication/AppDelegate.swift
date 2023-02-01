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

    print(BuildConfiguration.shared.environment)
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        flutterEngine.run(withEntrypoint: "main", libraryURI: "package:flutter_module/main_dev.dart");
        // Connects plugins with iOS platform code to this app.
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
}
