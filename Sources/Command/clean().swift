import Foundation
import Path
import Script
import Utility

public func clean(_ script: Path?) throws {
    guard let script = script else {
        return try Path.build.delete()
    }

    guard script.isFile else {
        throw CocoaError.error(.fileNoSuchFile)
    }

    let path = Script.buildDirForScriptFile(script)
    try path.delete()
}
