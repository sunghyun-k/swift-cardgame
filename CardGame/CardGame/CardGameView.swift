import Foundation

struct CardGameView {
    
    private var cardGame = CardGame()
    private let options = ["카드 초기화", "카드 섞기", "카드 하나 뽑기"]
    
    func startGame() {
        let choice = InputView.askForChoice(options: options)
        switch choice {
        case 1:
            cardGame.resetDeck()
            print("카드 덱을 초기화했습니다.")
            print("총 \(cardGame.deckCount)장의 카드가 남아있습니다.")
        case 2:
            cardGame.shuffleDeck()
            print("\(cardGame.deckCount)장의 카드를 섞었습니다.")
        case 3:
            guard let card = cardGame.drawCard() else {
                print("카드가 없어 뽑을 수 없습니다.")
                return
            }
            print(card)
            print("총 \(cardGame.deckCount)장의 카드가 남아있습니다.")
        default: return
        }
    }
}
