import '/componnents/loading_animation/loading_animation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'loadings_model.dart';
export 'loadings_model.dart';

class LoadingsWidget extends StatefulWidget {
  const LoadingsWidget({super.key});

  @override
  State<LoadingsWidget> createState() => _LoadingsWidgetState();
}

class _LoadingsWidgetState extends State<LoadingsWidget> {
  late LoadingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              FFIcons.karrowLeft,
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'asv4u0py' /* Loading Animations */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito Sans',
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
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'j22yg4hp' /* 01 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel1,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 1,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel2,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 1,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel3,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '6uo0wkfl' /* 02 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel4,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel5,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel6,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'vatfffey' /* 03 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel7,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 3,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel8,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 3,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel9,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 3,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'rgj0xa67' /* 04 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel10,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 4,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel11,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 4,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel12,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'o363y6qu' /* 05 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel13,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel14,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel15,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'w9x0qi0z' /* 06 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel16,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 6,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel17,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 6,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel18,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '0dnj84tm' /* 07 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel19,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 7,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel20,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 7,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel21,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 7,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ulxeoz4w' /* 08 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel22,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 8,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel23,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 8,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel24,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'r56hmqee' /* 09 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel25,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 9,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel26,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 9,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel27,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 9,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'm4fv4r0d' /* 10 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel28,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 10,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel29,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 10,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel30,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'c96kyk4y' /* 11 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel31,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 11,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel32,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 11,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel33,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'pphlfnud' /* 12 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel34,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 12,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel35,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 12,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel36,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ni04kr5q' /* 13 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel37,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 13,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel38,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 13,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel39,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'qljae5hh' /* 14 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel40,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel41,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel42,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'h2saim9f' /* 15 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel43,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel44,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel45,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '06o001gy' /* 16 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel46,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel47,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel48,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '0j5f8z5c' /* 17 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel49,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 17,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel50,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 17,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel51,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'rfk4mwqq' /* 18 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel52,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 18,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel53,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 18,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel54,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '1edn3x9n' /* 19 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel55,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 19,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel56,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 19,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel57,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 19,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'og3wg6uo' /* 20 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).greyG300,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel58,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 75.0,
                                height: 75.0,
                                loadingAnimationNumner1to20: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel59,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 50.0,
                                height: 50.0,
                                loadingAnimationNumner1to20: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.loadingAnimationModel60,
                              updateCallback: () => setState(() {}),
                              child: const LoadingAnimationWidget(
                                width: 25.0,
                                height: 25.0,
                                loadingAnimationNumner1to20: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 16.0)),
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
