import 'package:flutter/material.dart';
import 'package:flutter_beginner/second_page.dart';

// YouTube風のUI作成
class ThirdRoute extends StatelessWidget {
  ThirdRoute({super.key});
  final List<String> entries = <String>[
    '【ASMR】地球グミ食べてみた',
    '【総額100万円】Nintendo Switch爆買い',
    'ご報告',
    'ウーバーイーツ1万円分頼んでみた'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.tv),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      // ListViewはColumnにスクロールがついた感じ
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/c/c8/HIKAKIN%28UUUM_FES_2017%29.png'),
                    const SizedBox(width: 16),
                    Expanded( // 右側の文字を折り返す
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(
                              color: Colors.white,
                              height: 1.3, // 行間
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '1234回視聴 6日前',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      )
    );
  }
}