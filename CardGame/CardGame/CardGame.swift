import Foundation

class CardGame {
    
    private let fullDeck: [Card] = {
        var temporaryDeck = [Card]()
        
        for suit in Card.Suit.all {
            for rank in Card.Rank.all {
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
