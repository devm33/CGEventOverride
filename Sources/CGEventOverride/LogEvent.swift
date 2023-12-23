import Cocoa
import CoreGraphics
import Foundation

public func logCGEvent(_ event: CGEvent) {
    print("===========")
    print("Event Type", event.type.name)
    for i in 1...(200 as UInt32) {
        let v = event[i]
        let vd = event[double: i]
        if v != 0 {
            print("[\(i)]" + CGEventField(rawValue: i)!.name, "\(v) (\(vd))")
        }
    }
    print("===========\n")
}

public extension CGEventType {
    var name: String {
        switch self {
        case .null: return "null"
        case .leftMouseDown: return "leftMouseDown"
        case .leftMouseUp: return "leftMouseUp"
        case .rightMouseDown: return "rightMouseDown"
        case .rightMouseUp: return "rightMouseUp"
        case .mouseMoved: return "mouseMoved"
        case .leftMouseDragged: return "leftMouseDragged"
        case .rightMouseDragged: return "rightMouseDragged"
        case .keyDown: return "keyDown"
        case .keyUp: return "keyUp"
        case .flagsChanged: return "flagsChanged"
        case .scrollWheel: return "scrollWheel"
        case .tabletPointer: return "tabletPointer"
        case .tabletProximity: return "tabletProximity"
        case .otherMouseDown: return "otherMouseDown"
        case .otherMouseUp: return "otherMouseUp"
        case .otherMouseDragged: return "otherMouseDragged"
        case .tapDisabledByTimeout: return "tapDisabledByTimeout"
        case .tapDisabledByUserInput: return "tapDisabledByUserInput"
        case .gesture: return "gesture"
        case .dockGesture: return "dockGesture"
        default: return "unknown \(rawValue)"
        }
    }
}

public extension RotateDirection {
    var name: String {
        switch self {
        case .none: return "none"
        case .clockwise: return "clockwise"
        case .counterClockwise: return "counter-clockwise"
        }
    }
}

public extension ZoomDirection {
    var name: String {
        switch self {
        case .none: return "none"
        case .expand: return "expand"
        case .contract: return "contract"
        }
    }
}

public extension SwipeDirection {
    var name: String {
        switch self {
        case .none: return "none"
        case .up: return "up"
        case .down: return "down"
        case .left: return "left"
        case .right: return "right"
        }
    }
}

