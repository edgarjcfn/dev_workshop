import Foundation;
import Cocoa;

func getAllFiles(dir : String) -> [String] {
    let manager = NSFileManager.defaultManager();
//    let enumerator = manager.enumeratorAtPath(dir)
    let enumerator = manager.contentsOfDirectoryAtPath(<#T##path: String##String#>)sAtPath(dir)
    var files: [String] = []

    while let element = enumerator?.nextObject() as? String {
        files.append(element)
    }

    manager.copy
    
    return files
}


var allFiles = getAllFiles("~/Downloads")
print (allFiles)
