import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/lat_lng.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'map_model.dart';
export 'map_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Map',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.02, -0.74),
              child: FlutterFlowStaticMap(
                location: LatLng(19.02142, 73.52243),
                apiKey:
                    'sk.eyJ1Ijoic3dhaWppdC1zaW5naCIsImEiOiJjbGVzNjJrcnowZ20zM3BuMXV4bTMyODd6In0.qcTQ22le4ylnIxHp1Pm-1w',
                style: MapBoxStyle.Satellite_Street_V11,
                width: 350.0,
                height: 350.0,
                fit: BoxFit.fill,
                borderRadius: BorderRadius.circular(0.0),
                markerColor: Color(0xFF4F0F0F),
                cached: true,
                zoom: 16,
                tilt: 0,
                rotation: 0,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.03),
              child: wrapWithModel(
                model: _model.navBar1Model,
                updateCallback: () => setState(() {}),
                child: NavBar1Widget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
