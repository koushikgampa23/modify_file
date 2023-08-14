{parameter(phi, "phi", 0.00, 0.00, 50.00)}
{parameter(w, "w", 4.5, 1.0, 16.0)}
{parameter(Mass, "Mass", 2000, 1000, 3000)}
{templex_off}

<?xml version="1.0" encoding="UTF-8"?>
<model name="romAI_Model">
  <header formatversion="2" hwxversion="2022.3" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="azanp"/>
      <property name="creationdate" value="07/19/23 08:40:43"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="07/19/23 11:56:28"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization>phi ={templex_on}{phi, %.2f}{templex_off}&#xA;w = {templex_on}{w, %3.1f}{templex_off};&#xA;Mass = {templex_on}{Mass, %4i}{templex_off};</initialization>
  <finalization/>
  <diagram>
    <block name="romAI" type="block">
      <template name="{e62107e1-3ce7-4685-a655-06d079d296ea}/romAI"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-55.796287536621094" y="-89.5"/>
        <size width="264" height="240"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.500000" y="0.500000" rotate="1" visible="1" font="Arial,10" align="center"/>
        </texts>
        <images>
          <image name="image1" file="romAI.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="romAI.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;phi&quot; &quot;w&quot; &quot;Mass&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="&quot;SI&quot;" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nout"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="rom_folder" value="&amp;apos;c:/desktop/koushik&amp;apos;"/>
          <parameter name="nin" value="3"/>
          <parametertable name="inputs">
            <columns number="3">
              <parameter name="name" value="''"/>
              <parameter name="min" value="0"/>
              <parameter name="max" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>'phi'</value>
                <value>0</value>
                <value>45</value>
              </row>
              <row>
                <value>'w'</value>
                <value>8</value>
                <value>17.2</value>
              </row>
              <row>
                <value>'Mass'</value>
                <value>1599.995385</value>
                <value>2699.998599</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="nout" value="1"/>
          <parametertable name="outputs">
            <columns number="3">
              <parameter name="name" value="''"/>
              <parameter name="min" value="0"/>
              <parameter name="max" value="0"/>
            </columns>
            <rows number="nout">
              <row>
                <value>'SI'</value>
                <value>0.668217876</value>
                <value>1.97091211</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="nstates" value="1"/>
          <parametertable name="states">
            <columns number="4">
              <parameter name="name" value="''"/>
              <parameter name="min" value="0"/>
              <parameter name="max" value="0"/>
              <parameter name="init" value="0"/>
            </columns>
            <rows number="nstates">
              <row>
                <value>'SI'</value>
                <value>0.668217876</value>
                <value>1.97091211</value>
                <value>1.97</value>
              </row>
            </rows>
          </parametertable>
        </section>
        <section name="Advanced">
          <parameter name="work" value="getcurrentenv()"/>
          <parameter name="statecheck" value="0"/>
          <parameter name="nstateconditions" value="0"/>
          <parametertable name="statesinfo">
            <columns number="5">
              <parameter name="name" value="''"/>
              <parameter name="resetCondition" value="''"/>
              <parameter name="resetValue" value="0"/>
              <parameter name="lowerLimit" value="-inf"/>
              <parameter name="upperLimit" value="inf"/>
            </columns>
            <rows number="nstateconditions">
            </rows>
          </parametertable>
          <parameter name="tolcheck" value="0"/>
          <parameter name="nstatestol" value="0"/>
          <parametertable name="statestol">
            <columns number="2">
              <parameter name="name" value="''"/>
              <parameter name="value" value="1"/>
            </columns>
            <rows number="nstatestol">
            </rows>
          </parametertable>
          <parameter name="outcheck" value="0"/>
          <parameter name="noutConst" value="0"/>
          <parametertable name="outconst">
            <columns number="2">
              <parameter name="name" value="''"/>
              <parameter name="expr" value="''"/>
            </columns>
            <rows number="noutConst">
            </rows>
          </parametertable>
          <parameter name="usematfile" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="ToCSV" type="block">
      <template name="system/SignalExporters/ToCSV"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="315.5185852050781" y="8.535614013671875"/>
        <size width="100" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">SI_Output.csv</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;SI&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="fname" value="'SI_Output.csv'"/>
          <parameter name="nin" value="1"/>
          <parametertable name="inports">
            <columns number="2">
              <parameter name="varname" value="'A'"/>
              <parameter name="vardatatype" value="'double'"/>
            </columns>
            <rows number="nin">
              <row>
                <value>'SI'</value>
                <value>'double'</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="Separator" value="','"/>
          <parameter name="SubS" value="1"/>
          <parameter name="addTime" value="'time'"/>
          <parameter name="quotedNames" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="append" value="0"/>
          <parameter name="increasingTime" value="0"/>
          <parameter name="BufferSize" value="1000"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_2" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-357.5" y="90.49999999999997"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Mass</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="Mass"/>
          <parameter name="typ" value="'double'"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-362.5" y="-69.5"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">phi</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="phi"/>
          <parameter name="typ" value="'double'"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_1" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-360.5" y="10.5"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">w</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="w"/>
          <parameter name="typ" value="'double'"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <link name="" type="explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="romAI" port="1" iotype="out"/>
      <to block="ToCSV" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="215.00929260253903" y="30.500000000000043"/>
        <point x="215.00929260253906" y="28.535614013671875"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant" port="1" iotype="out"/>
      <to block="romAI" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_2" port="1" iotype="out"/>
      <to block="romAI" port="3" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_1" port="1" iotype="out"/>
      <to block="romAI" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="240"/>
      <property name="RealTimeScale" value="0"/>
      <property name="AbsoluteErrorTolerance" value="0.000001"/>
      <property name="RelativeErrorTolerance" value="0.000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="lsodar"/>
      <property name="MaxStepSize" value="-1"/>
      <property name="InitialStepSize" value="-1"/>
      <property name="MinimalStepSize" value="-1"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
