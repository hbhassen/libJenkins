def call(String pomXml) {
  def xsltFile = libraryResource('pomToYaml.xslt')
  def xslt = new javax.xml.transform.stream.StreamSource(xsltFile)
  def xml = new StreamSource(new StringReader(pomXml))
  def yaml = new StringWriter()
  def result = new StreamResult(yaml)
  
  def transformerFactory = new net.sf.saxon.TransformerFactoryImpl()
  transformerFactory.setAttribute(net.sf.saxon.lib.FeatureKeys.VERSION_WARNING, false)
  
  transformerFactory.newTransformer(xslt).transform(xml, result)
  
  return yaml.toString()
}
