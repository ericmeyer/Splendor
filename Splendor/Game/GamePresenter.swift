class GamePresenter {
    let view: GameView
    var game: Game?

    init(view: GameView) {
        self.view = view
    }

    func startGame() {
        game = Game()
        if let game = game {
            view.gameWasStarted(game: game)
        }
    }

    func takeChip(color: ChipColor) {
        if let game = game {
            game.bankChipCollection.remove(color: color)
            game.playerChipCollection.add(color: color)
            view.chipCountsChanged()
        }
    }

    func giveChip(color: ChipColor) {
        if let game = game {
            game.bankChipCollection.add(color: color)
            game.playerChipCollection.remove(color: color)
            view.chipCountsChanged()
        }
    }
}
