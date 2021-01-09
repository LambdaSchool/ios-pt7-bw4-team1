//
//  OpeningViewController.swift
//  Wine Flight
//
//  Created by James McDougall on 1/8/21.
//

import UIKit
import AVFoundation

class OpeningViewController: UIViewController {
    
    @IBOutlet weak var getStartedButton: UIButton!
    
    var player: AVPlayer?
    var customUI = CustomUI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBackgroundVideo()
        configureUI()
    }
    
    func playBackgroundVideo() {
        guard let path = Bundle.main.path(forResource: "WineFlight", ofType: "mp4") else {
            return
        }
        
        player = AVPlayer(url: URL(fileURLWithPath: path))
        player!.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at: 0)
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        player!.seek(to: CMTime.zero)
        player!.play()
        self.player?.isMuted = true
    }
    
    @objc func playerItemDidReachEnd() {
        player!.seek(to: CMTime.zero)
    }
    
    func configureUI() {
        customUI.roundedButton(button: getStartedButton)
    }
}
