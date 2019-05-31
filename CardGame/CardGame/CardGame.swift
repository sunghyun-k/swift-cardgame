import Foundation

class CardGame {
    
    var deck: [Card] = {
        var temporaryDeck = [Card]()
        let ranks = [
            Card.Rank.ace,
            .two,
            .three,
            .four,
            .five,
            .six,
            .seven,
            .eight,
            .nine,
            .ten,
            .jack,
            .queen,
            .king
        ]
        let suits = [
            Card.Suit.spades,
            .hearts,
            .diamonds,
            .clubs
        ]
        for rank in ranks {
            for suit in suits {
                temporaryDeck.append(Card(rank: rank, suit: suit))
            }
        }
        return temporaryDeck
    }()
    
    
}
