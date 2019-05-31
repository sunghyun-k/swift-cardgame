import Foundation

class CardGame {
    
    private let fullDeck: [Card] = {
        var temporaryDeck = [Card]()
        let allRanks = [
            Card.Rank.ace,
            .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten,
            .jack, .queen, .king
        ]
        let allSuits = [Card.Suit.spades, .hearts, .diamonds, .clubs]
        for rank in allRanks {
            for suit in allSuits {
                temporaryDeck.append(Card(rank: rank, suit: suit))
            }
        }
        return temporaryDeck
    }()
    
    private var deck = [Card]()
    
    init() {
        deck = fullDeck
    }
    
    var deckCount: Int {
        return deck.count
    }
    
    func shuffleDeck() {
        deck.shuffle()
    }
    
    func drawCard() -> Card {
        return deck.removeFirst()
    }
    
    func reset() {
        deck = fullDeck
    }
    
}
