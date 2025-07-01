//
//  CircleView.swift
//  MyFirstLibrary
//
//  Created by junil on 7/1/25.
//

// os: Platform Condition: iOS, macOS, watchOS, visionOS, tvOS, Linux, Windows
#if os(iOS) && canImport(UIKit)

import UIKit

class CircleView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        path.fill()
    }
}

#elseif os(macOS)

import AppKit

public class CircleView: NSView {
    public override func draw(_ rect: NSRect) {
        let path = NSBezierPath(ovalIn: rect)
        path.fill()
    }
}

#endif

#if targetEnvironment(simulator)
// 주로 로그인 화면 테스트 시 사용
#endif
