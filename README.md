# Doit 스위프트로 앱 만들기 입문 Swift 개념 정리

 ViewController : 화면에 보이는 뷰에서 처리하는 내용의 스위프트 소스 코드를 담고 있는 클래스 파일.
Main : 앱의 내용을 시작적으로 쉽게 이해하고 프로그래밍 할 수 있도록 그림으로 표현한 파일.
## -> 정리, ViewController 는 사용자 인터페이스와 동작 관리를 담당하는 인터페이스, Main 은 앱의 시작 지점을 나타내는데 사용되는 용어.

아웃렛 변수 : 스토리보드에 추가한 객체를 선택하고 내용을 변경하거나 특정 동작을 수행하도록 하기 위한 해당 객체에 접근할 수 있는 변수.
액션 함수 : 동적을 정의한 함수.

상수와 변수
상수 : let을 사용해 선언할 수 있다. 이때 값을 지정해 주어야 하며 값이 한 번 결정되면 이후에는 값을 바꿀 수 없다. // java에서 final 과 동일하다.
변수 : var를 사용해 선언할 수 있다. 최초 선헌한 값 이외에도 중간에 계속해서 다른 값으로 변경할 수 있다.

아웃렛 변수 선언 시, Storage Strong과 Weak의 차이
-우선 ARC 는 앱의 메모리 사용과 관리를 추적한다. -> 정리하면 객체에 대해 강한 참조가 남아있는 한 해당 메모리는 해체가 되지 않아야 한다.
strong : 객체를 참조하고 reference count 를 증가시킨다. / 해당 객체에 nil 을 넣어주어야 메모리가 해체된다.
weak : 객체를 참조하고 reference count 는 변함이 없다.
## -> 정리
Strong : reference count 를 증가시켜 ARC로 인한 메모리 해체를 피하고, 객체를 안전하게 사용하고자 할 떄 사용
weak : 순환 참조에 의해 메모리 누수 문제를 막기 위해 사용

이미지 변수를 선언할 때 : img~ : UIImage(named : "이미지의 파일명")

viewDidLoad 함수란 ?
viewDidLoad 함수는 내가 만든 뷰를 불러 왔을 때 호출되는 함수. 뷰가 불려진 후 실행하고자 하는 기능이 필요할 때 이 viewDidLoad 함수 내에 코드를 작성.
