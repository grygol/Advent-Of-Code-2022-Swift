import Cocoa

var max = -1

if let filePath = Bundle.main.url(forResource: "input", withExtension: "txt") {
    let content = try String(contentsOf: filePath)
    
    var sum = 0
    for line in content.components(separatedBy: .newlines) {
        let lineNum = Int(line) ?? 0
        if lineNum == 0 {
            if sum > max {
                max = sum
            }
            sum = 0
        } else {
            sum += lineNum
        }
    }
    
}

print(max)


