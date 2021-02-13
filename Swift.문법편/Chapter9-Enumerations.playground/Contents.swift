import Foundation

//MARK: - Associated Values
// 사용하는 시점에서 멤버에 보조 값을 설정할 수 있는 방법

enum ImageFormat {
    case JPEG
    case PNG(Bool)
    case GIF(Int, Bool)
}

var newImage = ImageFormat.PNG(true)
newImage = .GIF(256, false)

// 열거형을 사용하면 다루어야할 객체가 늘어나지만, 구조적으로 훨씬 안정된 코드를 설계할 수 있다.


