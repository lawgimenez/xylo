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
    
    private var arrayKeys = [
        Key(id: 0, note: "C", color: Color.red),
        Key(id: 1, note: "D", color: Color.orange),
        Key(id: 2, note: "E", color: Color.yellow),
        Key(id: 3, note: "F", color: Color.green),
        Key(id: 4, note: "G", color: Color.teal),
        Key(id: 5, note: "A", color: Color.indigo),
        Key(id: 6, note: "B", color: Color.purple),
        Key(id: 7, note: "C", color: Color.red)
    ]
    
    var body: some View {
        VStack {
            ForEach(arrayKeys) { key in
                Button(action: {
                    play(sound: key.note)
                }) {
                    Text(key.note)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 90)
                }
                .background(key.color)
            }
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