public extension CGEventField {
    var name: String {
        switch rawValue {
        case CGEventField.mouseEventNumber.rawValue:
            return "mouseEventNumber"
        case CGEventField.mouseEventClickState.rawValue:
            return "mouseEventClickState"
        case CGEventField.mouseEventPressure.rawValue:
            return "mouseEventPressure"
        case CGEventField.mouseEventButtonNumber.rawValue:
            return "mouseEventButtonNumber"
        case CGEventField.mouseEventDeltaX.rawValue:
            return "mouseEventDeltaX"
        case CGEventField.mouseEventDeltaY.rawValue:
            return "mouseEventDeltaY"
        case CGEventField.mouseEventInstantMouser.rawValue:
            return "mouseEventInstantMouser"
        case CGEventField.mouseEventSubtype.rawValue:
            return "mouseEventSubtype"
        case CGEventField.keyboardEventAutorepeat.rawValue:
            return "keyboardEventAutorepeat"
        case CGEventField.keyboardEventKeycode.rawValue:
            return "keyboardEventKeycode"
        case CGEventField.keyboardEventKeyboardType.rawValue:
            return "keyboardEventKeyboardType"
        case CGEventField.scrollWheelEventDeltaAxis1.rawValue:
            return "scrollWheelEventDeltaAxis1"
        case CGEventField.scrollWheelEventDeltaAxis2.rawValue:
            return "scrollWheelEventDeltaAxis2"
        case CGEventField.scrollWheelEventDeltaAxis3.rawValue:
            return "scrollWheelEventDeltaAxis3"
        case CGEventField.scrollWheelEventFixedPtDeltaAxis1.rawValue:
            return "scrollWheelEventFixedPtDeltaAxis1"
        case CGEventField.scrollWheelEventFixedPtDeltaAxis2.rawValue:
            return "scrollWheelEventFixedPtDeltaAxis2"
        case CGEventField.scrollWheelEventFixedPtDeltaAxis3.rawValue:
            return "scrollWheelEventFixedPtDeltaAxis3"
        case CGEventField.scrollWheelEventPointDeltaAxis1.rawValue:
            return "scrollWheelEventPointDeltaAxis1"
        case CGEventField.scrollWheelEventPointDeltaAxis2.rawValue:
            return "scrollWheelEventPointDeltaAxis2"
        case CGEventField.scrollWheelEventPointDeltaAxis3.rawValue:
            return "scrollWheelEventPointDeltaAxis3"
        case CGEventField.scrollWheelEventScrollPhase.rawValue:
            return "scrollWheelEventScrollPhase"
        case CGEventField.scrollWheelEventScrollCount.rawValue:
            return "scrollWheelEventScrollCount"
        case CGEventField.scrollWheelEventMomentumPhase.rawValue:
            return "scrollWheelEventMomentumPhase"
        case CGEventField.scrollWheelEventInstantMouser.rawValue:
            return "scrollWheelEventInstantMouser"
        case CGEventField.tabletEventPointX.rawValue:
            return "tabletEventPointX"
        case CGEventField.tabletEventPointY.rawValue:
            return "tabletEventPointY"
        case CGEventField.tabletEventPointZ.rawValue:
            return "tabletEventPointZ"
        case CGEventField.tabletEventPointButtons.rawValue:
            return "tabletEventPointButtons"
        case CGEventField.tabletEventPointPressure.rawValue:
            return "tabletEventPointPressure"
        case CGEventField.tabletEventTiltX.rawValue:
            return "tabletEventTiltX"
        case CGEventField.tabletEventTiltY.rawValue:
            return "tabletEventTiltY"
        case CGEventField.tabletEventRotation.rawValue:
            return "tabletEventRotation"
        case CGEventField.tabletEventTangentialPressure.rawValue:
            return "tabletEventTangentialPressure"
        case CGEventField.tabletEventDeviceID.rawValue:
            return "tabletEventDeviceID"
        case CGEventField.tabletEventVendor1.rawValue:
            return "tabletEventVendor1"
        case CGEventField.tabletEventVendor2.rawValue:
            return "tabletEventVendor2"
        case CGEventField.tabletEventVendor3.rawValue:
            return "tabletEventVendor3"
        case CGEventField.tabletProximityEventVendorID.rawValue:
            return "tabletProximityEventVendorID"
        case CGEventField.tabletProximityEventTabletID.rawValue:
            return "tabletProximityEventTabletID"
        case CGEventField.tabletProximityEventPointerID.rawValue:
            return "tabletProximityEventPointerID"
        case CGEventField.tabletProximityEventDeviceID.rawValue:
            return "tabletProximityEventDeviceID"
        case CGEventField.tabletProximityEventSystemTabletID.rawValue:
            return "tabletProximityEventSystemTabletID"
        case CGEventField.tabletProximityEventVendorPointerType.rawValue:
            return "tabletProximityEventVendorPointerType"
        case CGEventField.tabletProximityEventVendorPointerSerialNumber.rawValue:
            return "tabletProximityEventVendorPointerSerialNumber"
        case CGEventField.tabletProximityEventVendorUniqueID.rawValue:
            return "tabletProximityEventVendorUniqueID"
        case CGEventField.tabletProximityEventCapabilityMask.rawValue:
            return "tabletProximityEventCapabilityMask"
        case CGEventField.tabletProximityEventPointerType.rawValue:
            return "tabletProximityEventPointerType"
        case CGEventField.tabletProximityEventEnterProximity.rawValue:
            return "tabletProximityEventEnterProximity"
        case CGEventField.eventTargetProcessSerialNumber.rawValue:
            return "eventTargetProcessSerialNumber"
        case CGEventField.eventTargetUnixProcessID.rawValue:
            return "eventTargetUnixProcessID"
        case CGEventField.eventSourceUnixProcessID.rawValue:
            return "eventSourceUnixProcessID"
        case CGEventField.eventSourceUserData.rawValue:
            return "eventSourceUserData"
        case CGEventField.eventSourceUserID.rawValue:
            return "eventSourceUserID"
        case CGEventField.eventSourceGroupID.rawValue:
            return "eventSourceGroupID"
        case CGEventField.eventSourceStateID.rawValue:
            return "eventSourceStateID"
        case CGEventField.scrollWheelEventIsContinuous.rawValue:
            return "scrollWheelEventIsContinuous"
        case CGEventField.mouseEventWindowUnderMousePointer.rawValue:
            return "mouseEventWindowUnderMousePointer"
        case CGEventField.mouseEventWindowUnderMousePointerThatCanHandleThisEvent.rawValue:
            return "mouseEventWindowUnderMousePointerThatCanHandleThisEvent"
        case CGEventField.eventUnacceleratedPointerMovementX.rawValue:
            return "eventUnacceleratedPointerMovementX"
        case CGEventField.eventUnacceleratedPointerMovementY.rawValue:
            return "eventUnacceleratedPointerMovementY"
        case CGEventField.windowNumber.rawValue:
            return "windowNumber"
        case CGEventField.eventType.rawValue:
            return "eventType"
        case CGEventField.gestureType.rawValue:
            return "GestureType"
        case CGEventField.gestureValueX.rawValue:
            return "ValueX"
        case CGEventField.gestureZoomDirection.rawValue:
            return "ZoomDirection"
        case CGEventField.gestureSwipeValueX.rawValue:
            return "SwipeValueX"
        case CGEventField.gestureScrollValueY.rawValue:
            return "ScrollValueY"
        case CGEventField.gestureSwipeDirection.rawValue:
            return "SwipeDirection"
        case CGEventField.gestureSwipeMotion.rawValue:
            return "SwipeMotion"
        case CGEventField.gestureSwipeProgress.rawValue:
            return "SwipeProgress"
        case CGEventField.gestureSwipePositionX.rawValue:
            return "SwipePositionX"
        case CGEventField.gestureSwipePositionY.rawValue:
            return "SwipePositionY"
        case CGEventField.gesturePhase.rawValue:
            return "Phase"
        default:
            return "Unnamed"
        }
    }
}

