import 'package:app_movies_flutter/application/application.dart';
import 'package:app_movies_flutter/models/models.dart';
import 'package:app_movies_flutter/modules/movie_detail/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailContentMainCast extends StatelessWidget {
  MovieDetailContentMainCast({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieDetailModel? movie;
  final showPanel = false.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: context.themeGrey),
        Obx(() {
          return ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (panelIndex, isExpanded) => showPanel.toggle(),
            children: [
              ExpansionPanel(
                canTapOnHeader: false,
                isExpanded: showPanel.value,
                backgroundColor: Colors.white,
                headerBuilder: (context, isExpanded) {
                  return const Padding(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Elenco',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
                body: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: movie?.cast
                            .map(
                              (cast) => MovieCast(
                                cast: cast,
                              ),
                            )
                            .toList() ??
                        const [],
                  ),
                ),
              ),
            ],
          );
        }),
        const SizedBox(height: 16),
      ],
    );
  }
}
