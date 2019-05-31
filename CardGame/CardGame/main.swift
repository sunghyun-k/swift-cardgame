import Foundation

func main() {
    
    var cardGame = CardGame()
    
    let options = ["카드 초기화", "카드 섞기", "카드 하나 뽑기"]
    
    func startGame() {
        let choice = InputView.askForChoice(options: options)
        switch choice {
        case 1:
            resetDeck()
        case 2:
            shuffleDeck()
        case 3:
            drawCard()
        default:
            OutputView.show("구현되지 않은 선택지입니다.")
        }
        OutputView.nextLine()
    }
    
    func showDeckCount() {
        OutputView.show("총 \(cardGame.deckCount)장의 카드가 남아있습니다.")
    }
    
    func resetDeck() {
        cardGame.resetDeck()
        OutputView.show("카드 덱을 초기화했습니다.")
    }
    
    func shuffleDeck() {
        cardGame.shuffleDeck()
        OutputView.show("\(cardGame.deckCount)장의 카드를 섞었습니다.")
    }
    
    func drawCard() {
        guard let card = cardGame.drawCard() else {
            OutputView.show("카드가 없어 뽑을 수 없습니다.")
            return
        }
        OutputView.show(card: card)
    }
    
    while true {
        startGame()
    }
}

main()
