import '/componnents/empty_card/empty_card_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'basket_your_orders_model.dart';
export 'basket_your_orders_model.dart';

class BasketYourOrdersWidget extends StatefulWidget {
  const BasketYourOrdersWidget({super.key});

  @override
  State<BasketYourOrdersWidget> createState() => _BasketYourOrdersWidgetState();
}

class _BasketYourOrdersWidgetState extends State<BasketYourOrdersWidget> {
  late BasketYourOrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BasketYourOrdersModel());

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
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.headerModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: HeaderWidget(
                          title: 'Your orderes',
                          showBackIcon: true,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.emptyCardModel,
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: EmptyCardWidget(
                                      photo:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/huber-eats-consumer-app-38yn7u/assets/n9kft5vhp1au/Screenshot_2024-03-10_at_15.42.01.png',
                                      title: 'No orders yet',
                                      description:
                                          'When you place your first order, it will\nappear here',
                                      buttonText: 'Para comer',
                                      action: () async {},
                                    ),
                                  ),
                                ]
                                    .addToStart(SizedBox(height: 20.0))
                                    .addToEnd(SizedBox(height: 24.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
                  child: wrapWithModel(
                    model: _model.navigatorModel,
                    updateCallback: () => setState(() {}),
                    child: NavigatorWidget(
                      expanded: false,
                    ),
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
