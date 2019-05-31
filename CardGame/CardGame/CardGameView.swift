import Foundation

struct CardGameView {
    
    private var cardGame = CardGame()
    private let options = ["카드 초기화", "카드 섞기", "카드 하나 뽑기"]
    
    func startGame() {
        let choice = InputView.askForChoice(options: options)
        switch choice {
        case 1:
            resetDeck()
            showDeckCount()
        case 2:
            shuffleDeck()
        case 3:
            drawCard()
            showDeckCount()
        default:
            print("구현되지 않은 선택지입니다.")
        }
        print()
    }
    
    private func showDeckCount() {
        print("총 \(cardGame.deckCount)장의 카드가 남아있습니다.")
    }
    
    private func resetDeck() {
        cardGame.resetDeck()
        print("카드 덱을 초기화했습니다.")
    }
    
    private func shuffleDeck() {
        cardGame.shuffleDeck()
        print("\(cardGame.deckCount)장의 카드를 섞었습니다.")
    }
    
    private func drawCard() {
        guard let card = cardGame.drawCard() else {
            print("카드가 없어 뽑을 수 없습니다.")
            return
        }
        print(card)
    }
    
    
}
