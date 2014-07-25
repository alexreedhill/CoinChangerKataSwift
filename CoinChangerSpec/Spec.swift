import Swiftest
import CoinChangerKata

class Spec : SwiftestSuite {
  let spec = describe("Spec") {

    let coinChanger = CoinChanger()

    it("converts one cent") {
        let coins = coinChanger.makeChange(1)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 0,
                               "nickels" : 0,
                               "pennies" : 1])
    }

    it("converts two cents") {
        let coins = coinChanger.makeChange(2)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 0,
                               "nickels" : 0,
                               "pennies" : 2])
    }

    it("converts five cents") {
        let coins = coinChanger.makeChange(5)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 0,
                               "nickels" : 1,
                               "pennies" : 0])
    }

    it("converts six cents") {
        let coins = coinChanger.makeChange(6)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 0,
                               "nickels" : 1,
                               "pennies" : 1])
    }

    it("converts ten cents") {
        let coins = coinChanger.makeChange(10)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 1,
                               "nickels" : 0,
                               "pennies" : 0])
    }

    it("converts sixteen cents") {
        let coins = coinChanger.makeChange(16)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 1,
                               "nickels" : 1,
                               "pennies" : 1])
    }

    it("converts twenty-one cents") {
        let coins = coinChanger.makeChange(21)
        expect(coins).toEqual(["quarters" : 0,
                               "dimes" : 2,
                               "nickels" : 0,
                               "pennies" : 1])
    }

    it ("converts sixty-seven cents") {
        let coins = coinChanger.makeChange(67)
        expect(coins).toEqual(["quarters" : 2,
                               "dimes" : 1,
                               "nickels" : 1,
                               "pennies" : 2])
    }
  }
}
