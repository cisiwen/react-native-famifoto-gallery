//
//  RNEventBus.swift
//  react-native-famifoto-gallery
//
//  Created by wweng on 29/4/2023.
//

import Foundation
@objc(RNEventBus)
open class RNEventBus:RCTEventEmitter {
    
    public var uiView:UIView?;
    public static var shared: RNEventBus?
    override init() {
        super.init();
        RNEventBus.shared = self
    }
    @objc func setView(uiView:UIView) {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleGesture));
        uiView.addGestureRecognizer(tap);
    }
    
    @objc func handleGesture(gesture: UITapGestureRecognizer) -> Void {
        self.postEvent(json: "testing");
    }
    public override func supportedEvents() -> [String]! {
            return [
                "RCTCrossPlatformEventBus.Event"
            ]
        }
    @objc func postEvent(json: String) {
        self.sendEvent(withName: "RCTCrossPlatformEventBus.Event", body: json)
    }
}

