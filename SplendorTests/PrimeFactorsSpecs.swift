import Splendor
import Quick
import Nimble

class PrimeFactorsSpecs: QuickSpec {

    override func spec() {
        func factorsOf(number: Int) -> [Int] {
            return PrimeFactors.of(number: number)
        }

        describe("Prime factors") {
            it("has no factors for one") {
                expect(factorsOf(number: 1)).to(equal([]))
            }

            it("has a factor of two for two") {
                expect(factorsOf(number: 2)).to(equal([2]))
            }

            it("factors 3") {
                expect(factorsOf(number: 3)).to(equal([3]))
            }

            it("factors 4") {
                expect(factorsOf(number: 4)).to(equal([2, 2]))
            }

            it("factors 5") {
                expect(factorsOf(number: 5)).to(equal([5]))
            }

            it("factors 6") {
                expect(factorsOf(number: 6)).to(equal([2, 3]))
            }

            it("factors 8") {
                expect(factorsOf(number: 8)).to(equal([2, 2, 2]))
            }

            it("factors 30") {
                expect(factorsOf(number: 30)).to(equal([2, 3, 5]))
            }
        }
    }

}
