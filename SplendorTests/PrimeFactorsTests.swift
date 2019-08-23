import Splendor
import XCTest

class PrimeFactorsTests: XCTestCase {

    func testOneHasNoFactors() {
        let actualFactors = PrimeFactors.of(number: 1)
        XCTAssertEqual([], actualFactors)
    }

    func testFactorsTwo() {
        let actualFactors = PrimeFactors.of(number: 2)
        XCTAssertEqual([2], actualFactors)
    }

    func testFactorsThree() {
        let actualFactors = PrimeFactors.of(number: 3)
        XCTAssertEqual([3], actualFactors)
    }

    func testFactorsFour() {
        let actualFactors = PrimeFactors.of(number: 4)
        XCTAssertEqual([2, 2], actualFactors)
    }

    func testFactorsFive() {
        let actualFactors = PrimeFactors.of(number: 5)
        XCTAssertEqual([5], actualFactors)
    }

    func testFactorsSix() {
        let actualFactors = PrimeFactors.of(number: 6)
        XCTAssertEqual([2, 3], actualFactors)
    }

    func testFactorsEight() {
        let actualFactors = PrimeFactors.of(number: 8)
        XCTAssertEqual([2, 2, 2], actualFactors)
    }

    func testFactorsThirty() {
        let actualFactors = PrimeFactors.of(number: 30)
        XCTAssertEqual([2, 3, 5], actualFactors)
    }

}
