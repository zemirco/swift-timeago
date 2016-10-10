
import XCTest
import swift_timeago

class swift_timeagoTests: XCTestCase {
    
    let date = Date()
    let calendar = Calendar.current
    let unitFlags: NSCalendar.Unit = [.second, .minute, .hour, .day, .weekOfYear, .month, .year]
    var components: DateComponents {
        get {
            return (calendar as NSCalendar).components(unitFlags, from: date)
        }
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testJustNow() {
        let result = timeAgoSince(Date())
        XCTAssertEqual(result, "Just now")
    }
    
    func testSecondsAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second! - 5
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "5 seconds ago")
    }
    
    func testAMinuteAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute! - 1
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "A minute ago")
    }
    
    func testMinutesAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute! - 20
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "20 minutes ago")
    }
    
    func testAnHourAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day
        date.hour = components.hour! - 1
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "An hour ago")
    }
    
    func testHoursAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day
        date.hour = components.hour! - 10
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "10 hours ago")
    }
    
    func testYesterday() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day! - 1
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "Yesterday")
    }
    
    func testDaysAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day! - 5
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "5 days ago")
    }
    
    func testLastWeek() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day! - 8
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "Last week")
    }
    
    func testWeeksAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month
        date.day = components.day! - 25
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "3 weeks ago")
    }
    
    func testLastMonth() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month! - 1
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "Last month")
    }
    
    func testMonthsAgo() {
        var date = DateComponents()
        date.year = components.year
        date.month = components.month! - 6
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "6 months ago")
    }
    
    func testLastYear() {
        var date = DateComponents()
        date.year = components.year! - 1
        date.month = components.month
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "Last year")
    }
    
    func testYearsAgo() {
        var date = DateComponents()
        date.year = components.year! - 10
        date.month = components.month
        date.day = components.day
        date.hour = components.hour
        date.minute = components.minute
        date.second = components.second
        let result = timeAgoSince(calendar.date(from: date)!)
        XCTAssertEqual(result, "10 years ago")
    }
    
}
