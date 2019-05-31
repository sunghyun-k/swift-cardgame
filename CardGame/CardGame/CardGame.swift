import Foundation

class CardGame {
    
    private var deck: [Card] = {
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
    
    var deckCount: Int {
        return deck.count
    }
    
    func shuffleDeck() {
        <#function body#>
    }
    
    func drawCard() -> Card {
        <#function body#>
    }
    
}
