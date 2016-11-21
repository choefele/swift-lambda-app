@testable import AlexaSkill
import AlexaSkillsKit
import Foundation
import XCTest

class AlexaSkillHandlerTests: XCTestCase {
    static let allTests = [
        ("testHandleIntent", testHandleIntent)
    ]
    
    var alexaSkillHandler: AlexaSkillHandler!
    
    override func setUp() {
        super.setUp()
        
        alexaSkillHandler = AlexaSkillHandler()
    }

    func testHandleIntent() {
        let request = Request(requestId: "requestId", timestamp: Date(), locale: Locale(identifier: "en"))
        let intentRequest = IntentRequest(request: request, intent: Intent(name: "name"))
        let application = Application(applicationId: "applicationId")
        let user = User(userId: "userId")
        let session = Session(isNew: true, sessionId: "sessionId", application: application, attributes: [:], user: user)

        let testExpectation = expectation(description: #function)
        alexaSkillHandler.handleIntent(request: intentRequest, session: session) { result in
            switch result {
            case .success(let result):
                XCTAssertEqual(result.standardResponse.outputSpeech, OutputSpeech.plain(text: "Alexa Skill received intent name"))
                XCTAssertTrue(result.sessionAttributes.isEmpty)
            case .failure:
                XCTFail()
            }
            
            testExpectation.fulfill()
        }
        waitForExpectations(timeout: 1)
    }
}
