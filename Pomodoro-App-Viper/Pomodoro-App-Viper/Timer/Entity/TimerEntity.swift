
import Foundation

protocol TimerModel {
    var isWorkTime: Bool { get set }
    var isStarted: Bool { get set }
    var isAnimationStarted: Bool { get set}
    var workTime: Int { get set }
    var restTime: Int { get set }
}

class TimerEntity: TimerModel {
    var isWorkTime = true
    var isStarted = false
    var isAnimationStarted = false
    var workTime = 25
    var restTime = 5

    static var timer = TimerEntity()
}
