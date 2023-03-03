import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'time_table_model.dart';
export 'time_table_model.dart';

class TimeTableWidget extends StatefulWidget {
  const TimeTableWidget({Key? key}) : super(key: key);

  @override
  _TimeTableWidgetState createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {
  late TimeTableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeTableModel());
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
          'Time Table',
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
        child: Align(
          alignment: AlignmentDirectional(0.0, 1.03),
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.9),
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/517/600',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.55),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '[User Name]',
                                style: FlutterFlowTheme.of(context).title1,
                              )
                            ],
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.5, -0.4),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '1',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.5, -0.4),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '1',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.55, -0.3),
                        child: Text(
                          'Subscribed',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.55, -0.3),
                        child: Text(
                          'Attended',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.5),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.9, 0.0),
                                child: Text(
                                  'My Events',
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.9, -0.8),
                                      child: Text(
                                        '[EventName]',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.75, -0.75),
                                      child: Text(
                                        '[dateTime]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.75, 0.1),
                                      child: Text(
                                        '[This is the discription of the Event.]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.9, -0.8),
                                      child: Text(
                                        '[EventName]',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.75, -0.75),
                                      child: Text(
                                        '[dateTime]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.75, 0.1),
                                      child: Text(
                                        '[This is the discription of the Event.]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.9, -0.8),
                                      child: Text(
                                        '[EventName]',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.75, -0.75),
                                      child: Text(
                                        '[dateTime]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.75, 0.1),
                                      child: Text(
                                        '[This is the discription of the Event.]',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
      ),
    );
  }
}
