//
//  VideoPlayer.swift
//  Pip Player
//
//  Created by Khondakar Afridi on 3/3/24.
//

import Foundation
import SwiftUI
import AVKit

struct VideoPlayer: UIViewControllerRepresentable {
    @ObservedObject var playerController: PlayerController
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Update the view controller if needed
    }
    
    func makeUIViewController(context: Context) -> AVPlayerViewController{
        return playerController.avPlayerViewController
    }
}
