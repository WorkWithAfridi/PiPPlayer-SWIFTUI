//
//  video-player.swift
//  Pip Player
//
//  Created by Khondakar Afridi on 3/3/24.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    @StateObject var playerController = PlayerController()
    
    var body: some View {
        VStack(alignment: .center){
            GeometryReader { geometry in
                let parentWidth = geometry.size.width
                
                if playerController.player == nil {
                    Text("Loading")
                } else {
                    VideoPlayer(playerController: playerController)
                        .frame(width: parentWidth)
                }
            }
            .frame(height: 200)
            
            Button {
                playerController.playPlayer()
            } label: {
                Text("Play video")
            }
            
            Button {
                playerController.pausePlayer()
            } label: {
                Text("Pause video")
            }
            
            
        }
        .onAppear {
            playerController.initPlayer(title: "SomeTitle", link: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", artist: "Khondakar Afridi", artwork: "Artist")
        }
    }
}

#Preview {
    PlayerView()
}
