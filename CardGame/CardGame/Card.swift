import Foundation

/// 카드 숫자는 종류가 13가지로 제한되어 있기 때문에 열거형을 선택함.
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default: return String(self.rawValue)
        }
    }
}

