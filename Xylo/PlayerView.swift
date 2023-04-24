//
//  PlayerView.swift
//  Xylo
//
//  Created by Lawrence Gimenez on 4/23/23.
//

import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer!

struct PlayerView: View {
    
    var body: some View {
        VStack {
            Button(action: {
                play(sound: "C")
            }) {
                Text("C")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.red)
            Button(action: {
                play(sound: "D")
            }) {
                Text("D")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.orange)
            Button(action: {
                play(sound: "E")
            }) {
                Text("E")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.yellow)
            Button(action: {
                play(sound: "F")
            }) {
                Text("F")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.green)
            Button(action: {
                play(sound: "G")
            }) {
                Text("G")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.teal)
            Button(action: {
                play(sound: "A")
            }) {
                Text("A")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.indigo)
            Button(action: {
                play(sound: "B")
            }) {
                Text("B")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.purple)
            Button(action: {
                play(sound: "C")
            }) {
                Text("C")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 90)
            }
            .background(Color.red)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func play(sound: String) {
        let _ = print("Play \(sound)")
        let url = Bundle.main.url(forResource: sound, withExtension: ".wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
