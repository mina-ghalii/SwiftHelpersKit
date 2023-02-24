import Foundation

public class Observable<T> {
    public typealias Listener = (T) -> Void
    public var listener: Listener?
    
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func observe(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
