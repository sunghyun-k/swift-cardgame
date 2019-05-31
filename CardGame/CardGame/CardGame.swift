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
        for suit in allSuits {
            for rank in allRanks {
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
    
    func drawCard() -> Card? {
        guard !deck.isEmpty else {
            return nil
        }
        return deck.removeFirst()
    }
    
    func resetDeck() {
        deck = fullDeck
    }
    
}
