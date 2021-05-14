import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MP3PlayerPlugin)
public class MP3PlayerPlugin: CAPPlugin {
    private let implementation = MP3Player()

    @objc func echo(_ call: CAPPluginCall) {
        
        // 拿到 url 播放
        let filePath = call.getString("mp3Url") ?? ""
        let audioPlayer = AudioHelper()
        
        audioPlayer.playMusic(filePath: filePath)
        call.resolve([
            "value": implementation.echo(filePath)
        ])
    }
}
