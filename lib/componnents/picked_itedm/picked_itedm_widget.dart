import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'picked_itedm_model.dart';
export 'picked_itedm_model.dart';

class PickedItedmWidget extends StatefulWidget {
  const PickedItedmWidget({super.key});

  @override
  State<PickedItedmWidget> createState() => _PickedItedmWidgetState();
}

class _PickedItedmWidgetState extends State<PickedItedmWidget> {
  late PickedItedmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickedItedmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'jrskuwnn' /* Latte */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Nunito Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'dai7f0vb' /* £3.85 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Nunito Sans',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '92q90wlh' /* Our signature blend espresso w... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Nunito Sans',
                              color: FlutterFlowTheme.of(context).inkLight,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 500),
              fadeOutDuration: Duration(milliseconds: 500),
              imageUrl:
                  'https://images.unsplash.com/photo-1593443320739-77f74939d0da?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxsYXR0ZXxlbnwwfHx8fDE3MTA3NDI0MTB8MA&ixlib=rb-4.0.3&q=80&w=1080',
              width: 116.0,
              height: 116.0,
              fit: BoxFit.cover,
            ),
          ),
        ].divide(SizedBox(width: 16.0)),
      ),
    );
  }
}
