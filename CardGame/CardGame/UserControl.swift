import Foundation

struct UserControl {
    
    private var cardGame = CardGame()
    
    enum Option: Int, CaseIterable, CustomStringConvertible {
        case resetDeck = 1
        case shuffleDeck
        case drawCard
        case showOptions
        var description: String {
            switch self {
            case .drawCard: return "카드 뽑기"
            case .resetDeck: return "덱 초기화"
            case .showOptions: return "선택지 보기"
            case .shuffleDeck: return "덱 섞기"
            }
        }
    }
    
    func playCardGame() {
        let options = Option.allCases.map { $0.description }
        InputView.show(options: options)
        
        while true {
            let choosenNumber = InputView.askForChoice(options: options)
            guard let choice = Option(rawValue: choosenNumber) else {
                OutputView.show("없는 선택지입니다.")
                return
            }
            switch choice {
            case .drawCard: drawCard()
            case .resetDeck: resetDeck()
            case .showOptions: InputView.show(options: options)
            case .shuffleDeck: shuffleDeck()
            }
            OutputView.nextLine()
        }
    }
    
    private func showDeckCount() {
        OutputView.show("총 \(cardGame.deckCount)장의 카드가 남아있습니다.")
    }
    
    private func resetDeck() {
        cardGame.resetDeck()
        OutputView.show("카드 덱을 초기화했습니다.")
    }
    
    private func shuffleDeck() {
        cardGame.shuffleDeck()
        OutputView.show("\(cardGame.deckCount)장의 카드를 섞었습니다.")
    }
    
    private func drawCard() {
        guard let card = cardGame.drawCard() else {
            OutputView.show("카드가 없어 뽑을 수 없습니다.")
            return
        }
        OutputView.show(card: card)
    }
}
