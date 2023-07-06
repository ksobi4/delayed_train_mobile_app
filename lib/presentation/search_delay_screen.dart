import 'package:delayed_train/core/locator.dart';
import 'package:delayed_train/data/station_repository.dart';
import 'package:delayed_train/models/station.dart';
import 'package:delayed_train/models/station_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchDelayScreen extends StatefulWidget {
  const SearchDelayScreen({super.key});

  @override
  State<SearchDelayScreen> createState() => _SearchDelayScreenState();
}

class _SearchDelayScreenState extends State<SearchDelayScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TypeAheadField(
          noItemsFoundBuilder: (context) => const Text('No items'),
          textFieldConfiguration:
              TextFieldConfiguration(controller: _controller),
          itemBuilder: (BuildContext context, Station item) {
            return ListTile(
              title: Text(item.name),
              leading: Text(item.id),
            );
          },
          onSuggestionSelected: (Station suggestion) {
            _controller.text = suggestion.name;
          },
          suggestionsCallback: (String rawStation) async {
            StationList list =
                await l.get<StationRepository>().getFullStationName(rawStation);
            return list.list;
          },
          getImmediateSuggestions: true,
        ),
      ),
    );
  }
}
