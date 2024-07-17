// 앱 버튼 기능 추가하기와 코드에 차이가 없다
// 첫날 미션이 앱에 위젯만 추가하는 거였는데, 첫날에 앱을 완성해버렸다.
// 오늘 미션은 시작하자마자 끝났네..

import 'package:flutter/material.dart';

void main() {
  runApp(CountWidget());
}

// Coubnt Widget
class CountWidget extends StatefulWidget{
  @override
  _CountWidgetState createState() => _CountWidgetState();
}

// Count State
class _CountWidgetState extends State<CountWidget> {
  // 변화될 카운트 변수
  int _count = 0;
  // 카운트 증가 함수
  void _increment(){
    setState(() {
      _count++;
    });
    print('Counter: $_count');
  }
  // 카운트 감소 함수
  void _decrement(){
    setState(() {
      _count--;
    });
    print('Counter: $_count');
  }
  // 카우튼 리셋 함수
  void _reset(){
    setState(() {
      _count = 0;
    });
    print('Counter reset to 0');
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        // AppBar 구성
        appBar: AppBar(title: Text('Flutter Counter App')),
        // body 구성
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 표시되는 텍스트
                Text('You have pushed the button this many times:'),
                // 표시되는 카운트 텍스트 구성
                Text('$_count',
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // - 버튼 구성
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: (){
                        _decrement();
                      },
                      child: const Text('－',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                    // 버튼 사이 공백
                    SizedBox(width: 20),
                    // + 버튼 구성
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: (){
                        _increment();
                      },
                      child: const Text('＋',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ], // Children
                ),
              ], // Children
            )
        ),
        // Floating Action Button 생성
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _reset();
          },
          child: Icon(Icons.restart_alt,
              size: 30
          ),
        ),
      ),
    );
  }
}
