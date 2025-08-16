//
//  SwiftReport.swift
//  swift-report
//
//  Created by Robert Nash on 16/08/2025.
//

import Foundation
import ArgumentParser
import ShellOut

@main
struct SwiftReport: ParsableCommand {
    
    func run() throws {
        
        let xcode = try shellOut(to: "xcodebuild -version")
        let macOS = try shellOut(to: "sw_vers -productVersion")
        
        let lines = xcode.split(separator: "\n")
        if let xcodeVer = lines.first,
           let buildVer = lines.dropFirst().first {
            let build = buildVer.replacingOccurrences(of: "Build version ", with: "")
            print("*", "\(xcodeVer) (\(build))")
        }
        print("*", "macOS: \(macOS.trimmed())")
        
        let swift = try shellOut(to: "swiftc -version")
        let compactSwift = swift.replacingOccurrences(of: "\n", with: " ")
        print("*", compactSwift.trimmed())
    }
}

private extension String {
    func trimmed() -> String { trimmingCharacters(in: .whitespacesAndNewlines) }
}
