// The Swift Programming Language
// https://docs.swift.org/swift-book

// 하나의 타깃 안에서 여러 언어를 사용하는건 불가능

import Foundation

public struct Person {
    public let name: String
    public let age: Int
    //private let address: String

    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

extension Date {
    var year: Int {
        return Calendar.current.component(.year, from: Date())
    }
}

//public struct Point {
//    public let x: Double
//    public let y: Double
//}
//
//fileprivate struct Size {
//    let width: Double // internal > fileprivate
//    let height: Double // internal > fileprivate
//}
//
//fileprivate func doSomething(with point: Point) -> Size {
//    return Size(width: 0, height: 0)
//}


// Access Control
// 접근 범위를 선언하는 문법
// 기준 범위 : 선언 내부, 소스 파일, 모듈
// 기본 규칙 : 엑세스 레벨을 지정할 때, 낮은 레벨을 기반으로 선언할 수 없음

// (높은 레벨)
// open
// 모듈 외부에서 접근 O, 서브클래싱 O, 오버라이딩 O, 클래스 전용

// public
// 모듈 외부에서 접근 O, 서브클래싱 X, 오버라이딩 X, 범용

// internal
// 기본값. 동일한 모듈 내부에서만 접근 가능. 생략 가능

// fileprivate
// 동일한 파일에서만 접근 가능

// private
// 선언 내부에서만 접근 가능
// (낮은 레벨)


// Module
// 코드 집합, 일반적으로 target과 동일함
// 사용 이유
// 1. 네임스페이스 역할 : 모듈 안에 있는 이름과 밖에 있은 이름이 충돌하지 않음
// 2. Access Control 지원 : 필요한 부분만 공개하고 나머지는 은닉
// 3. 재사용성
