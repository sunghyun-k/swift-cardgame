import Foundation

struct CardGameView {
    
    private var cardGame = CardGame()
    private let options = ["카드 초기화", "카드 섞기", "카드 하나 뽑기"]
    
    func startGame() {
        let choice = askForChoice(options: options)
        switch choice {
        case 1:
            resetDeck()
        case 2:
            shuffleDeck()
            return
        case 3:
            drawCard()
        default:
            return
        }
        showDeckCount()
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
    
    private func ask(_ something: String) -> String {
        print("\(something): ", terminator: "")
        return readLine() ?? ""
    }
    
    private func show(options: [String]) {
        for index in options.indices {
            print("\(index + 1). \(options[index])")
        }
    }
    
    private func askForChoice(options: [String]) -> Int {
        show(options: options)
        while true {
            guard let choice = Int(ask("숫자 선택")),
                (1...options.count).contains(choice) else {
                    print("유효하지 않은 선택입니다. 다시 입력하세요.")
                    continue
            }
            return choice
        }
    }
}
