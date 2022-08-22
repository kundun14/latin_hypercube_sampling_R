<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" version="3.18.3-Zürich" maxScale="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" fetchMode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <property key="WMSBackgroundLayer" value="false"/>
    <property key="WMSPublishDataSourceUrl" value="false"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="identify/format" value="Value"/>
  </customproperties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2" enabled="false"/>
    </provider>
    <rasterrenderer nodataColor="" alphaBand="-1" band="1" classificationMin="-0.0503145" opacity="1" classificationMax="0.0084034" type="singlebandpseudocolor">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>MinMax</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" minimumValue="-0.0503145" maximumValue="0.0084034" classificationMode="1" clip="0" labelPrecision="4">
          <colorramp name="[source]" type="cpt-city">
            <Option type="Map">
              <Option name="inverted" value="0" type="QString"/>
              <Option name="rampType" value="cpt-city" type="QString"/>
              <Option name="schemeName" value="grass/bcyr" type="QString"/>
              <Option name="variantName" value="" type="QString"/>
            </Option>
            <prop k="inverted" v="0"/>
            <prop k="rampType" v="cpt-city"/>
            <prop k="schemeName" v="grass/bcyr"/>
            <prop k="variantName" v=""/>
          </colorramp>
          <item label="-0.0503" alpha="255" value="-0.0503145" color="#0000ff"/>
          <item label="-0.0356" alpha="255" value="-0.035635025" color="#00c0ff"/>
          <item label="-0.0210" alpha="255" value="-0.02095555" color="#80ff7f"/>
          <item label="-0.0063" alpha="255" value="-0.006276075" color="#ffc000"/>
          <item label="0.0084" alpha="255" value="0.0084034" color="#ff0000"/>
          <rampLegendSettings direction="0" maximumLabel="" minimumLabel="" orientation="2" useContinuousLegend="1" suffix="" prefix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option name="decimal_separator" value="" type="QChar"/>
                <Option name="decimals" value="6" type="int"/>
                <Option name="rounding_type" value="0" type="int"/>
                <Option name="show_plus" value="false" type="bool"/>
                <Option name="show_thousand_separator" value="true" type="bool"/>
                <Option name="show_trailing_zeros" value="false" type="bool"/>
                <Option name="thousand_separator" value="" type="QChar"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation colorizeBlue="128" colorizeStrength="100" colorizeOn="0" colorizeGreen="128" saturation="0" colorizeRed="255" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
