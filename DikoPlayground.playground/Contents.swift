import UIKit

var str = "Hello, playground"

var emojiFinder = [
    "🚀": "Rocket",
    "🐱‍💻": "Cat Developer",
    "🔪": "UI Slicer",
    "⚡": "Lightning Strike"
]

var wordToLookup = "🔪"
var meaning = emojiFinder[wordToLookup]

let containerView = UIView(frame: CGRect(x: 0, y:0, width: 300, height: 300))
containerView.backgroundColor = UIColor.systemTeal

let emojiLabel = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
emojiLabel.text = wordToLookup
emojiLabel.font = UIFont.systemFont(ofSize: 100.0)

containerView.addSubview(emojiLabel)

let meaningLabel = UILabel(frame: CGRect(x: 90, y: 100, width: 150, height: 150))
meaningLabel.text = meaning
meaningLabel.font = UIFont.systemFont(ofSize: 30.0)
meaningLabel.textColor = UIColor.white

containerView.addSubview(meaningLabel)

