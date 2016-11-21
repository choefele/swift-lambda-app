#if os(Linux)
import XCTest

@testable import AlexaSkillTests

XCTMain([
       testCase(AlexaSkillHandlerTests.allTests)
])
#endif