import 'package:david_badminton/common/widgets/custom_shape/curved_edges/custom_curved_edge.dart';
import 'package:flutter/material.dart';

class CurvedEdgeWidget extends StatelessWidget {
 CurvedEdgeWidget({
    super.key, this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: child,
    );
  }
}