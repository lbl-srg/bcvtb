package Modelica "Modelica Standard Library (Version 3.0.1)"
extends Icons.Library;
annotation (
preferredView="info",
version="3.0.1",
versionBuild="$Rev: 2245 $",
versionDate="$Date:: 2009-01-27 23:19:09 +0100 #$",
conversion(
 noneFromVersion="3.0",
 from(version="2.1", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.1", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.2", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos")),
Settings(NewStateSelection=true),
Documentation(info="<HTML>
<p>
Package <b>Modelica</b> is a <b>standardized</b> and <b>free</b> package
that is developed together with the Modelica language from the
Modelica Association, see
<a href=\"http://www.Modelica.org\">http://www.Modelica.org</a>.
It is also called <b>Modelica Standard Library</b>.
It provides model components in many domains that are based on
standardized interface definitions. Some typical examples are shown
in the next figure:
</p>

<p>
<img src=\"../Images/UsersGuide/ModelicaLibraries.png\">
</p>

<p>
For an introduction, have especially a look at:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.UsersGuide.Overview\">Overview</a>
	 provides an overview of the Modelica Standard Library
	 inside the <a href=\"Modelica://Modelica.UsersGuide\">User's Guide</a>.</li>
<li><a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes\">Release Notes</a>
	summarizes the changes of new versions of this package.</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.Contact\">Contact</a>
	 lists the contributors of the Modelica Standard Library.</li>
<li> <a href=\"../help/Documentation/ModelicaStandardLibrary.pdf\">ModelicaStandardLibrary.pdf</a>
	 is the complete documentation of the library in pdf format.
<li> The <b>Examples</b> packages in the various libraries, demonstrate
	 how to use the components of the corresponding sublibrary.</li>
</ul>

<p>
This version of the Modelica Standard Library consists of
</p>
<ul>
<li> <b>781</b> models and blocks, and</li>
<li> <b>553</b> functions
</ul>
<p>
that are directly usable (= number of public, non-partial classes).
</p>


<p>
<b>Licensed by the Modelica Association under the Modelica License 2</b><br>
Copyright &copy; 1998-2009, ABB, arsenal research, DLR, Dynasim, Fraunhofer, Modelon, TU Hamburg-Harburg, Politecnico di Milano.
</p>

<p>
<i>This Modelica package is <u>free</u> software and
the use is completely at <u>your own risk</u>;
it can be redistributed and/or modified under the terms of the
Modelica license 2, see the license conditions (including the
disclaimer of warranty)
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense2\">here</a></u>
or at
<a href=\"http://www.Modelica.org/licenses/ModelicaLicense2\">
http://www.Modelica.org/licenses/ModelicaLicense2</a>.
</p>

</HTML>
"));

  package Blocks
  "Library of basic input/output control blocks (continuous, discrete, logical, table blocks)"
  import SI = Modelica.SIunits;
  extends Modelica.Icons.Library2;
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={
        Rectangle(extent={{-32,-6},{16,-35}}, lineColor={0,0,0}),
        Rectangle(extent={{-32,-56},{16,-85}}, lineColor={0,0,0}),
        Line(points={{16,-20},{49,-20},{49,-71},{16,-71}}, color={0,0,0}),
        Line(points={{-32,-72},{-64,-72},{-64,-21},{-32,-21}}, color={0,0,0}),
        Polygon(
          points={{16,-71},{29,-67},{29,-74},{16,-71}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-32,-21},{-46,-17},{-46,-25},{-32,-21}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),
                            Documentation(info="<html>
<p>
This library contains input/output blocks to build up block diagrams.
</p>

<dl>
<dt><b>Main Author:</b>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
    Oberpfaffenhofen<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
</dl>
<p>
Copyright &copy; 1998-2009, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b>
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p>
</HTML>
",   revisions="<html>
<ul>
<li><i>June 23, 2004</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Introduced new block connectors and adapated all blocks to the new connectors.
       Included subpackages Continuous, Discrete, Logical, Nonlinear from
       package ModelicaAdditions.Blocks.
       Included subpackage ModelicaAdditions.Table in Modelica.Blocks.Sources
       and in the new package Modelica.Blocks.Tables.
       Added new blocks to Blocks.Sources and Blocks.Logical.
       </li>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       New subpackage Examples, additional components.
       </li>
<li><i>June 20, 2000</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
       Michael Tiller:<br>
       Introduced a replaceable signal type into
       Blocks.Interfaces.RealInput/RealOutput:
<pre>
   replaceable type SignalType = Real
</pre>
       in order that the type of the signal of an input/output block
       can be changed to a physical type, for example:
<pre>
   Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
</pre>
      </li>
<li><i>Sept. 18, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Renamed to Blocks. New subpackages Math, Nonlinear.
       Additional components in subpackages Interfaces, Continuous
       and Sources. </li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.</li>
</ul>
</html>"));

    package Interfaces
    "Library of connectors and partial models for input/output blocks"
      import Modelica.SIunits;
        extends Modelica.Icons.Library;
        annotation (
          Documentation(info="<HTML>
<p>
This package contains interface definitions for
<b>continuous</b> input/output blocks with Real,
Integer and Boolean signals. Furthermore, it contains
partial models for continuous and discrete blocks.
</p>

</HTML>
",     revisions="<html>
<ul>
<li><i>Oct. 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       Added several new interfaces. <a href=\"../Documentation/ChangeNotes1.5.html\">Detailed description</a> available.
<li><i>Oct. 24, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       RealInputSignal renamed to RealInput. RealOutputSignal renamed to
       output RealOutput. GraphBlock renamed to BlockIcon. SISOreal renamed to
       SISO. SOreal renamed to SO. I2SOreal renamed to M2SO.
       SignalGenerator renamed to SignalSource. Introduced the following
       new models: MIMO, MIMOs, SVcontrol, MVcontrol, DiscreteBlockIcon,
       DiscreteBlock, DiscreteSISO, DiscreteMIMO, DiscreteMIMOs,
       BooleanBlockIcon, BooleanSISO, BooleanSignalSource, MI2BooleanMOs.</li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.</li>
</ul>
</html>
"));

    connector RealInput = input Real "'input Real' as connector" 
      annotation (defaultComponentName="u",
      Icon(graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,0,127},
            fillColor={0,0,127},
            fillPattern=FillPattern.Solid)},
           coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.2)),
      Diagram(coordinateSystem(
            preserveAspectRatio=true, initialScale=0.2,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={Polygon(
            points={{0,50},{100,0},{0,-50},{0,50}},
            lineColor={0,0,127},
            fillColor={0,0,127},
            fillPattern=FillPattern.Solid), Text(
            extent={{-10,85},{-10,60}},
            lineColor={0,0,127},
            textString="%name")}),
        Documentation(info="<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));

    connector RealOutput = output Real "'output Real' as connector" 
      annotation (defaultComponentName="y",
      Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid)}),
      Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={Polygon(
            points={{-100,50},{0,0},{-100,-50},{-100,50}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid), Text(
            extent={{30,110},{30,60}},
            lineColor={0,0,127},
            textString="%name")}),
        Documentation(info="<html>
<p>
Connector with one output signal of type Real.
</p>
</html>"));

        partial block BlockIcon "Basic graphical layout of input/output block"

          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                {100,100}}), graphics={Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid), Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255})}),
          Documentation(info="<html>
<p>
Block that has only the basic icon for an input/output
block (no declarations, no equations). Most blocks
of package Modelica.Blocks inherit directly or indirectly
from this block.
</p>
</html>"));

        end BlockIcon;

        partial block SO "Single Output continuous control block"
          extends BlockIcon;

          RealOutput y "Connector of Real output signal" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
          annotation (
            Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics),
          Documentation(info="<html>
<p>
Block has one continuous Real output signal.
</p>
</html>"));

        end SO;

        partial block SI2SO
      "2 Single Input / 1 Single Output continuous control block"
          extends BlockIcon;

          RealInput u1 "Connector of Real input signal 1" 
            annotation (Placement(transformation(extent={{-140,40},{-100,80}},
                rotation=0)));
          RealInput u2 "Connector of Real input signal 2" 
            annotation (Placement(transformation(extent={{-140,-80},{-100,-40}},
                rotation=0)));
          RealOutput y "Connector of Real output signal" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));

          annotation (
            Documentation(info="<html>
<p>
Block has two continuous Real input signals u1 and u2 and one
continuous Real output signal y.
</p>
</html>"),  Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics));

        end SI2SO;

        partial block DiscreteBlockIcon
      "Graphical layout of discrete block component icon"

          annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}}), graphics={Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={223,223,159},
              fillPattern=FillPattern.Solid), Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255})}),
                               Documentation(info="<html>
<p>
Block that has only the basic icon for an input/output,
discrete block (no declarations, no equations), e.g.,
from Blocks.Discrete.
</p>
</html>"));
        equation

        end DiscreteBlockIcon;

        partial block DiscreteBlock "Base class of discrete control blocks"
          extends DiscreteBlockIcon;

          parameter SI.Time samplePeriod(min=100*Modelica.Constants.eps, start = 0.1)
        "Sample period of component";
          parameter SI.Time startTime=0 "First sample time instant";
    protected
          output Boolean sampleTrigger "True, if sample time instant";
          output Boolean firstTrigger
        "Rising edge signals first sample instant";
        equation
          sampleTrigger = sample(startTime, samplePeriod);
          when sampleTrigger then
            firstTrigger = time <= startTime + samplePeriod/2;
          end when;
        annotation (Documentation(info="<html>
<p>
Basic definitions of a discrete block of library
Blocks.Discrete.
</p>
</html>"));
        end DiscreteBlock;
    end Interfaces;

    package Math "Library of mathematical functions as input/output blocks"
      import Modelica.SIunits;
      import Modelica.Blocks.Interfaces;
      extends Modelica.Icons.Library;
      annotation (
        Documentation(info="
<HTML>
<p>
This package contains basic <b>mathematical operations</b>,
such as summation and multiplication, and basic <b>mathematical
functions</b>, such as <b>sqrt</b> and <b>sin</b>, as
input/output blocks. All blocks of this library can be either
connected with continuous blocks or with sampled-data blocks.
</p>
</HTML>
",     revisions="<html>
<ul>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       New blocks added: RealToInteger, IntegerToReal, Max, Min, Edge, BooleanChange, IntegerChange.</li>
<li><i>August 7, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized (partly based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist).
</li>
</ul>
</html>"));

          block Gain "Output the product of a gain value with the input signal"

            parameter Real k(start=1) "Gain value multiplied with input signal";
    public
            Interfaces.RealInput u "Input signal connector" 
              annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
                rotation=0)));
            Interfaces.RealOutput y "Output signal connector" 
              annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
            annotation (
              Documentation(info="
<HTML>
<p>
This block computes output <i>y</i> as
<i>product</i> of gain <i>k</i> with the
input <i>u</i>:
</p>
<pre>
    y = k * u;
</pre>

</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Polygon(
              points={{-100,-100},{-100,100},{100,0},{-100,-100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-150,-140},{150,-100}},
              lineColor={0,0,0},
              textString="k=%k"),
            Text(
              extent={{-150,140},{150,100}},
              textString="%name",
              lineColor={0,0,255})}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={Polygon(
                points={{-100,-100},{-100,100},{100,0},{-100,-100}},
                lineColor={0,0,127},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Text(
                extent={{-76,38},{0,-34}},
                textString="k",
                lineColor={0,0,255})}));

          equation
            y = k*u;
          end Gain;

          block Add "Output the sum of the two inputs"
            extends Interfaces.SI2SO;
            parameter Real k1=+1 "Gain of upper input";
            parameter Real k2=+1 "Gain of lower input";
            annotation (
              Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>sum</i> of the
two input signals <b>u1</b> and <b>u2</b>:
</p>
<pre>
    <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   k1= +2, k2= -3

  results in the following equations:

     y = 2 * u1 - 3 * u2
</pre>

</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Text(
              extent={{-98,-52},{7,-92}},
              lineColor={0,0,0},
              textString="%k2"),
            Text(
              extent={{-100,90},{5,50}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255}),
            Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,255}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}),
            Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,255}),
            Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{50,0},{100,0}}, color={0,0,255}),
            Line(points={{-100,60},{-74,24},{-44,24}}, color={0,0,127}),
            Line(points={{-100,-60},{-74,-28},{-42,-28}}, color={0,0,127}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127}),
            Line(points={{50,0},{100,0}}, color={0,0,127}),
            Text(
              extent={{-38,34},{38,-34}},
              lineColor={0,0,0},
              textString="+"),
            Text(
              extent={{-100,52},{5,92}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-100,-52},{5,-92}},
              lineColor={0,0,0},
              textString="%k2")}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(
                extent={{-100,-100},{100,100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-98,-52},{7,-92}},
                lineColor={0,0,0},
                textString="%k2"),
              Text(
                extent={{-100,90},{5,50}},
                lineColor={0,0,0},
                textString="%k1"),
              Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,255}),
              Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}),
              Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,255}),
              Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
              Rectangle(
                extent={{-100,-100},{100,100}},
                lineColor={0,0,127},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{50,0},{100,0}}, color={0,0,255}),
              Line(points={{-100,60},{-74,24},{-44,24}}, color={0,0,127}),
              Line(points={{-100,-60},{-74,-28},{-42,-28}}, color={0,0,127}),
              Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127}),
              Line(points={{50,0},{100,0}}, color={0,0,127}),
              Text(
                extent={{-38,34},{38,-34}},
                lineColor={0,0,0},
                textString="+"),
              Text(
                extent={{-100,52},{5,92}},
                lineColor={0,0,0},
                textString="k1"),
              Text(
                extent={{-100,-52},{5,-92}},
                lineColor={0,0,0},
                textString="k2")}));

          equation
            y = k1*u1 + k2*u2;
          end Add;
    end Math;

    package Routing "Library of blocks to combine and extract signals"
      extends Icons.Library;

      block Multiplex2 "Multiplexer block for two input connectors"
        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Integer n1=1 "dimension of input signal connector 1";
        parameter Integer n2=1 "dimension of input signal connector 2";
        Modelica.Blocks.Interfaces.RealInput u1[n1]
        "Connector of Real input signals 1"   annotation (Placement(transformation(
                extent={{-140,40},{-100,80}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u2[n2]
        "Connector of Real input signals 2"   annotation (Placement(transformation(
                extent={{-140,-80},{-100,-40}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y[n1 + n2]
        "Connector of Real output signals"   annotation (Placement(transformation(
                extent={{100,-10},{120,10}}, rotation=0)));
        annotation (
          Documentation(info="<HTML>
<p>
The output connector is the <b>concatenation</b> of the two input connectors.
Note, that the dimensions of the input connector signals have to be
explicitly defined via parameters n1 and n2.
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Line(points={{8,0},{102,0}}, color={0,0,127}),
            Ellipse(
              extent={{-14,16},{16,-14}},
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,127}),
            Line(points={{-98,60},{-60,60},{-4,6}}, color={0,0,127}),
            Line(points={{-98,-60},{-60,-60},{-4,-4}}, color={0,0,127})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-98,60},{-60,60},{-4,6}}, color={0,0,255}),
              Line(points={{-98,-60},{-60,-60},{-4,-4}}, color={0,0,255}),
              Line(points={{8,0},{102,0}}, color={0,0,255}),
              Ellipse(
                extent={{-14,16},{16,-14}},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255})}));

      equation
        [y] = [u1; u2];
      end Multiplex2;

      block DeMultiplex2 "DeMultiplexer block for two output connectors"
        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Integer n1=1 "dimension of output signal connector 1";
        parameter Integer n2=1 "dimension of output signal connector 2";
        Modelica.Blocks.Interfaces.RealInput u[n1 + n2]
        "Connector of Real input signals"   annotation (Placement(transformation(
                extent={{-140,-20},{-100,20}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y1[n1]
        "Connector of Real output signals 1"   annotation (Placement(transformation(
                extent={{100,50},{120,70}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y2[n2]
        "Connector of Real output signals 2"   annotation (Placement(transformation(
                extent={{100,-70},{120,-50}}, rotation=0)));
        annotation (
          Documentation(info="<HTML>
<p>
The input connector is <b>splitted</b> up into two output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1 and n2.
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Line(points={{100,60},{60,60},{10,8}}, color={0,0,127}),
            Ellipse(
              extent={{-14,16},{16,-14}},
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,127}),
            Line(points={{100,-60},{60,-60},{8,-8}}, color={0,0,127}),
            Line(points={{-100,0},{-6,0}}, color={0,0,127})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{100,60},{60,60},{10,8}}, color={0,0,255}),
              Line(points={{100,-60},{60,-60},{8,-8}}, color={0,0,255}),
              Line(points={{-100,0},{-6,0}}, color={0,0,255}),
              Ellipse(
                extent={{-14,16},{16,-14}},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255})}));

      equation
        [u] = [y1; y2];
      end DeMultiplex2;
      annotation (Documentation(info="<html>
<p>
This package contains blocks to combine and extract signals.
</p>
</html>"));
    end Routing;

    package Sources
    "Library of signal source blocks generating Real and Boolean signals"
      import Modelica.Blocks.Interfaces;
      import Modelica.SIunits;
          extends Modelica.Icons.Library;
          annotation (
            Documentation(info="<HTML>
<p>
This package contains <b>source</b> components, i.e., blocks which
have only output signals. These blocks are used as signal generators
for Real, Integer and Boolean signals.
</p>

<p>
All Real source signals (with the exception of the Constant source)
have at least the following two parameters:
</p>

<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>offset</b></td>
      <td valign=\"top\">Value which is added to the signal</td>
  </tr>
  <tr><td valign=\"top\"><b>startTime</b></td>
      <td valign=\"top\">Start time of signal. For time &lt; startTime,
                the output y is set to offset.</td>
  </tr>
</table>

<p>
The <b>offset</b> parameter is especially useful in order to shift
the corresponding source, such that at initial time the system
is stationary. To determine the corresponding value of offset,
usually requires a trimming calculation.
</p>
</HTML>
",     revisions="<html>
<ul>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       Integer sources added. Step, TimeTable and BooleanStep slightly changed.</li>
<li><i>Nov. 8, 1999</i>
       by <a href=\"mailto:clauss@eas.iis.fhg.de\">Christoph Clau&szlig;</a>,
       <A HREF=\"mailto:schneider@eas.iis.fhg.de\">schneider@eas.iis.fhg.de</A>,
       <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       New sources: Exponentials, TimeTable. Trapezoid slightly enhanced
       (nperiod=-1 is an infinite number of periods).</li>
<li><i>Oct. 31, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       <a href=\"mailto:clauss@eas.iis.fhg.de\">Christoph Clau&szlig;</a>,
       <A HREF=\"mailto:schneider@eas.iis.fhg.de\">schneider@eas.iis.fhg.de</A>,
       All sources vectorized. New sources: ExpSine, Trapezoid,
       BooleanConstant, BooleanStep, BooleanPulse, SampleTrigger.
       Improved documentation, especially detailed description of
       signals in diagram layer.</li>
<li><i>June 29, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.</li>
</ul>
</html>"));

          block Constant "Generate constant signal of type Real"
            parameter Real k(start=1) "Constant output value";
            extends Interfaces.SO;

            annotation (defaultComponentName="const",
              Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Line(points={{-80,68},{-80,-80}}, color={192,192,192}),
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-90,-70},{82,-70}}, color={192,192,192}),
            Polygon(
              points={{90,-70},{68,-62},{68,-78},{90,-70}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,0},{80,0}}, color={0,0,0}),
            Text(
              extent={{-150,-150},{150,-110}},
              lineColor={0,0,0},
              textString="k=%k")}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Polygon(
                points={{-80,90},{-86,68},{-74,68},{-80,90}},
                lineColor={95,95,95},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid),
              Line(points={{-80,68},{-80,-80}}, color={95,95,95}),
              Line(
                points={{-80,0},{80,0}},
                color={0,0,255},
                thickness=0.5),
              Line(points={{-90,-70},{82,-70}}, color={95,95,95}),
              Polygon(
                points={{90,-70},{68,-64},{68,-76},{90,-70}},
                lineColor={95,95,95},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-83,92},{-30,74}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid,
                textString="y"),
              Text(
                extent={{70,-80},{94,-100}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid,
                textString="time"),
              Text(
                extent={{-101,8},{-81,-12}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid,
                textString="k")}),
          Documentation(info="<html>
<p>
The Real output y is a constant signal:
</p>

<p>
<img src=\"../Images/Blocks/Sources/Constant.png\">
</p>
</html>"));
          equation
            y = k;
          end Constant;
    end Sources;
  end Blocks;

  package Constants
  "Library of mathematical constants and constants of nature (e.g., pi, eps, R, sigma)"
    import SI = Modelica.SIunits;
    import NonSI = Modelica.SIunits.Conversions.NonSIunits;
    extends Modelica.Icons.Library2;

    final constant Real eps=1.e-15 "Biggest number such that 1.0 + eps = 1.0";
    annotation (
      Documentation(info="<html>
<p>
This package provides often needed constants from mathematics, machine
dependent constants and constants from nature. The latter constants
(name, value, description) are from the following source:
</p>

<dl>
<dt>Peter J. Mohr and Barry N. Taylor (1999):</dt>
<dd><b>CODATA Recommended Values of the Fundamental Physical Constants: 1998</b>.
    Journal of Physical and Chemical Reference Data, Vol. 28, No. 6, 1999 and
    Reviews of Modern Physics, Vol. 72, No. 2, 2000. See also <a href=
\"http://physics.nist.gov/cuu/Constants/\">http://physics.nist.gov/cuu/Constants/</a></dd>
</dl>

<p>CODATA is the Committee on Data for Science and Technology.</p>

<dl>
<dt><b>Main Author:</b></dt>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
    Oberpfaffenhofen<br>
    Postfach 11 16<br>
    D-82230 We&szlig;ling<br>
    email: <a href=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</a></dd>
</dl>


<p>
Copyright &copy; 1998-2009, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> 
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p><br>
</html>
",   revisions="<html>
<ul>
<li><i>Nov 8, 2004</i>
       by <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       Constants updated according to 2002 CODATA values.</li>
<li><i>Dec 9, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Constants updated according to 1998 CODATA values. Using names, values
       and description text from this source. Included magnetic and
       electric constant.</li>
<li><i>Sep 18, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Constants eps, inf, small introduced.</li>
<li><i>Nov 15, 1997</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized.</li>
</ul>
</html>"),
      Invisible=true,
      Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={
        Line(
          points={{-34,-38},{12,-38}},
          color={0,0,0},
          thickness=0.5),
        Line(
          points={{-20,-38},{-24,-48},{-28,-56},{-34,-64}},
          color={0,0,0},
          thickness=0.5),
        Line(
          points={{-2,-38},{2,-46},{8,-56},{14,-64}},
          color={0,0,0},
          thickness=0.5)}),
      Diagram(graphics={
          Rectangle(
            extent={{200,162},{380,312}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{200,312},{220,332},{400,332},{380,312},{200,312}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{400,332},{400,182},{380,162},{380,312},{400,332}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Text(
            extent={{210,302},{370,272}},
            lineColor={160,160,164},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid,
            textString="Library"),
          Line(
            points={{266,224},{312,224}},
            color={0,0,0},
            thickness=1),
          Line(
            points={{280,224},{276,214},{272,206},{266,198}},
            color={0,0,0},
            thickness=1),
          Line(
            points={{298,224},{302,216},{308,206},{314,198}},
            color={0,0,0},
            thickness=1),
          Text(
            extent={{152,412},{458,334}},
            lineColor={255,0,0},
            textString="Modelica.Constants")}));
  end Constants;

  package Icons "Library of icons"
    annotation (
      Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={
        Rectangle(
          extent={{-100,-100},{80,50}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Polygon(
          points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Polygon(
          points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Text(
          extent={{-120,135},{120,70}},
          lineColor={255,0,0},
          textString="%name"),
        Text(
          extent={{-90,40},{70,10}},
          lineColor={160,160,164},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="Library"),
        Rectangle(
          extent={{-100,-100},{80,50}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Polygon(
          points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Polygon(
          points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Text(
          extent={{-90,40},{70,10}},
          lineColor={160,160,164},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="Library"),
        Polygon(
          points={{-64,-20},{-50,-4},{50,-4},{36,-20},{-64,-20},{-64,-20}},
          lineColor={0,0,0},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-64,-20},{36,-84}},
          lineColor={0,0,0},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-60,-24},{32,-38}},
          lineColor={128,128,128},
          fillColor={128,128,128},
          fillPattern=FillPattern.Solid,
          textString="Library"),
        Polygon(
          points={{50,-4},{50,-70},{36,-84},{36,-20},{50,-4}},
          lineColor={0,0,0},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid)}),
                              Documentation(info="<html>
<p>
This package contains definitions for the graphical layout of
components which may be used in different libraries.
The icons can be utilized by inheriting them in the desired class
using \"extends\" or by directly copying the \"icon\" layer.
</p>

<dl>
<dt><b>Main Author:</b>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum fuer Luft und Raumfahrt e.V. (DLR)<br>
    Oberpfaffenhofen<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
</dl>

<p>
Copyright &copy; 1998-2009, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> 
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p><br>
</HTML>
",   revisions="<html>
<ul>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       Added new icons <b>Function</b>, <b>Enumerations</b> and <b>Record</b>.</li>
<li><i>June 6, 2000</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Replaced <b>model</b> keyword by <b>package</b> if the main
       usage is for inheriting from a package.<br>
       New icons <b>GearIcon</b> and <b>MotorIcon</b>.</li>
<li><i>Sept. 18, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Renaming package Icon to Icons.
       Model Advanced removed (icon not accepted on the Modelica meeting).
       New model Library2, which is the Library icon with enough place
       to add library specific elements in the icon. Icon also used in diagram
       level for models Info, TranslationalSensor, RotationalSensor.</li>
<li><i>July 15, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Model Caution renamed to Advanced, model Sensor renamed to
       TranslationalSensor, new model RotationalSensor.</li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version.</li>
</ul>
<br>
</html>"));

    partial package Library "Icon for library"

      annotation (             Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={
          Rectangle(
            extent={{-100,-100},{80,50}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Text(
            extent={{-85,35},{65,-85}},
            lineColor={0,0,255},
            textString="Library"),
          Text(
            extent={{-120,122},{120,73}},
            lineColor={255,0,0},
            textString="%name")}),
        Documentation(info="<html>
<p>
This icon is designed for a <b>library</b>.
</p>
</html>"));
    end Library;

    partial package Library2
    "Icon for library where additional icon elements shall be added"

      annotation (             Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={
          Rectangle(
            extent={{-100,-100},{80,50}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Text(
            extent={{-120,125},{120,70}},
            lineColor={255,0,0},
            textString="%name"),
          Text(
            extent={{-90,40},{70,10}},
            lineColor={160,160,164},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid,
            textString="Library")}),
        Documentation(info="<html>
<p>
This icon is designed for a <b>package</b> where a package
specific graphic is additionally included in the icon.
</p>
</html>"));
    end Library2;
  end Icons;

  package SIunits
  "Library of type and unit definitions based on SI units according to ISO 31-1992"
    extends Modelica.Icons.Library2;
    annotation (
      Invisible=true,
      Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Text(
          extent={{-63,-13},{45,-67}},
          lineColor={0,0,0},
          textString="[kg.m2]")}),
      Documentation(info="<html>
<p>This package provides predefined types, such as <i>Mass</i>,
<i>Angle</i>, <i>Time</i>, based on the international standard
on units, e.g., 
</p>
 
<pre>   <b>type</b> Angle = Real(<b>final</b> quantity = \"Angle\",
                     <b>final</b> unit     = \"rad\",
                     displayUnit    = \"deg\");
</pre>
 
<p>
as well as conversion functions from non SI-units to SI-units
and vice versa in subpackage 
<a href=\"Modelica://Modelica.SIunits.Conversions\">Conversions</a>.
</p>
 
<p>
For an introduction how units are used in the Modelica standard library
with package SIunits, have a look at:
<a href=\"Modelica://Modelica.SIunits.UsersGuide.HowToUseSIunits\">How to use SIunits</a>.
</p>
 
<p>
Copyright &copy; 1998-2009, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> 
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p>
 
</html>",   revisions="<html>
<ul>
<li><i>Dec. 14, 2005</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Add User's Guide and removed \"min\" values for Resistance and Conductance.</li>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       Added new package <b>Conversions</b>. Corrected typo <i>Wavelenght</i>.</li>
<li><i>June 6, 2000</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Introduced the following new types<br>
       type Temperature = ThermodynamicTemperature;<br>
       types DerDensityByEnthalpy, DerDensityByPressure,
       DerDensityByTemperature, DerEnthalpyByPressure,
       DerEnergyByDensity, DerEnergyByPressure<br>
       Attribute \"final\" removed from min and max values
       in order that these values can still be changed to narrow
       the allowed range of values.<br>
       Quantity=\"Stress\" removed from type \"Stress\", in order
       that a type \"Stress\" can be connected to a type \"Pressure\".</li>
<li><i>Oct. 27, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       New types due to electrical library: Transconductance, InversePotential,
       Damping.</li>
<li><i>Sept. 18, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Renamed from SIunit to SIunits. Subpackages expanded, i.e., the
       SIunits package, does no longer contain subpackages.</li>
<li><i>Aug 12, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Type \"Pressure\" renamed to \"AbsolutePressure\" and introduced a new
       type \"Pressure\" which does not contain a minimum of zero in order
       to allow convenient handling of relative pressure. Redefined
       BulkModulus as an alias to AbsolutePressure instead of Stress, since
       needed in hydraulics.</li>
<li><i>June 29, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Bug-fix: Double definition of \"Compressibility\" removed
       and appropriate \"extends Heat\" clause introduced in
       package SolidStatePhysics to incorporate ThermodynamicTemperature.</li>
<li><i>April 8, 1998</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and Astrid Jaschinski:<br>
       Complete ISO 31 chapters realized.</li>
<li><i>Nov. 15, 1997</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.control.lth.se/~hubertus/\">Hubertus Tummescheit</a>:<br>
       Some chapters realized.</li>
</ul>
</html>"),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
              100}}), graphics={
          Rectangle(
            extent={{169,86},{349,236}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{169,236},{189,256},{369,256},{349,236},{169,236}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Polygon(
            points={{369,256},{369,106},{349,86},{349,236},{369,256}},
            fillColor={235,235,235},
            fillPattern=FillPattern.Solid,
            lineColor={0,0,255}),
          Text(
            extent={{179,226},{339,196}},
            lineColor={160,160,164},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid,
            textString="Library"),
          Text(
            extent={{206,173},{314,119}},
            lineColor={0,0,0},
            textString="[kg.m2]"),
          Text(
            extent={{163,320},{406,264}},
            lineColor={255,0,0},
            textString="Modelica.SIunits")}));

    package Conversions
    "Conversion functions to/from non SI units and type definitions of non SI units"
      extends Modelica.Icons.Library2;
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,
                       extent={{-100,-100},{100,100}}), graphics={
            Text(
              extent={{-33,-7},{-92,-67}},
              lineColor={0,0,0},
              lineThickness=1,
              textString="°C"),
            Text(
              extent={{82,-7},{22,-67}},
              lineColor={0,0,0},
              textString="K"),
            Line(points={{-26,-36},{6,-36}}, color={0,0,0}),
            Polygon(
              points={{6,-28},{6,-45},{26,-37},{6,-28}},
              pattern=LinePattern.None,
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,255})}),
                                Documentation(info="<HTML>
<p>This package provides conversion functions from the non SI Units
defined in package Modelica.SIunits.Conversions.NonSIunits to the
corresponding SI Units defined in package Modelica.SIunits and vice
versa. It is recommended to use these functions in the following
way (note, that all functions have one Real input and one Real output 
argument):</p>
<pre>
  <b>import</b> SI = Modelica.SIunits;
  <b>import</b> Modelica.SIunits.Conversions.*;
     ...
  <b>parameter</b> SI.Temperature     T   = from_degC(25);   // convert 25 degree Celsius to Kelvin
  <b>parameter</b> SI.Angle           phi = from_deg(180);   // convert 180 degree to radian
  <b>parameter</b> SI.AngularVelocity w   = from_rpm(3600);  // convert 3600 revolutions per minutes
                                                      // to radian per seconds
</pre>
 
</HTML>
"));

      package NonSIunits "Type definitions of non SI units"
        extends Modelica.Icons.Library2;
        annotation (Documentation(info="<HTML>
<p>
This package provides predefined types, such as <b>Angle_deg</b> (angle in
degree), <b>AngularVelocity_rpm</b> (angular velocity in revolutions per
minute) or <b>Temperature_degF</b> (temperature in degree Fahrenheit),
which are in common use but are not part of the international standard on
units according to ISO 31-1992 \"General principles concerning quantities,
units and symbols\" and ISO 1000-1992 \"SI units and recommendations for
the use of their multiples and of certain other units\".</p>
<p>If possible, the types in this package should not be used. Use instead
types of package Modelica.SIunits. For more information on units, see also
the book of Francois Cardarelli <b>Scientific Unit Conversion - A
Practical Guide to Metrication</b> (Springer 1997).</p>
<p>Some units, such as <b>Temperature_degC/Temp_C</b> are both defined in
Modelica.SIunits and in Modelica.Conversions.NonSIunits. The reason is that these
definitions have been placed erroneously in Modelica.SIunits although they
are not SIunits. For backward compatibility, these type definitions are
still kept in Modelica.SIunits.</p>
</HTML>
"),   Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                  100}}), graphics={Text(
                extent={{-66,-13},{52,-67}},
                lineColor={0,0,0},
                textString="[km/h]")}));
      end NonSIunits;
    end Conversions;

    type Time = Real (final quantity="Time", final unit="s");

    type ThermodynamicTemperature = Real (
        final quantity="ThermodynamicTemperature",
        final unit="K",
        min = 0,
        displayUnit="degC")
    "Absolute temperature (use type TemperatureDifference for relative temperatures)"
                                                                                                        annotation(__Dymola_absoluteValue=true);

    type Temperature = ThermodynamicTemperature;

    type TemperatureDifference = Real (
        final quantity="ThermodynamicTemperature",
        final unit="K") annotation(__Dymola_absoluteValue=false);

    type TemperatureSlope = Real (final quantity="TemperatureSlope",
        final unit="K/s");

    type LinearTemperatureCoefficient = Real(final quantity = "LinearTemperatureCoefficient", final unit
        =                                                                                                "1/K");

    type HeatFlowRate = Real (final quantity="Power", final unit="W");

    type ThermalConductance = Real (final quantity="ThermalConductance", final unit
        =      "W/K");

    type HeatCapacity = Real (final quantity="HeatCapacity", final unit="J/K");
  end SIunits;

  package Thermal
  "Library of thermal system components to model heat transfer and simple thermo-fluid pipe flow"
    extends Modelica.Icons.Library;
  annotation (Documentation(info="<html>
<p>
This package contains libraries to model heat transfer
and fluid heat flow.
</p>
</html>"));

    package HeatTransfer
    "Library of 1-dimensional heat transfer with lumped elements"
      import Modelica.SIunits.Conversions.*;
      extends Modelica.Icons.Library2;
      annotation (
        version="1.1.1", versionDate="2007-11-13",
         Icon(coordinateSystem(preserveAspectRatio=true,
              extent={{-100,-100},{100,100}}), graphics={
            Polygon(
              points={{-54,-6},{-61,-7},{-75,-15},{-79,-24},{-80,-34},{-78,-42},{-73,
                  -49},{-64,-51},{-57,-51},{-47,-50},{-41,-43},{-38,-35},{-40,-27},
                  {-40,-20},{-42,-13},{-47,-7},{-54,-5},{-54,-6}},
              lineColor={128,128,128},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-75,-15},{-79,-25},{-80,-34},{-78,-42},{-72,-49},{-64,-51},{
                  -57,-51},{-47,-50},{-57,-47},{-65,-45},{-71,-40},{-74,-33},{-76,-23},
                  {-75,-15},{-75,-15}},
              lineColor={0,0,0},
              fillColor={160,160,164},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{39,-6},{32,-7},{18,-15},{14,-24},{13,-34},{15,-42},{20,-49},
                  {29,-51},{36,-51},{46,-50},{52,-43},{55,-35},{53,-27},{53,-20},{
                  51,-13},{46,-7},{39,-5},{39,-6}},
              lineColor={160,160,164},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{18,-15},{14,-25},{13,-34},{15,-42},{21,-49},{29,-51},{36,-51},
                  {46,-50},{36,-47},{28,-45},{22,-40},{19,-33},{17,-23},{18,-15},{
                  18,-15}},
              lineColor={0,0,0},
              fillColor={160,160,164},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-9,-23},{-9,-10},{18,-17},{-9,-23}},
              lineColor={191,0,0},
              fillColor={191,0,0},
              fillPattern=FillPattern.Solid),
            Line(
              points={{-41,-17},{-9,-17}},
              color={191,0,0},
              thickness=0.5),
            Line(
              points={{-17,-40},{15,-40}},
              color={191,0,0},
              thickness=0.5),
            Polygon(
              points={{-17,-46},{-17,-34},{-40,-40},{-17,-46}},
              lineColor={191,0,0},
              fillColor={191,0,0},
              fillPattern=FillPattern.Solid)}),
                                Documentation(info="<HTML>
<p>
This package contains components to model <b>1-dimensional heat transfer</b>
with lumped elements. This allows especially to model heat transfer in
machines provided the parameters of the lumped elements, such as
the heat capacity of a part, can be determined by measurements
(due to the complex geometries and many materials used in machines,
calculating the lumped element parameters from some basic analytic
formulas is usually not possible).
</p>
<p>
Example models how to use this library are given in subpackage <b>Examples</b>.<br>
For a first simple example, see <b>Examples.TwoMasses</b> where two masses
with different initial temperatures are getting in contact to each
other and arriving after some time at a common temperature.<br>
<b>Examples.ControlledTemperature</b> shows how to hold a temperature 
within desired limits by switching on and off an electric resistor.<br>
A more realistic example is provided in <b>Examples.Motor</b> where the
heating of an electrical motor is modelled, see the following screen shot
of this example:
</p>
<img src=\"../Images/driveWithHeatTransfer.png\" ALT=\"driveWithHeatTransfer\">
<p>
The <b>filled</b> and <b>non-filled red squares</b> at the left and
right side of a component represent <b>thermal ports</b> (connector HeatPort).
Drawing a line between such squares means that they are thermally connected.
The variables of a HeatPort connector are the temperature <b>T</b> at the port
and the heat flow rate <b>Q_flow</b> flowing into the component (if Q_flow is positive,
the heat flows into the element, otherwise it flows out of the element):
</p>
<pre>   Modelica.SIunits.Temperature  T  \"absolute temperature at port in Kelvin\";
   Modelica.SIunits.HeatFlowRate Q_flow  \"flow rate at the port in Watt\";
</pre>
<p>
Note, that all temperatures of this package, including initial conditions,
are given in Kelvin. For convenience, in subpackages <b>HeatTransfer.Celsius</b>,
 <b>HeatTransfer.Fahrenheit</b> and <b>HeatTransfer.Rankine</b> components are provided such that source and
sensor information is available in degree Celsius, degree Fahrenheit, or degree Rankine,
respectively. Additionally, in package <b>SIunits.Conversions</b> conversion
functions between the units Kelvin and Celsius, Fahrenheit, Rankine are
provided. These functions may be used in the following way:
</p>
<pre>  <b>import</b> SI=Modelica.SIunits;
  <b>import</b> Modelica.SIunits.Conversions.*;
     ...
  <b>parameter</b> SI.Temperature T = from_degC(25);  // convert 25 degree Celsius to Kelvin
</pre>

<p>
There are several other components available, such as AxialConduction (discretized PDE in
axial direction), which have been temporarily removed from this library. The reason is that
these components reference material properties, such as thermal conductivity, and currently
the Modelica design group is discussing a general scheme to describe material properties.
</p>
<p>
For technical details in the design of this library, see the following reference:<br>
<b>Michael Tiller (2001)</b>: <a href=\"http://www.amazon.de\">
Introduction to Physical Modeling with Modelica</a>.
Kluwer Academic Publishers Boston.
</p>
<p>
<b>Acknowledgements:</b><br>
Several helpful remarks from the following persons are acknowledged:
John Batteh, Ford Motors, Dearborn, U.S.A;
<a href=\"http://www.haumer.at/\">Anton Haumer</a>, Technical Consulting & Electrical Engineering, Austria;
Ludwig Marvan, VA TECH ELIN EBG Elektronik GmbH, Wien, Austria;
Hans Olsson, Dynasim AB, Sweden;
Hubertus Tummescheit, Lund Institute of Technology, Lund, Sweden.
</p>
<dl>
  <dt><b>Main Authors:</b></dt>
  <dd>
  <p>
  <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
  Technical Consulting & Electrical Engineering<br>
  A-3423 St.Andrae-Woerdern, Austria<br>
  email: <a href=\"mailto:a.haumer@haumer.at\">a.haumer@haumer.at</a>
  </p>
  </dd>
</dl>
<p><b>Copyright &copy; 2001-2009, Modelica Association, Michael Tiller and DLR.</b></p>
<p><i>
This Modelica package is free software; it can be redistributed and/or modified
under the terms of the Modelica license, see the license conditions
and the accompanying disclaimer in the documentation of package
Modelica in file \"Modelica/package.mo\".
</i></p>
</HTML>
",     revisions="<html>
<ul>
<li><i>July 15, 2002</i>
       by Michael Tiller, <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Nikolaus.Schuermann/\">Nikolaus Sch&uuml;rmann</a>:<br>
       Implemented.
</li>
<li><i>June 13, 2005</i>
       by <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
       Refined placing of connectors (cosmetic).<br>
       Refined all Examples; removed Examples.FrequencyInverter, introducing Examples.Motor<br>
       Introduced temperature dependent correction (1 + alpha*(T - T_ref)) in Fixed/PrescribedHeatFlow<br>
</li>
  <li> v1.1.1 2007/11/13 Anton Haumer<br>
       componentes moved to sub-packages</li>
</ul>
</html>"));

      package Components "Lumped thermal components"
      extends Modelica.Icons.Library2;
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={
              Rectangle(
                extent={{-100,18},{-70,-100}},
                lineColor={0,0,0},
                fillColor={192,192,192},
                fillPattern=FillPattern.Backward),
              Line(points={{-44,16},{-44,-100}}, color={0,127,255}),
              Line(points={{-4,16},{-4,-100}}, color={0,127,255}),
              Line(points={{30,18},{30,-100}}, color={0,127,255}),
              Line(points={{66,18},{66,-100}}, color={0,127,255}),
              Line(points={{66,-100},{76,-80}}, color={0,127,255}),
              Line(points={{66,-100},{56,-80}}, color={0,127,255}),
              Line(points={{30,-100},{40,-80}}, color={0,127,255}),
              Line(points={{30,-100},{20,-80}}, color={0,127,255}),
              Line(points={{-4,-100},{6,-80}}, color={0,127,255}),
              Line(points={{-4,-100},{-14,-80}}, color={0,127,255}),
              Line(points={{-44,-100},{-34,-80}}, color={0,127,255}),
              Line(points={{-44,-100},{-54,-80}}, color={0,127,255}),
              Line(points={{-70,-60},{66,-60}}, color={191,0,0}),
              Line(points={{46,-70},{66,-60}}, color={191,0,0}),
              Line(points={{46,-50},{66,-60}}, color={191,0,0}),
              Line(points={{46,-30},{66,-20}}, color={191,0,0}),
              Line(points={{46,-10},{66,-20}}, color={191,0,0}),
              Line(points={{-70,-20},{66,-20}}, color={191,0,0})}), Documentation(
              info="<html>

</html>"));

        model HeatCapacitor "Lumped thermal element storing heat"
          parameter Modelica.SIunits.HeatCapacity C
          "Heat capacity of element (= cp*m)";
          Modelica.SIunits.Temperature T(start=293.15, displayUnit="degC")
          "Temperature of element";
          Modelica.SIunits.TemperatureSlope der_T(start=0)
          "Time derivative of temperature (= der(T))";
          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-129,121},{131,70}},
                textString="%name",
                lineColor={0,0,255}),
              Polygon(
                points={{0,67},{-20,63},{-40,57},{-52,43},{-58,35},{-68,25},{-72,
                    13},{-76,-1},{-78,-15},{-76,-31},{-76,-43},{-76,-53},{-70,-65},
                    {-64,-73},{-48,-77},{-30,-83},{-18,-83},{-2,-85},{8,-89},{
                    22,-89},{32,-87},{42,-81},{54,-75},{56,-73},{66,-61},{68,-53},
                    {70,-51},{72,-35},{76,-21},{78,-13},{78,3},{74,15},{66,25},
                    {54,33},{44,41},{36,57},{26,65},{0,67}},
                lineColor={160,160,164},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-58,35},{-68,25},{-72,13},{-76,-1},{-78,-15},{-76,-31},
                    {-76,-43},{-76,-53},{-70,-65},{-64,-73},{-48,-77},{-30,-83},
                    {-18,-83},{-2,-85},{8,-89},{22,-89},{32,-87},{42,-81},{54,-75},
                    {42,-77},{40,-77},{30,-79},{20,-81},{18,-81},{10,-81},{2,-77},
                    {-12,-73},{-22,-73},{-30,-71},{-40,-65},{-50,-55},{-56,-43},
                    {-58,-35},{-58,-25},{-60,-13},{-60,-5},{-60,7},{-58,17},{-56,
                    19},{-52,27},{-48,35},{-44,45},{-40,57},{-58,35}},
                lineColor={0,0,0},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-69,7},{71,-24}},
                lineColor={0,0,0},
                textString="%C")}),
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={
                Polygon(
                  points={{0,67},{-20,63},{-40,57},{-52,43},{-58,35},{-68,25},{-72,
                      13},{-76,-1},{-78,-15},{-76,-31},{-76,-43},{-76,-53},{-70,-65},
                      {-64,-73},{-48,-77},{-30,-83},{-18,-83},{-2,-85},{8,-89},{22,
                      -89},{32,-87},{42,-81},{54,-75},{56,-73},{66,-61},{68,-53},{
                      70,-51},{72,-35},{76,-21},{78,-13},{78,3},{74,15},{66,25},{54,
                      33},{44,41},{36,57},{26,65},{0,67}},
                  lineColor={160,160,164},
                  fillColor={192,192,192},
                  fillPattern=FillPattern.Solid),
                Polygon(
                  points={{-58,35},{-68,25},{-72,13},{-76,-1},{-78,-15},{-76,-31},{
                      -76,-43},{-76,-53},{-70,-65},{-64,-73},{-48,-77},{-30,-83},{-18,
                      -83},{-2,-85},{8,-89},{22,-89},{32,-87},{42,-81},{54,-75},{42,
                      -77},{40,-77},{30,-79},{20,-81},{18,-81},{10,-81},{2,-77},{-12,
                      -73},{-22,-73},{-30,-71},{-40,-65},{-50,-55},{-56,-43},{-58,-35},
                      {-58,-25},{-60,-13},{-60,-5},{-60,7},{-58,17},{-56,19},{-52,
                      27},{-48,35},{-44,45},{-40,57},{-58,35}},
                  lineColor={0,0,0},
                  fillColor={160,160,164},
                  fillPattern=FillPattern.Solid),
                Ellipse(
                  extent={{-6,-1},{6,-12}},
                  lineColor={255,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid),
                Text(
                  extent={{11,13},{50,-25}},
                  lineColor={0,0,0},
                  textString="T"),
                Line(points={{0,-12},{0,-96}}, color={255,0,0})}),
            Documentation(info="<HTML>
<p>
This is a generic model for the heat capacity of a material.
No specific geometry is assumed beyond a total volume with
uniform temperature for the entire volume.
Furthermore, it is assumed that the heat capacity
is constant (indepedent of temperature).
</p>
<p>
The temperature T [Kelvin] of this component is a <b>state</b>.
A default of T = 25 degree Celsius (= SIunits.Conversions.from_degC(25))
is used as start value for initialization.
This usually means that at start of integration the temperature of this
component is 25 degrees Celsius. You may, of course, define a different
temperature as start value for initialization. Alternatively, it is possible
to set parameter <b>steadyStateStart</b> to <b>true</b>. In this case
the additional equation '<b>der</b>(T) = 0' is used during
initialization, i.e., the temperature T is computed in such a way that
the component starts in <b>steady state</b>. This is useful in cases,
where one would like to start simulation in a suitable operating
point without being forced to integrate for a long time to arrive
at this point.
</p>
<p>
Note, that parameter <b>steadyStateStart</b> is not available in
the parameter menue of the simulation window, because its value
is utilized during translation to generate quite different
equations depending on its setting. Therefore, the value of this
parameter can only be changed before translating the model.
</p>
<p>
This component may be used for complicated geometries where
the heat capacity C is determined my measurements. If the component
consists mainly of one type of material, the <b>mass m</b> of the
component may be measured or calculated and multiplied with the
<b>specific heat capacity cp</b> of the component material to
compute C:
</p>
<pre>
   C = cp*m.
   Typical values for cp at 20 degC in J/(kg.K):
      aluminium   896
      concrete    840
      copper      383
      iron        452
      silver      235
      steel       420 ... 500 (V2A)
      wood       2500
</pre>
</HTML>
"));
          Interfaces.HeatPort_a port annotation (Placement(transformation(
                origin={0,-100},
                extent={{-10,-10},{10,10}},
                rotation=90)));
        equation
          T = port.T;
          der_T = der(T);
          C*der(T) = port.Q_flow;
        end HeatCapacitor;

        model ThermalConductor
        "Lumped thermal element transporting heat without storing it"
          extends Interfaces.Element1D;
          parameter Modelica.SIunits.ThermalConductance G
          "Constant thermal conductance of material";

          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(
                extent={{-90,70},{90,-70}},
                lineColor={0,0,0},
                pattern=LinePattern.None,
                fillColor={192,192,192},
                fillPattern=FillPattern.Backward),
              Line(
                points={{-90,70},{-90,-70}},
                color={0,0,0},
                thickness=0.5),
              Line(
                points={{90,70},{90,-70}},
                color={0,0,0},
                thickness=0.5),
              Text(
                extent={{-139,134},{141,74}},
                textString="%name",
                lineColor={0,0,255}),
              Text(
                extent={{-115,-76},{113,-116}},
                lineColor={0,0,0},
                textString="G=%G")}),
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}),graphics={
                Line(
                  points={{-80,0},{80,0}},
                  color={255,0,0},
                  thickness=0.5,
                  arrow={Arrow.None,Arrow.Filled}),
                Text(
                  extent={{-26,-10},{27,-39}},
                  lineColor={255,0,0},
                  textString="Q_flow"),
                Text(
                  extent={{-80,50},{80,20}},
                  lineColor={0,0,0},
                  textString="dT = port_a.T - port_b.T")}),
            Documentation(info="<HTML>
<p>
This is a model for transport of heat without storing it.
It may be used for complicated geometries where
the thermal conductance G (= inverse of thermal resistance)
is determined by measurements and is assumed to be constant
over the range of operations. If the component consists mainly of
one type of material and a regular geometry, it may be calculated,
e.g., with one of the following equations:
</p>
<ul>
<li><p>
    Conductance for a <b>box</b> geometry under the assumption
    that heat flows along the box length:</p>
    <pre>
    G = k*A/L
    k: Thermal conductivity (material constant)
    A: Area of box
    L: Length of box
    </pre>
    </li>
<li><p>
    Conductance for a <b>cylindrical</b> geometry under the assumption
    that heat flows from the inside to the outside radius
    of the cylinder:</p>
    <pre>
    G = 2*pi*k*L/log(r_out/r_in)
    pi   : Modelica.Constants.pi
    k    : Thermal conductivity (material constant)
    L    : Length of cylinder
    log  : Modelica.Math.log;
    r_out: Outer radius of cylinder
    r_in : Inner radius of cylinder
    </pre>
    </li>
</li>
</ul>
<pre>
    Typical values for k at 20 degC in W/(m.K):
      aluminium   220
      concrete      1
      copper      384
      iron         74
      silver      407
      steel        45 .. 15 (V2A)
      wood         0.1 ... 0.2
</pre>
</HTML>
"));
        equation
          Q_flow = G*dT;
        end ThermalConductor;
      end Components;

      package Sources "Thermal sources"
      extends Modelica.Icons.Library2;
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(
                points={{-100,-20},{36,-20}},
                color={191,0,0},
                thickness=0.5),
              Line(
                points={{-100,-60},{38,-60}},
                color={191,0,0},
                thickness=0.5),
              Polygon(
                points={{30,-80},{30,-40},{60,-60},{30,-80}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{30,-40},{30,0},{60,-20},{30,-40}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{60,0},{80,-80}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid)}), Documentation(info="<html>

</html>"));

        model FixedTemperature "Fixed temperature boundary condition in Kelvin"

          parameter Modelica.SIunits.Temperature T "Fixed temperature at port";
          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-121,162},{119,102}},
                textString="%name",
                lineColor={0,0,255}),
              Text(
                extent={{-121,-105},{119,-151}},
                lineColor={0,0,0},
                textString="T=%T"),
              Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,0},
                pattern=LinePattern.None,
                fillColor={159,159,223},
                fillPattern=FillPattern.Backward),
              Text(
                extent={{0,0},{-100,-100}},
                lineColor={0,0,0},
                textString="K"),
              Line(
                points={{-52,0},{56,0}},
                color={191,0,0},
                thickness=0.5),
              Polygon(
                points={{50,-20},{50,20},{90,0},{50,-20}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid)}),
            Documentation(info="<HTML>
<p>
This model defines a fixed temperature T at its port in Kelvin,
i.e., it defines a fixed temperature as a boundary condition.
</p>
</HTML>
"),         Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                    100,100}}), graphics={
                Rectangle(
                  extent={{-100,100},{100,-101}},
                  lineColor={0,0,0},
                  pattern=LinePattern.None,
                  fillColor={159,159,223},
                  fillPattern=FillPattern.Backward),
                Line(
                  points={{-52,0},{56,0}},
                  color={191,0,0},
                  thickness=0.5),
                Text(
                  extent={{0,0},{-100,-100}},
                  lineColor={0,0,0},
                  textString="K"),
                Polygon(
                  points={{52,-20},{52,20},{90,0},{52,-20}},
                  lineColor={191,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid)}));
          Interfaces.HeatPort_b port annotation (Placement(transformation(extent={{90,
                    -10},{110,10}}, rotation=0)));
        equation
          port.T = T;
        end FixedTemperature;

        model PrescribedHeatFlow "Prescribed heat flow boundary condition"
          parameter Modelica.SIunits.Temperature T_ref=293.15
          "Reference temperature";
          parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0
          "Temperature coefficient of heat flow rate";
          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(
                points={{-60,-20},{40,-20}},
                color={191,0,0},
                thickness=0.5),
              Line(
                points={{-60,20},{40,20}},
                color={191,0,0},
                thickness=0.5),
              Line(
                points={{-80,0},{-60,-20}},
                color={191,0,0},
                thickness=0.5),
              Line(
                points={{-80,0},{-60,20}},
                color={191,0,0},
                thickness=0.5),
              Polygon(
                points={{40,0},{40,40},{70,20},{40,0}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{40,-40},{40,0},{70,-20},{40,-40}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{70,40},{90,-40}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-134,120},{132,60}},
                textString="%name",
                lineColor={0,0,255})}),
            Documentation(info="<HTML>
<p>
This model allows a specified amount of heat flow rate to be \"injected\"
into a thermal system at a given port.  The amount of heat
is given by the input signal Q_flow into the model. The heat flows into the
component to which the component PrescribedHeatFlow is connected,
if the input signal is positive.
</p>
<p>
If parameter alpha is > 0, the heat flow is mulitplied by (1 + alpha*(port.T - T_ref)) 
in order to simulate temperature dependent losses (which are given an reference temperature T_ref).
</p>
</HTML>
"),         Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={
                Line(
                  points={{-60,-20},{68,-20}},
                  color={191,0,0},
                  thickness=0.5),
                Line(
                  points={{-60,20},{68,20}},
                  color={191,0,0},
                  thickness=0.5),
                Line(
                  points={{-80,0},{-60,-20}},
                  color={191,0,0},
                  thickness=0.5),
                Line(
                  points={{-80,0},{-60,20}},
                  color={191,0,0},
                  thickness=0.5),
                Polygon(
                  points={{60,0},{60,40},{90,20},{60,0}},
                  lineColor={191,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid),
                Polygon(
                  points={{60,-40},{60,0},{90,-20},{60,-40}},
                  lineColor={191,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid)}));
          Modelica.Blocks.Interfaces.RealInput Q_flow 
                annotation (Placement(transformation(
                origin={-100,0},
                extent={{20,-20},{-20,20}},
                rotation=180)));
          Interfaces.HeatPort_b port annotation (Placement(transformation(extent={{90,
                    -10},{110,10}}, rotation=0)));
        equation
          port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
        end PrescribedHeatFlow;
      end Sources;

      package Sensors "Thermal sensors"
      extends Modelica.Icons.Library2;
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={
              Ellipse(
                extent={{-60,10},{40,-90}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(
                points={{-50,-16},{-36,-25}},
                color={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(
                points={{-35,0},{-25,-14}},
                color={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(
                points={{-10,7},{-10,-10}},
                color={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(
                points={{15,0},{5,-14}},
                color={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(
                points={{30,-15},{16,-25}},
                color={0,0,0},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-15,-35},{-5,-45}},
                lineColor={0,0,0},
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(points={{-10,-40},{-6,-26}}, color={0,0,0}),
              Polygon(
                points={{-12,-24},{-0.5,-27},{2,1.5},{-12,-24}},
                lineColor={0,0,0},
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid)}), Documentation(info="<html>

</html>"));

        model TemperatureSensor "Absolute temperature sensor in Kelvin"

          annotation (
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                    100,100}}), graphics={
                Ellipse(
                  extent={{-20,-98},{20,-60}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid),
                Rectangle(
                  extent={{-12,40},{12,-68}},
                  lineColor={191,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid),
                Line(points={{12,0},{90,0}}, color={0,0,255}),
                Line(points={{-94,0},{-14,0}}, color={191,0,0}),
                Polygon(
                  points={{-12,40},{-12,80},{-10,86},{-6,88},{0,90},{6,88},{10,86},{
                      12,80},{12,40},{-12,40}},
                  lineColor={0,0,0},
                  lineThickness=0.5),
                Line(
                  points={{-12,40},{-12,-64}},
                  color={0,0,0},
                  thickness=0.5),
                Line(
                  points={{12,40},{12,-64}},
                  color={0,0,0},
                  thickness=0.5),
                Line(points={{-40,-20},{-12,-20}}, color={0,0,0}),
                Line(points={{-40,20},{-12,20}}, color={0,0,0}),
                Line(points={{-40,60},{-12,60}}, color={0,0,0}),
                Text(
                  extent={{102,-28},{60,-78}},
                  lineColor={0,0,0},
                  textString="K")}),
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={
              Ellipse(
                extent={{-20,-98},{20,-60}},
                lineColor={0,0,0},
                lineThickness=0.5,
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-12,40},{12,-68}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Line(points={{12,0},{90,0}}, color={0,0,255}),
              Line(points={{-90,0},{-12,0}}, color={191,0,0}),
              Polygon(
                points={{-12,40},{-12,80},{-10,86},{-6,88},{0,90},{6,88},{10,86},
                    {12,80},{12,40},{-12,40}},
                lineColor={0,0,0},
                lineThickness=0.5),
              Line(
                points={{-12,40},{-12,-64}},
                color={0,0,0},
                thickness=0.5),
              Line(
                points={{12,40},{12,-64}},
                color={0,0,0},
                thickness=0.5),
              Line(points={{-40,-20},{-12,-20}}, color={0,0,0}),
              Line(points={{-40,20},{-12,20}}, color={0,0,0}),
              Line(points={{-40,60},{-12,60}}, color={0,0,0}),
              Text(
                extent={{126,-20},{26,-120}},
                lineColor={0,0,0},
                textString="K"),
              Text(
                extent={{-132,144},{108,84}},
                textString="%name",
                lineColor={0,0,255})}),
            Documentation(info="<HTML>
<p>
This is an ideal absolute temperature sensor which returns
the temperature of the connected port in Kelvin as an output
signal.  The sensor itself has no thermal interaction with
whatever it is connected to.  Furthermore, no
thermocouple-like lags are associated with this
sensor model.
</p>
</HTML>
"));
          Modelica.Blocks.Interfaces.RealOutput T annotation (Placement(
                transformation(extent={{90,-10},{110,10}}, rotation=0)));
          Interfaces.HeatPort_a port annotation (Placement(transformation(extent={{
                    -110,-10},{-90,10}}, rotation=0)));
        equation
          T = port.T;
          port.Q_flow = 0;
        end TemperatureSensor;
      end Sensors;

      package Interfaces "Connectors and partial models"
        extends Modelica.Icons.Library2;

        partial connector HeatPort "Thermal port for 1-dim. heat transfer"
          Modelica.SIunits.Temperature T "Port temperature";
          flow Modelica.SIunits.HeatFlowRate Q_flow
          "Heat flow rate (positive if flowing from outside into the component)";
          annotation (Documentation(info="<html>
  
</html>"));
        end HeatPort;

        connector HeatPort_a
        "Thermal port for 1-dim. heat transfer (filled rectangular icon)"

          extends HeatPort;

          annotation(defaultComponentName = "port_a",
            Documentation(info="<HTML>
<p>This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:</p>
<pre>   
   T       Temperature in [Kelvin].
   Q_flow  Heat flow rate in [Watt].
</pre>
<p>According to the Modelica sign convention, a <b>positive</b> heat flow
rate <b>Q_flow</b> is considered to flow <b>into</b> a component. This
convention has to be used whenever this connector is used in a model
class.</p>
<p>Note, that the two connector classes <b>HeatPort_a</b> and
<b>HeatPort_b</b> are identical with the only exception of the different
<b>icon layout</b>.</p></HTML>
"),         Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid)}),
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Rectangle(
                extent={{-50,50},{50,-50}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid), Text(
                extent={{-120,120},{100,60}},
                lineColor={191,0,0},
                textString="%name")}));
        end HeatPort_a;

        connector HeatPort_b
        "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)"

          extends HeatPort;

          annotation(defaultComponentName = "port_b",
            Documentation(info="<HTML>
<p>This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:</p>
<pre>
   T       Temperature in [Kelvin].
   Q_flow  Heat flow rate in [Watt].
</pre>
<p>According to the Modelica sign convention, a <b>positive</b> heat flow
rate <b>Q_flow</b> is considered to flow <b>into</b> a component. This
convention has to be used whenever this connector is used in a model
class.</p>
<p>Note, that the two connector classes <b>HeatPort_a</b> and
<b>HeatPort_b</b> are identical with the only exception of the different
<b>icon layout</b>.</p></HTML>
"),         Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Rectangle(
                extent={{-50,50},{50,-50}},
                lineColor={191,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Text(
                extent={{-100,120},{120,60}},
                lineColor={191,0,0},
                textString="%name")}),
            Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={191,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid)}));
        end HeatPort_b;

        partial model Element1D
        "Partial heat transfer element with two HeatPort connectors that does not store energy"

          Modelica.SIunits.HeatFlowRate Q_flow
          "Heat flow rate from port_a -> port_b";
          Modelica.SIunits.TemperatureDifference dT "port_a.T - port_b.T";
      public
          HeatPort_a port_a annotation (Placement(transformation(extent={{-110,-10},
                    {-90,10}}, rotation=0)));
          HeatPort_b port_b annotation (Placement(transformation(extent={{90,-10},{
                    110,10}}, rotation=0)));
          annotation (Documentation(info="<HTML>
<p>
This partial model contains the basic connectors and variables to
allow heat transfer models to be created that <b>do not store energy</b>,
This model defines and includes equations for the temperature
drop across the element, <b>dT</b>, and the heat flow rate
through the element from port_a to port_b, <b>Q_flow</b>.
</p>
<p>
By extending this model, it is possible to write simple
constitutive equations for many types of heat transfer components.
</p>
</HTML>
"),     Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                  100,100}}),
             graphics),
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}),
                    graphics));
        equation
          dT = port_a.T - port_b.T;
          port_a.Q_flow = Q_flow;
          port_b.Q_flow = -Q_flow;
        end Element1D;
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Rectangle(
                extent={{-60,10},{40,-90}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid)}),
                                   Documentation(info="<html>
  
</html>"));
      end Interfaces;
    end HeatTransfer;
  end Thermal;
end Modelica;

package Modelica_Fluid
  "Modelica_Fluid, 1.0: One-dimensional thermo-fluid flow models using the Modelica.Media media description (requires package Modelica 3.0 or later, and stream connector support in the Modelica tool)"
  extends Modelica.Icons.Library;
  import SI = Modelica.SIunits;

  package Icons "Library of resuable icons"
    extends Modelica.Icons.Library;

    partial package BaseClassLibrary "Icon for library"

      annotation (             Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={
          Rectangle(
            extent={{-100,-100},{80,50}},
            lineColor={175,175,175},
            fillColor={235,255,253},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
            lineColor={175,175,175},
            fillColor={235,255,253},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
            lineColor={175,175,175},
            fillColor={235,255,253},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-94,15},{73,-16}},
            lineColor={0,0,255},
            textString="Library of"),
          Text(
            extent={{-120,122},{120,73}},
            lineColor={255,0,0},
            textString="%name"),
          Text(
            extent={{-92,-44},{73,-72}},
            lineColor={0,0,255},
            textString="Base classes")}));
    end BaseClassLibrary;
    annotation (Documentation(info="<html>
 
</html>"));
  end Icons;
annotation (
  version="1.0",
  versionBuild="$Rev: 2574 $",
  versionDate="$Date:: 2009-05-26 07:11:19 -0700 #$",
  preferedView="info",
  Settings(NewStateSelection=true),
  uses(Modelica(version="3.0.1")),
  classOrder={"UsersGuide","Examples","System","Vessels","Pipes","Machines","Valves",
      "Fittings", "Sources", "Sensors", "Interfaces", "Types", "Utilities", "Icons", "Test", "*"},
  Documentation(info="<html>
<p>
The <b>Modelica_Fluid</b> library is a <b>free</b> Modelica package provided under the
<a href=\"Modelica://Modelica_Fluid.UsersGuide.ModelicaLicense2\">Modelica License 2</a>.
The library contains components describing
<b>1-dimensional thermo-fluid flow</b> in networks of vessels, pipes, fluid machines, valves and fittings. 
A unique feature is that the component equations and the media models
as well as pressure loss and heat transfer correlations are decoupled from each other.
All components are implemented such that they can be used for
media from the Modelica.Media library. This means especially that an
incompressible or compressible medium, a single or a multiple
substance medium with one or more phases might be used.
The goal is to include
the Modelica_Fluid library in the Modelica standard library as Modelica.Fluid.
</p>
 
<p>
In the next figure, several features of the library are demonstrated with
a simple heating system with a closed flow cycle. By just changing one configuration parameter in the system object the equations are changed between steady-state and dynamic simulation with fixed or steady-state initial conditions.
</p>
 
<blockquote>
    <img src=\"../Images/UsersGuide/HeatingSystem.png\" border=1>
</blockquote>
 
<p>
With respect to previous versions, the design
of the connectors has been changed in a non-backward compatible way,
using the recently developed concept
of stream connectors that results in much more reliable simulations
(see an overview and a rationale
<a href=\"..\\help\\Documentation\\Stream-Connectors-Overview-Rationale.pdf\">here</a>).
This extension will be included in Modelica 3.1.
As of Jan. 2009, the stream concept is supported in Dymola 7.1.
It is recommended to use Dymola 7.2 (announced for Feb. 2009), or a later Dymola version, since this version supports a new annotation to connect very
conveniently to vectors of connectors.
Other tool vendors will support the stream concept as well.
</p>
 
<p>
The following parts are useful, when newly starting with this library:
</p>
<ul>
<li> <a href=\"Modelica://Modelica_Fluid.UsersGuide\">Modelica_Fluid.UsersGuide</a>.</li>
<li> <a href=\"Modelica://Modelica_Fluid.UsersGuide.ReleaseNotes\">Modelica_Fluid.UsersGuide.ReleaseNotes</a>
     summarizes the changes of the library releases.</li>
<li> <a href=\"Modelica://Modelica_Fluid.Examples\">Modelica_Fluid.Examples</a>
     contains examples that demonstrate the usage of this library.</li>
</ul>
 
 
<p>
<b>Licensed by the Modelica Association under the Modelica License 2</b><br>
Copyright &copy; 2002-2009, ABB, DLR, Dynasim, Modelon, TU Braunschweig, TU Hamburg-Harburg, Politecnico di Milano.
</p>
 
<p>
<i>This Modelica package is <u>free</u> software and
the use is completely at <u>your own risk</u>;
it can be redistributed and/or modified under the terms of the
Modelica license 2, see the license conditions (including the
disclaimer of warranty)
<a href=\"Modelica://Modelica_Fluid.UsersGuide.ModelicaLicense2\">here</a></u>
or at
<a href=\"http://www.Modelica.org/licenses/ModelicaLicense2\">
http://www.Modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>
 
</html>"));
end Modelica_Fluid;

package Buildings "Library with models for building energy and control systems"
annotation (preferedView="info",
      version="0.6.0",
      uses(
        Modelica_Fluid(version="1.0"), Modelica(version="3.0.1")),
      Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Users Guide of the Modelica Buildings Library</font></h3>
<p>
Package <b>Buildings</b> is a free package
for modeling building HVAC systems. 
It provides partial models and model
components for modeling thermal building systems 
such as heating, ventilation and air-conditioning systems. 
Many models are based on models from the package
<a href=\"Modelica://Modelica_Fluid\">Modelica_Fluid</a> and use
the same ports to ensure compatibility with models from that library.
</p>
<p>
The figure below shows a section of the schematic view of the model 
<a href=\"Modelica:Buildings.Examples.HydronicHeating\">
Buildings.Examples.HydronicHeating</a>.
In the lower part of the figure, there is a dynamic model of a boiler, a pump and a stratified energy storage tank. Based on the temperatures of the storage tank, a finite state machine switches the boiler on and off. 
The heat distribution is done using a hydronic heating system with a three way valve and a pump with variable revolutions. The upper right hand corner shows a simplified room model that is connected to a radiator whose flow is controlled by a thermostatic valve.<br>
<img src=\"../Images/UsersGuide/HydronicHeating.png\" border=1>
</p>
<p>
The web page for this library is
<a href=\"https://gaia.lbl.gov/bir\">https://gaia.lbl.gov/bir</a>. 
Contributions from different users to further advance this library are
welcomed.
Contributions may not only be in the form of model development, but also
through model use, model testing,
requirements definition or providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"));

  package BaseClasses "Package with base classes for Buildings library"
    extends Modelica_Fluid.Icons.BaseClassLibrary;
    annotation (Documentation(info="<html>
This package contains base classes that are used by various models
in the <tt>Buildings</tt> library.
</html>"));

    partial class BaseIconExamples "Icon for Examples packages"

      annotation (             Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={
          Rectangle(
            extent={{-100,-100},{80,50}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
            lineColor={0,0,0},
            fillColor={179,179,119},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
            lineColor={0,0,0},
            fillColor={179,179,119},
            fillPattern=FillPattern.Solid)}));

    end BaseIconExamples;
  end BaseClasses;

  package Utilities "Package with utility functions such as for I/O"

    package IO "Package with I/O functions"

      package BCVTB
      "Package with functions to communicate with the Building Controls Virtual Test Bed"
      annotation (Documentation(info="<html>
This package contains an interface to the 
<a href=\"https://gaia.lbl.gov/bcvtb\">Building Controls Virtual Test Bed</a>
(BCVTB).
The BCVTB is a middleware that is based on 
<a href=\"http://ptolemy.berkeley.edu/ptolemyII/\">Ptolemy II</a>.
Ptolemy II is a software framework to study modeling, simulation, and design of concurrent, real-time, embedded systems, with focus on the assembly of concurrent components and the use of heterogeneous mixtures of models of computation that govern the interactions between components. The BCVTB adds functionalities to Ptolemy II that allows coupling Modelica, 
<a href=\"http://www.energyplus.gov\">EnergyPlus</a> and
<a href=\"http://www.mathworks.com\">MATLAB/Simulink</a>
for data exchange during the time step integration.
</html>"));

        package BaseClasses "Package with base classes for BCVTB interface"
          extends Modelica_Fluid.Icons.BaseClassLibrary;
        annotation (preferedView="info", Documentation(info="<html>
This package contains base classes that are used to construct the models in 
<a href=\"Modelica:Buildings.Utilities.IO.BCVTB\">Buildings.Utilities.IO.BCVTB</a>.
</html>"));

          function closeClientSocket
          "Closes the socket for the inter process communication"

          annotation(Documentation(info="<html>
Function that closes the inter-process communication.
</html>", revisions="<html>
<ul>
<li>
May 5, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));
            input Integer socketFD
            "Socket file descripter, or a negative value if an error occured";
            output Integer retVal
            "Return value of the function that closes the socket connection";
            external "C" 
               retVal = 
                      closeBSDSocket(socketFD) 
                 annotation(Library="bcvtb_modelica",
                            Include="#include \"bcvtb.h\"");
          end closeClientSocket;

          function establishClientSocket
          "Establishes the client socket connection"

          annotation(Documentation(info="<html>
Function that establishes a socket connection to the BCVTB.
<p>
For the xml file name, on Windows use two backslashes to separate directories, i.e., use
<pre>
  xmlFileName=\"C:\\\\examples\\\\roomPtDymola\\\\socket.cfg\"
</pre>
In case of a problem, check the file <tt>utilSocket.log</tt> that is written during
the data exchange with the BCVTB.
</html>", revisions="<html>
<ul>
<li>
May 5, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));
            input String xmlFileName = "socket.cfg"
            "Name of xml file that contains the socket information";
            output Integer socketFD
            "Socket file descripter, or a negative value if an error occured";
            external "C" 
               socketFD = 
                        establishBSDSocket(xmlFileName) 
                 annotation(Library="bcvtb_modelica",
                            Include="#include \"bcvtb.h\"");
          end establishClientSocket;

          function exchangeReals
          "Exchanges values of type Real with the socket"

          annotation(Documentation(info="<html>
Function to exchange data of type <tt>Real</tt> with the socket.
This function must only be called once in each 
communication interval.
</html>", revisions="<html>
<ul>
<li>
May 5, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));
            input Integer socketFD(min=1) "Socket file descripter";
            input Integer flaWri
            "Communication flag to write to the socket stream";
            input Modelica.SIunits.Time simTimWri
            "Current simulation time in seconds to write";
            input Real[nDblWri] dblValWri "Double values to write";
            input Integer nDblWri "Number of double values to write";
            input Integer nDblRea "Number of double values to read";
            output Integer flaRea
            "Communication flag read from the socket stream";
            output Modelica.SIunits.Time simTimRea
            "Current simulation time in seconds read from socket";
            output Real[nDblRea] dblValRea "Double values read from socket";
            output Integer retVal
            "The exit value, which is negative if an error occured";
            external "C" 
               retVal = 
                      exchangeDoublesWithBSDSocket(socketFD,
                                  flaWri, flaRea,
                                  simTimWri,
                                  dblValWri, nDblWri,
                                  simTimRea,
                                  dblValRea, nDblRea) 
                 annotation(Library="bcvtb_modelica",
                            Include="#include \"bcvtb.h\"");
          end exchangeReals;
        end BaseClasses;

        model BCVTB
        "Block that exchanges data with the Building Controls Virtual Test Bed"
          extends Modelica.Blocks.Interfaces.DiscreteBlock;
          parameter String xmlFileName = "socket.cfg"
          "Name of the file that is generated by the BCVTB and that contains the socket information";
          parameter Integer nDblWri(min=0)
          "Number of double values to write to the BCVTB";
          parameter Integer nDblRea(min=0)
          "Number of double values to be read from the BCVTB";
          Modelica.Blocks.Interfaces.RealInput uR[nDblWri]
          "Real inputs to be sent to the BCVTB" 
            annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
          Modelica.Blocks.Interfaces.RealOutput yR[nDblRea]
          "Real outputs received from the BCVTB" 
            annotation (Placement(transformation(extent={{100,50},{120,70}})));

         Integer flaRea "Flag received from BCVTB";
         Modelica.SIunits.Time simTimRea
          "Current simulation time received from the BCVTB";
         Integer retVal "Return value from the BSD socket data exchange";
      protected
          parameter Integer socketFD(fixed=false)
          "Socket file descripter, or a negative value if an error occured";
          constant Integer flaWri=0;
        initial algorithm
          socketFD :=Buildings.Utilities.IO.BCVTB.BaseClasses.establishClientSocket(
            xmlFileName=xmlFileName);
            // check for valid socketFD
             assert(socketFD >= 0, "Socket file descripter for BCVTB must be positive.\n" +
                                 "   A negative value indicates that no connection\n" +
                                 "   could be established. Check file 'utilSocket.log'.\n" +
                                 "   Received: socketFD = " + integerString(socketFD));
           flaRea :=0;
        algorithm
          when {sampleTrigger} then
            assert(flaRea == 0, "BCVTB interface attempts to exchange data after Ptolemy reached final its final time.\n" +
                                "   Aborting simulation. Check file final time in Modelica and in Ptolemy.\n" +
                                "   Received: flaRea = " + integerString(flaRea));

            // exchange data
            (flaRea, simTimRea, yR, retVal) :=
              Buildings.Utilities.IO.BCVTB.BaseClasses.exchangeReals(
              socketFD=socketFD,
              flaWri=flaWri,
              simTimWri=time,
              dblValWri=uR,
              nDblWri=size(uR, 1),
              nDblRea=size(yR, 1));
            // check for valid return flags
            assert(flaRea >= 0, "BCVTB sent a negative flag to Modelica during data transfer.\n" +
                                "   Aborting simulation. Check file 'utilSocket.log'.\n" +
                                "   Received: flaRea = " + integerString(flaRea));
            assert(retVal >= 0, "Obtained negative return value during data transfer with BCVTB.\n" +
                                "   Aborting simulation. Check file 'utilSocket.log'.\n" +
                                "   Received: retVal = " + integerString(retVal));
          end when;
           // close socket connnection
           when terminal() then
              Buildings.Utilities.IO.BCVTB.BaseClasses.closeClientSocket(
                                                                socketFD);
           end when;

          annotation (defaultComponentName="bcvtb",
           Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}),   graphics), Icon(coordinateSystem(
                  preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
              graphics={
              Rectangle(
                extent={{0,28},{80,-100}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,14},{26,4}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,14},{48,4}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,14},{70,4}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-2},{70,-12}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-2},{48,-12}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-2},{26,-12}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-18},{70,-28}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-18},{48,-28}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-18},{26,-28}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-34},{70,-44}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-34},{48,-44}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-34},{26,-44}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-50},{70,-60}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-50},{48,-60}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-50},{26,-60}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-66},{70,-76}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-66},{48,-76}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-66},{26,-76}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{54,-82},{70,-92}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{32,-82},{48,-92}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{10,-82},{26,-92}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{38,46},{-16,28},{92,28},{38,46}},
                lineColor={0,0,0},
                smooth=Smooth.None,
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-66,104},{46,36}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid,
                textString="tS=%samplePeriod%")}),
            Documentation(info="<html>
Block that exchanges data with the 
<a href=\"https://gaia.lbl.gov/bcvtb\">Building Controls Virtual Test Bed</a>.
<p>
At the start of the simulation, this block establishes a socket connection
using the Berkeley Software Distribution socket (BSD socket).
At each sampling interval, data are exchanged between Modelica
and the Building Controls Virtual Test Bed.
When Dymola terminates, a signal is sent to the Building Controls Virtual Test Bed
so that it can gracefully terminate.
</html>",         revisions="<html>
<ul>
<li>
May 14, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));
        end BCVTB;

        package Examples
        "Collection of models that illustrate model use and test models"
          extends Buildings.BaseClasses.BaseIconExamples;
        annotation (preferedView="info", Documentation(info="<html>
This package contains examples for the use of models
that can be found in 
<a href=\"Modelica:Buildings.Utilities.IO.BCVTB\">Buildings.Utilities.IO.BCVTB</a>.
</html>"));

          model TwoRooms
          "Thermal model of two rooms that will be linked to Ptolemy which models the controls"
            import Buildings;
            parameter Modelica.SIunits.Time tau = 2*3600 "Room time constant";
            parameter Modelica.SIunits.HeatFlowRate Q_flow_nom = 100
            "Nominal heat flow";
            parameter Modelica.SIunits.ThermalConductance UA = Q_flow_nom / 20
            "Thermal conductance of room";
            annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                    -100},{240,100}}),   graphics),
              experiment(StopTime=21600),
              experimentSetupOutput,
              Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{240,
                      100}})),
              Documentation(info="<html>
This example illustrates the use of Modelica with the Building Controls Virtual Test Bed.
Given a control signal for two heat flow rates, Modelica simulates the thermal response 
of two first order systems. The two systems may represent a first order approximation of a room.
The control signal for the heat flow rate is computed in the Building Controls Virtual Test Bed
using a discrete time implementation of a proportional controller.
This model is implemented in <tt>bcvtb\\examples\\roomPtDymola</tt>.
Every 60 seconds, measured temperatures and control signals for the heat flow rates are
exchanged between Dymola and the Building Controls Virtual Test Bed.
</html>"));
            Modelica.Thermal.HeatTransfer.Components.HeatCapacitor C1(C=tau*UA, T(start=
                    283.15)) "Heat capacity of room" 
              annotation (Placement(transformation(extent={{70,70},{90,90}})));
            Modelica.Thermal.HeatTransfer.Components.ThermalConductor UA1(G=UA)
            "Heat transmission of room" 
              annotation (Placement(transformation(extent={{40,60},{60,80}})));
            Modelica.Thermal.HeatTransfer.Sources.FixedTemperature TOut1(T=278.15)
            "Outside air temperature" 
              annotation (Placement(transformation(extent={{0,60},{20,80}})));
            Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Q_flow_1
            "Heat input into the room" 
              annotation (Placement(transformation(extent={{42,20},{62,40}})));
            Modelica.Blocks.Math.Gain GaiQ_flow_nom1(k=Q_flow_nom)
            "Gain for nominal heat load" 
              annotation (Placement(transformation(extent={{0,20},{20,40}})));
            Modelica.Thermal.HeatTransfer.Components.ThermalConductor UA2(G=UA)
            "Heat transmission of room" 
              annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
            Modelica.Thermal.HeatTransfer.Components.HeatCapacitor C2(C=2*tau*UA, T(start=
                   283.15)) "Heat capacity of room" 
              annotation (Placement(transformation(extent={{70,-28},{90,-8}})));
            Modelica.Thermal.HeatTransfer.Sources.FixedTemperature TOut2(T=278.15)
            "Outside air temperature" 
              annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
            Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Q_flow_2
            "Heat input into the room" 
              annotation (Placement(transformation(extent={{44,-80},{64,-60}})));
            Modelica.Blocks.Math.Gain GaiQ_flow_nom2(k=Q_flow_nom)
            "Gain for nominal heat load" 
              annotation (Placement(transformation(extent={{2,-80},{22,-60}})));
            Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor TRoo1
            "Room temperature" 
              annotation (Placement(transformation(extent={{92,60},{112,80}})));
            Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor TRoo2
            "Room temperature" 
              annotation (Placement(transformation(extent={{90,-40},{110,-20}})));
            Buildings.Utilities.IO.BCVTB.BCVTB bcvtb(
              samplePeriod=60,
              nDblWri=2,
              nDblRea=2,
            xmlFileName="socket.cfg") 
              annotation (Placement(transformation(extent={{-80,-16},{-60,4}})));
            Modelica.Blocks.Routing.Multiplex2 multiplex2_1 
              annotation (Placement(transformation(extent={{200,-10},{220,10}})));
            Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2_1 
              annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
            Modelica.Blocks.Math.Add add 
              annotation (Placement(transformation(extent={{160,2},{180,22}})));
            Modelica.Blocks.Math.Add add1 
              annotation (Placement(transformation(extent={{160,-28},{180,-8}})));
            Modelica.Blocks.Sources.Constant uniCon(k=-273.15)
            "Unit conversion" 
              annotation (Placement(transformation(extent={{120,-10},{140,10}})));
          equation
            connect(TOut1.port, UA1.port_a) annotation (Line(
                points={{20,70},{40,70}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(UA1.port_b, C1.port) annotation (Line(
                points={{60,70},{80,70}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(TOut2.port, UA2.port_a) annotation (Line(
                points={{20,-30},{40,-30}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(UA2.port_b, C2.port) annotation (Line(
                points={{60,-30},{79,-30},{79,-28},{80,-28}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(Q_flow_1.port, C1.port) annotation (Line(
                points={{62,30},{80,30},{80,70}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(Q_flow_2.port, C2.port) annotation (Line(
                points={{64,-70},{80,-70},{80,-28}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(C1.port, TRoo1.port) annotation (Line(
                points={{80,70},{92,70}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(C2.port, TRoo2.port) annotation (Line(
                points={{80,-28},{80,-30},{90,-30}},
                color={191,0,0},
                smooth=Smooth.None));
            connect(GaiQ_flow_nom1.y, Q_flow_1.Q_flow) annotation (Line(
                points={{21,30},{42,30}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(GaiQ_flow_nom2.y, Q_flow_2.Q_flow) annotation (Line(
                points={{23,-70},{44,-70}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(bcvtb.yR, deMultiplex2_1.u) annotation (Line(
                points={{-59,0},{-42,0}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(deMultiplex2_1.y1[1], GaiQ_flow_nom1.u) annotation (Line(
                points={{-19,6},{-11.5,6},{-11.5,30},{-2,30}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(deMultiplex2_1.y2[1], GaiQ_flow_nom2.u) annotation (Line(
                points={{-19,-6},{-10,-6},{-10,-70},{0,-70}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(multiplex2_1.y, bcvtb.uR) annotation (Line(
                points={{221,0},{230,0},{230,-92},{-90,-92},{-90,0},{-82,0}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(uniCon.y, add.u2) annotation (Line(
                points={{141,0},{150,0},{150,6},{158,6}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(uniCon.y, add1.u1) annotation (Line(
                points={{141,0},{150,0},{150,-12},{158,-12}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(TRoo1.T, add.u1) annotation (Line(
                points={{112,70},{128,70},{128,18},{158,18}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(TRoo2.T, add1.u2) annotation (Line(
                points={{110,-30},{128,-30},{128,-24},{158,-24}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(add1.y, multiplex2_1.u2[1]) annotation (Line(
                points={{181,-18},{189.5,-18},{189.5,-6},{198,-6}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(add.y, multiplex2_1.u1[1]) annotation (Line(
                points={{181,12},{190,12},{190,6},{198,6}},
                color={0,0,127},
                smooth=Smooth.None));
          end TwoRooms;
        end Examples;
      end BCVTB;
    end IO;
  end Utilities;
end Buildings;
model Buildings_Utilities_IO_BCVTB_Examples_TwoRooms
 extends Buildings.Utilities.IO.BCVTB.Examples.TwoRooms;
  annotation(experiment(StopTime=21600),uses(Buildings(version="0.6.0")));
end Buildings_Utilities_IO_BCVTB_Examples_TwoRooms;
