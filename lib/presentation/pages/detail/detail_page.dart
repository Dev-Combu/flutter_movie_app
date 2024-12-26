import 'package:flutter/material.dart';
import 'package:flutter_movie_app/presentation/pages/detail/widgets/movie_sub_info.dart';

class DetailPage extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Hero(
            tag: 'main-image',
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Image.network(
                'https://picsum.photos/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Title'), Text('2024-11-27')],
                ),
                Text('tagline'),
                Text('러닝 타임'),
                Divider(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5, color: Colors.white)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: SizedBox(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('animation',
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ),
                ),
                Divider(height: 10),
                Text(
                    '영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.영화설명입니다. 이건 이런저런 이야기하는 영화입니다.'),
                Divider(height: 10),
                Text('흥행정보'),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [ 
                      MovieSubInfo(),
                      MovieSubInfo(),
                      MovieSubInfo(),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

