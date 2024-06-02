import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'loading_animation_model.dart';
export 'loading_animation_model.dart';

class LoadingAnimationWidget extends StatefulWidget {
  const LoadingAnimationWidget({
    super.key,
    double? width,
    double? height,
    int? loadingAnimationNumner1to20,
  })  : width = width ?? 54.0,
        height = height ?? 54.0,
        loadingAnimationNumner1to20 = loadingAnimationNumner1to20 ?? 20;

  final double width;
  final double height;
  final int loadingAnimationNumner1to20;

  @override
  State<LoadingAnimationWidget> createState() => _LoadingAnimationWidgetState();
}

class _LoadingAnimationWidgetState extends State<LoadingAnimationWidget>
    with TickerProviderStateMixin {
  late LoadingAnimationModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingAnimationModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.loadingAnimationNumner1to20 == 20)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-20-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 19)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-19-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 18)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-18-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 17)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-17-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 16)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-16-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 15)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-15-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 14)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-14-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 13)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-13-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 12)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-12-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 11)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-11-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 10)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-10-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 9)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-9-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 8)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-8-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 7)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-7-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 6)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-6-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 5)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-5-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 4)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-4-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 3)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-3-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 2)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-2-dark.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            if (widget.loadingAnimationNumner1to20 == 1)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: widget.width,
                      height: widget.height,
                      decoration: const BoxDecoration(),
                      child: Lottie.asset(
                        'assets/lottie_animations/loader-1-dark.json.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
  }
}
