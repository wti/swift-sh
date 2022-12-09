import Foundation
import Path
import Script

public func show(_ script: Path) throws {
    guard script.isFile else {
        throw CocoaError.error(.fileNoSuchFile)
    }

    let path = Script.buildDirForScriptFile(script)
    print("\(path)")
}
