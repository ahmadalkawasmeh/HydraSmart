import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Recent Activity',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 10.0),
                      child: Text(
                        'The following is an overview of the measurements collected over the last 30 days',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    StreamBuilder<List<Sample2Record>>(
                      stream: querySample2Record(
                        queryBuilder: (sample2Record) =>
                            sample2Record.orderBy('x'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<Sample2Record> chartSample2RecordList =
                            snapshot.data!;
                        return SizedBox(
                          width: 370.0,
                          height: 230.0,
                          child: Stack(
                            children: [
                              FlutterFlowLineChart(
                                data: [
                                  FFLineChartData(
                                    xData: chartSample2RecordList
                                        .map((d) => d.x)
                                        .toList(),
                                    yData: chartSample2RecordList
                                        .map((d) => d.y1)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      barWidth: 2.0,
                                      isCurved: true,
                                      preventCurveOverShooting: true,
                                      dotData: FlDotData(show: false),
                                    ),
                                  ),
                                  FFLineChartData(
                                    xData: chartSample2RecordList
                                        .map((d) => d.x)
                                        .toList(),
                                    yData: chartSample2RecordList
                                        .map((d) => d.y2)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color: const Color(0xFF6F28CB),
                                      barWidth: 2.0,
                                      isCurved: true,
                                      preventCurveOverShooting: true,
                                      dotData: FlDotData(show: false),
                                    ),
                                  ),
                                  FFLineChartData(
                                    xData: chartSample2RecordList
                                        .map((d) => d.x)
                                        .toList(),
                                    yData: chartSample2RecordList
                                        .map((d) => d.y3)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color: const Color(0xFF2536A4),
                                      barWidth: 2.0,
                                      isCurved: true,
                                      preventCurveOverShooting: true,
                                      dotData: FlDotData(show: false),
                                    ),
                                  ),
                                  FFLineChartData(
                                    xData: chartSample2RecordList
                                        .map((d) => d.x)
                                        .toList(),
                                    yData: chartSample2RecordList
                                        .map((d) => d.y4)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color: const Color(0xFF539A80),
                                      barWidth: 2.0,
                                      isCurved: true,
                                      preventCurveOverShooting: true,
                                      dotData: FlDotData(show: false),
                                    ),
                                  )
                                ],
                                chartStylingInfo: ChartStylingInfo(
                                  enableTooltip: true,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  showGrid: true,
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderWidth: 1.0,
                                ),
                                axisBounds: const AxisBounds(
                                  minX: 0.0,
                                  minY: 0.0,
                                  maxX: 9.0,
                                  maxY: 10.0,
                                ),
                                xAxisLabelInfo: const AxisLabelInfo(
                                  reservedSize: 32.0,
                                ),
                                yAxisLabelInfo: const AxisLabelInfo(
                                  reservedSize: 40.0,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: FlutterFlowChartLegendWidget(
                                  entries: [
                                    LegendEntry(
                                        FlutterFlowTheme.of(context).primary,
                                        'EC'),
                                    const LegendEntry(Color(0xFF6F28CB), 'pH'),
                                    const LegendEntry(Color(0xFF2536A4), 'TSS'),
                                    const LegendEntry(Color(0xFF539A80), 'TDS'),
                                  ],
                                  width: 50.0,
                                  height: 75.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  textPadding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  borderWidth: 0.0,
                                  borderColor: Colors.black,
                                  indicatorSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'DashboardPage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                          text: 'Analytics Dashboard',
                          icon: const Icon(
                            Icons.query_stats,
                            size: 25.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('SettingsPage');
                        },
                        text: 'Settings',
                        icon: const Icon(
                          Icons.settings_sharp,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
