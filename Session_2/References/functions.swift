import Foundation;
import Cocoa;

func listFilesRecursively(dir: String) -> [String] {
  let manager = NSFileManager.defaultManager();
  let enumerator = manager.enumeratorAtPath(dir)
  var files: [String] = []

  while let element = enumerator?.nextObject() as? String {
    files.append(element)
  }

  return files
}

func listFiles(dir: String) -> [String] {
  let manager = NSFileManager.defaultManager();
  let files = try? manager.contentsOfDirectoryAtPath(dir);
  return files ?? []
}

func copyFile(source: String, toFile: String) {
  do {
    try NSFileManager.defaultManager().copyItemAtPath(source, toPath: toFile)
  } catch let error as NSError {
    print("Cannot copy file: \(error.localizedDescription)")
  }
}
