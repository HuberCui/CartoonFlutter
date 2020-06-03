/*

  IconTextButton 是一个图文按钮，
  Flutter的RaisedButton按钮RaisedButton.icon()按钮只能实现左图右文字

  IconTextButton.icon() 可以实现四种样式：
      图在上文字在下，图在下文字在上，图在左文字在右，图在右文字在左

  使用也很简单,其它属性设置和RaisedButton.icon()一样，
  只需要设置属性iconTextAlignment，它是一个枚举值   
  
  enum IconTextAlignment {
    iconTopTextBottom,//图在上文字在下
    iconBottomTextTop,//图在下文字在上
    iconLeftTextRight,//图在左文字在右
    iconRightTextLeft,//图在右文字在左
  }
  
  eg:
  IconTextButton.icon(
    icon: Icon(Icons.add_alarm,size: 80,),
    label: Text("图下文上"),
    color: Colors.lightBlue,
    textColor: Colors.white,
    elevation: 4.0,
    iconTextAlignment: IconTextAlignment.iconBottomTextTop,
    onPressed: (){
      onClick("图下文上");
    },
  ),

*/

import "package:flutter/foundation.dart";
import 'package:flutter/material.dart';

//add by 飞羽 2019-08-02
enum IconTextAlignment {
  iconTopTextBottom,//图在上文字在下
  iconBottomTextTop,//图在下文字在上
  iconLeftTextRight,//图在左文字在右
  iconRightTextLeft,//图在右文字在左
}

class IconTextButton extends MaterialButton {
  /// Create a filled button.
  ///
  /// The [elevation], [highlightElevation], [disabledElevation], and
  /// [clipBehavior] arguments must not be null. Additionally,  [elevation],
  /// [highlightElevation], and [disabledElevation] must be non-negative.
  const IconTextButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    Widget child,
  }) : assert(elevation == null || elevation >= 0.0),
       assert(highlightElevation == null || highlightElevation >= 0.0),
       assert(disabledElevation == null || disabledElevation >= 0.0),
       super(
         key: key,
         onPressed: onPressed,
         onHighlightChanged: onHighlightChanged,
         textTheme: textTheme,
         textColor: textColor,
         disabledTextColor: disabledTextColor,
         color: color,
         disabledColor: disabledColor,
         highlightColor: highlightColor,
         splashColor: splashColor,
         colorBrightness: colorBrightness,
         elevation: elevation,
         highlightElevation: highlightElevation,
         disabledElevation: disabledElevation,
         padding: padding,
         shape: shape,
         clipBehavior: clipBehavior,
         materialTapTargetSize: materialTapTargetSize,
         animationDuration: animationDuration,
         child: child,
       );

  /// Create a filled button from a pair of widgets that serve as the button's
  /// [icon] and [label].
  ///
  /// The icon and label are arranged in a row and padded by 12 logical pixels
  /// at the start, and 16 at the end, with an 8 pixel gap in between.
  ///
  /// The [elevation], [highlightElevation], [disabledElevation], [icon],
  /// [label], and [clipBehavior] arguments must not be null.
  factory IconTextButton.icon({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    ShapeBorder shape,
    Clip clipBehavior,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    @required Widget icon,
    @required Widget label,
    @required IconTextAlignment iconTextAlignment,
  }) = _IconTextButtonWithIcon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ButtonThemeData buttonTheme = ButtonTheme.of(context);
    return RawMaterialButton(
      onPressed: onPressed,
      onHighlightChanged: onHighlightChanged,
      clipBehavior: clipBehavior ?? Clip.none,
      fillColor: buttonTheme.getFillColor(this),
      textStyle: theme.textTheme.button.copyWith(color: buttonTheme.getTextColor(this)),
      highlightColor: buttonTheme.getHighlightColor(this),
      splashColor: buttonTheme.getSplashColor(this),
      elevation: buttonTheme.getElevation(this),
      highlightElevation: buttonTheme.getHighlightElevation(this),
      disabledElevation: buttonTheme.getDisabledElevation(this),
      padding: buttonTheme.getPadding(this),
      constraints: buttonTheme.getConstraints(this),
      shape: buttonTheme.getShape(this),
      animationDuration: buttonTheme.getAnimationDuration(this),
      materialTapTargetSize: buttonTheme.getMaterialTapTargetSize(this),
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>('onPressed', onPressed, ifNull: 'disabled'));
    properties.add(DiagnosticsProperty<Color>('textColor', textColor, defaultValue: null));
    properties.add(DiagnosticsProperty<Color>('disabledTextColor', disabledTextColor, defaultValue: null));
    properties.add(DiagnosticsProperty<Color>('color', color, defaultValue: null));
    properties.add(DiagnosticsProperty<Color>('disabledColor', disabledColor, defaultValue: null));
    properties.add(DiagnosticsProperty<Color>('highlightColor', highlightColor, defaultValue: null));
    properties.add(DiagnosticsProperty<Color>('splashColor', splashColor, defaultValue: null));
    properties.add(DiagnosticsProperty<Brightness>('colorBrightness', colorBrightness, defaultValue: null));
    properties.add(DiagnosticsProperty<double>('elevation', elevation, defaultValue: null));
    properties.add(DiagnosticsProperty<double>('highlightElevation', highlightElevation, defaultValue: null));
    properties.add(DiagnosticsProperty<double>('disabledElevation', disabledElevation, defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding, defaultValue: null));
    properties.add(DiagnosticsProperty<ShapeBorder>('shape', shape, defaultValue: null));
  }
}

/// The type of of RaisedButtons created with [RaisedButton.icon].
///
/// This class only exists to give RaisedButtons created with [RaisedButton.icon]
/// a distinct class for the sake of [ButtonTheme]. It can not be instantiated.
class _IconTextButtonWithIcon extends IconTextButton with MaterialButtonWithIconMixin {
  _IconTextButtonWithIcon({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    @required Widget icon,
    @required Widget label,
    IconTextAlignment iconTextAlignment,
  }) : assert(elevation == null || elevation >= 0.0),
       assert(highlightElevation == null || highlightElevation >= 0.0),
       assert(disabledElevation == null || disabledElevation >= 0.0),
       assert(icon != null),
       assert(label != null),
       super(
         key: key,
         onPressed: onPressed,
         onHighlightChanged: onHighlightChanged,
         textTheme: textTheme,
         textColor: textColor,
         disabledTextColor: disabledTextColor,
         color: color,
         disabledColor: disabledColor,
         highlightColor: highlightColor,
         splashColor: splashColor,
         colorBrightness: colorBrightness,
         elevation: elevation,
         highlightElevation: highlightElevation,
         disabledElevation: disabledElevation,
         shape: shape,
         clipBehavior: clipBehavior,
         materialTapTargetSize: materialTapTargetSize,
         animationDuration: animationDuration,
         child: iconTextAlignment == IconTextAlignment.iconLeftTextRight ? Row(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             icon,
             const SizedBox(width: 8.0),
             label,
           ],
         ) : iconTextAlignment == IconTextAlignment.iconRightTextLeft ? Row(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             label,
             const SizedBox(width: 8.0),
             icon,
           ],
         ) : iconTextAlignment == IconTextAlignment.iconTopTextBottom ? Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             icon,
             const SizedBox(height: 8.0),
             label,
             const SizedBox(height: 4.0),
           ],
         ) :  Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             const SizedBox(height: 4.0),
             label,
             const SizedBox(height: 8.0),
             icon,
           ],
         ),
       );
}
