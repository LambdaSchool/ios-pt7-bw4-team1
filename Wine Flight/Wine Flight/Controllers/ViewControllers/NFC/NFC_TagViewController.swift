//
//  NFC_TagViewController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 12/16/20.
//

import UIKit
import CoreNFC

class NFC_TagViewController: UIViewController, NFCTagReaderSessionDelegate {
    
    @IBOutlet weak var UIDLabel: UILabel!
    var session: NFCReaderSession?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func CaptureButton(_ sender: Any) {
        self.session = NFCTagReaderSession(pollingOption: .iso14443, delegate: self)
        self.session?.alertMessage = "Hold Your Phone Near the NFC Tag"
        self.session?.begin()
    }
    
    // MARK: - NFCTagReaderSessionDelegate
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        print("Session Begun")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        print("ERROR \(error)")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        print("Connecting to tag")
        if tags.count > 1 {
            session.alertMessage = "More then one tag detected"
            session.invalidate()
        }
        
        let tag = tags.first!
        session.connect(to: tag) { (error) in
            if let error = error {
                print("Session failed with error: \(error)")
            }
            if case let .miFare(sTag) = tag {
                let UID = sTag.identifier.map { String(format: "%.2hhx", $0)}.joined()
                print("UUID", UID)
                session.alertMessage = "UID Captured"
                session.invalidate()
                DispatchQueue.main.async {
                    self.UIDLabel.text = "\(UID)"
                }
            }
        }
    }
}


