import 'package:flutter/material.dart';


class SorghumScreen extends StatefulWidget {
  static const String id = 'sorghumscreen';
  const SorghumScreen({Key? key}) : super(key: key);
  @override
  _SorghumScreenState createState() => _SorghumScreenState();
}

class _SorghumScreenState extends State<SorghumScreen> {
  bool showSpinner = false;

  static const String _title = 'Sorghum';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            _title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      body: const PlantDetails(),
    );
  }
}

class PlantDetails extends StatefulWidget {
  const PlantDetails({Key? key}) : super(key: key);

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child:  CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/sorghum.jpg'),
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
            ),
          ),
          ExpansionTile(
            title: const Text(
              'Planting Dates',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            // subtitle: const Text('favourable time of planting'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text(
                'Maize is best planted in December',
                style:  TextStyle(
                  fontSize: 15,
                ),
              )
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Fertilization',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text(
                'type of fertilizer',
                style:  TextStyle(
                  fontSize: 15,
                ),
              )
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Weed Control',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text(
                'weeds',
                style:  TextStyle(
                  fontSize: 15,
                ),
              )
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Disease Control',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text(
                'diseases',
                style:  TextStyle(
                  fontSize: 15,
                ),
              )
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'General tips',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text(
                'Tips',
                style:  TextStyle(
                  fontSize: 15,
                ),
              )
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
        ],
      ));
}
