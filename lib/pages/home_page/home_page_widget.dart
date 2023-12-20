import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
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
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.33,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/vecteezy_abstract-purple-fluid-wave-background_.jpg',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Hello',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0x71FFFFFF),
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.white,
                                          borderRadius: 15.0,
                                          borderWidth: 1.0,
                                          buttonSize: 45.0,
                                          fillColor: const Color(0x004B39EF),
                                          icon: const Icon(
                                            Icons.menu_rounded,
                                            color: Colors.white,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'User',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 45.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '750',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Text(
                                          ' / 1500 xp',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0x71FFFFFF),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.5,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      lineHeight: 10.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: const Color(0xFFFBFBFF),
                                      backgroundColor: const Color(0x71FFFFFF),
                                      barRadius: const Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 220.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Icon(
                                          Icons.format_quote,
                                          color: Color(0xE32C025C),
                                          size: 30.0,
                                        ),
                                        Text(
                                          'Crispy Quote',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xE32C025C),
                                                fontSize: 24.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 20.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xBBCCD4DC),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '"Il n\'y a pas de forteresse imprenable, il n\'y a que de mauvais assaillants."',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Icon(
                                          Icons.event_note,
                                          color: Color(0xE32C025C),
                                          size: 30.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Task of the day',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xE32C025C),
                                                  fontSize: 24.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                              minWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.45,
                                              minHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.2,
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.45,
                                              maxHeight:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xBBCCD4DC),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 15.0, 15.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Text(
                                                      '\$TaskName',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: const Color(
                                                                    0xFF2C025C),
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                        colors: [
                                                          Color(0xFFB839EE),
                                                          Color(0xFFE37C35)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.5, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.5, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  7.0,
                                                                  10.0,
                                                                  7.0),
                                                      child: Text(
                                                        '10 xp',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0xA2000000),
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 15.0,
                                                      borderWidth: 0.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          const Color(0xE32C025C),
                                                      icon: const Icon(
                                                        Icons
                                                            .keyboard_arrow_right_sharp,
                                                        color: Colors.white,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'TaskPage');
                                                      },
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.45,
                                              constraints: BoxConstraints(
                                                minWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                minHeight:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.2,
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                maxHeight:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.2,
                                              ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xBBCCD4DC),
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 15.0, 15.0, 10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Text(
                                                        '\$TaskName',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: const Color(
                                                                  0xFF2C025C),
                                                              fontSize: 18.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            const LinearGradient(
                                                          colors: [
                                                            Color(0xFFB839EE),
                                                            Color(0xFFE37C35)
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.14),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, -0.14),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    7.0,
                                                                    10.0,
                                                                    7.0),
                                                        child: Text(
                                                          '10 xp',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 12.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Lorem ipsum dolor sit amet',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xA2000000),
                                                              ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 15.0,
                                                        borderWidth: 0.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            const Color(0xE32C025C),
                                                        icon: const Icon(
                                                          Icons
                                                              .keyboard_arrow_right_sharp,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                              'TaskPage');
                                                        },
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 5.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 30.0, 20.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 100.0,
                                              borderWidth: 1.0,
                                              buttonSize: 60.0,
                                              fillColor: const Color(0xBBCCD4DC),
                                              icon: const Icon(
                                                Icons.add,
                                                color: Color(0xE32C025C),
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                context.pushNamed('TaskPage');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 100.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.moon,
                                            color: Color(0xE32C025C),
                                            size: 30.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Sleep Tracker',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            const Color(0xE32C025C),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('SleepPageTrack');
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xBBCCD4DC),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
