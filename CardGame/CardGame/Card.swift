import Foundation

/// 인스턴스를 전달 또는 할당할 시에 값이 복사되도록 구조체를 선택함.
struct Card: CustomStringConvertible {
    /// 카드 숫자는 종류가 13가지로 제한되어 있기 때문에 열거형을 선택함.
    enum Rank: Int, CustomStringConvertible {
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
    
    /// 무늬의 종류가 4가지로 제한되어 있기 때문에 열거형을 선택함.
    enum Suit: CustomStringConvertible {
        case spades, hearts, diamonds, clubs
        
        var description: String {
            switch self {
            case .spades: return "♠"
            case .hearts: return "♥"
            case .diamonds: return "♦"
            case .clubs: return "♣"
            }
        }
    }
    
    let rank: Rank
    let suit: Suit
    
    var description: String {
        return "\(suit) \(rank)"
    }
}
