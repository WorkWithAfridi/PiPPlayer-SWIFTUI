//
//  Pip_PlayerApp.swift
//  Pip Player
//
//  Created by Khondakar Afridi on 3/3/24.
//

import SwiftUI
import SwiftData
import AVKit

@main
struct Pip_PlayerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


// SwiftUI projects does not come with a 'pre-created' App Delegate, here we have to improvise and create out own.
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Include the following lines, to add background audio and video services.
        let audioSession = AVAudioSession.sharedInstance()
           do {
               try audioSession.setCategory(.playback)
               try audioSession.setActive(true, options: [])
           } catch {
               print("Setting category to AVAudioSessionCategoryPlayback failed.")
           }
        
        return true
    }
}
