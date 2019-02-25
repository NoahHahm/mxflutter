import 'dart_builder.dart';

var list = <String>[
  """
  const AssetImage(
    this.assetName, {
      this.bundle,
    this.package,
  }) 
  """,
  """
  const ExactAssetImage(
    this.assetName, {
    this.scale = 1.0,
    this.bundle,
    this.package,
  }) 
  """,
  """
  const FileImage(
    this.file,  {
       this.scale = 1.0 
    })
  """,
  """
 const MemoryImage(
   this.bytes, {
      this.scale = 1.0 }
   )
  """,
  """
  const NetworkImage(
    this.url,{
       this.scale = 1.0 , 
     this.headers
      })
  """,
  """
  const NetworkImage(
    this.url,{
       this.scale = 1.0 , 
     this.headers 
     })
  """,
  """
  const Image({
    Key key,
    @required this.image,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
  }) 
  """
  ,
  """
Image.network(
  String src, {
    Key key,
    double scale = 1.0,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
    Map<String, String> headers,
  }) 
  """
    ,
  """
  Image.file(
    File file, {
    Key key,
    double scale = 1.0,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
  }) 
  """
      ,
  """
  Image.asset(
    String name, {
    Key key,
    AssetBundle bundle,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    double scale,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    String package,
    this.filterQuality = FilterQuality.low,
  }) 
  """
        ,
  """
  Image.memory(
    Uint8List bytes, {
    Key key,
    double scale = 1.0,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
  }) 
  """
];

void main(List<String> arguments) {

  //打印输出所有
  list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  //translate(list.last);
}

String translate(String src) {
  //print(translateDart(src));
  print(translateJS(src));
}