public extension GestureMotion {
    var name: String {
        switch self {
        case .none: return "none"
        case .horizontal: return "horizontal"
        case .vertical: return "vertical"
        case .pinch: return "pinch"
        case .rotate: return "rotate"
        case .tap: return "tap"
        case .doubleTap: return "doubleTap"
        case .fromLeftEdge: return "fromLeftEdge"
        case .offLeftEdge: return "offLeftEdge"
        case .fromRightEdge: return "fromRightEdge"
        case .offRightEdge: return "offRightEdge"
        case .fromTopEdge: return "fromTopEdge"
        case .offTopEdge: return "offTopEdge"
        case .fromBottomEdge: return "fromBottomEdge"
        case .offBottomEdge: return "offBottomEdge"
        }
    }
}

public extension GestureType {
    var name: String {
        switch self {
        case .null: return "null"
        case .vendorDefined: return "vendorDefined"
        case .button: return "button"
        case .keyboard: return "keyboard"
        case .translation: return "translation"
        case .rotation: return "rotation"
        case .scroll: return "scroll"
        case .scale: return "scale"
        case .zoom: return "zoom"
        case .velocity: return "velocity"
        case .orientation: return "orientation"
        case .digitizer: return "digitizer"
        case .ambientLightSensor: return "ambientLightSensor"
        case .accelerometer: return "accelerometer"
        case .proximity: return "proximity"
        case .temperature: return "temperature"
        case .navigationSwipe: return "navigationSwipe"
        case .mouse: return "mouse"
        case .progress: return "progress"
        case .count: return "count"
        case .gyro: return "gyro"
        case .compass: return "compass"
        case .zoomToggle: return "zoomToggle"
        case .dockSwipe: return "dockSwipe"
        case .symbolicHotKey: return "symbolicHotKey"
        case .power: return "power"
        case .brightness: return "brightness"
        case .fluidTouchGesture: return "fluidTouchGesture"
        case .boundaryScroll: return "boundaryScroll"
        case .reset: return "reset"
        case .gestureStarted: return "gestureStarted"
        case .gestureEnded: return "gestureEnded"
        }
    }
}

public extension CGScrollPhase {
    var name: String {
        switch self {
        case .began: return "began"
        case .cancelled: return "cancelled"
        case .changed: return "changed"
        case .ended: return "ended"
        case .mayBegin: return "mayBegin"
        default: return "unknown"
        }
    }
}

public extension CGMomentumScrollPhase {
    var name: String {
        switch self {
        case .none: return "none"
        case .begin: return "begin"
        case .continuous: return "continuous"
        case .end: return "end"
        default: return "unknown"
        }
    }
}

public extension CGGesturePhase {
    var name: String {
        switch self {
        case .none: return "none"
        case .began: return "began"
        case .changed: return "changed"
        case .ended: return "ended"
        case .cancelled: return "cancelled"
        case .mayBegin: return "mayBegin"
        default: return "unknown"
        }
    }
}

