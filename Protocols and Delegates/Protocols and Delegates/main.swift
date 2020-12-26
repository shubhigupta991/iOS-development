protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergengcyCallHandler {
    var delegate : AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened!?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic : AdvancedLifeSupport {
    
    init(handler: EmergengcyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor : AdvancedLifeSupport {
    
    init(handler : EmergengcyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening to heart sounds.")
    }
}

let emilio = EmergengcyCallHandler()
// let pete = Paramedic(handler: emilio)
let shubhi = Doctor(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
