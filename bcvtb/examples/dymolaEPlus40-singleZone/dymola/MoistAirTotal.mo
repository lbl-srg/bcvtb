package Modelica "Modelica Standard Library (Version 3.1)"
extends Modelica.Icons.Library;
annotation (
preferredView="info",
version="3.1",
versionBuild=4,
versionDate="2009-08-14",
dateModified = "2009-08-28 08:30:00Z",
revisionId="$Id: package.mo,v 1.1.1.2 2009/09/07 15:17:14 Dag Exp $",
conversion(
 noneFromVersion="3.0.1",
 noneFromVersion="3.0",
 from(version="2.1", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.1", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.2", script="Scripts/ConvertModelica_from_2.2.2_to_3.0.mos")),
__Dymola_classOrder={"UsersGuide","Blocks","StateGraph","Electrical","Magnetic","Mechanics","Fluid","Media","Thermal",
      "Math","Utilities","Constants", "Icons", "SIunits"},
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
<li> <b>922</b> models and blocks, and</li>
<li> <b>615</b> functions
</ul>
<p>
that are directly usable (= number of public, non-partial classes).
</p>


<p>
<b>Licensed by the Modelica Association under the Modelica License 2</b><br>
Copyright &copy; 1998-2009, ABB, arsenal research, T.&nbsp;Bödrich, DLR, Dynasim, Fraunhofer, Modelon,
TU Hamburg-Harburg, Politecnico di Milano.
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
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={
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

    package Continuous
    "Library of continuous control blocks with internal states"
      import Modelica.Blocks.Interfaces;
      import Modelica.SIunits;
      extends Modelica.Icons.Library;
      annotation (
        Documentation(info="<html>
<p>
This package contains basic <b>continuous</b> input/output blocks
described by differential equations.
</p>

<p>
All blocks of this package can be initialized in different
ways controlled by parameter <b>initType</b>. The possible
values of initType are defined in
<a href=\"Modelica://Modelica.Blocks.Types.Init\">Modelica.Blocks.Types.Init</a>:
</p>

<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>Name</b></td>
      <td valign=\"top\"><b>Description</b></td></tr>

  <tr><td valign=\"top\"><b>Init.NoInit</b></td>
      <td valign=\"top\">no initialization (start values are used as guess values with fixed=false)</td></tr>

  <tr><td valign=\"top\"><b>Init.SteadyState</b></td>
      <td valign=\"top\">steady state initialization (derivatives of states are zero)</td></tr>

  <tr><td valign=\"top\"><b>Init.InitialState</b></td>
      <td valign=\"top\">Initialization with initial states</td></tr>

  <tr><td valign=\"top\"><b>Init.InitialOutput</b></td>
      <td valign=\"top\">Initialization with initial outputs (and steady state of the states if possibles)</td></tr>
</table>

<p>
For backward compatibility reasons the default of all blocks is
<b>Init.NoInit</b>, with the exception of Integrator and LimIntegrator
where the default is <b>Init.InitialState</b> (this was the initialization
defined in version 2.2 of the Modelica standard library).
</p>

<p>
In many cases, the most useful initial condition is
<b>Init.SteadyState</b> because initial transients are then no longer
present. The drawback is that in combination with a non-linear
plant, non-linear algebraic equations occur that might be
difficult to solve if appropriate guess values for the
iteration variables are not provided (i.e. start values with fixed=false).
However, it is often already useful to just initialize
the linear blocks from the Continuous blocks library in SteadyState.
This is uncritical, because only linear algebraic equations occur.
If Init.NoInit is set, then the start values for the states are
interpreted as <b>guess</b> values and are propagated to the
states with fixed=<b>false</b>.
</p>

<p>
Note, initialization with Init.SteadyState is usually difficult
for a block that contains an integrator
(Integrator, LimIntegrator, PI, PID, LimPID).
This is due to the basic equation of an integrator:
</p>

<pre>
  <b>initial equation</b>
     <b>der</b>(y) = 0;   // Init.SteadyState
  <b>equation</b>
     <b>der</b>(y) = k*u;
</pre>

<p>
The steady state equation leads to the condition that the input to the
integrator is zero. If the input u is already (directly or indirectly) defined
by another initial condition, then the initialization problem is <b>singular</b>
(has none or infinitely many solutions). This situation occurs often
for mechanical systems, where, e.g., u = desiredSpeed - measuredSpeed and
since speed is both a state and a derivative, it is always defined by
Init.InitialState or Init.SteadyState initializtion.
</p>

<p>
In such a case, <b>Init.NoInit</b> has to be selected for the integrator
and an additional initial equation has to be added to the system
to which the integrator is connected. E.g., useful initial conditions
for a 1-dim. rotational inertia controlled by a PI controller are that
<b>angle</b>, <b>speed</b>, and <b>acceleration</b> of the inertia are zero.
</p>

</html>
"));

      block Integrator "Output the integral of the input signal"
        import Modelica.Blocks.Types.Init;
        parameter Real k=1 "Integrator gain";

        /* InitialState is the default, because it was the default in Modelica 2.2
     and therefore this setting is backward compatible
  */
        parameter Modelica.Blocks.Types.Init initType=Modelica.Blocks.Types.Init.InitialState
        "Type of initialization (1: no init, 2: steady state, 3,4: initial output)"
                                                                                          annotation(Evaluate=true,
            Dialog(group="Initialization"));
        parameter Real y_start=0 "Initial or guess value of output (= state)" 
          annotation (Dialog(group="Initialization"));
        extends Interfaces.SISO(y(start=y_start));

        annotation (
          Documentation(info="<html>
<p>
This blocks computes output <b>y</b> (element-wise) as
<i>integral</i> of the input <b>u</b> multiplied with
the gain <i>k</i>:
</p>
<pre>
         k
     y = - u
         s
</pre>

<p>
It might be difficult to initialize the integrator in steady state.
This is discussed in the description of package
<a href=\"Modelica://Modelica.Blocks.Continuous#info\">Continuous</a>.
</p>

</html>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-80,78},{-80,-90}}, color={192,192,192}),
              Polygon(
                points={{-80,90},{-88,68},{-72,68},{-80,90}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,-80},{82,-80}}, color={192,192,192}),
              Polygon(
                points={{90,-80},{68,-72},{68,-88},{90,-80}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{0,-10},{60,-70}},
                lineColor={192,192,192},
                textString="I"),
              Text(
                extent={{-150,-150},{150,-110}},
                lineColor={0,0,0},
                textString="k=%k"),
              Line(points={{-80,-80},{80,80}}, color={0,0,127})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(extent={{-60,60},{60,-60}}, lineColor={0,0,255}),
              Line(points={{-100,0},{-60,0}}, color={0,0,255}),
              Line(points={{60,0},{100,0}}, color={0,0,255}),
              Text(
                extent={{-36,60},{32,2}},
                lineColor={0,0,0},
                textString="k"),
              Text(
                extent={{-32,0},{36,-58}},
                lineColor={0,0,0},
                textString="s"),
              Line(points={{-46,0},{46,0}}, color={0,0,0})}));

      initial equation
        if initType == Init.SteadyState then
           der(y) = 0;
        elseif initType == Init.InitialState or 
               initType == Init.InitialOutput then
          y = y_start;
        end if;
      equation
        der(y) = k*u;
      end Integrator;

      block Derivative "Approximated derivative block"
        import Modelica.Blocks.Types.Init;
        parameter Real k=1 "Gains";
        parameter SIunits.Time T(min=Modelica.Constants.small) = 0.01
        "Time constants (T>0 required; T=0 is ideal derivative block)";
        parameter Modelica.Blocks.Types.Init initType=Modelica.Blocks.Types.Init.NoInit
        "Type of initialization (1: no init, 2: steady state, 3: initial state, 4: initial output)"
                                                                                          annotation(Evaluate=true,
            Dialog(group="Initialization"));
        parameter Real x_start=0 "Initial or guess value of state" 
          annotation (Dialog(group="Initialization"));
        parameter Real y_start=0 "Initial value of output (= state)" 
          annotation(Dialog(enable=initType == Init.InitialOutput, group=
                "Initialization"));
        extends Interfaces.SISO;

        output Real x(start=x_start) "State of block";

        annotation (
          Documentation(info="
<HTML>
<p>
This blocks defines the transfer function between the
input u and the output y
(element-wise) as <i>approximated derivative</i>:
</p>
<pre>
             k * s
     y = ------------ * u
            T * s + 1
</pre>
<p>
If you would like to be able to change easily between different
transfer functions (FirstOrder, SecondOrder, ... ) by changing
parameters, use the general block <b>TransferFunction</b> instead
and model a derivative block with parameters<br>
b = {k,0}, a = {T, 1}.
</p>

<p>
If k=0, the block reduces to y=0.
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-80,78},{-80,-90}}, color={192,192,192}),
              Polygon(
                points={{-80,90},{-88,68},{-72,68},{-80,90}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,-80},{82,-80}}, color={192,192,192}),
              Polygon(
                points={{90,-80},{68,-72},{68,-88},{90,-80}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-80,-80},{-80,60},{-70,17.95},{-60,-11.46},{-50,-32.05},
                    {-40,-46.45},{-30,-56.53},{-20,-63.58},{-10,-68.51},{0,-71.96},
                    {10,-74.37},{20,-76.06},{30,-77.25},{40,-78.07},{50,-78.65},{60,
                    -79.06}}, color={0,0,127}),
              Text(
                extent={{-30,14},{86,60}},
                lineColor={192,192,192},
                textString="DT1"),
              Text(
                extent={{-150,-150},{150,-110}},
                lineColor={0,0,0},
                textString="k=%k")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Text(
                extent={{-54,52},{50,10}},
                lineColor={0,0,0},
                textString="k s"),
              Text(
                extent={{-54,-6},{52,-52}},
                lineColor={0,0,0},
                textString="T s + 1"),
              Line(points={{-50,0},{50,0}}, color={0,0,0}),
              Rectangle(extent={{-60,60},{60,-60}}, lineColor={0,0,255}),
              Line(points={{-100,0},{-60,0}}, color={0,0,255}),
              Line(points={{60,0},{100,0}}, color={0,0,255})}));
    protected
        parameter Boolean zeroGain = abs(k) < Modelica.Constants.eps;
      initial equation
        if initType == Init.SteadyState then
          der(x) = 0;
        elseif initType == Init.InitialState then
          x = x_start;
        elseif initType == Init.InitialOutput then
          if zeroGain then
             x = u;
          else
             y = y_start;
          end if;
        end if;
      equation
        der(x) = if zeroGain then 0 else (u - x)/T;
        y = if zeroGain then 0 else (k/T)*(u - x);
      end Derivative;

      block LimPID
      "P, PI, PD, and PID controller with limited output, anti-windup compensation and setpoint weighting"
        import Modelica.Blocks.Types.InitPID;
        import Modelica.Blocks.Types.SimpleController;
        extends Interfaces.SVcontrol;
        output Real controlError = u_s - u_m
        "Control error (set point - measurement)";

        parameter Modelica.Blocks.Types.SimpleController controllerType=
               Modelica.Blocks.Types.SimpleController.PID "Type of controller";
        parameter Real k(min=0) = 1 "Gain of controller";
        parameter SIunits.Time Ti(min=Modelica.Constants.small, start=0.5)
        "Time constant of Integrator block" 
           annotation(Dialog(enable=controllerType==SimpleController.PI or 
                                    controllerType==SimpleController.PID));
        parameter SIunits.Time Td(min=0, start= 0.1)
        "Time constant of Derivative block" 
             annotation(Dialog(enable=controllerType==SimpleController.PD or 
                                      controllerType==SimpleController.PID));
        parameter Real yMax(start=1) "Upper limit of output";
        parameter Real yMin=-yMax "Lower limit of output";
        parameter Real wp(min=0) = 1
        "Set-point weight for Proportional block (0..1)";
        parameter Real wd(min=0) = 0
        "Set-point weight for Derivative block (0..1)" 
             annotation(Dialog(enable=controllerType==SimpleController.PD or 
                                      controllerType==SimpleController.PID));
        parameter Real Ni(min=100*Modelica.Constants.eps) = 0.9
        "Ni*Ti is time constant of anti-windup compensation" 
           annotation(Dialog(enable=controllerType==SimpleController.PI or 
                                    controllerType==SimpleController.PID));
        parameter Real Nd(min=100*Modelica.Constants.eps) = 10
        "The higher Nd, the more ideal the derivative block" 
             annotation(Dialog(enable=controllerType==SimpleController.PD or 
                                      controllerType==SimpleController.PID));
        parameter Modelica.Blocks.Types.InitPID initType= Modelica.Blocks.Types.InitPID.DoNotUse_InitialIntegratorState
        "Type of initialization (1: no init, 2: steady state, 3: initial state, 4: initial output)"
                                           annotation(Evaluate=true,
            Dialog(group="Initialization"));
        parameter Boolean limitsAtInit = true
        "= false, if limits are ignored during initializiation" 
          annotation(Evaluate=true, Dialog(group="Initialization",
                             enable=controllerType==SimpleController.PI or 
                                    controllerType==SimpleController.PID));
        parameter Real xi_start=0
        "Initial or guess value value for integrator output (= integrator state)"
          annotation (Dialog(group="Initialization",
                      enable=controllerType==SimpleController.PI or 
                             controllerType==SimpleController.PID));
        parameter Real xd_start=0
        "Initial or guess value for state of derivative block" 
          annotation (Dialog(group="Initialization",
                               enable=controllerType==SimpleController.PD or 
                                      controllerType==SimpleController.PID));
        parameter Real y_start=0 "Initial value of output" 
          annotation(Dialog(enable=initType == InitPID.InitialOutput, group=
                "Initialization"));

        annotation (defaultComponentName="PID",
          Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
            Line(points={{-80,78},{-80,-90}}, color={192,192,192}),
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-90,-80},{82,-80}}, color={192,192,192}),
            Polygon(
              points={{90,-80},{68,-72},{68,-88},{90,-80}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-80,50},{-80,-20},{30,60},{80,60}}, color={
                  0,0,127}),
            Text(
              extent={{-20,-20},{80,-60}},
              lineColor={192,192,192},
              textString="PID")}),
          Documentation(info="<HTML>
<p>
Via parameter <b>controllerType</b> either <b>P</b>, <b>PI</b>, <b>PD</b>,
or <b>PID</b> can be selected. If, e.g., PI is selected, all components belonging to the
D-part are removed from the block (via conditional declarations).
The example model
<a href=\"Modelica://Modelica.Blocks.Examples.PID_Controller\">Modelica.Blocks.Examples.PID_Controller</a>
demonstrates the usage of this controller.
Several practical aspects of PID controller design are incorporated
according to chapter 3 of the book:
</p>

<dl>
<dt>&Aring;str&ouml;m K.J., and H&auml;gglund T.:</dt>
<dd> <b>PID Controllers: Theory, Design, and Tuning</b>.
     Instrument Society of America, 2nd edition, 1995.
</dd>
</dl>

<p>
Besides the additive <b>proportional, integral</b> and <b>derivative</b>
part of this controller, the following features are present:
</p>
<ul>
<li> The output of this controller is limited. If the controller is
     in its limits, anti-windup compensation is activated to drive
     the integrator state to zero. </li>
<li> The high-frequency gain of the derivative part is limited
     to avoid excessive amplification of measurement noise.</li>
<li> Setpoint weighting is present, which allows to weight
     the setpoint in the proportional and the derivative part
     independantly from the measurement. The controller will respond
     to load disturbances and measurement noise independantly of this setting
     (parameters wp, wd). However, setpoint changes will depend on this
     setting. For example, it is useful to set the setpoint weight wd
     for the derivative part to zero, if steps may occur in the
     setpoint signal.</li>
</ul>

<p>
The parameters of the controller can be manually adjusted by performing
simulations of the closed loop system (= controller + plant connected
together) and using the following strategy:
</p>

<ol>
<li> Set very large limits, e.g., yMax = Modelica.Constants.inf</li>
<li> Select a <b>P</b>-controller and manually enlarge parameter <b>k</b>
     (the total gain of the controller) until the closed-loop response
     cannot be improved any more.</li>
<li> Select a <b>PI</b>-controller and manually adjust parameters
     <b>k</b> and <b>Ti</b> (the time constant of the integrator).
     The first value of Ti can be selected, such that it is in the
     order of the time constant of the oscillations occuring with
     the P-controller. If, e.g., vibrations in the order of T=10 ms
     occur in the previous step, start with Ti=0.01 s.</li>
<li> If you want to make the reaction of the control loop faster
     (but probably less robust against disturbances and measurement noise)
     select a <b>PID</b>-Controller and manually adjust parameters
     <b>k</b>, <b>Ti</b>, <b>Td</b> (time constant of derivative block).</li>
<li> Set the limits yMax and yMin according to your specification.</li>
<li> Perform simulations such that the output of the PID controller
     goes in its limits. Tune <b>Ni</b> (Ni*Ti is the time constant of
     the anti-windup compensation) such that the input to the limiter
     block (= limiter.u) goes quickly enough back to its limits.
     If Ni is decreased, this happens faster. If Ni=infinity, the
     anti-windup compensation is switched off and the controller works bad.</li>
</ol>

<p>
<b>Initialization</b>
</p>

<p>
This block can be initialized in different
ways controlled by parameter <b>initType</b>. The possible
values of initType are defined in
<a href=\"Modelica://Modelica.Blocks.Types.InitPID\">Modelica.Blocks.Types.InitPID</a>.
This type is identical to
<a href=\"Modelica://Modelica.Blocks.Types.Init\">Types.Init</a>,
with the only exception that the additional option
<b>DoNotUse_InitialIntegratorState</b> is added for
backward compatibility reasons (= integrator is initialized with
InitialState whereas differential part is initialized with
NoInit which was the initialization in version 2.2 of the Modelica
standard library).
</p>

<p>
Based on the setting of initType, the integrator (I) and derivative (D)
blocks inside the PID controller are initialized according to the following table:
</p>

<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>initType</b></td>
      <td valign=\"top\"><b>I.initType</b></td>
      <td valign=\"top\"><b>D.initType</b></td></tr>

  <tr><td valign=\"top\"><b>NoInit</b></td>
      <td valign=\"top\">NoInit</td>
      <td valign=\"top\">NoInit</td></tr>

  <tr><td valign=\"top\"><b>SteadyState</b></td>
      <td valign=\"top\">SteadyState</td>
      <td valign=\"top\">SteadyState</td></tr>

  <tr><td valign=\"top\"><b>InitialState</b></td>
      <td valign=\"top\">InitialState</td>
      <td valign=\"top\">InitialState</td></tr>

  <tr><td valign=\"top\"><b>InitialOutput</b><br>
          and initial equation: y = y_start</td>
      <td valign=\"top\">NoInit</td>
      <td valign=\"top\">SteadyState</td></tr>

  <tr><td valign=\"top\"><b>DoNotUse_InitialIntegratorState</b></td>
      <td valign=\"top\">InitialState</td>
      <td valign=\"top\">NoInit</td></tr>
</table>

<p>
In many cases, the most useful initial condition is
<b>SteadyState</b> because initial transients are then no longer
present. If initType = InitPID.SteadyState, then in some
cases difficulties might occur. The reason is the
equation of the integrator:
</p>

<pre>
   <b>der</b>(y) = k*u;
</pre>

<p>
The steady state equation \"der(x)=0\" leads to the condition that the input u to the
integrator is zero. If the input u is already (directly or indirectly) defined
by another initial condition, then the initialization problem is <b>singular</b>
(has none or infinitely many solutions). This situation occurs often
for mechanical systems, where, e.g., u = desiredSpeed - measuredSpeed and
since speed is both a state and a derivative, it is natural to
initialize it with zero. As sketched this is, however, not possible.
The solution is to not initialize u_m or the variable that is used
to compute u_m by an algebraic equation.
</p>

<p>
If parameter <b>limitAtInit</b> = <b>false</b>, the limits at the
output of this controller block are removed from the initialization problem which
leads to a much simpler equation system. After initialization has been
performed, it is checked via an assert whether the output is in the
defined limits. For backward compatibility reasons
<b>limitAtInit</b> = <b>true</b>. In most cases it is best
to use <b>limitAtInit</b> = <b>false</b>.
</p>
</HTML>
"),       Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics));
        Blocks.Math.Add addP(k1=wp, k2=-1) 
          annotation (Placement(transformation(extent={{-80,40},{-60,60}}, rotation=
                 0)));
        Blocks.Math.Add addD(k1=wd, k2=-1) if with_D 
          annotation (Placement(transformation(extent={{-80,-10},{-60,10}},
                rotation=0)));
        Blocks.Math.Gain P(k=1) 
                           annotation (Placement(transformation(extent={{-40,40},{
                  -20,60}}, rotation=0)));
        Blocks.Continuous.Integrator I(k=1/Ti, y_start=xi_start,
          initType=if initType==InitPID.SteadyState then 
                      InitPID.SteadyState else 
                   if initType==InitPID.InitialState or 
                      initType==InitPID.DoNotUse_InitialIntegratorState then 
                      InitPID.InitialState else InitPID.NoInit) if with_I 
          annotation (Placement(transformation(extent={{-40,-60},{-20,-40}},
                rotation=0)));
        Blocks.Continuous.Derivative D(k=Td, T=max([Td/Nd, 1.e-14]), x_start=xd_start,
          initType=if initType==InitPID.SteadyState or 
                      initType==InitPID.InitialOutput then InitPID.SteadyState else 
                   if initType==InitPID.InitialState then InitPID.InitialState else 
                      InitPID.NoInit) if with_D 
          annotation (Placement(transformation(extent={{-40,-10},{-20,10}},
                rotation=0)));
        Blocks.Math.Gain gainPID(k=k) annotation (Placement(transformation(extent={
                  {30,-10},{50,10}}, rotation=0)));
        Blocks.Math.Add3 addPID annotation (Placement(transformation(
                extent={{0,-10},{20,10}}, rotation=0)));
        Blocks.Math.Add3 addI(k2=-1) if with_I annotation (Placement(
              transformation(extent={{-80,-60},{-60,-40}}, rotation=0)));
        Blocks.Math.Add addSat(k1=+1, k2=-1) if 
                                         with_I 
          annotation (Placement(transformation(
              origin={80,-50},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        Blocks.Math.Gain gainTrack(k=1/(k*Ni)) if with_I 
          annotation (Placement(transformation(extent={{40,-80},{20,-60}}, rotation=
                 0)));
        Blocks.Nonlinear.Limiter limiter(uMax=yMax, uMin=yMin, limitsAtInit=limitsAtInit) 
          annotation (Placement(transformation(extent={{70,-10},{90,10}}, rotation=
                  0)));
    protected
        parameter Boolean with_I = controllerType==SimpleController.PI or 
                                   controllerType==SimpleController.PID annotation(Evaluate=true, HideResult=true);
        parameter Boolean with_D = controllerType==SimpleController.PD or 
                                   controllerType==SimpleController.PID annotation(Evaluate=true, HideResult=true);
    public
        Sources.Constant Dzero(k=0) if not with_D 
          annotation (Placement(transformation(extent={{-30,20},{-20,30}}, rotation=
                 0)));
        Sources.Constant Izero(k=0) if not with_I 
          annotation (Placement(transformation(extent={{10,-55},{0,-45}}, rotation=
                  0)));
      initial equation
        if initType==InitPID.InitialOutput then
           y = y_start;
        end if;
      equation
        assert(yMax >= yMin, "LimPID: Limits must be consistent. However, yMax (=" + String(yMax) +
                             ") < yMin (=" + String(yMin) + ")");
        if initType == InitPID.InitialOutput and (y_start < yMin or y_start > yMax) then
            Modelica.Utilities.Streams.error("LimPID: Start value y_start (=" + String(y_start) +
               ") is outside of the limits of yMin (=" + String(yMin) +") and yMax (=" + String(yMax) + ")");
        end if;
        assert(limitsAtInit or not limitsAtInit and y >= yMin and y <= yMax,
               "LimPID: During initialization the limits have been switched off.\n" +
               "After initialization, the output y (=" + String(y) +
               ") is outside of the limits of yMin (=" + String(yMin) +") and yMax (=" + String(yMax) + ")");

        connect(u_s, addP.u1) annotation (Line(points={{-120,0},{-96,0},{-96,56},{
                -82,56}}, color={0,0,127}));
        connect(u_s, addD.u1) annotation (Line(points={{-120,0},{-96,0},{-96,6},{
                -82,6}}, color={0,0,127}));
        connect(u_s, addI.u1) annotation (Line(points={{-120,0},{-96,0},{-96,-42},{
                -82,-42}}, color={0,0,127}));
        connect(addP.y, P.u) annotation (Line(points={{-59,50},{-42,50}}, color={0,
                0,127}));
        connect(addD.y, D.u) 
          annotation (Line(points={{-59,0},{-42,0}}, color={0,0,127}));
        connect(addI.y, I.u) annotation (Line(points={{-59,-50},{-42,-50}}, color={
                0,0,127}));
        connect(P.y, addPID.u1) annotation (Line(points={{-19,50},{-10,50},{-10,8},
                {-2,8}}, color={0,0,127}));
        connect(D.y, addPID.u2) 
          annotation (Line(points={{-19,0},{-2,0}}, color={0,0,127}));
        connect(I.y, addPID.u3) annotation (Line(points={{-19,-50},{-10,-50},{-10,
                -8},{-2,-8}}, color={0,0,127}));
        connect(addPID.y, gainPID.u) 
          annotation (Line(points={{21,0},{28,0}}, color={0,0,127}));
        connect(gainPID.y, addSat.u2) annotation (Line(points={{51,0},{60,0},{60,
                -20},{74,-20},{74,-38}}, color={0,0,127}));
        connect(gainPID.y, limiter.u) 
          annotation (Line(points={{51,0},{68,0}}, color={0,0,127}));
        connect(limiter.y, addSat.u1) annotation (Line(points={{91,0},{94,0},{94,
                -20},{86,-20},{86,-38}}, color={0,0,127}));
        connect(limiter.y, y) 
          annotation (Line(points={{91,0},{110,0}}, color={0,0,127}));
        connect(addSat.y, gainTrack.u) annotation (Line(points={{80,-61},{80,-70},{
                42,-70}}, color={0,0,127}));
        connect(gainTrack.y, addI.u3) annotation (Line(points={{19,-70},{-88,-70},{
                -88,-58},{-82,-58}}, color={0,0,127}));
        connect(u_m, addP.u2) annotation (Line(
            points={{0,-120},{0,-92},{-92,-92},{-92,44},{-82,44}},
            color={0,0,127},
            thickness=0.5));
        connect(u_m, addD.u2) annotation (Line(
            points={{0,-120},{0,-92},{-92,-92},{-92,-6},{-82,-6}},
            color={0,0,127},
            thickness=0.5));
        connect(u_m, addI.u2) annotation (Line(
            points={{0,-120},{0,-92},{-92,-92},{-92,-50},{-82,-50}},
            color={0,0,127},
            thickness=0.5));
        connect(Dzero.y, addPID.u2) annotation (Line(points={{-19.5,25},{-14,25},{
                -14,0},{-2,0}}, color={0,0,127}));
        connect(Izero.y, addPID.u3) annotation (Line(points={{-0.5,-50},{-10,-50},{
                -10,-8},{-2,-8}}, color={0,0,127}));
      end LimPID;
    end Continuous;

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

        partial block SISO
      "Single Input Single Output continuous control block"
          extends BlockIcon;

          RealInput u "Connector of Real input signal" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
                rotation=0)));
          RealOutput y "Connector of Real output signal" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
          annotation (
          Documentation(info="<html>
<p>
Block has one continuous Real input and one continuous Real output signal.
</p>
</html>"));
        end SISO;

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

        partial block MISO
      "Multiple Input Single Output continuous control block"

          extends BlockIcon;
          parameter Integer nin=1 "Number of inputs";
          RealInput u[nin] "Connector of Real input signals" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
                rotation=0)));
          RealOutput y "Connector of Real output signal" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
          annotation (Documentation(info="<HTML>
<p>
Block has a vector of continuous Real input signals and
one continuous Real output signal.
</p>
</HTML>
"));
        end MISO;

        partial block SVcontrol "Single-Variable continuous controller"
          extends BlockIcon;

          RealInput u_s "Connector of setpoint input signal" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
                rotation=0)));
          RealInput u_m "Connector of measurement input signal" 
            annotation (Placement(transformation(
              origin={0,-120},
              extent={{20,-20},{-20,20}},
              rotation=270)));
          RealOutput y "Connector of actuator output signal" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
          annotation (
            Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Text(
                extent={{-102,34},{-142,24}},
                textString="(setpoint)",
                lineColor={0,0,255}),
              Text(
                extent={{100,24},{140,14}},
                textString="(actuator)",
                lineColor={0,0,255}),
              Text(
                extent={{-83,-112},{-33,-102}},
                textString=" (measurement)",
                lineColor={0,0,255})}),
          Documentation(info="<html>
<p>
Block has two continuous Real input signals and one
continuous Real output signal. The block is designed
to be used as base class for a corresponding controller.
</p>
</html>"));
        end SVcontrol;

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

          block Sum "Output the sum of the elements of the input vector"
            extends Interfaces.MISO;
            parameter Real k[nin]=ones(nin) "Optional: sum coefficients";
            annotation (defaultComponentName="sum1",
              Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as
<i>sum</i> of the elements of the input signal vector
<b>u</b>:
</p>
<pre>
    <b>y</b> = <b>u</b>[1] + <b>u</b>[2] + ...;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   nin = 3;

  results in the following equations:

     y = u[1] + u[2] + u[3];
</pre>

</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={Line(
                points={{26,42},{-34,42},{6,2},{-34,-38},{26,-38}},
                color={0,0,0},
                thickness=0.25), Text(
                extent={{-150,150},{150,110}},
                textString="%name",
                lineColor={0,0,255})}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={Rectangle(
                extent={{-100,-100},{100,100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Line(
                points={{26,42},{-34,42},{6,2},{-34,-38},{26,-38}},
                color={0,0,0},
                thickness=0.25)}));
          equation
            y = k*u;
          end Sum;

          block Feedback
      "Output difference between commanded and feedback input"

            input Interfaces.RealInput u1 annotation (Placement(transformation(
                extent={{-100,-20},{-60,20}}, rotation=0)));
            input Interfaces.RealInput u2 
              annotation (Placement(transformation(
              origin={0,-80},
              extent={{-20,-20},{20,20}},
              rotation=90)));
            output Interfaces.RealOutput y annotation (Placement(transformation(
                extent={{80,-10},{100,10}}, rotation=0)));
            annotation (
              Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>difference</i> of the
commanded input <b>u1</b> and the feedback
input <b>u2</b>:
</p>
<pre>
    <b>y</b> = <b>u1</b> - <b>u2</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   n = 2

  results in the following equations:

     y = u1 - u2
</pre>

</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Ellipse(
                extent={{-20,20},{20,-20}},
                lineColor={0,0,127},
                fillColor={235,235,235},
                fillPattern=FillPattern.Solid),
              Line(points={{-60,0},{-20,0}}, color={0,0,127}),
              Line(points={{20,0},{80,0}}, color={0,0,127}),
              Line(points={{0,-20},{0,-60}}, color={0,0,127}),
              Text(
                extent={{-14,0},{82,-94}},
                lineColor={0,0,0},
                textString="-"),
              Text(
                extent={{-150,94},{150,44}},
                textString="%name",
                lineColor={0,0,255})}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Ellipse(
                extent={{-20,20},{20,-20}},
                pattern=LinePattern.Solid,
                lineThickness=0.25,
                fillColor={235,235,235},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255}),
              Line(points={{-60,0},{-20,0}}, color={0,0,255}),
              Line(points={{20,0},{80,0}}, color={0,0,255}),
              Line(points={{0,-20},{0,-60}}, color={0,0,255}),
              Text(
                extent={{-12,10},{84,-84}},
                lineColor={0,0,0},
                textString="-")}));

          equation
            y = u1 - u2;
          end Feedback;

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

          block Add3 "Output the sum of the three inputs"
            extends Interfaces.BlockIcon;

            parameter Real k1=+1 "Gain of upper input";
            parameter Real k2=+1 "Gain of middle input";
            parameter Real k3=+1 "Gain of lower input";
            input Interfaces.RealInput u1 "Connector 1 of Real input signals" 
              annotation (Placement(transformation(extent={{-140,60},{-100,100}},
                rotation=0)));
            input Interfaces.RealInput u2 "Connector 2 of Real input signals" 
              annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
                rotation=0)));
            input Interfaces.RealInput u3 "Connector 3 of Real input signals" 
              annotation (Placement(transformation(extent={{-140,-100},{-100,-60}},
                rotation=0)));
            output Interfaces.RealOutput y "Connector of Real output signals" 
              annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));
            annotation (
              Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>sum</i> of the
three input signals <b>u1</b>, <b>u2</b> and <b>u3</b>:
</p>
<pre>
    <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b> + k3*<b>u3</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   k1= +2, k2= -3, k3=1;

  results in the following equations:

     y = 2 * u1 - 3 * u2 + u3;
</pre>

</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Text(
                extent={{-100,50},{5,90}},
                lineColor={0,0,0},
                textString="%k1"),
              Text(
                extent={{-100,-20},{5,20}},
                lineColor={0,0,0},
                textString="%k2"),
              Text(
                extent={{-100,-50},{5,-90}},
                lineColor={0,0,0},
                textString="%k3"),
              Text(
                extent={{2,36},{100,-44}},
                lineColor={0,0,0},
                textString="+")}),
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
                extent={{-100,50},{5,90}},
                lineColor={0,0,0},
                textString="%k1"),
              Text(
                extent={{-100,-20},{5,20}},
                lineColor={0,0,0},
                textString="%k2"),
              Text(
                extent={{-100,-50},{5,-90}},
                lineColor={0,0,0},
                textString="%k3"),
              Text(
                extent={{2,36},{100,-44}},
                lineColor={0,0,0},
                textString="+"),
              Rectangle(
                extent={{-100,-100},{100,100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-100,50},{5,90}},
                lineColor={0,0,0},
                textString="k1"),
              Text(
                extent={{-100,-20},{5,20}},
                lineColor={0,0,0},
                textString="k2"),
              Text(
                extent={{-100,-50},{5,-90}},
                lineColor={0,0,0},
                textString="k3"),
              Text(
                extent={{2,36},{100,-44}},
                lineColor={0,0,0},
                textString="+")}));

          equation
            y = k1*u1 + k2*u2 + k3*u3;
          end Add3;
    end Math;

    package Nonlinear
    "Library of discontinuous or non-differentiable algebraic control blocks"
      import Modelica.Blocks.Interfaces;
          extends Modelica.Icons.Library;
          annotation (
            Documentation(info="
<HTML>
<p>
This package contains <b>discontinuous</b> and
<b>non-differentiable, algebraic</b> input/output blocks.
</p>
</HTML>
",     revisions="<html>
<ul>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
       New block VariableLimiter added.
<li><i>August 22, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.
</li>
</ul>
</html>
"));

          block Limiter "Limit the range of a signal"
            parameter Real uMax(start=1) "Upper limits of input signals";
            parameter Real uMin= -uMax "Lower limits of input signals";
            parameter Boolean limitsAtInit = true
        "= false, if limits are ignored during initializiation (i.e., y=u)";
            extends Interfaces.SISO;

            annotation (
              Documentation(info="
<HTML>
<p>
The Limiter block passes its input signal as output signal
as long as the input is within the specified upper and lower
limits. If this is not the case, the corresponding limits are passed
as output.
</p>
</HTML>
"),           Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{0,-90},{0,68}}, color={192,192,192}),
              Polygon(
                points={{0,90},{-8,68},{8,68},{0,90}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,0},{68,0}}, color={192,192,192}),
              Polygon(
                points={{90,0},{68,-8},{68,8},{90,0}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-80,-70},{-50,-70},{50,70},{80,70}}, color={0,0,0}),
              Text(
                extent={{-150,-150},{150,-110}},
                lineColor={0,0,0},
                textString="uMax=%uMax"),
              Text(
                extent={{-150,150},{150,110}},
                textString="%name",
                lineColor={0,0,255})}),
              Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{0,-60},{0,50}}, color={192,192,192}),
              Polygon(
                points={{0,60},{-5,50},{5,50},{0,60}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-60,0},{50,0}}, color={192,192,192}),
              Polygon(
                points={{60,0},{50,-5},{50,5},{60,0}},
                lineColor={192,192,192},
                fillColor={192,192,192},
                fillPattern=FillPattern.Solid),
              Line(points={{-50,-40},{-30,-40},{30,40},{50,40}}, color={0,0,0}),
              Text(
                extent={{46,-6},{68,-18}},
                lineColor={128,128,128},
                textString="u"),
              Text(
                extent={{-30,70},{-5,50}},
                lineColor={128,128,128},
                textString="y"),
              Text(
                extent={{-58,-54},{-28,-42}},
                lineColor={128,128,128},
                textString="uMin"),
              Text(
                extent={{26,40},{66,56}},
                lineColor={128,128,128},
                textString="uMax")}));

          equation
            assert(uMax >= uMin, "Limiter: Limits must be consistent. However, uMax (=" + String(uMax) +
                                 ") < uMin (=" + String(uMin) + ")");
            if initial() and not limitsAtInit then
               y = u;
               assert(u >= uMin - 0.01*abs(uMin) and 
                      u <= uMax + 0.01*abs(uMax),
                     "Limiter: During initialization the limits have been ignored.\n"+
                     "However, the result is that the input u is not within the required limits:\n"+
                     "  u = " + String(u) + ", uMin = " + String(uMin) + ", uMax = " + String(uMax));
            else
               y = smooth(0,if u > uMax then uMax else if u < uMin then uMin else u);
            end if;
          end Limiter;
    end Nonlinear;

    package Routing "Library of blocks to combine and extract signals"
      extends Icons.Library;

      block Multiplex5 "Multiplexer block for five input connectors"
        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Integer n1=1 "dimension of input signal connector 1";
        parameter Integer n2=1 "dimension of input signal connector 2";
        parameter Integer n3=1 "dimension of input signal connector 3";
        parameter Integer n4=1 "dimension of input signal connector 4";
        parameter Integer n5=1 "dimension of input signal connector 5";
        Modelica.Blocks.Interfaces.RealInput u1[n1]
        "Connector of Real input signals 1"   annotation (Placement(transformation(
                extent={{-140,80},{-100,120}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u2[n2]
        "Connector of Real input signals 2"   annotation (Placement(transformation(
                extent={{-140,30},{-100,70}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u3[n3]
        "Connector of Real input signals 3"   annotation (Placement(transformation(
                extent={{-140,-20},{-100,20}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u4[n4]
        "Connector of Real input signals 4"   annotation (Placement(transformation(
                extent={{-140,-70},{-100,-30}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u5[n5]
        "Connector of Real input signals 5"   annotation (Placement(transformation(
                extent={{-140,-120},{-100,-80}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4 + n5]
        "Connector of Real output signals"   annotation (Placement(transformation(
                extent={{100,-10},{120,10}}, rotation=0)));
        annotation (
          Documentation(info="<HTML>
<p>
The output connector is the <b>concatenation</b> of the five input connectors.
Note, that the dimensions of the input connector signals have to be
explicitly defined via parameters n1, n2, n3, n4 and n5.
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
            Line(points={{8,0},{102,0}}, color={0,0,255}),
            Line(points={{-100,100},{-60,100},{-4,6}}, color={0,0,127}),
            Line(points={{-99,50},{-60,50},{-8,5}}, color={0,0,127}),
            Line(points={{-100,0},{-7,0}}, color={0,0,127}),
            Line(points={{-99,-50},{-60,-50},{-9,-6}}, color={0,0,127}),
            Line(points={{-100,-100},{-60,-100},{-4,-4}}, color={0,0,127}),
            Ellipse(
              extent={{-15,15},{15,-15}},
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,127})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Line(points={{-100,100},{-60,100},{-4,6}}, color={0,0,255}),
              Line(points={{-100,-100},{-60,-100},{-4,-4}}, color={0,0,255}),
              Line(points={{8,0},{102,0}}, color={0,0,255}),
              Ellipse(
                extent={{-15,15},{15,-15}},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255}),
              Line(points={{-99,50},{-60,50},{-8,5}}, color={0,0,255}),
              Line(points={{-100,0},{-7,0}}, color={0,0,255}),
              Line(points={{-99,-50},{-60,-50},{-9,-6}}, color={0,0,255})}));

      equation
        [y] = [u1; u2; u3; u4; u5];
      end Multiplex5;

      block DeMultiplex4 "DeMultiplexer block for four output connectors"

        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Integer n1=1 "dimension of output signal connector 1";
        parameter Integer n2=1 "dimension of output signal connector 2";
        parameter Integer n3=1 "dimension of output signal connector 3";
        parameter Integer n4=1 "dimension of output signal connector 4";
        Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4]
        "Connector of Real input signals"   annotation (Placement(transformation(
                extent={{-140,-20},{-100,20}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y1[n1]
        "Connector of Real output signals 1"   annotation (Placement(transformation(
                extent={{100,80},{120,100}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y2[n2]
        "Connector of Real output signals 2"   annotation (Placement(transformation(
                extent={{100,20},{120,40}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y3[n3]
        "Connector of Real output signals 3"   annotation (Placement(transformation(
                extent={{100,-40},{120,-20}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput y4[n4]
        "Connector of Real output signals 4"   annotation (Placement(transformation(
                extent={{100,-100},{120,-80}}, rotation=0)));
        annotation (
          Documentation(info="<HTML>
<p>
The input connector is <b>splitted</b> up into four output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3 and n4.
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
            Ellipse(
              extent={{-14,16},{16,-14}},
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,127}),
            Line(points={{-100,0},{-6,0}}, color={0,0,127}),
            Line(points={{100,90},{60,90},{6,5}}, color={0,0,127}),
            Line(points={{100,30},{60,30},{9,2}}, color={0,0,127}),
            Line(points={{100,-30},{60,-30},{8,-4}}, color={0,0,127}),
            Line(points={{99,-90},{60,-90},{6,-6}}, color={0,0,127})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Line(points={{100,90},{60,90},{6,5}}, color={0,0,255}),
              Line(points={{99,-90},{60,-90},{6,-6}}, color={0,0,255}),
              Line(points={{-100,0},{-6,0}}, color={0,0,255}),
              Line(points={{100,30},{60,30},{9,2}}, color={0,0,255}),
              Line(points={{100,-30},{60,-30},{8,-4}}, color={0,0,255}),
              Ellipse(
                extent={{-16,15},{14,-15}},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255})}));

      equation
        [u] = [y1; y2; y3; y4];
      end DeMultiplex4;
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
                textString="y"),
              Text(
                extent={{70,-80},{94,-100}},
                lineColor={0,0,0},
                textString="time"),
              Text(
                extent={{-101,8},{-81,-12}},
                lineColor={0,0,0},
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

    package Types
    "Library of constants and types with choices, especially to build menus"
      extends Modelica.Icons.Library;
      annotation ( Documentation(info="<HTML>
<p>
In this package <b>types</b> and <b>constants</b> are defined that are used
in library Modelica.Blocks. The types have additional annotation choices
definitions that define the menus to be built up in the graphical
user interface when the type is used as parameter in a declaration.
</p>
</HTML>"));

      type Init = enumeration(
        NoInit
          "No initialization (start values are used as guess values with fixed=false)", 

        SteadyState
          "Steady state initialization (derivatives of states are zero)",
        InitialState "Initialization with initial states",
        InitialOutput
          "Initialization with initial outputs (and steady state of the states if possibles)")
      "Enumeration defining initialization of a block" 
          annotation (Evaluate=true, Documentation(info="<html>

</html>"));

      type InitPID = enumeration(
        NoInit
          "No initialization (start values are used as guess values with fixed=false)", 

        SteadyState
          "Steady state initialization (derivatives of states are zero)",
        InitialState "Initialization with initial states",
        InitialOutput
          "Initialization with initial outputs (and steady state of the states if possibles)", 

        DoNotUse_InitialIntegratorState
          "Don't use, only for backward compatibility (initialize only integrator state)")
      "Enumeration defining initialization of PID and LimPID blocks" 
        annotation (Documentation(info="<html>
<p>
This initialization type is identical to Types.Init and has just one
additional option <b>DoNotUse_InitialIntegratorState</b>. This option
is introduced in order that the default initialization for the
Continuous.PID and Continuous.LimPID blocks are backward
compatible. In Modelica 2.2, the integrators have been initialized
with their given states where as the D-part has not been initialized.
The option \"DoNotUse_InitialIntegratorState\" leads to this
initialization definition.
</p>

</html>"),       Evaluate=true);

      type SimpleController = enumeration(
        P "P controller",
        PI "PI controller",
        PD "PD controller",
        PID "PID controller")
      "Enumeration defining P, PI, PD, or PID simple controller type" 
          annotation (Evaluate=true, Documentation(info="<html>

</html>"));
    end Types;
  end Blocks;

  package Fluid
  "Library of 1-dim. thermo-fluid flow models using the Modelica.Media media description"
    extends Modelica.Icons.Library;
    import SI = Modelica.SIunits;
  annotation (
    preferedView="info",
    __Dymola_classOrder={"UsersGuide","Examples","System","Vessels","Pipes","Machines","Valves",
        "Fittings", "Sources", "Sensors", "Interfaces", "Types", "Utilities", "Icons", "*"},
    Documentation(info="<html>
<p>
Library <b>Modelica.Fluid</b> is a <b>free</b> Modelica package providing components for
<b>1-dimensional thermo-fluid flow</b> in networks of vessels, pipes, fluid machines, valves and fittings.
A unique feature is that the component equations and the media models
as well as pressure loss and heat transfer correlations are decoupled from each other.
All components are implemented such that they can be used for
media from the Modelica.Media library. This means especially that an
incompressible or compressible medium, a single or a multiple
substance medium with one or more phases might be used.
</p>

<p>
In the next figure, several features of the library are demonstrated with
a simple heating system with a closed flow cycle. By just changing one configuration parameter in the system object the equations are changed between steady-state and dynamic simulation with fixed or steady-state initial conditions.
</p>

<blockquote>
    <img src=\"../Images/Fluid/UsersGuide/HeatingSystem.png\" border=1>
</blockquote>

<p>
With respect to previous versions, the design
of the connectors has been changed in a non-backward compatible way,
using the recently developed concept
of stream connectors that results in much more reliable simulations
(see an overview and a rationale
<a href=\"..\\help\\Documentation\\Fluid\\Stream-Connectors-Overview-Rationale.pdf\">here</a>).
This extension was included in Modelica 3.1.
As of Jan. 2009, the stream concept is supported in Dymola 7.1.
It is recommended to use Dymola 7.2 (available since Feb. 2009), or a later Dymola version,
since this version supports a new annotation to connect very
conveniently to vectors of connectors.
Other tool vendors will support the stream concept as well.
</p>

<p>
The following parts are useful, when newly starting with this library:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.Fluid.UsersGuide\">Modelica.Fluid.UsersGuide</a>.</li>
<li> <a href=\"Modelica://Modelica.Fluid.UsersGuide.ReleaseNotes\">Modelica.Fluid.UsersGuide.ReleaseNotes</a>
     summarizes the changes of the library releases.</li>
<li> <a href=\"Modelica://Modelica.Fluid.Examples\">Modelica.Fluid.Examples</a>
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
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense2\">here</a></u>
or at
<a href=\"http://www.Modelica.org/licenses/ModelicaLicense2\">
http://www.Modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>

</html>"));

    model System
    "System properties and default values (ambient, flow direction, initialization)"

      package Medium = Modelica.Media.Interfaces.PartialMedium
      "Medium model for default start values" 
          annotation (choicesAllMatching = true);
      parameter Modelica.SIunits.AbsolutePressure p_ambient=101325
      "Default ambient pressure" 
        annotation(Dialog(group="Environment"));
      parameter Modelica.SIunits.Temperature T_ambient=293.15
      "Default ambient temperature" 
        annotation(Dialog(group="Environment"));
      parameter Modelica.SIunits.Acceleration g=Modelica.Constants.g_n
      "Constant gravity acceleration" 
        annotation(Dialog(group="Environment"));

      // Assumptions
      parameter Boolean allowFlowReversal = true
      "= false to restrict to design flow direction (port_a -> port_b)" 
        annotation(Dialog(tab="Assumptions"), Evaluate=true);
      parameter Modelica.Fluid.Types.Dynamics energyDynamics=
        Modelica.Fluid.Types.Dynamics.DynamicFreeInitial
      "Default formulation of energy balances" 
        annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
      parameter Modelica.Fluid.Types.Dynamics massDynamics=
        energyDynamics "Default formulation of mass balances" 
        annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
      final parameter Modelica.Fluid.Types.Dynamics substanceDynamics=
        massDynamics "Default formulation of substance balances" 
        annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
      final parameter Modelica.Fluid.Types.Dynamics traceDynamics=
        massDynamics "Default formulation of trace substance balances" 
        annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=
        Modelica.Fluid.Types.Dynamics.SteadyState
      "Default formulation of momentum balances, if options available" 
        annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));

      // Initialization
      parameter Modelica.SIunits.MassFlowRate m_flow_start = 0
      "Default start value for mass flow rates" 
        annotation(Dialog(tab = "Initialization"));
      parameter Modelica.SIunits.AbsolutePressure p_start = p_ambient
      "Default start value for pressures" 
        annotation(Dialog(tab = "Initialization"));
      parameter Modelica.SIunits.Temperature T_start = T_ambient
      "Default start value for temperatures" 
        annotation(Dialog(tab = "Initialization"));

      // Advanced
      parameter Modelica.SIunits.MassFlowRate m_flow_small(min=0) = 0.01
      "Default small laminar mass flow rate for regularization of zero flow" 
        annotation(Dialog(tab = "Advanced"));
      parameter Modelica.SIunits.AbsolutePressure dp_small(min=0) = 1
      "Default small pressure drop for regularization of laminar and zero flow"
        annotation(Dialog(tab="Advanced"));

      annotation (
        defaultComponentName="system",
        defaultComponentPrefixes="inner",
        missingInnerMessage="
Your model is using an outer \"system\" component but
an inner \"system\" component is not defined.
For simulation drag Modelica.Fluid.System into your model
to specify system properties. The default System setting
is used for the current simulation.
",      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
              100,100}}), graphics={
          Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,255},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-150,150},{150,110}},
            lineColor={0,0,255},
            textString="%name"),
          Line(points={{-86,-30},{82,-30}}, color={0,0,0}),
          Line(points={{-82,-68},{-52,-30}}, color={0,0,0}),
          Line(points={{-48,-68},{-18,-30}}, color={0,0,0}),
          Line(points={{-14,-68},{16,-30}}, color={0,0,0}),
          Line(points={{22,-68},{52,-30}}, color={0,0,0}),
          Line(points={{74,84},{74,14}}, color={0,0,0}),
          Polygon(
            points={{60,14},{88,14},{74,-18},{60,14}},
            lineColor={0,0,0},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{16,20},{60,-18}},
            lineColor={0,0,0},
            textString="g"),
          Text(
            extent={{-90,82},{74,50}},
            lineColor={0,0,0},
            textString="defaults"),
          Line(
            points={{-82,14},{-42,-20},{2,30}},
            color={0,0,0},
            thickness=0.5),
          Ellipse(
            extent={{-10,40},{12,18}},
            pattern=LinePattern.None,
            lineColor={0,0,0},
            fillColor={255,0,0},
            fillPattern=FillPattern.Solid)}),
        Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                100,100}}),
                graphics),
        Documentation(info="<html>
<p>
 A system component is needed in each fluid model to provide system-wide settings, such as ambient conditions and overall modeling assumptions.
 The system settings are propagated to the fluid models using the inner/outer mechanism.
</p>
<p>
 A model should never directly use system parameters.
 Instead a local parameter should be declared, which uses the global setting as default.
 The only exception currently made is the gravity system.g.
</p>
</html>"));

    end System;

    package Vessels "Devices for storing fluid"
       extends Modelica.Fluid.Icons.VariantLibrary;

      package BaseClasses
      "Base classes used in the Vessels package (only of interest to build new component models)"
        extends Modelica.Fluid.Icons.BaseClassLibrary;

      package HeatTransfer "HeatTransfer models for vessels"

        partial model PartialVesselHeatTransfer
        "Base class for vessel heat transfer models"
          extends Modelica.Fluid.Interfaces.PartialHeatTransfer;

          annotation(Documentation(info="<html>
Base class for vessel heat transfer models.
</html>"),    Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                      {100,100}}), graphics={Ellipse(
                    extent={{-60,64},{60,-56}},
                    lineColor={0,0,0},
                    fillPattern=FillPattern.Sphere,
                    fillColor={232,0,0}), Text(
                    extent={{-38,26},{40,-14}},
                    lineColor={0,0,0},
                    textString="%name")}));
        end PartialVesselHeatTransfer;

        model IdealHeatTransfer
        "IdealHeatTransfer: Ideal heat transfer without thermal resistance"
          extends PartialVesselHeatTransfer;

        equation
          Ts = heatPorts.T;

          annotation(Documentation(info="<html>
Ideal heat transfer without thermal resistance.
</html>"));
        end IdealHeatTransfer;
        annotation (Documentation(info="<html>
Heat transfer correlations for pipe models
</html>"));
      end HeatTransfer;
      end BaseClasses;
      annotation (Documentation(info="<html>

</html>"));
    end Vessels;

    package Sources "Define fixed or prescribed boundary conditions"
      extends Modelica.Fluid.Icons.VariantLibrary;
      annotation (Documentation(info="<html>
<p>
Package <b>Sources</b> contains generic sources for fluid connectors
to define fixed or prescribed ambient conditions.
</p>
</html>"));

      package BaseClasses
      "Base classes used in the Sources package (only of interest to build new component models)"
        extends Modelica.Fluid.Icons.BaseClassLibrary;

      partial model PartialSource
        "Partial component source with one fluid connector"
          import Modelica.Constants;

        parameter Integer nPorts=0 "Number of ports" annotation(Dialog(__Dymola_connectorSizing=true));

        replaceable package Medium = 
            Modelica.Media.Interfaces.PartialMedium
          "Medium model within the source" 
           annotation (choicesAllMatching=true);

        Medium.BaseProperties medium "Medium in the source";

        Interfaces.FluidPorts_b ports[nPorts](
                           redeclare each package Medium = Medium,
                           m_flow(each max=if flowDirection==Types.PortFlowDirection.Leaving then 0 else 
                                           +Constants.inf,
                                  each min=if flowDirection==Types.PortFlowDirection.Entering then 0 else 
                                           -Constants.inf)) 
          annotation (Placement(transformation(extent={{90,40},{110,-40}})));
      protected
        parameter Types.PortFlowDirection flowDirection=
                         Types.PortFlowDirection.Bidirectional
          "Allowed flow direction"               annotation(Evaluate=true, Dialog(tab="Advanced"));
      equation
        // Only one connection allowed to a port to avoid unwanted ideal mixing
        for i in 1:nPorts loop
          assert(cardinality(ports[i]) <= 1,"
each ports[i] of boundary shall at most be connected to one component.
If two or more connections are present, ideal mixing takes
place with these connections, which is usually not the intention
of the modeller. Increase nPorts to add an additional port.
");

           ports[i].p          = medium.p;
           ports[i].h_outflow  = medium.h;
           ports[i].Xi_outflow = medium.Xi;
        end for;

        annotation (defaultComponentName="boundary", Documentation(info="<html>
<p>
Partial component to model the <b>volume interface</b> of a <b>source</b>
component, such as a mass flow source. The essential
features are:
</p>
<ul>
<li> The pressure in the connection port (= ports.p) is identical to the
     pressure in the volume.</li>
<li> The outflow enthalpy rate (= port.h_outflow) and the composition of the
     substances (= port.Xi_outflow) are identical to the respective values in the volume.</li>
</ul>
</html>"),       Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                               graphics),
            Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics));
      end PartialSource;
      end BaseClasses;
    end Sources;

    package Sensors
    "Ideal sensor components to extract signals from a fluid connector"
      extends Modelica.Fluid.Icons.VariantLibrary;
      annotation (preferedView="info", Documentation(info="<html>
<p align = justify>
Package <b>Sensors</b> consists of idealized sensor components that
provide variables of a medium model and/or fluid ports as
output signals. These signals can be, e.g., further processed
with components of the Modelica.Blocks library.
Also more realistic sensor models can be built, by further
processing (e.g., by attaching block Modelica.Blocks.FirstOrder to
model the time constant of the sensor).

</p>

<p align = justify>For the thermodynamic state variables temperature, specific entalpy, specific entropy and density
the fluid library provides two different types of sensors: <b>regular one port</b> and <b>two port</b> sensors. </p>

<ul>
<li>
The <b>regular one port</b> sensors have the advantage of easy introduction and removal from a model, as no connections have to be broken.
A potential drawback is that the obtained value jumps as flow reverts.
<a href= \"Modelica.Fluid.Test.TestComponents.Sensors.TestTemperatureSensor\">Modelica.Fluid.Test.TestComponents.Sensors.TestTemperatureSensor </a> provides a test case,
which demonstrates this.</li>

<li> The <b>two port</b> sensors offer the advantages of an adjustable regularized step function around zero flow.
Moreover the obtained result is restricted to the value flowing into port_a if allowFlowReversal is false.</li>
</ul>


</html>", revisions="<html>
<ul>
<li><i>22 Dec 2008</i>
    by R;uumldiger Franke<br>
    <ul>
    <li>flow sensors based on Interfaces.PartialTwoPort</li>
    <li>adapted docu to stream connectors, i.e. less need for two port sensors</li>
    </ul>
<li><i>4 Dec 2008</i>
    by Michael Wetter<br>
       included sensors for trace substance</li>
<li><i>31 Oct 2007</i>
    by Carsten Heinrich<br>
       updated sensor models, included one and two port sensors for thermodynamic state variables</li>
</ul>
</html>"));

      package BaseClasses
      "Base classes used in the Sensors package (only of interest to build new component models)"
        extends Modelica.Fluid.Icons.BaseClassLibrary;

        partial model PartialAbsoluteSensor
        "Partial component to model a sensor that measures a potential variable"

          replaceable package Medium=Modelica.Media.Interfaces.PartialMedium
          "Medium in the sensor" 
            annotation(choicesAllMatching=true);

          Modelica.Fluid.Interfaces.FluidPort_a port(redeclare package Medium=Medium, m_flow(min=0)) 
            annotation (Placement(transformation(
                origin={0,-100},
                extent={{-10,-10},{10,10}},
                rotation=90)));

          annotation (Documentation(info="<html>
<p>
Partial component to model an <b>absolute sensor</b>. Can be used for pressure sensor models.
Use for other properties such as temperature or density is discouraged, because the enthalpy at the connector can have different meanings, depending on the connection topology. Use <tt>PartialFlowSensor</tt> instead.
as signal.
</p>
</html>"),  Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics),
            Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics));
        equation
          port.m_flow = 0;
          port.h_outflow = 0;
          port.Xi_outflow = zeros(Medium.nXi);
          port.C_outflow = zeros(Medium.nC);
        end PartialAbsoluteSensor;

        partial model PartialFlowSensor
        "Partial component to model sensors that measure flow properties"
          extends Modelica.Fluid.Interfaces.PartialTwoPort;

          annotation (Documentation(info="<html>
<p>
Partial component to model a <b>sensor</b> that measures any intensive properties
of a flow, e.g., to get temperature or density in the flow
between fluid connectors.<br>
The model includes zero-volume balance equations. Sensor models inheriting from
this partial class should add a medium instance to calculate the measured property.
</p>
</html>"),  Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics));

        equation
          // mass balance
          0 = port_a.m_flow + port_b.m_flow;

          // momentum equation (no pressure loss)
          port_a.p = port_b.p;

          // isenthalpic state transformation (no storage and no loss of energy)
          port_a.h_outflow = inStream(port_b.h_outflow);
          port_b.h_outflow = inStream(port_a.h_outflow);

          port_a.Xi_outflow = inStream(port_b.Xi_outflow);
          port_b.Xi_outflow = inStream(port_a.Xi_outflow);

          port_a.C_outflow = inStream(port_b.C_outflow);
          port_b.C_outflow = inStream(port_a.C_outflow);
        end PartialFlowSensor;
      end BaseClasses;
    end Sensors;

    package Interfaces
    "Interfaces for steady state and unsteady, mixed-phase, multi-substance, incompressible and compressible flow"
      annotation (Documentation(info="<html>

</html>",     revisions="<html>
<ul>
<li><i>June 9th, 2008</i>
       by Michael Sielemann: Introduced stream keyword after decision at 57th Design Meeting (Lund).</li>
<li><i>May 30, 2007</i>
       by Christoph Richter: moved everything back to its original position in Modelica.Fluid.</li>
<li><i>Apr. 20, 2007</i>
       by Christoph Richter: moved parts of the original package from Modelica.Fluid
       to the development branch of Modelica 2.2.2.</li>
<li><i>Nov. 2, 2005</i>
       by Francesco Casella: restructured after 45th Design Meeting.</li>
<li><i>Nov. 20-21, 2002</i>
       by Hilding Elmqvist, Mike Tiller, Allan Watson, John Batteh, Chuck Newman,
       Jonas Eborn: Improved at the 32nd Modelica Design Meeting.
<li><i>Nov. 11, 2002</i>
       by Hilding Elmqvist, Martin Otter: improved version.</li>
<li><i>Nov. 6, 2002</i>
       by Hilding Elmqvist: first version.</li>
<li><i>Aug. 11, 2002</i>
       by Martin Otter: Improved according to discussion with Hilding
       Elmqvist and Hubertus Tummescheit.<br>
       The PortVicinity model is manually
       expanded in the base models.<br>
       The Volume used for components is renamed
       PartialComponentVolume.<br>
       A new volume model \"Fluid.Components.PortVolume\"
       introduced that has the medium properties of the port to which it is
       connected.<br>
       Fluid.Interfaces.PartialTwoPortTransport is a component
       for elementary two port transport elements, whereas PartialTwoPort
       is a component for a container component.</li>
</li>
</ul>
</html>"));
      extends Modelica.Icons.Library;

      connector FluidPort
      "Interface for quasi one-dimensional fluid flow in a piping network (incompressible or compressible, one or more phases, one or more substances)"

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
        "Medium model"   annotation (choicesAllMatching=true);

        flow Medium.MassFlowRate m_flow
        "Mass flow rate from the connection point into the component";
        Medium.AbsolutePressure p
        "Thermodynamic pressure in the connection point";
        stream Medium.SpecificEnthalpy h_outflow
        "Specific thermodynamic enthalpy close to the connection point if m_flow < 0";
        stream Medium.MassFraction Xi_outflow[Medium.nXi]
        "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0";
        stream Medium.ExtraProperty C_outflow[Medium.nC]
        "Properties c_i/m close to the connection point if m_flow < 0";
      end FluidPort;

      connector FluidPort_a "Generic fluid connector at design inlet"
        extends FluidPort;
        annotation (defaultComponentName="port_a",
                    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Ellipse(
              extent={{-40,40},{40,-40}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid), Text(extent={{-150,110},{150,50}}, 
                textString="%name")}),
             Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,127,255},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid), Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid)}));
      end FluidPort_a;

      connector FluidPort_b "Generic fluid connector at design outlet"
        extends FluidPort;
        annotation (defaultComponentName="port_b",
                    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={
            Ellipse(
              extent={{-40,40},{40,-40}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-30,30},{30,-30}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(extent={{-150,110},{150,50}}, textString="%name")}),
             Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={
            Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,127,255},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-80,80},{80,-80}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)}));
      end FluidPort_b;

      connector FluidPorts_b
      "Fluid connector with outlined, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)"
        extends FluidPort;
        annotation (defaultComponentName="ports_b",
                    Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-50,-200},{50,200}},
              grid={1,1},
              initialScale=0.2), graphics={
            Text(extent={{-75,130},{75,100}}, textString="%name"),
            Rectangle(extent={{-25,100},{25,-100}}, lineColor={0,0,0}),
            Ellipse(
              extent={{-25,90},{25,40}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-25,25},{25,-25}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-25,-40},{25,-90}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-15,-50},{15,-80}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-15,15},{15,-15}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-15,50},{15,80}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)}),
             Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-50,-200},{50,200}},
              grid={1,1},
              initialScale=0.2), graphics={
            Rectangle(
              extent={{-50,200},{50,-200}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-50,180},{50,80}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-50,50},{50,-50}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-50,-80},{50,-180}},
              lineColor={0,0,0},
              fillColor={0,127,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-30,30},{30,-30}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-30,100},{30,160}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-30,-100},{30,-160}},
              lineColor={0,127,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)}));
      end FluidPorts_b;

      partial model PartialTwoPort "Partial component with two ports"
        import Modelica.Constants;
        outer Modelica.Fluid.System system "System wide properties";

        replaceable package Medium = 
            Modelica.Media.Interfaces.PartialMedium "Medium in the component" 
            annotation (choicesAllMatching = true);

        parameter Boolean allowFlowReversal = system.allowFlowReversal
        "= true to allow flow reversal, false restricts to design direction (port_a -> port_b)"
          annotation(Dialog(tab="Assumptions"), Evaluate=true);

        Modelica.Fluid.Interfaces.FluidPort_a port_a(
                                      redeclare package Medium = Medium,
                           m_flow(min=if allowFlowReversal then -Constants.inf else 0))
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                  rotation=0)));
        Modelica.Fluid.Interfaces.FluidPort_b port_b(
                                      redeclare package Medium = Medium,
                           m_flow(max=if allowFlowReversal then +Constants.inf else 0))
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
          annotation (Placement(transformation(extent={{110,-10},{90,10}}, rotation=
                   0), iconTransformation(extent={{110,-10},{90,10}})));
        // Model structure, e.g. used for visualization
    protected
        parameter Boolean port_a_exposesState = false
        "= true if port_a exposes the state of a fluid volume";
        parameter Boolean port_b_exposesState = false
        "= true if port_b.p exposes the state of a fluid volume";
        parameter Boolean showDesignFlowDirection = true
        "= false to hide the arrow in the model icon";

        annotation (
          Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics),
          Documentation(info="<html>
<p>
This partial model defines an interface for components with two ports.
The treatment of the design flow direction and of flow reversal are predefined based on the parameter <tt><b>allowFlowReversal</b></tt>.
The component may transport fluid and may have internal storage for a given fluid <tt><b>Medium</b></tt>.
</p>
<p>
An extending model providing direct access to internal storage of mass or energy through port_a or port_b
should redefine the protected parameters <tt><b>port_a_exposesState</b></tt> and <tt><b>port_b_exposesState</b></tt> appropriately.
This will be visualized at the port icons, in order to improve the understanding of fluid model diagrams.
</p>
</html>"),Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
            Polygon(
              points={{20,-70},{60,-85},{20,-100},{20,-70}},
              lineColor={0,128,255},
              smooth=Smooth.None,
              fillColor={0,128,255},
              fillPattern=FillPattern.Solid,
              visible=showDesignFlowDirection),
            Polygon(
              points={{20,-75},{50,-85},{20,-95},{20,-75}},
              lineColor={255,255,255},
              smooth=Smooth.None,
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              visible=allowFlowReversal),
            Line(
              points={{55,-85},{-60,-85}},
              color={0,128,255},
              smooth=Smooth.None,
              visible=showDesignFlowDirection),
            Text(
              extent={{-149,-114},{151,-154}},
              lineColor={0,0,255},
              textString="%name"),
            Ellipse(
              extent={{-110,26},{-90,-24}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              visible=port_a_exposesState),
            Ellipse(
              extent={{90,25},{110,-25}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              visible=port_b_exposesState)}));
      end PartialTwoPort;

    partial model PartialTwoPortTransport
      "Partial element transporting fluid between two ports without storage of mass or energy"

      extends PartialTwoPort(
        final port_a_exposesState=false,
        final port_b_exposesState=false);

      // Advanced
      parameter Medium.AbsolutePressure dp_start = 0.01*system.p_start
        "Guess value of dp = port_a.p - port_b.p" 
        annotation(Dialog(tab = "Advanced"));
      parameter Medium.MassFlowRate m_flow_start = system.m_flow_start
        "Guess value of m_flow = port_a.m_flow" 
        annotation(Dialog(tab = "Advanced"));
      parameter Medium.MassFlowRate m_flow_small = system.m_flow_small
        "Small mass flow rate for regularization of zero flow" 
        annotation(Dialog(tab = "Advanced"));

      // Diagnostics
      parameter Boolean show_T = true
        "= true, if temperatures at port_a and port_b are computed" 
        annotation(Dialog(tab="Advanced",group="Diagnostics"));
      parameter Boolean show_V_flow = true
        "= true, if volume flow rate at inflowing port is computed" 
        annotation(Dialog(tab="Advanced",group="Diagnostics"));

      // Variables
      Medium.MassFlowRate m_flow(
         min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         start = m_flow_start) "Mass flow rate in design flow direction";
      Modelica.SIunits.Pressure dp(start=dp_start)
        "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";

      Modelica.SIunits.VolumeFlowRate V_flow=
          m_flow/Modelica.Fluid.Utilities.regStep(m_flow,
                      Medium.density(state_a),
                      Medium.density(state_b),
                      m_flow_small) if show_V_flow
        "Volume flow rate at inflowing port (positive when flow from port_a to port_b)";

      Medium.Temperature port_a_T=
          Modelica.Fluid.Utilities.regStep(port_a.m_flow,
                      Medium.temperature(state_a),
                      Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow)),
                      m_flow_small) if show_T
        "Temperature close to port_a, if show_T = true";
      Medium.Temperature port_b_T=
          Modelica.Fluid.Utilities.regStep(port_b.m_flow,
                      Medium.temperature(state_b),
                      Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow)),
                      m_flow_small) if show_T
        "Temperature close to port_b, if show_T = true";
    protected
      Medium.ThermodynamicState state_a
        "state for medium inflowing through port_a";
      Medium.ThermodynamicState state_b
        "state for medium inflowing through port_b";
    equation
      // medium states
      state_a = Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow));
      state_b = Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow));

      // Pressure drop in design flow direction
      dp = port_a.p - port_b.p;

      // Design direction of mass flow rate
      m_flow = port_a.m_flow;
      assert(m_flow > -m_flow_small or allowFlowReversal, "Reverting flow occurs even though allowFlowReversal is false");

      // Mass balance (no storage)
      port_a.m_flow + port_b.m_flow = 0;

      // Transport of substances
      port_a.Xi_outflow = inStream(port_b.Xi_outflow);
      port_b.Xi_outflow = inStream(port_a.Xi_outflow);

      port_a.C_outflow = inStream(port_b.C_outflow);
      port_b.C_outflow = inStream(port_a.C_outflow);

      annotation (
        Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
        Documentation(info="<html>
<p>
This component transports fluid between its two ports, without storing mass or energy.
Energy may be exchanged with the environment though, e.g. in the form of work.
<tt>PartialTwoPortTransport</tt> is intended as base class for devices like orifices, valves and simple fluid machines.
<p>
Three equations need to be added by an extending class using this component:
<ul>
<li>the momentum balance specifying the relationship between the pressure drop <tt>dp</tt> and the mass flow rate <tt>m_flow</tt></li>,
<li><tt>port_b.h_outflow</tt> for flow in design direction, and</li>
<li><tt>port_a.h_outflow</tt> for flow in reverse direction.</li>
</ul>
</p>
</html>"),
        Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1})));
    end PartialTwoPortTransport;

      connector HeatPorts_a
      "HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)"
        extends Modelica.Thermal.HeatTransfer.Interfaces.HeatPort;
        annotation (defaultComponentName="heatPorts_a",
             Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-200,-50},{200,50}},
              grid={1,1},
              initialScale=0.2), graphics={
              Rectangle(
                extent={{-201,50},{200,-50}},
                lineColor={127,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-171,45},{-83,-45}},
                lineColor={127,0,0},
                fillColor={127,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-45,45},{43,-45}},
                lineColor={127,0,0},
                fillColor={127,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{82,45},{170,-45}},
                lineColor={127,0,0},
                fillColor={127,0,0},
                fillPattern=FillPattern.Solid)}));
      end HeatPorts_a;

      partial model PartialHeatTransfer
      "Common interface for heat transfer models"

        // Parameters
        replaceable package Medium=Modelica.Media.Interfaces.PartialMedium
        "Medium in the component" 
          annotation(Dialog(tab="Internal Interface",enable=false));

        parameter Integer n=1 "Number of heat transfer segments" 
          annotation(Dialog(tab="Internal Interface",enable=false), Evaluate=true);

        // Inputs provided to heat transfer model
        input Medium.ThermodynamicState[n] states
        "Thermodynamic states of flow segments";

        input SI.Area[n] surfaceAreas "Heat transfer areas";

        // Outputs defined by heat transfer model
        output SI.HeatFlowRate[n] Q_flows "Heat flow rates";

        // Parameters
        parameter Boolean use_k = false
        "= true to use k value for thermal isolation" 
          annotation(Dialog(tab="Internal Interface",enable=false));
        parameter SI.CoefficientOfHeatTransfer k = 0
        "Heat transfer coefficient to ambient" 
          annotation(Dialog(group="Ambient"),Evaluate=true);
        parameter SI.Temperature T_ambient = system.T_ambient
        "Ambient temperature" 
          annotation(Dialog(group="Ambient"));
        outer Modelica.Fluid.System system "System wide properties";

        // Heat ports
        Modelica.Fluid.Interfaces.HeatPorts_a[n] heatPorts
        "Heat port to component boundary" 
          annotation (Placement(transformation(extent={{-10,60},{10,80}},
                  rotation=0), iconTransformation(extent={{-20,60},{20,80}})));

        // Variables
        SI.Temperature[n] Ts = Medium.temperature(states)
        "Temperatures defined by fluid states";

      equation
        if use_k then
          Q_flows = heatPorts.Q_flow + {k*surfaceAreas[i]*(T_ambient - heatPorts[i].T) for i in 1:n};
        else
          Q_flows = heatPorts.Q_flow;
        end if;

        annotation (Documentation(info="<html>
<p>
This component is a common interface for heat transfer models. The heat flow rates <tt>Q_flows[n]</tt> through the boundaries of n flow segments
are obtained as function of the thermodynamic <tt>states</tt> of the flow segments for a given fluid <tt>Medium</tt>,
the <tt>surfaceAreas[n]</tt> and the boundary temperatures <tt>heatPorts[n].T</tt>.
</p>
<p>
The heat loss coefficient <tt>k</tt> can be used to model a thermal isolation between <tt>heatPorts.T</tt> and <tt>T_ambient</tt>.
<p>
An extending model implementing this interface needs to define one equation: the relation between the predefined fluid temperatures <tt>Ts[n]</tt>,
the boundary temperatures <tt>heatPorts[n].T</tt>, and the heat flow rates <tt>Q_flows[n]</tt>.
</p>
</html>"));
      end PartialHeatTransfer;

        partial model PartialLumpedVolume
      "Lumped volume with mass and energy balance"
        import Modelica.Fluid.Types;
        import Modelica.Fluid.Types.Dynamics;

          outer Modelica.Fluid.System system "System properties";
          replaceable package Medium = 
            Modelica.Media.Interfaces.PartialMedium "Medium in the component" 
              annotation (choicesAllMatching = true);

          // Inputs provided to the volume model
          input SI.Volume fluidVolume "Volume";

          // Assumptions
          parameter Types.Dynamics energyDynamics=system.energyDynamics
        "Formulation of energy balance" 
            annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
          parameter Types.Dynamics massDynamics=system.massDynamics
        "Formulation of mass balance" 
            annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
          final parameter Types.Dynamics substanceDynamics=massDynamics
        "Formulation of substance balance" 
            annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));
          final parameter Types.Dynamics traceDynamics=massDynamics
        "Formulation of trace substance balance" 
            annotation(Evaluate=true, Dialog(tab = "Assumptions", group="Dynamics"));

          // Initialization
          parameter Medium.AbsolutePressure p_start = system.p_start
        "Start value of pressure" 
            annotation(Dialog(tab = "Initialization"));
          parameter Boolean use_T_start = true
        "= true, use T_start, otherwise h_start" 
            annotation(Dialog(tab = "Initialization"), Evaluate=true);
          parameter Medium.Temperature T_start=
            if use_T_start then system.T_start else Medium.temperature_phX(p_start,h_start,X_start)
        "Start value of temperature" 
            annotation(Dialog(tab = "Initialization", enable = use_T_start));
          parameter Medium.SpecificEnthalpy h_start=
            if use_T_start then Medium.specificEnthalpy_pTX(p_start, T_start, X_start) else Medium.h_default
        "Start value of specific enthalpy" 
            annotation(Dialog(tab = "Initialization", enable = not use_T_start));
          parameter Medium.MassFraction X_start[Medium.nX] = Medium.X_default
        "Start value of mass fractions m_i/m" 
            annotation (Dialog(tab="Initialization", enable=Medium.nXi > 0));
          parameter Medium.ExtraProperty C_start[Medium.nC](
               quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC)
        "Start value of trace substances" 
            annotation (Dialog(tab="Initialization", enable=Medium.nC > 0));

          Medium.BaseProperties medium(
            preferredMediumStates=true,
            p(start=p_start),
            h(start=h_start),
            T(start=T_start),
            Xi(start=X_start[1:Medium.nXi]));
          SI.Energy U "Internal energy of fluid";
          SI.Mass m "Mass of fluid";
          SI.Mass[Medium.nXi] mXi
        "Masses of independent components in the fluid";
          SI.Mass[Medium.nC] mC "Masses of trace substances in the fluid";
          // C need to be added here because unlike for Xi, which has medium.Xi,
          // there is no variable medium.C
          Medium.ExtraProperty C[Medium.nC] "Trace substance mixture content";

          // variables that need to be defined by an extending class
          SI.MassFlowRate mb_flow "Mass flows across boundaries";
          SI.MassFlowRate[Medium.nXi] mbXi_flow
        "Substance mass flows across boundaries";
          Medium.ExtraPropertyFlowRate[Medium.nC] mbC_flow
        "Trace substance mass flows across boundaries";
          SI.EnthalpyFlowRate Hb_flow
        "Enthalpy flow across boundaries or energy source/sink";
          SI.HeatFlowRate Qb_flow
        "Heat flow across boundaries or energy source/sink";
          SI.Power Wb_flow "Work flow across boundaries or source term";
    protected
          parameter Boolean initialize_p = not Medium.singleState
        "= true to set up initial equations for pressure";
        equation
          assert(not (energyDynamics<>Dynamics.SteadyState and massDynamics==Dynamics.SteadyState) or Medium.singleState,
                 "Bad combination of dynamics options and Medium not conserving mass if fluidVolume is fixed.");

          // Total quantities
          m = fluidVolume*medium.d;
          mXi = m*medium.Xi;
          U = m*medium.u;
          mC = m*C;

          // Energy and mass balances
          if energyDynamics == Dynamics.SteadyState then
            0 = Hb_flow + Qb_flow + Wb_flow;
          else
            der(U) = Hb_flow + Qb_flow + Wb_flow;
          end if;

          if massDynamics == Dynamics.SteadyState then
            0 = mb_flow;
          else
            der(m) = mb_flow;
          end if;

          if substanceDynamics == Dynamics.SteadyState then
            zeros(Medium.nXi) = mbXi_flow;
          else
            der(mXi) = mbXi_flow;
          end if;

          if traceDynamics == Dynamics.SteadyState then
            zeros(Medium.nC)  = mbC_flow;
          else
            der(mC)  = mbC_flow;
          end if;

        initial equation
          // initialization of balances
          if energyDynamics == Dynamics.FixedInitial then
            if use_T_start then
              medium.T = T_start;
            else
              medium.h = h_start;
            end if;
          elseif energyDynamics == Dynamics.SteadyStateInitial then
            if use_T_start then
              der(medium.T) = 0;
            else
              der(medium.h) = 0;
            end if;
          end if;

          if massDynamics == Dynamics.FixedInitial then
            if initialize_p then
              medium.p = p_start;
            end if;
          elseif massDynamics == Dynamics.SteadyStateInitial then
            if initialize_p then
              der(medium.p) = 0;
            end if;
          end if;

          if substanceDynamics == Dynamics.FixedInitial then
            medium.Xi = X_start[1:Medium.nXi];
          elseif substanceDynamics == Dynamics.SteadyStateInitial then
            der(medium.Xi) = zeros(Medium.nXi);
          end if;

          if traceDynamics == Dynamics.FixedInitial then
            C = C_start[1:Medium.nC];
          elseif traceDynamics == Dynamics.SteadyStateInitial then
            der(C) = zeros(Medium.nC);
          end if;

          annotation (
            Documentation(info="<html>
Interface and base class for an ideally mixed fluid volume with the ability to store mass and energy.
The following boundary flow and source terms are part of the energy balance and must be specified in an extending class:
<ul>
<li><tt><b>Qb_flow</b></tt>, e.g. convective or latent heat flow rate across segment boundary, and</li>
<li><tt><b>Wb_flow</b></tt>, work term, e.g. p*der(fluidVolume) if the volume is not constant.</li>
</ul>
The component volume <tt><b>fluidVolume</b></tt> is an input that needs to be set in the extending class to complete the model.
<p>
Further source terms must be defined by an extending class for fluid flow across the segment boundary:
</p>
<ul>
<li><tt><b>Hb_flow</b></tt>, enthalpy flow,</li>
<li><tt><b>mb_flow</b></tt>, mass flow,</li>
<li><tt><b>mbXi_flow</b></tt>, substance mass flow, and</li>
<li><tt><b>mbC_flow</b></tt>, trace substance mass flow.</li>
</ul>
</html>"),  Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                  {100,100}}),
                    graphics));
        end PartialLumpedVolume;
    end Interfaces;

    package Types "Common types for fluid models"
      annotation (preferedView="info",
                  Documentation(info="<html>

</html>"));

      type Dynamics = enumeration(
        DynamicFreeInitial
          "DynamicFreeInitial -- Dynamic balance, Initial guess value",
        FixedInitial "FixedInitial -- Dynamic balance, Initial value fixed",
        SteadyStateInitial
          "SteadyStateInitial -- Dynamic balance, Steady state initial with guess value", 

        SteadyState "SteadyState -- Steady state balance, Initial guess value")
      "Enumeration to define definition of balance equations" 
      annotation (Documentation(info="<html>
<p>
Enumeration to define the formulation of balance equations
(to be selected via choices menu):
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><th><b>Dynamics.</b></th><th><b>Meaning</b></th></tr>
<tr><td>DynamicFreeInitial</td><td>Dynamic balance, Initial guess value</td></tr>

<tr><td>FixedInitial</td><td>Dynamic balance, Initial value fixed</td></tr>

<tr><td>SteadyStateInitial</td><td>Dynamic balance, Steady state initial with guess value</td></tr>

<tr><td>SteadyState</td><td>Steady state balance, Initial guess value</td></tr>
</table>

<p>
The enumeration \"Dynamics\" is used for the mass, energy and momentum balance equations
respectively. The exact meaning for the three balance equations is stated in the following
tables:
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><td colspan=\"3\"><b>Mass balance</b> </td>
<tr><td><b>Dynamics.</b></td>
    <td><b>Balance equation</b></td>
    <td><b>Initial condition</b></td></tr>

<tr><td> DynamicFreeInitial</td>
    <td> no restrictions </td>
    <td> no initial conditions </td></tr>

<tr><td> FixedInitial</td>
    <td> no restrictions </td>
    <td> <b>if</b> Medium.singleState <b>then</b> <br>
         &nbsp;&nbsp;no initial condition<br>
         <b>else</b> p=p_start </td></tr>

<tr><td> SteadyStateInitial</td>
    <td> no restrictions </td>
    <td> <b>if</b> Medium.singleState <b>then</b> <br>
         &nbsp;&nbsp;no initial condition<br>
         <b>else</b> <b>der</b>(p)=0 </td></tr>

<tr><td> SteadyState</td>
    <td> <b>der</b>(m)=0  </td></tr>
    <td> no initial conditions </td></tr>
</table>

&nbsp;<br>


<table border=1 cellspacing=0 cellpadding=2>
<tr><td colspan=\"3\"><b>Energy balance</b> </td>
<tr><td><b>Dynamics.</b></td>
    <td><b>Balance equation</b></td>
    <td><b>Initial condition</b></td></tr>

<tr><td> DynamicFreeInitial</td>
    <td> no restrictions </td>
    <td> no initial conditions </td></tr>

<tr><td> FixedInitial</td>
    <td> no restrictions </td>
    <td> T=T_start or h=h_start </td></tr>

<tr><td> SteadyStateInitial</td>
    <td> no restrictions </td>
    <td> <b>der</b>(T)=0 or <b>der</b>(h)=0 </td></tr>

<tr><td> SteadyState</td>
    <td> <b>der</b>(U)=0  </td></tr>
    <td> no initial conditions </td></tr>
</table>

&nbsp;<br>



<table border=1 cellspacing=0 cellpadding=2>
<tr><td colspan=\"3\"><b>Momentum balance</b> </td>
<tr><td><b>Dynamics.</b></td>
    <td><b>Balance equation</b></td>
    <td><b>Initial condition</b></td></tr>

<tr><td> DynamicFreeInitial</td>
    <td> no restrictions </td>
    <td> no initial conditions </td></tr>

<tr><td> FixedInitial</td>
    <td> no restrictions </td>
    <td> m_flow = m_flow_start </td></tr>

<tr><td> SteadyStateInitial</td>
    <td> no restrictions </td>
    <td> <b>der</b>(m_flow)=0 </td></tr>

<tr><td> SteadyState</td>
    <td> <b>der</b>(m_flow)=0 </td></tr>
    <td> no initial conditions </td></tr>
</table>


<p>
In the tables above, the equations are given for one-substance fluids. For multiple-substance
fluids and for trace substances, equivalent equations hold.
</p>

<p>
Medium.singleState is a medium property and defines whether the medium is only
described by one state (+ the mass fractions in case of a multi-substance fluid). In such
a case one initial condition less must be provided. For example, incompressible
media have Medium.singleState = <b>true</b>.
</p>

</html>"));

      type PortFlowDirection = enumeration(
        Entering "Fluid flow is only entering",
        Leaving "Fluid flow is only leaving",
        Bidirectional "No restrictions on fluid flow (flow reversal possible)")
      "Enumeration to define whether flow reversal is allowed"   annotation (
          Documentation(info="<html>

<p>
Enumeration to define the assumptions on the model for the
direction of fluid flow at a port (to be selected via choices menu):
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><th><b>PortFlowDirection.</b></th>
    <th><b>Meaning</b></th></tr>

<tr><td>Entering</td>
    <td>Fluid flow is only entering the port from the outside</td></tr>

<tr><td>Leaving</td>
    <td>Fluid flow is only leaving the port to the outside</td></tr>

<tr><td>Bidirectional</td>
    <td>No restrictions on fluid flow (flow reversal possible)</td></tr>
</table>

<p>
The default is \"PortFlowDirection.Bidirectional\". If you are completely sure that
the flow is only in one direction, then the other settings may
make the simulation of your model faster.
</p>

</html>"));
    end Types;

    package Utilities
    "Utility models to construct fluid components (should not be used directly) "
      extends Modelica.Icons.Library;

      function checkBoundary "Check whether boundary definition is correct"
        extends Modelica.Icons.Function;
        input String mediumName;
        input String substanceNames[:] "Names of substances";
        input Boolean singleState;
        input Boolean define_p;
        input Real X_boundary[:];
        input String modelName = "??? boundary ???";
    protected
        Integer nX = size(X_boundary,1);
        String X_str;
      algorithm
        assert(not singleState or singleState and define_p, "
Wrong value of parameter define_p (= false) in model \""       + modelName + "\":
The selected medium \""     + mediumName + "\" has Medium.singleState=true.
Therefore, an boundary density cannot be defined and
define_p = true is required.
");

        for i in 1:nX loop
          assert(X_boundary[i] >= 0.0, "
Wrong boundary mass fractions in medium \""
      + mediumName + "\" in model \"" + modelName + "\":
The boundary value X_boundary("   + String(i) + ") = " + String(
            X_boundary[i]) + "
is negative. It must be positive.
");
        end for;

        if nX > 0 and abs(sum(X_boundary) - 1.0) > 1.e-10 then
           X_str :="";
           for i in 1:nX loop
              X_str :=X_str + "   X_boundary[" + String(i) + "] = " + String(X_boundary[
              i]) + " \"" + substanceNames[i] + "\"\n";
           end for;
           Modelica.Utilities.Streams.error(
              "The boundary mass fractions in medium \"" + mediumName + "\" in model \"" + modelName + "\"\n" +
              "do not sum up to 1. Instead, sum(X_boundary) = " + String(sum(X_boundary)) + ":\n"
              + X_str);
        end if;
      end checkBoundary;

      function regRoot2
      "Anti-symmetric approximation of square root with discontinuous factor so that the first derivative is finite and continuous"

        extends Modelica.Icons.Function;
        input Real x "abscissa value";
        input Real x_small(min=0)=0.01
        "approximation of function for |x| <= x_small";
        input Real k1(min=0)=1 "y = if x>=0 then sqrt(k1*x) else -sqrt(k2*|x|)";
        input Real k2(min=0)=1 "y = if x>=0 then sqrt(k1*x) else -sqrt(k2*|x|)";
        input Boolean use_yd0 = false "= true, if yd0 shall be used";
        input Real yd0(min=0)=1 "Desired derivative at x=0: dy/dx = yd0";
        output Real y "ordinate value";
        annotation(smoothOrder=2, Documentation(info="<html>
<p>
Approximates the function
</p>
<pre>
   y = <b>if</b> x &ge; 0 <b>then</b> <b>sqrt</b>(k1*x) <b>else</b> -<b>sqrt</b>(k2*<b>abs</b>(x)), with k1, k2 > 0
</pre>
<p>
in such a way that within the region -x_small &le; x &le; x_small,
the function is described by two polynomials of third order
(one in the region -x_small .. 0 and one within the region 0 .. x_small)
such that
</p>
<ul>
<li> The derivative at x=0 is finite. </li>
<li> The overall function is continuous with a
     continuous first derivative everywhere.</li>
<li> If parameter use_yd0 = <b>false</b>, the two polynomials
     are constructed such that the second derivatives at x=0
     are identical. If use_yd0 = <b>true</b>, the derivative
     at x=0 is explicitly provided via the additional argument
     yd0. If necessary, the derivative yd0 is automatically
     reduced in order that the polynomials are strict monotonically
     increasing <i>[Fritsch and Carlson, 1980]</i>.</li>
</ul>
<p>
Typical screenshots for two different configurations
are shown below. The first one with k1=k2=1:
</p>
<p>
<img src=\"../Images/Fluid/Components/regRoot2_a.png\">
</p>
<p>
and the second one with k1=1 and k2=3:
</p>
<p>
<img src=\"../Images/Fluid/Components/regRoot2_b.png\">
</p>

<p>
The (smooth) derivative of the function with
k1=1, k2=3 is shown in the next figure:
<p>
<img src=\"../Images/Fluid/Components/regRoot2_c.png\">
</p>

<p>
<b>Literature</b>
</p>

<dl>
<dt> Fritsch F.N. and Carlson R.E. (1980):</dt>
<dd> <b>Monotone piecewise cubic interpolation</b>.
     SIAM J. Numerc. Anal., Vol. 17, No. 2, April 1980, pp. 238-246</dd>
</dl>
</html>",     revisions="<html>
<ul>
<li><i>Nov., 2005</i>
    by <a href=\"mailto:Martin.Otter@DLR.de\">Martin Otter</a>:<br>
    Designed and implemented.</li>
</ul>
</html>"));
    protected
        encapsulated function regRoot2_utility
        "Interpolating with two 3-order polynomials with a prescribed derivative at x=0"
          import Modelica.Fluid.Utilities.evaluatePoly3_derivativeAtZero;
           input Real x;
           input Real x1 "approximation of function abs(x) < x1";
           input Real k1
          "y = if x>=0 then sqrt(k1*x) else -sqrt(k2*|x|); k1 >= k2";
           input Real k2 "y = if x>=0 then sqrt(k1*x) else -sqrt(k2*|x|))";
           input Boolean use_yd0 "= true, if yd0 shall be used";
           input Real yd0(min=0) "Desired derivative at x=0: dy/dx = yd0";
           output Real y;
           annotation(smoothOrder=2);
      protected
           Real x2;
           Real xsqrt1;
           Real xsqrt2;
           Real y1;
           Real y2;
           Real y1d;
           Real y2d;
           Real w;
           Real y0d;
           Real w1;
           Real w2;
        algorithm
           x2 :=-x1*(k2/k1);
           //x2 :=-x1;
           if x <= x2 then
              y := -sqrt(k2*abs(x));
           else
              y1 :=sqrt(k1*x1);
              y2 :=-sqrt(k2*abs(x2));
              y1d :=sqrt(k1/x1)/2;
              y2d :=sqrt(k2/abs(x2))/2;

              if use_yd0 then
                 y0d :=yd0;
              else
                 /* Determine derivative, such that first and second derivative
              of left and right polynomial are identical at x=0:
           _
           Basic equations:
              y_right = a1*(x/x1) + a2*(x/x1)^2 + a3*(x/x1)^3
              y_left  = b1*(x/x2) + b2*(x/x2)^2 + b3*(x/x2)^3
              yrho_right*x1 = a1 + 2*a2*(x/x1) + 3*a3*(x/x1)^2
              yrho_left *x2 = b1 + 2*b2*(x/x2) + 3*b3*(x/x2)^2
              ydrho_right*x1^2 = 2*a2 + 6*a3*(x/x1)
              ydrho_left *x2^2 = 2*b2 + 6*b3*(x/x2)
           _
           Conditions (6 equations for 6 unknowns):
                     y1 = a1 + a2 + a3
                     y2 = b1 + b2 + b3
                 y1d*x1 = a1 + 2*a2 + 3*a3
                 y2d*x2 = b1 + 2*b2 + 3*b3
                    y0d = a1/x1 = b1/x2
                   y0dd = 2*a2/x1^2 = 2*b2/x2^2
           _
           Derived equations:
              b1 = a1*x2/x1
              b2 = a2*(x2/x1)^2
              b3 = y2 - b1 - b2
                 = y2 - a1*(x2/x1) - a2*(x2/x1)^2
              a3 = y1 - a1 - a2
           _
           Remaining equations
              y1d*x1 = a1 + 2*a2 + 3*(y1 - a1 - a2)
                     = 3*y1 - 2*a1 - a2
              y2d*x2 = a1*(x2/x1) + 2*a2*(x2/x1)^2 +
                       3*(y2 - a1*(x2/x1) - a2*(x2/x1)^2)
                     = 3*y2 - 2*a1*(x2/x1) - a2*(x2/x1)^2
              y0d    = a1/x1
           _
           Solving these equations results in y0d below
           (note, the denominator "(1-w)" is always non-zero, because w is negative)
           */
                 w :=x2/x1;
                 y0d := ( (3*y2 - x2*y2d)/w - (3*y1 - x1*y1d)*w) /(2*x1*(1 - w));
              end if;

              /* Modify derivative y0d, such that the polynomial is
           monotonically increasing. A sufficient condition is
             0 <= y0d <= sqrt(8.75*k_i/|x_i|)
        */
              w1 :=sqrt(8.75*k1/x1);
              w2 :=sqrt(8.75*k2/abs(x2));
              y0d :=min(y0d, 0.9*min(w1, w2));

              /* Perform interpolation in scaled polynomial:
           y_new = y/y1
           x_new = x/x1
        */
              y := y1*(if x >= 0 then evaluatePoly3_derivativeAtZero(x/x1,1,1,y1d*x1/y1,y0d*x1/y1) else 
                                      evaluatePoly3_derivativeAtZero(x/x1,x2/x1,y2/y1,y2d*x1/y1,y0d*x1/y1));
           end if;
        end regRoot2_utility;
      algorithm
        y := smooth(2,if x >= x_small then sqrt(k1*x) else 
                      if x <= -x_small then -sqrt(k2*abs(x)) else 
                      if k1 >= k2 then regRoot2_utility(x,x_small,k1,k2,use_yd0,yd0) else 
                                      -regRoot2_utility(-x,x_small,k2,k1,use_yd0,yd0));
      end regRoot2;

      function regSquare2
      "Anti-symmetric approximation of square with discontinuous factor so that the first derivative is non-zero and is continuous"
        extends Modelica.Icons.Function;
        input Real x "abscissa value";
        input Real x_small(min=0)=0.01
        "approximation of function for |x| <= x_small";
        input Real k1(min=0)=1 "y = (if x>=0 then k1 else k2)*x*|x|";
        input Real k2(min=0)=1 "y = (if x>=0 then k1 else k2)*x*|x|";
        input Boolean use_yd0 = false "= true, if yd0 shall be used";
        input Real yd0(min=0)=1 "Desired derivative at x=0: dy/dx = yd0";
        output Real y "ordinate value";
        annotation(smoothOrder=2, Documentation(info="<html>
<p>
Approximates the function
</p>
<pre>
   y = <b>if</b> x &ge; 0 <b>then</b> k1*x*x <b>else</b> -k2*x*x, with k1, k2 > 0
</pre>
<p>
in such a way that within the region -x_small &le; x &le; x_small,
the function is described by two polynomials of third order
(one in the region -x_small .. 0 and one within the region 0 .. x_small)
such that
</p>

<ul>
<li> The derivative at x=0 is non-zero (in order that the
     inverse of the function does not have an infinite derivative). </li>
<li> The overall function is continuous with a
     continuous first derivative everywhere.</li>
<li> If parameter use_yd0 = <b>false</b>, the two polynomials
     are constructed such that the second derivatives at x=0
     are identical. If use_yd0 = <b>true</b>, the derivative
     at x=0 is explicitly provided via the additional argument
     yd0. If necessary, the derivative yd0 is automatically
     reduced in order that the polynomials are strict monotonically
     increasing <i>[Fritsch and Carlson, 1980]</i>.</li>
</ul>
</ul>
<p>
A typical screenshot for k1=1, k2=3 is shown in the next figure:
</p>
<p>
<img src=\"../Images/Fluid/Components/regSquare2_b.png\">
</p>

<p>
The (smooth, non-zero) derivative of the function with
k1=1, k2=3 is shown in the next figure:
</p>

<p>
<img src=\"../Images/Fluid/Components/regSquare2_c.png\">
</p>

<p>
<b>Literature</b>
</p>

<dl>
<dt> Fritsch F.N. and Carlson R.E. (1980):</dt>
<dd> <b>Monotone piecewise cubic interpolation</b>.
     SIAM J. Numerc. Anal., Vol. 17, No. 2, April 1980, pp. 238-246</dd>
</dl>
</html>",     revisions="<html>
<ul>
<li><i>Nov., 2005</i>
    by <a href=\"mailto:Martin.Otter@DLR.de\">Martin Otter</a>:<br>
    Designed and implemented.</li>
</ul>
</html>"));
    protected
        encapsulated function regSquare2_utility
        "Interpolating with two 3-order polynomials with a prescribed derivative at x=0"
          import Modelica.Fluid.Utilities.evaluatePoly3_derivativeAtZero;
           input Real x;
           input Real x1 "approximation of function abs(x) < x1";
           input Real k1 "y = (if x>=0 then k1 else -k2)*x*|x|; k1 >= k2";
           input Real k2 "y = (if x>=0 then k1 else -k2)*x*|x|";
           input Boolean use_yd0 = false "= true, if yd0 shall be used";
           input Real yd0(min=0)=1 "Desired derivative at x=0: dy/dx = yd0";
           output Real y;
           annotation(smoothOrder=2);
      protected
           Real x2;
           Real y1;
           Real y2;
           Real y1d;
           Real y2d;
           Real w;
           Real w1;
           Real w2;
           Real y0d;
        algorithm
           // x2 :=-x1*(k2/k1)^2;
           x2 := -x1;
           if x <= x2 then
              y := -k2*x^2;
           else
               y1 := k1*x1^2;
               y2 :=-k2*x2^2;
              y1d := k1*2*x1;
              y2d :=-k2*2*x2;
              if use_yd0 then
                 y0d :=yd0;
              else
                 /* Determine derivative, such that first and second derivative
              of left and right polynomial are identical at x=0:
              see derivation in function regRoot2
           */
                 w :=x2/x1;
                 y0d := ( (3*y2 - x2*y2d)/w - (3*y1 - x1*y1d)*w) /(2*x1*(1 - w));
              end if;

              /* Modify derivative y0d, such that the polynomial is
           monotonically increasing. A sufficient condition is
             0 <= y0d <= sqrt(5)*k_i*|x_i|
        */
              w1 :=sqrt(5)*k1*x1;
              w2 :=sqrt(5)*k2*abs(x2);
              y0d :=min(y0d, 0.9*min(w1, w2));

              y := if x >= 0 then evaluatePoly3_derivativeAtZero(x,x1,y1,y1d,y0d) else 
                                  evaluatePoly3_derivativeAtZero(x,x2,y2,y2d,y0d);
           end if;
        end regSquare2_utility;
      algorithm
        y := smooth(2,if x >= x_small then k1*x^2 else 
                      if x <= -x_small then -k2*x^2 else 
                      if k1 >= k2 then regSquare2_utility(x,x_small,k1,k2,use_yd0,yd0) else 
                                      -regSquare2_utility(-x,x_small,k2,k1,use_yd0,yd0));
      end regSquare2;

      function regStep
      "Approximation of a general step, such that the characteristic is continuous and differentiable"
        extends Modelica.Icons.Function;
        input Real x "Abscissa value";
        input Real y1 "Ordinate value for x > 0";
        input Real y2 "Ordinate value for x < 0";
        input Real x_small(min=0) = 1e-5
        "Approximation of step for -x_small <= x <= x_small; x_small > 0 required";
        output Real y
        "Ordinate value to approximate y = if x > 0 then y1 else y2";
        // output Real yd;
        annotation(Documentation(revisions="<html>
<ul>
<li><i>April 29, 2008</i>
    by <a href=\"mailto:Martin.Otter@DLR.de\">Martin Otter</a>:<br>
    Designed and implemented.</li>
<li><i>August 12, 2008</i>
    by <a href=\"mailto:Michael.Sielemann@dlr.de\">Michael Sielemann</a>:<br>
    Minor modification to cover the limit case <code>x_small -> 0</code> without division by zero.</li>
</ul>
</html>"));
      algorithm
        y := smooth(1, if x >  x_small then y1 else 
                       if x < -x_small then y2 else 
                       if abs(x_small)>0 then (x/x_small)*((x/x_small)^2 - 3)*(y2-y1)/4 + (y1+y2)/2 else (y1+y2)/2);
      end regStep;

      function evaluatePoly3_derivativeAtZero
      "Evaluate polynomial of order 3 that passes the origin with a predefined derivative"
        extends Modelica.Icons.Function;
        input Real x "Value for which polynomial shall be evaluated";
        input Real x1 "Abscissa value";
        input Real y1 "y1=f(x1)";
        input Real y1d "First derivative at y1";
        input Real y0d "First derivative at f(x=0)";
        output Real y;
        annotation(smoothOrder=3, Documentation(info="<html>

</html>"));
    protected
        Real a1;
        Real a2;
        Real a3;
        Real xx;
      algorithm
        a1 := x1*y0d;
        a2 := 3*y1 - x1*y1d - 2*a1;
        a3 := y1 - a2 - a1;
        xx := x/x1;
        y  := xx*(a1 + xx*(a2 + xx*a3));
      end evaluatePoly3_derivativeAtZero;
      annotation (Documentation(info="<html>

</html>"));
    end Utilities;

    package Icons

      partial class VariantLibrary
      "Icon for a library that contains several variants of one component"

        annotation (             Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Rectangle(
                extent={{-40,-40},{100,100}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-70,-70},{70,70}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-100,-100},{40,40}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-125,158},{115,103}},
                lineColor={255,0,0},
                textString="%name")}));
      end VariantLibrary;

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
    end Icons;
  end Fluid;

  package Media "Library of media property models"
  extends Modelica.Icons.Library;
  import SI = Modelica.SIunits;
  annotation (
    Documentation(info="<HTML>
<p>
This library contains <a href=\"Modelica://Modelica.Media.Interfaces\">interface</a>
definitions for media and the following <b>property</b> models for
single and multiple substance fluids with one and multiple phases:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.Media.IdealGases\">Ideal gases:</a><br>
     1241 high precision gas models based on the
     NASA Glenn coefficients, plus ideal gas mixture models based
     on the same data.</li>
<li> <a href=\"Modelica://Modelica.Media.Water\">Water models:</a><br>
     ConstantPropertyLiquidWater, WaterIF97 (high precision
     water model according to the IAPWS/IF97 standard)</li>
<li> <a href=\"Modelica://Modelica.Media.Air\">Air models:</a><br>
     SimpleAir, DryAirNasa, and MoistAir</li>
<li> <a href=\"Modelica://Modelica.Media.Incompressible\">
     Incompressible media:</a><br>
     TableBased incompressible fluid models (properties are defined by tables rho(T),
     HeatCapacity_cp(T), etc.)</li>
<li> <a href=\"Modelica://Modelica.Media.CompressibleLiquids\">
     Compressible liquids:</a><br>
     Simple liquid models with linear compressibility</li>
</ul>
<p>
The following parts are useful, when newly starting with this library:
<ul>
<li> <a href=\"Modelica://Modelica.Media.UsersGuide\">Modelica.Media.UsersGuide</a>.</li>
<li> <a href=\"Modelica://Modelica.Media.UsersGuide.MediumUsage\">Modelica.Media.UsersGuide.MediumUsage</a>
     describes how to use a medium model in a component model.</li>
<li> <a href=\"Modelica://Modelica.Media.UsersGuide.MediumDefinition\">
     Modelica.Media.UsersGuide.MediumDefinition</a>
     describes how a new fluid medium model has to be implemented.</li>
<li> <a href=\"Modelica://Modelica.Media.UsersGuide.ReleaseNotes\">Modelica.Media.UsersGuide.ReleaseNotes</a>
     summarizes the changes of the library releases.</li>
<li> <a href=\"Modelica://Modelica.Media.Examples\">Modelica.Media.Examples</a>
     contains examples that demonstrate the usage of this library.</li>
</ul>
<p>
Copyright &copy; 1998-2009, Modelica Association.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b>
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p><br>
</HTML>"));

  package Interfaces "Interfaces for media models"
    annotation (Documentation(info="<HTML>
<p>
This package provides basic interfaces definitions of media models for different
kind of media.
</p>
</HTML>"));
    extends Modelica.Icons.Library;
    import SI = Modelica.SIunits;

    partial package PartialMedium
    "Partial medium properties (base package of all media packages)"

      import SI = Modelica.SIunits;
      extends Modelica.Icons.Library;

      // Constants to be set in Medium
      constant
      Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables
      ThermoStates "Enumeration type for independent variables";
      constant String mediumName = "unusablePartialMedium" "Name of the medium";
      constant String substanceNames[:]={mediumName}
      "Names of the mixture substances. Set substanceNames={mediumName} if only one substance.";
      constant String extraPropertiesNames[:]=fill("", 0)
      "Names of the additional (extra) transported properties. Set extraPropertiesNames=fill(\"\",0) if unused";
      constant Boolean singleState
      "= true, if u and d are not a function of pressure";
      constant Boolean reducedX=true
      "= true if medium contains the equation sum(X) = 1.0; set reducedX=true if only one substance (see docu for details)";
      constant Boolean fixedX=false
      "= true if medium contains the equation X = reference_X";
      constant AbsolutePressure reference_p=101325
      "Reference pressure of Medium: default 1 atmosphere";
      constant Temperature reference_T=298.15
      "Reference temperature of Medium: default 25 deg Celsius";
      constant MassFraction reference_X[nX]= fill(1/nX, nX)
      "Default mass fractions of medium";
      constant AbsolutePressure p_default=101325
      "Default value for pressure of medium (for initialization)";
      constant Temperature T_default = Modelica.SIunits.Conversions.from_degC(20)
      "Default value for temperature of medium (for initialization)";
      constant SpecificEnthalpy h_default = specificEnthalpy_pTX(p_default, T_default, X_default)
      "Default value for specific enthalpy of medium (for initialization)";
      constant MassFraction X_default[nX]=reference_X
      "Default value for mass fractions of medium (for initialization)";

      final constant Integer nS=size(substanceNames, 1) "Number of substances" annotation(Evaluate=true);
      constant Integer nX = nS "Number of mass fractions" 
                                   annotation(Evaluate=true);
      constant Integer nXi=if fixedX then 0 else if reducedX then nS - 1 else nS
      "Number of structurally independent mass fractions (see docu for details)"
        annotation(Evaluate=true);

      final constant Integer nC=size(extraPropertiesNames, 1)
      "Number of extra (outside of standard mass-balance) transported properties"
       annotation(Evaluate=true);

      replaceable record FluidConstants
      "critical, triple, molecular and other standard data of fluid"
        extends Modelica.Icons.Record;
        String iupacName
        "complete IUPAC name (or common name, if non-existent)";
        String casRegistryNumber
        "chemical abstracts sequencing number (if it exists)";
        String chemicalFormula
        "Chemical formula, (brutto, nomenclature according to Hill";
        String structureFormula "Chemical structure formula";
        MolarMass molarMass "molar mass";
        annotation(Documentation(info="<html></html>"));
      end FluidConstants;

      replaceable record ThermodynamicState
      "Minimal variable set that is available as input argument to every medium function"
        extends Modelica.Icons.Record;
        annotation(Documentation(info="<html></html>"));
      end ThermodynamicState;

      replaceable partial model BaseProperties
      "Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of a medium"
        InputAbsolutePressure p "Absolute pressure of medium";
        InputMassFraction[nXi] Xi(start=reference_X[1:nXi])
        "Structurally independent mass fractions";
        InputSpecificEnthalpy h "Specific enthalpy of medium";
        Density d "Density of medium";
        Temperature T "Temperature of medium";
        MassFraction[nX] X(start=reference_X)
        "Mass fractions (= (component mass)/total mass  m_i/m)";
        SpecificInternalEnergy u "Specific internal energy of medium";
        SpecificHeatCapacity R "Gas constant (of mixture if applicable)";
        MolarMass MM "Molar mass (of mixture or single fluid)";
        ThermodynamicState state
        "thermodynamic state record for optional functions";
        parameter Boolean preferredMediumStates=false
        "= true if StateSelect.prefer shall be used for the independent property variables of the medium"
          annotation (Evaluate=true, Dialog(tab="Advanced"));
        parameter Boolean standardOrderComponents = true
        "if true, and reducedX = true, the last element of X will be computed from the other ones";
        SI.Conversions.NonSIunits.Temperature_degC T_degC=
            Modelica.SIunits.Conversions.to_degC(T)
        "Temperature of medium in [degC]";
        SI.Conversions.NonSIunits.Pressure_bar p_bar=
         Modelica.SIunits.Conversions.to_bar(p)
        "Absolute pressure of medium in [bar]";
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Rectangle(
                extent={{-100,100},{100,-100}},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,255}), Text(
                extent={{-152,164},{152,102}},
                textString="%name",
                lineColor={0,0,255})}));

        // Local connector definition, used for equation balancing check
        connector InputAbsolutePressure = input SI.AbsolutePressure
        "Pressure as input signal connector";
        connector InputSpecificEnthalpy = input SI.SpecificEnthalpy
        "Specific enthalpy as input signal connector";
        connector InputMassFraction = input SI.MassFraction
        "Mass fraction as input signal connector";

      equation
        if standardOrderComponents then
          Xi = X[1:nXi];

            if fixedX then
              X = reference_X;
            end if;
            if reducedX and not fixedX then
              X[nX] = 1 - sum(Xi);
            end if;
            for i in 1:nX loop
              assert(X[i] >= -1.e-5 and X[i] <= 1 + 1.e-5, "Mass fraction X[" +
                     String(i) + "] = " + String(X[i]) + "of substance "
                     + substanceNames[i] + "\nof medium " + mediumName + " is not in the range 0..1");
            end for;

        end if;

        assert(p >= 0.0, "Pressure (= " + String(p) + " Pa) of medium \"" +
          mediumName + "\" is negative\n(Temperature = " + String(T) + " K)");
        annotation (Documentation(info="<html>
<p>
Model <b>BaseProperties</b> is a model within package <b>PartialMedium</b>
and contains the <b>declarations</b> of the minimum number of
variables that every medium model is supposed to support.
A specific medium inherits from model <b>BaseProperties</b> and provides
the equations for the basic properties. </p>
<p>
The BaseProperties model contains the following <b>7+nXi variables</b>
(nXi is the number of independent mass fractions defined in package
PartialMedium):
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>Variable</b></td>
      <td valign=\"top\"><b>Unit</b></td>
      <td valign=\"top\"><b>Description</b></td></tr>
  <tr><td valign=\"top\">T</td>
      <td valign=\"top\">K</td>
      <td valign=\"top\">temperature</td></tr>
  <tr><td valign=\"top\">p</td>
      <td valign=\"top\">Pa</td>
      <td valign=\"top\">absolute pressure</td></tr>
  <tr><td valign=\"top\">d</td>
      <td valign=\"top\">kg/m^3</td>
      <td valign=\"top\">density</td></tr>
  <tr><td valign=\"top\">h</td>
      <td valign=\"top\">J/kg</td>
      <td valign=\"top\">specific enthalpy</td></tr>
  <tr><td valign=\"top\">u</td>
      <td valign=\"top\">J/kg</td>
      <td valign=\"top\">specific internal energy</td></tr>
  <tr><td valign=\"top\">Xi[nXi]</td>
      <td valign=\"top\">kg/kg</td>
      <td valign=\"top\">independent mass fractions m_i/m</td></tr>
  <tr><td valign=\"top\">R</td>
      <td valign=\"top\">J/kg.K</td>
      <td valign=\"top\">gas constant</td></tr>
  <tr><td valign=\"top\">M</td>
      <td valign=\"top\">kg/mol</td>
      <td valign=\"top\">molar mass</td></tr>
</table>
<p>
In order to implement an actual medium model, one can extend from this
base model and add <b>5 equations</b> that provide relations among
these variables. Equations will also have to be added in order to
set all the variables within the ThermodynamicState record state.</p>
<p>
If standardOrderComponents=true, the full composition vector X[nX]
is determined by the equations contained in this base class, depending
on the independent mass fraction vector Xi[nXi]. </p>
<p>Additional <b>2 + nXi</b> equations will have to be provided
when using the BaseProperties model, in order to fully specify the
thermodynamic conditions. The input connector qualifier applied to
p, h, and nXi indirectly declares the number of missing equations,
permitting advanced equation balance checking by Modelica tools.
Please note that this doesn't mean that the additional equations
should be connection equations, nor that exactly those variables
should be supplied, in order to complete the model.
For further information, see the Modelica.Media User's guide, and
Section 4.7 (Balanced Models) of the Modelica 3.0 specification. </p>
</html>"));
      end BaseProperties;

      replaceable partial function setState_pTX
      "Return thermodynamic state as function of p, T and composition X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        input MassFraction X[:]=reference_X "Mass fractions";
        output ThermodynamicState state "thermodynamic state record";
        annotation(Documentation(info="<html></html>"));
      end setState_pTX;

      replaceable partial function setState_phX
      "Return thermodynamic state as function of p, h and composition X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output ThermodynamicState state "thermodynamic state record";
        annotation(Documentation(info="<html></html>"));
      end setState_phX;

      replaceable partial function setState_psX
      "Return thermodynamic state as function of p, s and composition X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output ThermodynamicState state "thermodynamic state record";
        annotation(Documentation(info="<html></html>"));
      end setState_psX;

      replaceable partial function setState_dTX
      "Return thermodynamic state as function of d, T and composition X or Xi"
        extends Modelica.Icons.Function;
        input Density d "density";
        input Temperature T "Temperature";
        input MassFraction X[:]=reference_X "Mass fractions";
        output ThermodynamicState state "thermodynamic state record";
        annotation(Documentation(info="<html></html>"));
      end setState_dTX;

      replaceable partial function setSmoothState
      "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
        extends Modelica.Icons.Function;
        input Real x "m_flow or dp";
        input ThermodynamicState state_a "Thermodynamic state if x > 0";
        input ThermodynamicState state_b "Thermodynamic state if x < 0";
        input Real x_small(min=0)
        "Smooth transition in the region -x_small < x < x_small";
        output ThermodynamicState state
        "Smooth thermodynamic state for all x (continuous and differentiable)";
        annotation(Documentation(info="<html>
<p>
This function is used to approximate the equation
</p>
<pre>
    state = <b>if</b> x &gt; 0 <b>then</b> state_a <b>else</b> state_b;
</pre>

<p>
by a smooth characteristic, so that the expression is continuous and differentiable:
</p>

<pre>
   state := <b>smooth</b>(1, <b>if</b> x &gt;  x_small <b>then</b> state_a <b>else</b>
                      <b>if</b> x &lt; -x_small <b>then</b> state_b <b>else</b> f(state_a, state_b));
</pre>

<p>
This is performed by applying function <b>Media.Common.smoothStep</b>(..)
on every element of the thermodynamic state record.
</p>

<p>
If <b>mass fractions</b> X[:] are approximated with this function then this can be performed
for all <b>nX</b> mass fractions, instead of applying it for nX-1 mass fractions and computing
the last one by the mass fraction constraint sum(X)=1. The reason is that the approximating function has the
property that sum(state.X) = 1, provided sum(state_a.X) = sum(state_b.X) = 1.
This can be shown by evaluating the approximating function in the abs(x) &lt; x_small
region (otherwise state.X is either state_a.X or state_b.X):
</p>

<pre>
    X[1]  = smoothStep(x, X_a[1] , X_b[1] , x_small);
    X[2]  = smoothStep(x, X_a[2] , X_b[2] , x_small);
       ...
    X[nX] = smoothStep(x, X_a[nX], X_b[nX], x_small);
</pre>

<p>
or
</p>

<pre>
    X[1]  = c*(X_a[1]  - X_b[1])  + (X_a[1]  + X_b[1])/2
    X[2]  = c*(X_a[2]  - X_b[2])  + (X_a[2]  + X_b[2])/2;
       ...
    X[nX] = c*(X_a[nX] - X_b[nX]) + (X_a[nX] + X_b[nX])/2;
    c     = (x/x_small)*((x/x_small)^2 - 3)/4
</pre>

<p>
Summing all mass fractions together results in
</p>

<pre>
    sum(X) = c*(sum(X_a) - sum(X_b)) + (sum(X_a) + sum(X_b))/2
           = c*(1 - 1) + (1 + 1)/2
           = 1
</pre>

</html>"));
      end setSmoothState;

      replaceable partial function dynamicViscosity "Return dynamic viscosity"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output DynamicViscosity eta "Dynamic viscosity";
        annotation(Documentation(info="<html></html>"));
      end dynamicViscosity;

      replaceable partial function thermalConductivity
      "Return thermal conductivity"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output ThermalConductivity lambda "Thermal conductivity";
        annotation(Documentation(info="<html></html>"));
      end thermalConductivity;

      replaceable function prandtlNumber "Return the Prandtl number"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output PrandtlNumber Pr "Prandtl number";
      algorithm
        Pr := dynamicViscosity(state)*specificHeatCapacityCp(state)/thermalConductivity(
          state);
      end prandtlNumber;

      replaceable partial function pressure "Return pressure"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output AbsolutePressure p "Pressure";
        annotation(Documentation(info="<html></html>"));
      end pressure;

      replaceable partial function temperature "Return temperature"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output Temperature T "Temperature";
      end temperature;

      replaceable partial function density "Return density"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output Density d "Density";
        annotation(Documentation(info="<html></html>"));
      end density;

      replaceable partial function specificEnthalpy "Return specific enthalpy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificEnthalpy h "Specific enthalpy";
        annotation(Documentation(info="<html></html>"));
      end specificEnthalpy;

      replaceable partial function specificInternalEnergy
      "Return specific internal energy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificEnergy u "Specific internal energy";
        annotation(Documentation(info="<html></html>"));
      end specificInternalEnergy;

      replaceable partial function specificEntropy "Return specific entropy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificEntropy s "Specific entropy";
        annotation(Documentation(info="<html></html>"));
      end specificEntropy;

      replaceable partial function specificGibbsEnergy
      "Return specific Gibbs energy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificEnergy g "Specific Gibbs energy";
        annotation(Documentation(info="<html></html>"));
      end specificGibbsEnergy;

      replaceable partial function specificHelmholtzEnergy
      "Return specific Helmholtz energy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificEnergy f "Specific Helmholtz energy";
        annotation(Documentation(info="<html></html>"));
      end specificHelmholtzEnergy;

      replaceable partial function specificHeatCapacityCp
      "Return specific heat capacity at constant pressure"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificHeatCapacity cp
        "Specific heat capacity at constant pressure";
        annotation(Documentation(info="<html></html>"));
      end specificHeatCapacityCp;

      function heatCapacity_cp = specificHeatCapacityCp
      "alias for deprecated name";

      replaceable partial function specificHeatCapacityCv
      "Return specific heat capacity at constant volume"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SpecificHeatCapacity cv
        "Specific heat capacity at constant volume";
        annotation(Documentation(info="<html></html>"));
      end specificHeatCapacityCv;

      function heatCapacity_cv = specificHeatCapacityCv
      "alias for deprecated name";

      replaceable partial function isentropicExponent
      "Return isentropic exponent"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output IsentropicExponent gamma "Isentropic exponent";
        annotation(Documentation(info="<html></html>"));
      end isentropicExponent;

      replaceable partial function isentropicEnthalpy
      "Return isentropic enthalpy"
        extends Modelica.Icons.Function;
        input AbsolutePressure p_downstream "downstream pressure";
        input ThermodynamicState refState "reference state for entropy";
        output SpecificEnthalpy h_is "Isentropic enthalpy";
        annotation(Documentation(info="<html></html>"));
      end isentropicEnthalpy;

      replaceable partial function velocityOfSound "Return velocity of sound"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output VelocityOfSound a "Velocity of sound";
        annotation(Documentation(info="<html></html>"));
      end velocityOfSound;

      replaceable partial function isobaricExpansionCoefficient
      "Return overall the isobaric expansion coefficient beta"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output IsobaricExpansionCoefficient beta
        "Isobaric expansion coefficient";
        annotation(Documentation(info="<html></html>"));
      end isobaricExpansionCoefficient;

      function beta = isobaricExpansionCoefficient
      "alias for isobaricExpansionCoefficient for user convenience";

      replaceable partial function isothermalCompressibility
      "Return overall the isothermal compressibility factor"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output SI.IsothermalCompressibility kappa "Isothermal compressibility";
        annotation(Documentation(info="<html></html>"));
      end isothermalCompressibility;

      function kappa = isothermalCompressibility
      "alias of isothermalCompressibility for user convenience";

      // explicit derivative functions for finite element models
      replaceable partial function density_derp_h
      "Return density derivative wrt pressure at const specific enthalpy"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output DerDensityByPressure ddph "Density derivative wrt pressure";
        annotation(Documentation(info="<html></html>"));
      end density_derp_h;

      replaceable partial function density_derh_p
      "Return density derivative wrt specific enthalpy at constant pressure"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output DerDensityByEnthalpy ddhp
        "Density derivative wrt specific enthalpy";
        annotation(Documentation(info="<html></html>"));
      end density_derh_p;

      replaceable partial function density_derp_T
      "Return density derivative wrt pressure at const temperature"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output DerDensityByPressure ddpT "Density derivative wrt pressure";
        annotation(Documentation(info="<html></html>"));
      end density_derp_T;

      replaceable partial function density_derT_p
      "Return density derivative wrt temperature at constant pressure"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output DerDensityByTemperature ddTp
        "Density derivative wrt temperature";
        annotation(Documentation(info="<html></html>"));
      end density_derT_p;

      replaceable partial function density_derX
      "Return density derivative wrt mass fraction"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output Density[nX] dddX "Derivative of density wrt mass fraction";
        annotation(Documentation(info="<html></html>"));
      end density_derX;

      replaceable partial function molarMass
      "Return the molar mass of the medium"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state record";
        output MolarMass MM "Mixture molar mass";
        annotation(Documentation(info="<html></html>"));
      end molarMass;

      replaceable function specificEnthalpy_pTX
      "Return specific enthalpy from p, T, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        input MassFraction X[:]=reference_X "Mass fractions";
        output SpecificEnthalpy h "Specific enthalpy";
        annotation(Documentation(info="<html></html>"));
      algorithm
        h := specificEnthalpy(setState_pTX(p,T,X));
      end specificEnthalpy_pTX;

      replaceable function density_pTX "Return density from p, T, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        input MassFraction X[:] "Mass fractions";
        output Density d "Density";
        annotation(Documentation(info="<html></html>"));
      algorithm
        d := density(setState_pTX(p,T,X));
      end density_pTX;

      replaceable function temperature_phX
      "Return temperature from p, h, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output Temperature T "Temperature";
        annotation(Documentation(info="<html></html>"));
      algorithm
        T := temperature(setState_phX(p,h,X));
      end temperature_phX;

      replaceable function density_phX "Return density from p, h, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output Density d "Density";
        annotation(Documentation(info="<html></html>"));
      algorithm
        d := density(setState_phX(p,h,X));
      end density_phX;

      replaceable function temperature_psX
      "Return temperature from p,s, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output Temperature T "Temperature";
        annotation(Documentation(info="<html></html>"));
      algorithm
        T := temperature(setState_psX(p,s,X));
      end temperature_psX;

      replaceable function density_psX "Return density from p, s, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output Density d "Density";
        annotation(Documentation(info="<html></html>"));
      algorithm
        d := density(setState_psX(p,s,X));
      end density_psX;

      replaceable function specificEnthalpy_psX
      "Return specific enthalpy from p, s, and X or Xi"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        input MassFraction X[:]=reference_X "Mass fractions";
        output SpecificEnthalpy h "Specific enthalpy";
        annotation(Documentation(info="<html></html>"));
      algorithm
        h := specificEnthalpy(setState_psX(p,s,X));
      end specificEnthalpy_psX;

      type AbsolutePressure = SI.AbsolutePressure (
          min=0,
          max=1.e8,
          nominal=1.e5,
          start=1.e5)
      "Type for absolute pressure with medium specific attributes";

      type Density = SI.Density (
          min=0,
          max=1.e5,
          nominal=1,
          start=1) "Type for density with medium specific attributes";
      type DynamicViscosity = SI.DynamicViscosity (
          min=0,
          max=1.e8,
          nominal=1.e-3,
          start=1.e-3)
      "Type for dynamic viscosity with medium specific attributes";
      type EnthalpyFlowRate = SI.EnthalpyFlowRate (
          nominal=1000.0,
          min=-1.0e8,
          max=1.e8)
      "Type for enthalpy flow rate with medium specific attributes";
      type MassFlowRate = SI.MassFlowRate (
          quantity="MassFlowRate." + mediumName,
          min=-1.0e5,
          max=1.e5) "Type for mass flow rate with medium specific attributes";
      type MassFraction = Real (
          quantity="MassFraction",
          final unit="kg/kg",
          min=0,
          max=1,
          nominal=0.1) "Type for mass fraction with medium specific attributes";
      type MoleFraction = Real (
          quantity="MoleFraction",
          final unit="mol/mol",
          min=0,
          max=1,
          nominal=0.1) "Type for mole fraction with medium specific attributes";
      type MolarMass = SI.MolarMass (
          min=0.001,
          max=0.25,
          nominal=0.032) "Type for molar mass with medium specific attributes";
      type MolarVolume = SI.MolarVolume (
          min=1e-6,
          max=1.0e6,
          nominal=1.0) "Type for molar volume with medium specific attributes";
      type IsentropicExponent = SI.RatioOfSpecificHeatCapacities (
          min=1,
          max=500000,
          nominal=1.2,
          start=1.2)
      "Type for isentropic exponent with medium specific attributes";
      type SpecificEnergy = SI.SpecificEnergy (
          min=-1.0e8,
          max=1.e8,
          nominal=1.e6)
      "Type for specific energy with medium specific attributes";
      type SpecificInternalEnergy = SpecificEnergy
      "Type for specific internal energy with medium specific attributes";
      type SpecificEnthalpy = SI.SpecificEnthalpy (
          min=-1.0e8,
          max=1.e8,
          nominal=1.e6)
      "Type for specific enthalpy with medium specific attributes";
      type SpecificEntropy = SI.SpecificEntropy (
          min=-1.e6,
          max=1.e6,
          nominal=1.e3)
      "Type for specific entropy with medium specific attributes";
      type SpecificHeatCapacity = SI.SpecificHeatCapacity (
          min=0,
          max=1.e6,
          nominal=1.e3,
          start=1.e3)
      "Type for specific heat capacity with medium specific attributes";
      type SurfaceTension = SI.SurfaceTension
      "Type for surface tension with medium specific attributes";
      type Temperature = SI.Temperature (
          min=1,
          max=1.e4,
          nominal=300,
          start=300) "Type for temperature with medium specific attributes";
      type ThermalConductivity = SI.ThermalConductivity (
          min=0,
          max=500,
          nominal=1,
          start=1)
      "Type for thermal conductivity with medium specific attributes";
      type PrandtlNumber = SI.PrandtlNumber (
          min=1e-3,
          max=1e5,
          nominal=1.0)
      "Type for Prandtl number with medium specific attributes";
      type VelocityOfSound = SI.Velocity (
          min=0,
          max=1.e5,
          nominal=1000,
          start=1000)
      "Type for velocity of sound with medium specific attributes";
      type ExtraProperty = Real (min=0.0, start=1.0)
      "Type for unspecified, mass-specific property transported by flow";
      type CumulativeExtraProperty = Real (min=0.0, start=1.0)
      "Type for conserved integral of unspecified, mass specific property";
      type ExtraPropertyFlowRate = Real(unit="kg/s")
      "Type for flow rate of unspecified, mass-specific property";
      type IsobaricExpansionCoefficient = Real (
          min=1e-8,
          max=1.0e8,
          unit="1/K")
      "Type for isobaric expansion coefficient with medium specific attributes";
      type DipoleMoment = Real (
          min=0.0,
          max=2.0,
          unit="debye",
          quantity="ElectricDipoleMoment")
      "Type for dipole moment with medium specific attributes";

      type DerDensityByPressure = SI.DerDensityByPressure
      "Type for partial derivative of density with resect to pressure with medium specific attributes";
      type DerDensityByEnthalpy = SI.DerDensityByEnthalpy
      "Type for partial derivative of density with resect to enthalpy with medium specific attributes";
      type DerEnthalpyByPressure = SI.DerEnthalpyByPressure
      "Type for partial derivative of enthalpy with resect to pressure with medium specific attributes";
      type DerDensityByTemperature = SI.DerDensityByTemperature
      "Type for partial derivative of density with resect to temperature with medium specific attributes";

      package Choices "Types, constants to define menu choices"

        type IndependentVariables = enumeration(
          T "Temperature",
          pT "Pressure, Temperature",
          ph "Pressure, Specific Enthalpy",
          phX "Pressure, Specific Enthalpy, Mass Fraction",
          pTX "Pressure, Temperature, Mass Fractions",
          dTX "Density, Temperature, Mass Fractions")
        "Enumeration defining the independent variables of a medium";
        annotation (Documentation(info="<html>
<h2>Enumerations and data types for all types of fluids</h2>
<p>Note: Reference enthalpy might have to be extended with enthalpy of formation. </p>
</html>"));

        type Init = enumeration(
          NoInit "NoInit (no initialization)",
          InitialStates "InitialStates (initialize medium states)",
          SteadyState "SteadyState (initialize in steady state)",
          SteadyMass
            "SteadyMass (initialize density or pressure in steady state)")
        "Enumeration defining initialization for fluid flow" 
                  annotation (Evaluate=true);

        type ReferenceEnthalpy = enumeration(
          ZeroAt0K
            "The enthalpy is 0 at 0 K (default), if the enthalpy of formation is excluded", 

          ZeroAt25C
            "The enthalpy is 0 at 25 degC, if the enthalpy of formation is excluded", 

          UserDefined
            "The user-defined reference enthalpy is used at 293.15 K (25 degC)")
        "Enumeration defining the reference enthalpy of a medium" 
            annotation (Evaluate=true);

        type ReferenceEntropy = enumeration(
          ZeroAt0K "The entropy is 0 at 0 K (default)",
          ZeroAt0C "The entropy is 0 at 0 degC",
          UserDefined
            "The user-defined reference entropy is used at 293.15 K (25 degC)")
        "Enumeration defining the reference entropy of a medium" 
            annotation (Evaluate=true);

        type pd = enumeration(
          default "Default (no boundary condition for p or d)",
          p_known "p_known (pressure p is known)",
          d_known "d_known (density d is known)")
        "Enumeration defining whether p or d are known for the boundary condition"
            annotation (Evaluate=true);

        type Th = enumeration(
          default "Default (no boundary condition for T or h)",
          T_known "T_known (temperature T is known)",
          h_known "h_known (specific enthalpy h is known)")
        "Enumeration defining whether T or h are known as boundary condition" 
            annotation (Evaluate=true);

      end Choices;

      annotation (Documentation(info="<html>
<p>
<b>PartialMedium</b> is a package and contains all <b>declarations</b> for
a medium. This means that constants, models, and functions
are defined that every medium is supposed to support
(some of them are optional). A medium package
inherits from <b>PartialMedium</b> and provides the
equations for the medium. The details of this package
are described in
<a href=\"Modelica://Modelica.Media.UsersGuide\">Modelica.Media.UsersGuide</a>.
</p>
</html>
",   revisions="<html>

</html>"));
    end PartialMedium;

    partial package PartialPureSubstance
    "base class for pure substances of one chemical substance"
      extends PartialMedium(final reducedX = true, final fixedX=true);

     replaceable function setState_pT "Return thermodynamic state from p and T"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        output ThermodynamicState state "thermodynamic state record";
     algorithm
        state := setState_pTX(p,T,fill(0,0));
     end setState_pT;

      replaceable function setState_ph
      "Return thermodynamic state from p and h"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        output ThermodynamicState state "thermodynamic state record";
      algorithm
        state := setState_phX(p,h,fill(0, 0));
      end setState_ph;

      replaceable function setState_ps
      "Return thermodynamic state from p and s"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        output ThermodynamicState state "thermodynamic state record";
      algorithm
        state := setState_psX(p,s,fill(0,0));
      end setState_ps;

      replaceable function setState_dT
      "Return thermodynamic state from d and T"
        extends Modelica.Icons.Function;
        input Density d "density";
        input Temperature T "Temperature";
        output ThermodynamicState state "thermodynamic state record";
      algorithm
        state := setState_dTX(d,T,fill(0,0));
      end setState_dT;

      replaceable function density_ph "Return density from p and h"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        output Density d "Density";
      algorithm
        d := density_phX(p, h, fill(0,0));
      end density_ph;

      replaceable function temperature_ph "Return temperature from p and h"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        output Temperature T "Temperature";
      algorithm
        T := temperature_phX(p, h, fill(0,0));
      end temperature_ph;

      replaceable function pressure_dT "Return pressure from d and T"
        extends Modelica.Icons.Function;
        input Density d "Density";
        input Temperature T "Temperature";
        output AbsolutePressure p "Pressure";
      algorithm
        p := pressure(setState_dTX(d, T, fill(0,0)));
      end pressure_dT;

      replaceable function specificEnthalpy_dT
      "Return specific enthalpy from d and T"
        extends Modelica.Icons.Function;
        input Density d "Density";
        input Temperature T "Temperature";
        output SpecificEnthalpy h "specific enthalpy";
      algorithm
        h := specificEnthalpy(setState_dTX(d, T, fill(0,0)));
      end specificEnthalpy_dT;

      replaceable function specificEnthalpy_ps
      "Return specific enthalpy from p and s"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        output SpecificEnthalpy h "specific enthalpy";
      algorithm
        h := specificEnthalpy_psX(p,s,fill(0,0));
      end specificEnthalpy_ps;

      replaceable function temperature_ps "Return temperature from p and s"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        output Temperature T "Temperature";
      algorithm
        T := temperature_psX(p,s,fill(0,0));
      end temperature_ps;

      replaceable function density_ps "Return density from p and s"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEntropy s "Specific entropy";
        output Density d "Density";
      algorithm
        d := density_psX(p, s, fill(0,0));
      end density_ps;

      replaceable function specificEnthalpy_pT
      "Return specific enthalpy from p and T"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        output SpecificEnthalpy h "specific enthalpy";
      algorithm
        h := specificEnthalpy_pTX(p, T, fill(0,0));
      end specificEnthalpy_pT;

      replaceable function density_pT "Return density from p and T"
        extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input Temperature T "Temperature";
        output Density d "Density";
      algorithm
        d := density(setState_pTX(p, T, fill(0,0)));
      end density_pT;

      redeclare replaceable partial model extends BaseProperties(
        final standardOrderComponents=true)
      end BaseProperties;
    end PartialPureSubstance;

  partial package PartialMixtureMedium
    "Base class for pure substances of several chemical substances"
      extends PartialMedium;

      redeclare replaceable record extends ThermodynamicState
      "thermodynamic state variables"
        AbsolutePressure p "Absolute pressure of medium";
        Temperature T "Temperature of medium";
        MassFraction X[nX]
        "Mass fractions (= (component mass)/total mass  m_i/m)";
      end ThermodynamicState;

      redeclare replaceable record extends FluidConstants
      "extended fluid constants"
        Temperature criticalTemperature "critical temperature";
        AbsolutePressure criticalPressure "critical pressure";
        MolarVolume criticalMolarVolume "critical molar Volume";
        Real acentricFactor "Pitzer acentric factor";
        Temperature triplePointTemperature "triple point temperature";
        AbsolutePressure triplePointPressure "triple point pressure";
        Temperature meltingPoint "melting point at 101325 Pa";
        Temperature normalBoilingPoint "normal boiling point (at 101325 Pa)";
        DipoleMoment dipoleMoment
        "dipole moment of molecule in Debye (1 debye = 3.33564e10-30 C.m)";
        Boolean hasIdealGasHeatCapacity=false
        "true if ideal gas heat capacity is available";
        Boolean hasCriticalData=false "true if critical data are known";
        Boolean hasDipoleMoment=false "true if a dipole moment known";
        Boolean hasFundamentalEquation=false "true if a fundamental equation";
        Boolean hasLiquidHeatCapacity=false
        "true if liquid heat capacity is available";
        Boolean hasSolidHeatCapacity=false
        "true if solid heat capacity is available";
        Boolean hasAccurateViscosityData=false
        "true if accurate data for a viscosity function is available";
        Boolean hasAccurateConductivityData=false
        "true if accurate data for thermal conductivity is available";
        Boolean hasVapourPressureCurve=false
        "true if vapour pressure data, e.g. Antoine coefficents are known";
        Boolean hasAcentricFactor=false
        "true if Pitzer accentric factor is known";
        SpecificEnthalpy HCRIT0=0.0
        "Critical specific enthalpy of the fundamental equation";
        SpecificEntropy SCRIT0=0.0
        "Critical specific entropy of the fundamental equation";
        SpecificEnthalpy deltah=0.0
        "Difference between specific enthalpy model (h_m) and f.eq. (h_f) (h_m - h_f)";
        SpecificEntropy deltas=0.0
        "Difference between specific enthalpy model (s_m) and f.eq. (s_f) (s_m - s_f)";
      end FluidConstants;

    constant FluidConstants[nS] fluidConstants "constant data for the fluid";

    replaceable function gasConstant
      "Return the gas constant of the mixture (also for liquids)"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state";
        output SI.SpecificHeatCapacity R "mixture gas constant";
    end gasConstant;

      function moleToMassFractions
      "Return mass fractions X from mole fractions"
        extends Modelica.Icons.Function;
        input SI.MoleFraction moleFractions[:] "Mole fractions of mixture";
        input MolarMass[:] MMX "molar masses of components";
        output SI.MassFraction X[size(moleFractions, 1)]
        "Mass fractions of gas mixture";
        annotation(smoothOrder=5);
    protected
        MolarMass Mmix =  moleFractions*MMX "molar mass of mixture";
      algorithm
        for i in 1:size(moleFractions, 1) loop
          X[i] := moleFractions[i]*MMX[i] /Mmix;
        end for;
      end moleToMassFractions;

      function massToMoleFractions
      "Return mole fractions from mass fractions X"
        extends Modelica.Icons.Function;
        input SI.MassFraction X[:] "Mass fractions of mixture";
        input SI.MolarMass[:] MMX "molar masses of components";
        output SI.MoleFraction moleFractions[size(X, 1)]
        "Mole fractions of gas mixture";
        annotation(smoothOrder=5);
    protected
        Real invMMX[size(X, 1)] "inverses of molar weights";
        SI.MolarMass Mmix "molar mass of mixture";
      algorithm
        for i in 1:size(X, 1) loop
          invMMX[i] := 1/MMX[i];
        end for;
        Mmix := 1/(X*invMMX);
        for i in 1:size(X, 1) loop
          moleFractions[i] := Mmix*X[i]/MMX[i];
        end for;
      end massToMoleFractions;

  end PartialMixtureMedium;

    partial package PartialCondensingGases
    "Base class for mixtures of condensing and non-condensing gases"
      extends PartialMixtureMedium(
           ThermoStates = Choices.IndependentVariables.pTX);

    replaceable partial function saturationPressure
      "Return saturation pressure of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature Tsat "saturation temperature";
      output AbsolutePressure psat "saturation pressure";
    end saturationPressure;

    replaceable partial function enthalpyOfVaporization
      "Return vaporization enthalpy of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy r0 "vaporization enthalpy";
    end enthalpyOfVaporization;

    replaceable partial function enthalpyOfLiquid
      "Return liquid enthalpy of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "liquid enthalpy";
    end enthalpyOfLiquid;

    replaceable partial function enthalpyOfGas
      "Return enthalpy of non-condensing gas mixture"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      input MassFraction[:] X "vector of mass fractions";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfGas;

    replaceable partial function enthalpyOfCondensingGas
      "Return enthalpy of condensing gas (most often steam)"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfCondensingGas;

    replaceable partial function enthalpyOfNonCondensingGas
      "Return enthalpy of the non-condensing species"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfNonCondensingGas;
    end PartialCondensingGases;
  end Interfaces;

  package Common
    "data structures and fundamental functions for fluid properties"
    annotation (Documentation(info="<HTML><h4>Package description</h4>
      <p>Package Modelica.Media.Common provides records and functions shared by many of the property sub-packages.
      High accuracy fluid property models share a lot of common structure, even if the actual models are different.
      Common data structures and computations shared by these property models are collected in this library.
      </p>

</HTML>
",   revisions="<html>
      <ul>
      <li>First implemented: <i>July, 2000</i>
      by <a href=\"http://www.control.lth.se/~hubertus/\">Hubertus Tummescheit</a>
      for the ThermoFluid Library with help from Jonas Eborn and Falko Jens Wagner
      </li>
      <li>Code reorganization, enhanced documentation, additional functions: <i>December, 2002</i>
      by <a href=\"http://www.control.lth.se/~hubertus/\">Hubertus Tummescheit</a> and move to Modelica
                            properties library.</li>
      <li>Inclusion into Modelica.Media: September 2003 </li>
      </ul>

      <address>Author: Hubertus Tummescheit, <br>
      Lund University<br>
      Department of Automatic Control<br>
      Box 118, 22100 Lund, Sweden<br>
      email: hubertus@control.lth.se
      </address>
</html>"));
    extends Modelica.Icons.Library;

    function smoothStep
    "Approximation of a general step, such that the characteristic is continuous and differentiable"
      extends Modelica.Icons.Function;
      input Real x "Abszissa value";
      input Real y1 "Ordinate value for x > 0";
      input Real y2 "Ordinate value for x < 0";
      input Real x_small(min=0) = 1e-5
      "Approximation of step for -x_small <= x <= x_small; x_small > 0 required";
      output Real y
      "Ordinate value to approximate y = if x > 0 then y1 else y2";
      annotation(Documentation(revisions="<html>
<ul>
<li><i>April 29, 2008</i>
    by <a href=\"mailto:Martin.Otter@DLR.de\">Martin Otter</a>:<br>
    Designed and implemented.</li>
<li><i>August 12, 2008</i>
    by <a href=\"mailto:Michael.Sielemann@dlr.de\">Michael Sielemann</a>:<br>
    Minor modification to cover the limit case <code>x_small -> 0</code> without division by zero.</li>
</ul>
</html>",   info="<html>
<p>
This function is used to approximate the equation
</p>
<pre>
    y = <b>if</b> x &gt; 0 <b>then</b> y1 <b>else</b> y2;
</pre>

<p>
by a smooth characteristic, so that the expression is continuous and differentiable:
</p>

<pre>
   y = <b>smooth</b>(1, <b>if</b> x &gt;  x_small <b>then</b> y1 <b>else</b>
                 <b>if</b> x &lt; -x_small <b>then</b> y2 <b>else</b> f(y1, y2));
</pre>

<p>
In the region -x_small &lt; x &lt; x_small a 2nd order polynomial is used
for a smooth transition from y1 to y2.
</p>

<p>
If <b>mass fractions</b> X[:] are approximated with this function then this can be performed
for all <b>nX</b> mass fractions, instead of applying it for nX-1 mass fractions and computing
the last one by the mass fraction constraint sum(X)=1. The reason is that the approximating function has the
property that sum(X) = 1, provided sum(X_a) = sum(X_b) = 1
(and y1=X_a[i], y2=X_b[i]).
This can be shown by evaluating the approximating function in the abs(x) &lt; x_small
region (otherwise X is either X_a or X_b):
</p>

<pre>
    X[1]  = smoothStep(x, X_a[1] , X_b[1] , x_small);
    X[2]  = smoothStep(x, X_a[2] , X_b[2] , x_small);
       ...
    X[nX] = smoothStep(x, X_a[nX], X_b[nX], x_small);
</pre>

<p>
or
</p>

<pre>
    X[1]  = c*(X_a[1]  - X_b[1])  + (X_a[1]  + X_b[1])/2
    X[2]  = c*(X_a[2]  - X_b[2])  + (X_a[2]  + X_b[2])/2;
       ...
    X[nX] = c*(X_a[nX] - X_b[nX]) + (X_a[nX] + X_b[nX])/2;
    c     = (x/x_small)*((x/x_small)^2 - 3)/4
</pre>

<p>
Summing all mass fractions together results in
</p>

<pre>
    sum(X) = c*(sum(X_a) - sum(X_b)) + (sum(X_a) + sum(X_b))/2
           = c*(1 - 1) + (1 + 1)/2
           = 1
</pre>
</html>"));
    algorithm
      y := smooth(1, if x >  x_small then y1 else 
                     if x < -x_small then y2 else 
                     if abs(x_small)>0 then (x/x_small)*((x/x_small)^2 - 3)*(y2-y1)/4 + (y1+y2)/2 else (y1+y2)/2);

    end smoothStep;

   package OneNonLinearEquation
    "Determine solution of a non-linear algebraic equation in one unknown without derivatives in a reliable and efficient way"
     extends Modelica.Icons.Library;
      annotation (Documentation(info="<html>
<p>
This function should currently only be used in Modelica.Media,
since it might be replaced in the future by another strategy,
where the tool is responsible for the solution of the non-linear
equation.
</p>

<p>
This library determines the solution of one non-linear algebraic equation \"y=f(x)\"
in one unknown \"x\" in a reliable way. As input, the desired value y of the
non-linear function has to be given, as well as an interval x_min, x_max that
contains the solution, i.e., \"f(x_min) - y\" and \"f(x_max) - y\" must
have a different sign. If possible, a smaller interval is computed by
inverse quadratic interpolation (interpolating with a quadratic polynomial
through the last 3 points and computing the zero). If this fails,
bisection is used, which always reduces the interval by a factor of 2.
The inverse quadratic interpolation method has superlinear convergence.
This is roughly the same convergence rate as a globally convergent Newton
method, but without the need to compute derivatives of the non-linear
function. The solver function is a direct mapping of the Algol 60 procedure
\"zero\" to Modelica, from:
</p>

<dl>
<dt> Brent R.P.:</dt>
<dd> <b>Algorithms for Minimization without derivatives</b>.
     Prentice Hall, 1973, pp. 58-59.</dd>
</dl>

<p>
Due to current limitations of the
Modelica language (not possible to pass a function reference to a function),
the construction to use this solver on a user-defined function is a bit
complicated (this method is from Hans Olsson, Dynasim AB). A user has to
provide a package in the following way:
</p>

<pre>
  <b>package</b> MyNonLinearSolver
    <b>extends</b> OneNonLinearEquation;

    <b>redeclare record extends</b> Data
      // Define data to be passed to user function
      ...
    <b>end</b> Data;

    <b>redeclare function extends</b> f_nonlinear
    <b>algorithm</b>
       // Compute the non-linear equation: y = f(x, Data)
    <b>end</b> f_nonlinear;

    // Dummy definition that has to be present for current Dymola
    <b>redeclare function extends</b> solve
    <b>end</b> solve;
  <b>end</b> MyNonLinearSolver;

  x_zero = MyNonLinearSolver.solve(y_zero, x_min, x_max, data=data);
</pre>
</html>"));

      replaceable record f_nonlinear_Data
      "Data specific for function f_nonlinear"
        extends Modelica.Icons.Record;
      end f_nonlinear_Data;

      replaceable partial function f_nonlinear
      "Nonlinear algebraic equation in one unknown: y = f_nonlinear(x,p,X)"
        extends Modelica.Icons.Function;
        input Real x "Independent variable of function";
        input Real p = 0.0
        "disregaded variables (here always used for pressure)";
        input Real[:] X = fill(0,0)
        "disregaded variables (her always used for composition)";
        input f_nonlinear_Data f_nonlinear_data
        "Additional data for the function";
        output Real y "= f_nonlinear(x)";
        // annotation(derivative(zeroDerivative=y)); // this must hold for all replaced functions
      end f_nonlinear;

      replaceable function solve
      "Solve f_nonlinear(x_zero)=y_zero; f_nonlinear(x_min) - y_zero and f_nonlinear(x_max)-y_zero must have different sign"
        import Modelica.Utilities.Streams.error;
        extends Modelica.Icons.Function;
        input Real y_zero
        "Determine x_zero, such that f_nonlinear(x_zero) = y_zero";
        input Real x_min "Minimum value of x";
        input Real x_max "Maximum value of x";
        input Real pressure = 0.0
        "disregaded variables (here always used for pressure)";
        input Real[:] X = fill(0,0)
        "disregaded variables (here always used for composition)";
         input f_nonlinear_Data f_nonlinear_data
        "Additional data for function f_nonlinear";
         input Real x_tol =  100*Modelica.Constants.eps
        "Relative tolerance of the result";
         output Real x_zero "f_nonlinear(x_zero) = y_zero";
    protected
         constant Real eps = Modelica.Constants.eps "machine epsilon";
         Real a = x_min "Current best minimum interval value";
         Real b = x_max "Current best maximum interval value";
         Real c "Intermediate point a <= c <= b";
         Real d;
         Real e "b - a";
         Real m;
         Real s;
         Real p;
         Real q;
         Real r;
         Real tol;
         Real fa "= f_nonlinear(a) - y_zero";
         Real fb "= f_nonlinear(b) - y_zero";
         Real fc;
         Boolean found = false;
      algorithm
         // Check that f(x_min) and f(x_max) have different sign
         fa :=f_nonlinear(x_min, pressure, X, f_nonlinear_data) - y_zero;
         fb :=f_nonlinear(x_max, pressure, X, f_nonlinear_data) - y_zero;
         fc := fb;
         if fa > 0.0 and fb > 0.0 or 
            fa < 0.0 and fb < 0.0 then
            error("The arguments x_min and x_max to OneNonLinearEquation.solve(..)\n" +
                  "do not bracket the root of the single non-linear equation:\n" +
                  "  x_min  = " + String(x_min) + "\n" +
                  "  x_max  = " + String(x_max) + "\n" +
                  "  y_zero = " + String(y_zero) + "\n" +
                  "  fa = f(x_min) - y_zero = " + String(fa) + "\n" +
                  "  fb = f(x_max) - y_zero = " + String(fb) + "\n" +
                  "fa and fb must have opposite sign which is not the case");
         end if;

         // Initialize variables
         c :=a;
         fc :=fa;
         e :=b - a;
         d :=e;

         // Search loop
         while not found loop
            if abs(fc) < abs(fb) then
               a :=b;
               b :=c;
               c :=a;
               fa :=fb;
               fb :=fc;
               fc :=fa;
            end if;

            tol :=2*eps*abs(b) + x_tol;
            m :=(c - b)/2;

            if abs(m) <= tol or fb == 0.0 then
               // root found (interval is small enough)
               found :=true;
               x_zero :=b;
            else
               // Determine if a bisection is needed
               if abs(e) < tol or abs(fa) <= abs(fb) then
                  e :=m;
                  d :=e;
               else
                  s :=fb/fa;
                  if a == c then
                     // linear interpolation
                     p :=2*m*s;
                     q :=1 - s;
                  else
                     // inverse quadratic interpolation
                     q :=fa/fc;
                     r :=fb/fc;
                     p :=s*(2*m*q*(q - r) - (b - a)*(r - 1));
                     q :=(q - 1)*(r - 1)*(s - 1);
                  end if;

                  if p > 0 then
                     q :=-q;
                  else
                     p :=-p;
                  end if;

                  s :=e;
                  e :=d;
                  if 2*p < 3*m*q-abs(tol*q) and p < abs(0.5*s*q) then
                     // interpolation successful
                     d :=p/q;
                  else
                     // use bi-section
                     e :=m;
                     d :=e;
                  end if;
               end if;

               // Best guess value is defined as "a"
               a :=b;
               fa :=fb;
               b :=b + (if abs(d) > tol then d else if m > 0 then tol else -tol);
               fb :=f_nonlinear(b, pressure, X, f_nonlinear_data) - y_zero;

               if fb > 0 and fc > 0 or 
                  fb < 0 and fc < 0 then
                  // initialize variables
                  c :=a;
                  fc :=fa;
                  e :=b - a;
                  d :=e;
               end if;
            end if;
         end while;
      end solve;

   end OneNonLinearEquation;
  end Common;

    package Air "Medium models for air"

      package MoistAir "Air: Moist air model (240 ... 400 K)"
        extends Interfaces.PartialCondensingGases(
           mediumName="Moist air",
           substanceNames={"water", "air"},
           final reducedX=true,
           final singleState=false,
           reference_X={0.01,0.99},
           fluidConstants = {IdealGases.Common.FluidData.H2O,IdealGases.Common.FluidData.N2});

        constant Integer Water=1
        "Index of water (in substanceNames, massFractions X, etc.)";

        constant Integer Air=2
        "Index of air (in substanceNames, massFractions X, etc.)";

        constant Real k_mair =  steam.MM/dryair.MM "ratio of molar weights";

        constant IdealGases.Common.DataRecord dryair = IdealGases.Common.SingleGasesData.Air;

        constant IdealGases.Common.DataRecord steam = IdealGases.Common.SingleGasesData.H2O;

        constant SI.MolarMass[2] MMX = {steam.MM,dryair.MM}
        "Molar masses of components";
        import Modelica.Media.Interfaces;
        import Modelica.Math;
        import SI = Modelica.SIunits;
        import Cv = Modelica.SIunits.Conversions;
        import Modelica.Constants;
        import Modelica.Media.IdealGases.Common.SingleGasNasa;

        redeclare record extends ThermodynamicState
        "ThermodynamicState record for moist air"
        end ThermodynamicState;

        redeclare replaceable model extends BaseProperties(
          T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          Xi(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          redeclare final constant Boolean standardOrderComponents=true)
        "Moist air base properties record"

          /* p, T, X = X[Water] are used as preferred states, since only then all
     other quantities can be computed in a recursive sequence.
     If other variables are selected as states, static state selection
     is no longer possible and non-linear algebraic equations occur.
      */
          MassFraction x_water "Mass of total water/mass of dry air";
          Real phi "Relative humidity";
          annotation(Documentation(info="<html>
This model computes thermodynamic properties of moist air from three independent (thermodynamic or/and numerical) state variables. Preferred numerical states are temperature T, pressure p and the reduced composition vector Xi, which contains the water mass fraction only. As an EOS the <b>ideal gas law</b> is used and associated restrictions apply. The model can also be used in the <b>fog region</b>, when moisture is present in its liquid state. However, it is assumed that the liquid water volume is negligible compared to that of the gas phase. Computation of thermal properties is based on property data of <a href=Modelica:Modelica.Media.Air.DryAirNasa> dry air</a> and water (source: VDI-W&auml;rmeatlas), respectively. Besides the standard thermodynamic variables <b>absolute and relative humidity</b>, x_water and phi, respectively, are given by the model. Upper case X denotes absolute humidity with respect to mass of moist air while absolute humidity with respect to mass of dry air only is denoted by a lower case x throughout the model. See <a href=Modelica:Modelica.Media.Air.MoistAir>package description</a> for further information.
</html>"));

      protected
          MassFraction X_liquid "Mass fraction of liquid or solid water";
          MassFraction X_steam "Mass fraction of steam water";
          MassFraction X_air "Mass fraction of air";
          MassFraction X_sat
          "Steam water mass fraction of saturation boundary in kg_water/kg_moistair";
          MassFraction x_sat
          "Steam water mass content of saturation boundary in kg_water/kg_dryair";
          AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        equation
          assert(T >= 200.0 and T <= 423.15, "
Temperature T is not in the allowed range
200.0 K <= (T ="     + String(T) + " K) <= 423.15 K
required from medium model \""           + mediumName + "\".");
          MM = 1/(Xi[Water]/MMX[Water]+(1.0-Xi[Water])/MMX[Air]);

          p_steam_sat = min(saturationPressure(T),0.999*p);
          X_sat = min(p_steam_sat * k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - Xi[Water]), 1.0)
          "Water content at saturation with respect to actual water content";
          X_liquid = max(Xi[Water] - X_sat, 0.0);
          X_steam  = Xi[Water]-X_liquid;
          X_air    = 1-Xi[Water];

          h = specificEnthalpy_pTX(p,T,Xi);
          R = dryair.R*(X_air/(1 - X_liquid)) + steam.R*X_steam/(1 - X_liquid);
          //
          u = h - R*T;
          d = p/(R*T);
          /* Note, u and d are computed under the assumption that the volume of the liquid
         water is neglible with respect to the volume of air and of steam
      */
          state.p = p;
          state.T = T;
          state.X = X;

          // these x are per unit mass of DRY air!
          x_sat    = k_mair*p_steam_sat/max(100*Constants.eps,p - p_steam_sat);
          x_water = Xi[Water]/max(X_air,100*Constants.eps);
          phi = p/p_steam_sat*Xi[Water]/(Xi[Water] + k_mair*X_air);
        end BaseProperties;

        redeclare function setState_pTX
        "Return thermodynamic state as function of pressure p, temperature T and composition X"
          extends Modelica.Icons.Function;
          input AbsolutePressure p "Pressure";
          input Temperature T "Temperature";
          input MassFraction X[:]=reference_X "Mass fractions";
          output ThermodynamicState state "Thermodynamic state";
          annotation(smoothOrder=2);
        algorithm
          state := if size(X,1) == nX then ThermodynamicState(p=p,T=T, X=X) else 
                 ThermodynamicState(p=p,T=T, X=cat(1,X,{1-sum(X)}));
          annotation (Documentation(info="<html>
The <a href=Modelica:Modelica.Media.Air.MoistAir.ThermodynamicState>thermodynamic state record</a> is computed from pressure p, temperature T and composition X.
</html>"));
        end setState_pTX;

        redeclare function setState_phX
        "Return thermodynamic state as function of pressure p, specific enthalpy h and composition X"
          extends Modelica.Icons.Function;
          input AbsolutePressure p "Pressure";
          input SpecificEnthalpy h "Specific enthalpy";
          input MassFraction X[:]=reference_X "Mass fractions";
          output ThermodynamicState state "Thermodynamic state";
          annotation(smoothOrder=2);
        algorithm
          state := if size(X,1) == nX then ThermodynamicState(p=p,T=T_phX(p,h,X),X=X) else 
                 ThermodynamicState(p=p,T=T_phX(p,h,X), X=cat(1,X,{1-sum(X)}));
          annotation (Documentation(info="<html>
The <a href=Modelica:Modelica.Media.Air.MoistAir.ThermodynamicState>thermodynamic state record</a> is computed from pressure p, specific enthalpy h and composition X.
</html>"));
        end setState_phX;

        redeclare function setState_dTX
        "Return thermodynamic state as function of density d, temperature T and composition X"
          extends Modelica.Icons.Function;
          input Density d "density";
          input Temperature T "Temperature";
          input MassFraction X[:]=reference_X "Mass fractions";
          output ThermodynamicState state "Thermodynamic state";
          annotation(smoothOrder=2);
        algorithm
          state := if size(X,1) == nX then ThermodynamicState(p=d*({steam.R,dryair.R}*X)*T,T=T,X=X) else 
                 ThermodynamicState(p=d*({steam.R,dryair.R}*cat(1,X,{1-sum(X)}))*T,T=T, X=cat(1,X,{1-sum(X)}));
          annotation (Documentation(info="<html>
The <a href=Modelica:Modelica.Media.Air.MoistAir.ThermodynamicState>thermodynamic state record</a> is computed from density d, temperature T and composition X.
</html>"));
        end setState_dTX;

      redeclare function extends setSmoothState
        "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
      algorithm
        state := ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                    T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small),
                                    X=Media.Common.smoothStep(x, state_a.X, state_b.X, x_small));
      end setSmoothState;

        redeclare function extends gasConstant
        "Return ideal gas constant as a function from thermodynamic state, only valid for phi<1"

          annotation(smoothOrder=2);
        algorithm
          R := dryair.R*(1-state.X[Water]) + steam.R*state.X[Water];
          annotation (Documentation(info="<html>
The ideal gas constant for moist air is computed from <a href=Modelica:Modelica.Media.Air.MoistAir.ThermodynamicState>thermodynamic state</a> assuming that all water is in the gas phase.
</html>"));
        end gasConstant;

        function saturationPressureLiquid
        "Return saturation pressure of water as a function of temperature T in the range of 273.16 to 373.16 K"

          extends Modelica.Icons.Function;
          input SI.Temperature Tsat "saturation temperature";
          output SI.AbsolutePressure psat "saturation pressure";
          annotation(Inline=false,smoothOrder=5,derivative=saturationPressureLiquid_der,
            Documentation(info="<html>
Saturation pressure of water above the triple point temperature is computed from temperature. It's range of validity is between
273.16 and 373.16 K. Outside these limits a less accurate result is returned.
</html>"));
        algorithm
          psat := 611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719));
        end saturationPressureLiquid;

        function saturationPressureLiquid_der
        "Time derivative of saturationPressureLiquid"

          extends Modelica.Icons.Function;
          input SI.Temperature Tsat "Saturation temperature";
          input Real dTsat(unit="K/s") "Saturation temperature derivative";
          output Real psat_der(unit="Pa/s") "Saturation pressure";
          annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Derivative function of <a href=Modelica:Modelica.Media.Air.MoistAir.saturationPressureLiquid>saturationPressureLiquid</a>
</html>"));
        algorithm
        /*psat := 611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719));*/
          psat_der:=611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719))*4102.99*dTsat/(Tsat - 35.719)/(Tsat - 35.719);

        end saturationPressureLiquid_der;

        function sublimationPressureIce
        "Return sublimation pressure of water as a function of temperature T between 223.16 and 273.16 K"

          extends Modelica.Icons.Function;
          input SI.Temperature Tsat "sublimation temperature";
          output SI.AbsolutePressure psat "sublimation pressure";
          annotation(Inline=false,smoothOrder=5,derivative=sublimationPressureIce_der,
            Documentation(info="<html>
Sublimation pressure of water below the triple point temperature is computed from temperature. It's range of validity is between
 223.16 and 273.16 K. Outside of these limits a less accurate result is returned.
</html>"));
        algorithm
          psat := 611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat));
        end sublimationPressureIce;

        function sublimationPressureIce_der
        "Derivative function for 'sublimationPressureIce'"

          extends Modelica.Icons.Function;
          input SI.Temperature Tsat "Sublimation temperature";
          input Real dTsat(unit="K/s")
          "Time derivative of sublimation temperature";
          output Real psat_der(unit="Pa/s") "Sublimation pressure";
          annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Derivative function of <a href=Modelica:Modelica.Media.Air.MoistAir.sublimationPressureIce>saturationPressureIce</a>
</html>"));
        algorithm
          /*psat := 611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat));*/
          psat_der:=611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat))*22.5159*273.16*dTsat/Tsat/Tsat;
        end sublimationPressureIce_der;

        redeclare function extends saturationPressure
        "Return saturation pressure of water as a function of temperature T between 223.16 and 373.16 K"

          annotation(Inline=false,smoothOrder=5,derivative=saturationPressure_der,
            Documentation(info="<html>
Saturation pressure of water in the liquid and the solid region is computed using an Antoine-type correlation. It's range of validity is between 223.16 and 373.16 K. Outside of these limits a (less accurate) result is returned. Functions for the
<a href=Modelica.Media.Air.MoistAir.sublimationPressureIce>solid</a> and the <a href=\"Modelica.Media.MoistAir.saturationPressureLiquid\"> liquid</a> region, respectively, are combined using the first derivative continuous <a href=Modelica.Media.MoistAir.Utilities.spliceFunction>spliceFunction</a>.
</html>"));
        algorithm
          psat := Utilities.spliceFunction(saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);
        end saturationPressure;

        function saturationPressure_der
        "Derivative function for 'saturationPressure'"
          input Temperature Tsat "Saturation temperature";
          input Real dTsat(unit="K/s")
          "Time derivative of saturation temperature";
          output Real psat_der(unit="Pa/s") "Saturation pressure";
          annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Derivative function of <a href=Modelica:Modelica.Media.Air.MoistAir.saturationPressure>saturationPressure</a>
</html>"));

        algorithm
          /*psat := Utilities.spliceFunction(saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);*/
          psat_der := Utilities.spliceFunction_der(
            saturationPressureLiquid(Tsat),
            sublimationPressureIce(Tsat),
            Tsat - 273.16,
            1.0,
            saturationPressureLiquid_der(Tsat=Tsat, dTsat=dTsat),
            sublimationPressureIce_der(Tsat=Tsat, dTsat=dTsat),
            dTsat,
            0);
        end saturationPressure_der;

       redeclare function extends enthalpyOfVaporization
        "Return enthalpy of vaporization of water as a function of temperature T, 0 - 130 degC"

         annotation(smoothOrder=2);
       algorithm
        /*r0 := 1e3*(2501.0145 - (T - 273.15)*(2.3853 + (T - 273.15)*(0.002969 - (T
      - 273.15)*(7.5293e-5 + (T - 273.15)*4.6084e-7))));*/
       //katrin: replaced by linear correlation, simpler and more accurate in the entire region
       //source VDI-Waermeatlas, linear inter- and extrapolation between values for 0.01°C and 40°C.
       r0:=(2405900-2500500)/(40-0)*(T-273.16)+2500500;
          annotation (Documentation(info="<html>
Enthalpy of vaporization of water is computed from temperature in the region of 0 to 130 °C.
</html>"));
       end enthalpyOfVaporization;

       redeclare function extends enthalpyOfLiquid
        "Return enthalpy of liquid water as a function of temperature T(use enthalpyOfWater instead)"

         annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Specific enthalpy of liquid water is computed from temperature using a polynomial approach. Kept for compatibility reasons, better use <a href=Modelica:Modelica.Media.Air.MoistAir.enthalpyOfWater>enthalpyOfWater</a> instead.
</html>"));
       algorithm
         h := (T - 273.15)*1e3*(4.2166 - 0.5*(T - 273.15)*(0.0033166 + 0.333333*(T - 273.15)*(0.00010295
            - 0.25*(T - 273.15)*(1.3819e-6 + 0.2*(T - 273.15)*7.3221e-9))));
       end enthalpyOfLiquid;

       redeclare function extends enthalpyOfGas
        "Return specific enthalpy of gas (air and steam) as a function of temperature T and composition X"

         annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Specific enthalpy of moist air is computed from temperature, provided all water is in the gaseous state. The first entry in the composition vector X must be the mass fraction of steam. For a function that also covers the fog region please refer to <a href=Modelica:Modelica.Media.Air.MoistAir.h_pTX>h_pTX</a>.
</html>"));
       algorithm
         h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5)*X[Water]
              + SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)*(1.0-X[Water]);
       end enthalpyOfGas;

       redeclare function extends enthalpyOfCondensingGas
        "Return specific enthalpy of steam as a function of temperature T"

         annotation(Inline=false,smoothOrder=5,
            Documentation(info="<html>
Specific enthalpy of steam is computed from temperature.
</html>"));
       algorithm
         h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5);
       end enthalpyOfCondensingGas;

       redeclare function extends enthalpyOfNonCondensingGas
        "Return specific enthalpy of dry air as a function of temperature T"

         annotation(Inline=false,smoothOrder=1,
            Documentation(info="<html>
Specific enthalpy of dry air is computed from temperature.
</html>"));
       algorithm
         h := SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684);
       end enthalpyOfNonCondensingGas;

      function enthalpyOfWater
        "Computes specific enthalpy of water (solid/liquid) near atmospheric pressure from temperature T"
        input SIunits.Temperature T "Temperature";
        output SIunits.SpecificEnthalpy h "Specific enthalpy of water";
      annotation (derivative=enthalpyOfWater_der, Documentation(info="<html>
Specific enthalpy of water (liquid and solid) is computed from temperature using constant properties as follows:<br>
<ul>
<li>  heat capacity of liquid water:4200 J/kg
<li>  heat capacity of solid water: 2050 J/kg
<li>  enthalpy of fusion (liquid=>solid): 333000 J/kg
</ul>
Pressure is assumed to be around 1 bar. This function is usually used to determine the specific enthalpy of the liquid or solid fraction of moist air.
</html>"));
      algorithm
      /*simple model assuming constant properties:
  heat capacity of liquid water:4200 J/kg
  heat capacity of solid water: 2050 J/kg
  enthalpy of fusion (liquid=>solid): 333000 J/kg*/

        h:=Utilities.spliceFunction(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1);
      end enthalpyOfWater;

      function enthalpyOfWater_der "Derivative function of enthalpyOfWater"
        input SIunits.Temperature T "Temperature";
        input Real dT(unit="K/s") "Time derivative of temperature";
        output Real dh(unit="J/(kg.s)") "Time derivative of specific enthalpy";
      algorithm
      /*simple model assuming constant properties:
  heat capacity of liquid water:4200 J/kg
  heat capacity of solid water: 2050 J/kg
  enthalpy of fusion (liquid=>solid): 333000 J/kg*/

        //h:=Utilities.spliceFunction(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1);
        dh:=Utilities.spliceFunction_der(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1,4200*dT,2050*dT,dT,0);
          annotation (Documentation(info="<html>
Derivative function for <a href=Modelica:Modelica.Media.Air.MoistAir.enthalpyOfWater>enthalpyOfWater</a>.

</html>"));
      end enthalpyOfWater_der;

       redeclare function extends pressure
        "Returns pressure of ideal gas as a function of the thermodynamic state record"

         annotation(smoothOrder=2);
       algorithm
        p := state.p;
          annotation (Documentation(info="<html>
Pressure is returned from the thermodynamic state record input as a simple assignment.
</html>"));
       end pressure;

       redeclare function extends temperature
        "Return temperature of ideal gas as a function of the thermodynamic state record"

         annotation(smoothOrder=2);
       algorithm
         T := state.T;
          annotation (Documentation(info="<html>
Temperature is returned from the thermodynamic state record input as a simple assignment.
</html>"));
       end temperature;

      function T_phX
        "Return temperature as a function of pressure p, specific enthalpy h and composition X"
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction[:] X "Mass fractions of composition";
        output Temperature T "Temperature";

      protected
      package Internal
          "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
        extends Modelica.Media.Common.OneNonLinearEquation;
        redeclare record extends f_nonlinear_Data
            "Data to be passed to non-linear function"
          extends Modelica.Media.IdealGases.Common.DataRecord;
        end f_nonlinear_Data;

        redeclare function extends f_nonlinear
        algorithm
            y := h_pTX(p,x,X);
        end f_nonlinear;

        // Dummy definition has to be added for current Dymola
        redeclare function extends solve
        end solve;
      end Internal;

      algorithm
        T := Internal.solve(h, 240, 400, p, X[1:nXi], steam);
          annotation (Documentation(info="<html>
Temperature is computed from pressure, specific enthalpy and composition via numerical inversion of function <a href=Modelica:Modelica.Media.Air.MoistAir.h_pTX>h_pTX</a>.
</html>"));
      end T_phX;

       redeclare function extends density
        "Returns density of ideal gas as a function of the thermodynamic state record"

         annotation(smoothOrder=2);
       algorithm
         d := state.p/(gasConstant(state)*state.T);
          annotation (Documentation(info="<html>
Density is computed from pressure, temperature and composition in the thermodynamic state record applying the ideal gas law.
</html>"));
       end density;

      redeclare function extends specificEnthalpy
        "Return specific enthalpy of moist air as a function of the thermodynamic state record"

        annotation(smoothOrder=2);
      algorithm
        h := h_pTX(state.p, state.T, state.X);
          annotation (Documentation(info="<html>
Specific enthalpy of moist air is computed from the thermodynamic state record. The fog region is included for both, ice and liquid fog.
</html>"));
      end specificEnthalpy;

      function h_pTX
        "Return specific enthalpy of moist air as a function of pressure p, temperature T and composition X"
        extends Modelica.Icons.Function;
        input SI.Pressure p "Pressure";
        input SI.Temperature T "Temperature";
        input SI.MassFraction X[:] "Mass fractions of moist air";
        output SI.SpecificEnthalpy h "Specific enthalpy at p, T, X";
        annotation(derivative=h_pTX_der, Inline=false,
            Documentation(info="<html>
Specific enthalpy of moist air is computed from pressure, temperature and composition with X[1] as the total water mass fraction. The fog region is included for both, ice and liquid fog.
</html>"));
      protected
        SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
        SI.MassFraction X_liquid "mass fraction of liquid water";
        SI.MassFraction X_steam "mass fraction of steam water";
        SI.MassFraction X_air "mass fraction of air";
      algorithm
        p_steam_sat :=saturationPressure(T);
        //p_steam_sat :=min(saturationPressure(T), 0.999*p);
        X_sat:=min(p_steam_sat*k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - X[
          Water]), 1.0);
        X_liquid :=max(X[Water] - X_sat, 0.0);
        X_steam  :=X[Water] - X_liquid;
        X_air    :=1 - X[Water];
       /* h        := {SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5),
               SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)}*
    {X_steam, X_air} + enthalpyOfLiquid(T)*X_liquid;*/
         h        := {SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5),
                     SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)}*
          {X_steam, X_air} + enthalpyOfWater(T)*X_liquid;
      end h_pTX;

      function h_pTX_der "Derivative function of h_pTX"
        extends Modelica.Icons.Function;
        input SI.Pressure p "Pressure";
        input SI.Temperature T "Temperature";
        input SI.MassFraction X[:] "Mass fractions of moist air";
        input Real dp(unit="Pa/s") "Pressure derivative";
        input Real dT(unit="K/s") "Temperature derivative";
        input Real dX[:](each unit="1/s") "Composition derivative";
        output Real h_der(unit="J/(kg.s)")
          "Time derivative of specific enthalpy";
        annotation(Inline=false,smoothOrder=1,
            Documentation(info="<html>
Derivative function for <a href=Modelica:Modelica.Media.Air.MoistAir.h_pTX>h_pTX</a>.
</html>"));
      protected
        SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
        SI.MassFraction X_liquid "Mass fraction of liquid water";
        SI.MassFraction X_steam "Mass fraction of steam water";
        SI.MassFraction X_air "Mass fraction of air";
        SI.MassFraction x_sat
          "Absolute humidity per unit mass of dry air at saturation";
        Real dX_steam(unit="1/s") "Time deriveative of steam mass fraction";
        Real dX_air(unit="1/s") "Time derivative of dry air mass fraction";
        Real dX_liq(unit="1/s")
          "Time derivative of liquid/solid water mass fraction";
        Real dps(unit="Pa/s") "Time derivative of saturation pressure";
        Real dx_sat(unit="1/s")
          "Time derivative of abolute humidity per unit mass of dry air";
      algorithm
        p_steam_sat :=saturationPressure(T);
        x_sat:=p_steam_sat*k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat);
        X_sat:=min(x_sat*(1 - X[Water]), 1.0);
        X_liquid :=Utilities.spliceFunction(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6);
        X_steam  :=X[Water] - X_liquid;
        X_air    :=1 - X[Water];

        dX_air:=-dX[Water];
        dps:=saturationPressure_der(Tsat=T, dTsat=dT);
        dx_sat:=k_mair*(dps*(p-p_steam_sat)-p_steam_sat*(dp-dps))/(p-p_steam_sat)/(p-p_steam_sat);
        dX_liq:=Utilities.spliceFunction_der(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0);
        //dX_liq:=if X[Water]>=X_sat then (1+x_sat)*dX[Water]-(1-X[Water])*dx_sat else 0;
        dX_steam:=dX[Water]-dX_liq;

        h_der:= X_steam*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5, dT=dT)+
                dX_steam*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5) +
                X_air*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der(data=dryair, T=T, refChoice=3, h_off=25104.684, dT=dT) +
                dX_air*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684) +
                X_liquid*enthalpyOfWater_der(T=T, dT=dT) +
                dX_liq*enthalpyOfWater(T);

      end h_pTX_der;

      redeclare function extends isentropicExponent
        "Return isentropic exponent (only for gas fraction!)"
      algorithm
        gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
      end isentropicExponent;

      redeclare function extends specificInternalEnergy
        "Return specific internal energy of moist air as a function of the thermodynamic state record"
        extends Modelica.Icons.Function;
        output SI.SpecificInternalEnergy u "Specific internal energy";
        annotation(smoothOrder=2);
      algorithm
         u := specificInternalEnergy_pTX(state.p,state.T,state.X);

          annotation (Documentation(info="<html>
Specific internal energy is determined from the thermodynamic state record, assuming that the liquid or solid water volume is negligible.
</html>"));
      end specificInternalEnergy;

      function specificInternalEnergy_pTX
        "Return specific internal energy of moist air as a function of pressure p, temperature T and composition X"
        input SI.Pressure p "Pressure";
        input SI.Temperature T "Temperature";
        input SI.MassFraction X[:] "Mass fractions of moist air";
        output SI.SpecificInternalEnergy u "Specific internal energy";
      protected
        SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        SI.MassFraction X_liquid "Mass fraction of liquid water";
        SI.MassFraction X_steam "Mass fraction of steam water";
        SI.MassFraction X_air "Mass fraction of air";
        SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
        Real R_gas "Ideal gas constant";
      algorithm
        p_steam_sat :=saturationPressure(T);
        X_sat:=min(p_steam_sat*k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - X[
          Water]), 1.0);
        X_liquid :=max(X[Water] - X_sat, 0.0);
        X_steam  :=X[Water] - X_liquid;
        X_air    :=1 - X[Water];
        R_gas:= dryair.R*X_air/(1-X_liquid)+steam.R* X_steam/(1-X_liquid);
        u       := X_steam*SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5)+
                   X_air*SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)
                   + enthalpyOfWater(T)*X_liquid-R_gas*T;

          annotation (derivative=specificInternalEnergy_pTX_der, Documentation(info="<html>
Specific internal energy is determined from pressure p, temperature T and composition X, assuming that the liquid or solid water volume is negligible.
</html>"));
      end specificInternalEnergy_pTX;

      function specificInternalEnergy_pTX_der
        "Derivative function for specificInternalEnergy_pTX"
        input SI.Pressure p "Pressure";
        input SI.Temperature T "Temperature";
        input SI.MassFraction X[:] "Mass fractions of moist air";
        input Real dp(unit="Pa/s") "Pressure derivative";
        input Real dT(unit="K/s") "Temperature derivative";
        input Real dX[:](each unit="1/s") "Mass fraction derivatives";
        output Real u_der(unit="J/(kg.s)")
          "Specific internal energy derivative";
      protected
        SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        SI.MassFraction X_liquid "Mass fraction of liquid water";
        SI.MassFraction X_steam "Mass fraction of steam water";
        SI.MassFraction X_air "Mass fraction of air";
        SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
        SI.SpecificHeatCapacity R_gas "Ideal gas constant";

        SI.MassFraction x_sat
          "Absolute humidity per unit mass of dry air at saturation";
        Real dX_steam(unit="1/s") "Time deriveative of steam mass fraction";
        Real dX_air(unit="1/s") "Time derivative of dry air mass fraction";
        Real dX_liq(unit="1/s")
          "Time derivative of liquid/solid water mass fraction";
        Real dps(unit="Pa/s") "Time derivative of saturation pressure";
        Real dx_sat(unit="1/s")
          "Time derivative of abolute humidity per unit mass of dry air";
        Real dR_gas(unit="J/(kg.K.s)") "Time derivative of ideal gas constant";
      algorithm
        p_steam_sat :=saturationPressure(T);
        x_sat:=p_steam_sat*k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat);
        X_sat:=min(x_sat*(1 - X[Water]), 1.0);
        X_liquid :=Utilities.spliceFunction(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6);
        X_steam  :=X[Water] - X_liquid;
        X_air    :=1 - X[Water];
        R_gas:= steam.R*X_steam/(1-X_liquid)+dryair.R* X_air/(1-X_liquid);

        dX_air:=-dX[Water];
        dps:=saturationPressure_der(Tsat=T, dTsat=dT);
        dx_sat:=k_mair*(dps*(p-p_steam_sat)-p_steam_sat*(dp-dps))/(p-p_steam_sat)/(p-p_steam_sat);
        dX_liq:=Utilities.spliceFunction_der(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0);
        dX_steam:=dX[Water]-dX_liq;
        dR_gas:=(steam.R*(dX_steam*(1-X_liquid)+dX_liq*X_steam)+dryair.R*(dX_air*(1-X_liquid)+dX_liq*X_air))/(1-X_liquid)/(1-X_liquid);

        u_der:=X_steam*SingleGasNasa.h_Tlow_der(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5, dT=dT)+
               dX_steam*SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5) +
               X_air*SingleGasNasa.h_Tlow_der(data=dryair, T=T, refChoice=3, h_off=25104.684, dT=dT) +
               dX_air*SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684) +
               X_liquid*enthalpyOfWater_der(T=T, dT=dT) +
               dX_liq*enthalpyOfWater(T) - dR_gas*T-R_gas*dT;
          annotation (Documentation(info="<html>
Derivative function for <a href=Modelica:Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX>specificInternalEnergy_pTX</a>.
</html>"));
      equation

      end specificInternalEnergy_pTX_der;

       redeclare function extends specificEntropy
        "Return specific entropy from thermodynamic state record, only valid for phi<1"

           annotation(Inline=false,smoothOrder=2,
            Documentation(info="<html>
Specific entropy is calculated from the thermodynamic state record, assuming ideal gas behavior and including entropy of mixing. Liquid or solid water is not taken into account, the entire water content X[1] is assumed to be in the vapor state (relative humidity below 1.0).
</html>"));

      protected
          MoleFraction[2] Y = massToMoleFractions(state.X,{steam.MM,dryair.MM})
          "molar fraction";
       algorithm
         s:=SingleGasNasa.s0_Tlow(dryair, state.T)*(1-state.X[Water])
           + SingleGasNasa.s0_Tlow(steam, state.T)*state.X[Water]
           - (state.X[Water]*Modelica.Constants.R/MMX[Water]*(if state.X[Water]<Modelica.Constants.eps then state.X[Water] else Modelica.Math.log(Y[Water]*state.p/reference_p))
             + (1-state.X[Water])*Modelica.Constants.R/MMX[Air]*(if (1-state.X[Water])<Modelica.Constants.eps then (1-state.X[Water]) else Modelica.Math.log(Y[Air]*state.p/reference_p)));
       end specificEntropy;

      redeclare function extends specificGibbsEnergy
        "Return specific Gibbs energy as a function of the thermodynamic state record, only valid for phi<1"
        extends Modelica.Icons.Function;
        annotation(smoothOrder=2);
      algorithm
        g := h_pTX(state.p,state.T,state.X) - state.T*specificEntropy(state);
          annotation (Documentation(info="<html>
The Gibbs Energy is computed from the thermodynamic state record for moist air with a water content below saturation.
</html>"));
      end specificGibbsEnergy;

      redeclare function extends specificHelmholtzEnergy
        "Return specific Helmholtz energy as a function of the thermodynamic state record, only valid for phi<1"
        extends Modelica.Icons.Function;
        annotation(smoothOrder=2);
      algorithm
        f := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
          annotation (Documentation(info="<html>
The Specific Helmholtz Energy is computed from the thermodynamic state record for moist air with a water content below saturation.
</html>"));
      end specificHelmholtzEnergy;

       redeclare function extends specificHeatCapacityCp
        "Return specific heat capacity at constant pressure as a function of the thermodynamic state record"

         annotation(Inline=false,smoothOrder=2,
            Documentation(info="<html>
The specific heat capacity at constant pressure <b>cp</b> is computed from temperature and composition for a mixture of steam (X[1]) and dry air. All water is assumed to be in the vapor state.
</html>"));
      protected
         Real dT(unit="s/K") = 1.0;
       algorithm
         cp := h_pTX_der(state.p,state.T,state.X, 0.0, 1.0, zeros(size(state.X,1)))*dT
          "Definition of cp: dh/dT @ constant p";
         //      cp:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water])
         //        + SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water];
       end specificHeatCapacityCp;

      redeclare function extends specificHeatCapacityCv
        "Return specific heat capacity at constant volume as a function of the thermodynamic state record"

         annotation(Inline=false,smoothOrder=2,
            Documentation(info="<html>
The specific heat capacity at constant density <b>cv</b> is computed from temperature and composition for a mixture of steam (X[1]) and dry air. All water is assumed to be in the vapor state.
</html>"));
      algorithm
        cv:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water]) +
          SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water]
          - gasConstant(state);
      end specificHeatCapacityCv;

      redeclare function extends dynamicViscosity
        "Return dynamic viscosity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

          import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
        annotation(smoothOrder=2);
      algorithm
        eta := Polynomials_Temp.evaluate({(-4.96717436974791E-011), 5.06626785714286E-008, 1.72937731092437E-005},
             Cv.to_degC(state.T));
          annotation (Documentation(info="<html>
Dynamic viscosity is computed from temperature using a simple polynomial for dry air, assuming that moisture influence is small. Range of  validity is from 73.15 K to 373.15 K.
</html>"));
      end dynamicViscosity;

      redeclare function extends thermalConductivity
        "Return thermal conductivity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

          import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
        annotation(smoothOrder=2);
      algorithm
        lambda := Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
         Cv.to_degC(state.T));
          annotation (Documentation(info="<html>
Thermal conductivity is computed from temperature using a simple polynomial for dry air, assuming that moisture influence is small. Range of  validity is from 73.15 K to 373.15 K.
</html>"));
      end thermalConductivity;

        package Utilities "utility functions"

          function spliceFunction "Spline interpolation of two functions"
              input Real pos "Returned value for x-deltax >= 0";
              input Real neg "Returned value for x+deltax <= 0";
              input Real x "Function argument";
              input Real deltax=1 "Region around x with spline interpolation";
              output Real out;
              annotation (derivative=spliceFunction_der);
        protected
              Real scaledX;
              Real scaledX1;
              Real y;
          algorithm
              scaledX1 := x/deltax;
              scaledX := scaledX1*Modelica.Math.asin(1);
              if scaledX1 <= -0.999999999 then
                y := 0;
              elseif scaledX1 >= 0.999999999 then
                y := 1;
              else
                y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX)) + 1)/2;
              end if;
              out := pos*y + (1 - y)*neg;
          end spliceFunction;

          function spliceFunction_der "Derivative of spliceFunction"
              input Real pos;
              input Real neg;
              input Real x;
              input Real deltax=1;
              input Real dpos;
              input Real dneg;
              input Real dx;
              input Real ddeltax=0;
              output Real out;
        protected
              Real scaledX;
              Real scaledX1;
              Real dscaledX1;
              Real y;
          algorithm
              scaledX1 := x/deltax;
              scaledX := scaledX1*Modelica.Math.asin(1);
              dscaledX1 := (dx - scaledX1*ddeltax)/deltax;
              if scaledX1 <= -0.99999999999 then
                y := 0;
              elseif scaledX1 >= 0.9999999999 then
                y := 1;
              else
                y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX)) + 1)/2;
              end if;
              out := dpos*y + (1 - y)*dneg;
              if (abs(scaledX1) < 1) then
                out := out + (pos - neg)*dscaledX1*Modelica.Math.asin(1)/2/(
                  Modelica.Math.cosh(Modelica.Math.tan(scaledX))*Modelica.Math.cos(
                  scaledX))^2;
              end if;
          end spliceFunction_der;
        end Utilities;
        annotation (Documentation(info="<html>
<h4>Thermodynamic Model</h4>
<p>This package provides a full thermodynamic model of moist air including the fog region and temperatures below zero degC.
The governing assumptions in this model are:</p>
<ul>
<li>the perfect gas law applies</li>
<li>water volume other than that of steam is neglected</li></ul>
<p>All extensive properties are expressed in terms of the total mass in order to comply with other media in this libary. However, for moist air it is rather common to express the absolute humidity in terms of mass of dry air only, which has advantages when working with charts. In addition, care must be taken, when working with mass fractions with respect to total mass, that all properties refer to the same water content when being used in mathematical operations (which is always the case if based on dry air only). Therefore two absolute humidities are computed in the <b>BaseProperties</b> model: <b>X</b> denotes the absolute humidity in terms of the total mass while <b>x</b> denotes the absolute humitity per unit mass of dry air. In addition, the relative humidity <b>phi</b> is also computed.</p>
<p>At the triple point temperature of water of 0.01°C or 273.16 K and a relative humidity greater than 1 fog may be present as liquid and as ice resulting in a specific enthalpy somewhere between those of the two isotherms for solid and liquid fog, respectively. For numerical reasons a coexisting mixture of 50% solid and 50% liquid fog is assumed in the fog region at the triple point in this model.

<h4>Range of validity</h4>
<p>From the assumptions mentioned above it follows that the <b>pressure</b> should be in the region around <b>atmospheric</b> conditions or below (a few bars may still be fine though). Additionally a very high water content at low temperatures would yield incorrect densities, because the volume of the liquid or solid phase would not be negligible anymore. The model does not provide information on limits for water drop size in the fog region or transport information for the actual condensation or evaporation process in combination with surfaces. All excess water which is not in its vapour state is assumed to be still present in the air regarding its energy but not in terms of its spatial extent.<br><br>
The thermodynamic model may be used for <b>temperatures</b> ranging from <b>240 - 400 K</b>. This holds for all functions unless otherwise stated in their description. However, although the model works at temperatures above the saturation temperature it is questionable to use the term \"relative humidity\" in this region. Please note, that although several functions compute pure water properties, they are designed to be used within the moist air medium model where properties are dominated by air and steam in their vapor states, and not for pure liquid water applications.</p>

<h4>Transport Properties</h4>
<p>Several additional functions that are not needed to describe the thermodynamic system, but are required to model transport processes, like heat and mass transfer, may be called. They usually neglect the moisture influence unless otherwise stated.</p>

<h4>Application</h4>
<p>The model's main area of application is all processes that involve moist air cooling under near atmospheric pressure with possible moisture condensation. This is the case in all domestic and industrial air conditioning applications. Another large domain of moist air applications covers all processes that deal with dehydration of bulk material using air as a transport medium. Engineering tasks involving moist air are often performed (or at least visualized) by using charts that contain all relevant thermodynamic data for a moist air system. These so called psychrometric charts can be generated from the medium properties in this package. The model <a href=\"Modelica://Modelica.Media.Air.MoistAir.PsychrometricData\">PsychrometricData</a> may be used for this purpose in order to obtain data for figures like those below (the plotting itself is not part of the model though).</p>

<p><img src=\"../../Modelica/Images/Media/Air/Mollier.png\">
<img src=\"../../Modelica/Images/Media/Air/PsycroChart.png\"></p>
<p>
<b>Legend:</b> blue - constant specific enthalpy, red - constant temperature, black - constant relative humidity</p>

</html>"));
      end MoistAir;
      annotation (Documentation(info="<html>
  <p>This package contains different medium models for air:</p>
<ul>
<li><b>SimpleAir</b><br>
    Simple dry air medium in a limited temperature range.</li>
<li><b>DryAirNasa</b><br>
    Dry air as an ideal gas from Media.IdealGases.MixtureGases.Air.</li>
<li><b>MoistAir</b><br>
    Moist air as an ideal gas mixture of steam and dry air with fog below and above the triple point temperature.</li>
</ul>
</html>"));
    end Air;

    package IdealGases
    "Data and models of ideal gases (single, fixed and dynamic mixtures) from NASA source"
    extends Modelica.Icons.Library;
    annotation (
      __Dymola_classOrder={"Common", "SingleGases", "MixtureGases"},
    Documentation(info="<HTML>
<p>This package contains data for the 1241 ideal gases from </p>
<blockquote>
  <p>McBride B.J., Zehe M.J., and Gordon S. (2002): <b>NASA Glenn Coefficients
  for Calculating Thermodynamic Properties of Individual Species</b>. NASA
  report TP-2002-211556</p>
</blockquote>
<p>Medium models for some of these gases are available in package
<a href=\"Modelica://Modelica.Media.IdealGases.SingleGases\">IdealGases.SingleGases</a>
and some examples for mixtures are available in package <a href=\"Modelica://Modelica.Media.IdealGases.MixtureGases\">IdealGases.MixtureGases</a>
</p>
<h4>Using and Adapting Medium Models</h4>
<p>
The data records allow computing the ideal gas specific enthalpy, specific entropy and heat capacity of the substances listed below. From them, even the Gibbs energy and equilibrium constants for reactions can be computed. Critical data that is needed for computing the viscosity and thermal conductivity is not included. In order to add mixtures or single substance medium packages that are
subtypes of
<a href=\"Modelica://Modelica.Media.Interfaces.PartialMedium\">Interfaces.PartialMedium</a>
(i.e., can be utilized at all places where PartialMedium is defined),
a few additional steps have to be performed:
<ol>
<li>
All single gas media need to define a constant instance of record
<a href=\"Modelica://Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants\">IdealGases.Common.SingleGasNasa.FluidConstants</a>.
For 37 ideal gases such records are provided in package
<a href=\"Modelica://Modelica.Media.IdealGases.Common.FluidData\">IdealGases.Common.FluidData</a>.
For the other gases, such a record instance has to be provided by the user, e.g. by getting
the data from a commercial or public data base. A public source of the needed data is for example the <a href=\"http://webbook.nist.gov/chemistry/\"> NIST Chemistry WebBook</a></li>

<li>When the data is available, and a user has an instance of a
<a href=\"Modelica://Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants\">FluidConstants</a> record filled with data, a medium package has to be written. Note that only the dipole moment, the accentric factor and critical data are necessary for the viscosity and thermal conductivity functions.</li>
<ul>
<li>For single components, a new package following the pattern in
<a href=\"Modelica://Modelica.Media.IdealGases.SingleGases\">IdealGases.SingleGases</a> has to be created, pointing both to a data record for cp and to a user-defined fluidContants record.</li>
<li>For mixtures of several components, a new package following the pattern in
<a href=\"Modelica://Modelica.Media.IdealGases.MixtureGases\">IdealGases.MixtureGases</a> has to be created, building an array of data records for cp and an array of (partly) user-defined fluidContants records.</li>
</ul>
</ol>
<p>Note that many properties can computed for the full set of 1241 gases listed below, but due to the missing viscosity and thermal conductivity functions, no fully Modelica.Media-compliant media can be defined. </p>
</p>
<p>
Data records for heat capacity, specific enthalpy and specific entropy exist for the following substances and ions:
</p>
<pre>
 Ag        BaOH+           C2H4O_ethylen_o DF      In2I4    Nb      ScO2
 Ag+       Ba_OH_2         CH3CHO_ethanal  DOCl    In2I6    Nb+     Sc2O
 Ag-       BaS             CH3COOH         DO2     In2O     Nb-     Sc2O2
 Air       Ba2             OHCH2COOH       DO2-    K        NbCl5   Si
 Al        Be              C2H5            D2      K+       NbO     Si+
 Al+       Be+             C2H5Br          D2+     K-       NbOCl3  Si-
 Al-       Be++            C2H6            D2-     KAlF4    NbO2    SiBr
 AlBr      BeBr            CH3N2CH3        D2O     KBO2     Ne      SiBr2
 AlBr2     BeBr2           C2H5OH          D2O2    KBr      Ne+     SiBr3
 AlBr3     BeCl            CH3OCH3         D2S     KCN      Ni      SiBr4
 AlC       BeCl2           CH3O2CH3        e-      KCl      Ni+     SiC
 AlC2      BeF             CCN             F       KF       Ni-     SiC2
 AlCl      BeF2            CNC             F+      KH       NiCl    SiCl
 AlCl+     BeH             OCCN            F-      KI       NiCl2   SiCl2
 AlCl2     BeH+            C2N2            FCN     Kli      NiO     SiCl3
 AlCl3     BeH2            C2O             FCO     KNO2     NiS     SiCl4
 AlF       BeI             C3              FO      KNO3     O       SiF
 AlF+      BeI2            C3H3_1_propynl  FO2_FOO KNa      O+      SiFCl
 AlFCl     BeN             C3H3_2_propynl  FO2_OFO KO       O-      SiF2
 AlFCl2    BeO             C3H4_allene     F2      KOH      OD      SiF3
 AlF2      BeOH            C3H4_propyne    F2O     K2       OD-     SiF4
 AlF2-     BeOH+           C3H4_cyclo      F2O2    K2+      OH      SiH
 AlF2Cl    Be_OH_2         C3H5_allyl      FS2F    K2Br2    OH+     SiH+
 AlF3      BeS             C3H6_propylene  Fe      K2CO3    OH-     SiHBr3
 AlF4-     Be2             C3H6_cyclo      Fe+     K2C2N2   O2      SiHCl
 AlH       Be2Cl4          C3H6O_propylox  Fe_CO_5 K2Cl2    O2+     SiHCl3
 AlHCl     Be2F4           C3H6O_acetone   FeCl    K2F2     O2-     SiHF
 AlHCl2    Be2O            C3H6O_propanal  FeCl2   K2I2     O3      SiHF3
 AlHF      Be2OF2          C3H7_n_propyl   FeCl3   K2O      P       SiHI3
 AlHFCl    Be2O2           C3H7_i_propyl   FeO     K2O+     P+      SiH2
 AlHF2     Be3O3           C3H8            Fe_OH_2 K2O2     P-      SiH2Br2
 AlH2      Be4O4           C3H8O_1propanol Fe2Cl4  K2O2H2   PCl     SiH2Cl2
 AlH2Cl    Br              C3H8O_2propanol Fe2Cl6  K2SO4    PCl2    SiH2F2
 AlH2F     Br+             CNCOCN          Ga      Kr       PCl2-   SiH2I2
 AlH3      Br-             C3O2            Ga+     Kr+      PCl3    SiH3
 AlI       BrCl            C4              GaBr    li       PCl5    SiH3Br
 AlI2      BrF             C4H2_butadiyne  GaBr2   li+      PF      SiH3Cl
 AlI3      BrF3            C4H4_1_3-cyclo  GaBr3   li-      PF+     SiH3F
 AlN       BrF5            C4H6_butadiene  GaCl    liAlF4   PF-     SiH3I
 AlO       BrO             C4H6_1butyne    GaCl2   liBO2    PFCl    SiH4
 AlO+      OBrO            C4H6_2butyne    GaCl3   liBr     PFCl-   SiI
 AlO-      BrOO            C4H6_cyclo      GaF     liCl     PFCl2   SiI2
 AlOCl     BrO3            C4H8_1_butene   GaF2    liF      PFCl4   SiN
 AlOCl2    Br2             C4H8_cis2_buten GaF3    liH      PF2     SiO
 AlOF      BrBrO           C4H8_isobutene  GaH     liI      PF2-    SiO2
 AlOF2     BrOBr           C4H8_cyclo      GaI     liN      PF2Cl   SiS
 AlOF2-    C               C4H9_n_butyl    GaI2    liNO2    PF2Cl3  SiS2
 AlOH      C+              C4H9_i_butyl    GaI3    liNO3    PF3     Si2
 AlOHCl    C-              C4H9_s_butyl    GaO     liO      PF3Cl2  Si2C
 AlOHCl2   CBr             C4H9_t_butyl    GaOH    liOF     PF4Cl   Si2F6
 AlOHF     CBr2            C4H10_n_butane  Ga2Br2  liOH     PF5     Si2N
 AlOHF2    CBr3            C4H10_isobutane Ga2Br4  liON     PH      Si3
 AlO2      CBr4            C4N2            Ga2Br6  li2      PH2     Sn
 AlO2-     CCl             C5              Ga2Cl2  li2+     PH2-    Sn+
 Al_OH_2   CCl2            C5H6_1_3cyclo   Ga2Cl4  li2Br2   PH3     Sn-
 Al_OH_2Cl CCl2Br2         C5H8_cyclo      Ga2Cl6  li2F2    PN      SnBr
 Al_OH_2F  CCl3            C5H10_1_pentene Ga2F2   li2I2    PO      SnBr2
 Al_OH_3   CCl3Br          C5H10_cyclo     Ga2F4   li2O     PO-     SnBr3
 AlS       CCl4            C5H11_pentyl    Ga2F6   li2O+    POCl3   SnBr4
 AlS2      CF              C5H11_t_pentyl  Ga2I2   li2O2    POFCl2  SnCl
 Al2       CF+             C5H12_n_pentane Ga2I4   li2O2H2  POF2Cl  SnCl2
 Al2Br6    CFBr3           C5H12_i_pentane Ga2I6   li2SO4   POF3    SnCl3
 Al2C2     CFCl            CH3C_CH3_2CH3   Ga2O    li3+     PO2     SnCl4
 Al2Cl6    CFClBr2         C6D5_phenyl     Ge      li3Br3   PO2-    SnF
 Al2F6     CFCl2           C6D6            Ge+     li3Cl3   PS      SnF2
 Al2I6     CFCl2Br         C6H2            Ge-     li3F3    P2      SnF3
 Al2O      CFCl3           C6H5_phenyl     GeBr    li3I3    P2O3    SnF4
 Al2O+     CF2             C6H5O_phenoxy   GeBr2   Mg       P2O4    SnI
 Al2O2     CF2+            C6H6            GeBr3   Mg+      P2O5    SnI2
 Al2O2+    CF2Br2          C6H5OH_phenol   GeBr4   MgBr     P3      SnI3
 Al2O3     CF2Cl           C6H10_cyclo     GeCl    MgBr2    P3O6    SnI4
 Al2S      CF2ClBr         C6H12_1_hexene  GeCl2   MgCl     P4      SnO
 Al2S2     CF2Cl2          C6H12_cyclo     GeCl3   MgCl+    P4O6    SnO2
 Ar        CF3             C6H13_n_hexyl   GeCl4   MgCl2    P4O7    SnS
 Ar+       CF3+            C6H14_n_hexane  GeF     MgF      P4O8    SnS2
 B         CF3Br           C7H7_benzyl     GeF2    MgF+     P4O9    Sn2
 B+        CF3Cl           C7H8            GeF3    MgF2     P4O10   Sr
 B-        CF4             C7H8O_cresol_mx GeF4    MgF2+    Pb      Sr+
 BBr       CH+             C7H14_1_heptene GeH4    MgH      Pb+     SrBr
 BBr2      CHBr3           C7H15_n_heptyl  GeI     MgI      Pb-     SrBr2
 BBr3      CHCl            C7H16_n_heptane GeO     MgI2     PbBr    SrCl
 BC        CHClBr2         C7H16_2_methylh GeO2    MgN      PbBr2   SrCl+
 BC2       CHCl2           C8H8_styrene    GeS     MgO      PbBr3   SrCl2
 BCl       CHCl2Br         C8H10_ethylbenz GeS2    MgOH     PbBr4   SrF
 BCl+      CHCl3           C8H16_1_octene  Ge2     MgOH+    PbCl    SrF+
 BClOH     CHF             C8H17_n_octyl   H       Mg_OH_2  PbCl2   SrF2
 BCl_OH_2  CHFBr2          C8H18_n_octane  H+      MgS      PbCl3   SrH
 BCl2      CHFCl           C8H18_isooctane H-      Mg2      PbCl4   SrI
 BCl2+     CHFClBr         C9H19_n_nonyl   HAlO    Mg2F4    PbF     SrI2
 BCl2OH    CHFCl2          C10H8_naphthale HAlO2   Mn       PbF2    SrO
 BF        CHF2            C10H21_n_decyl  HBO     Mn+      PbF3    SrOH
 BFCl      CHF2Br          C12H9_o_bipheny HBO+    Mo       PbF4    SrOH+
 BFCl2     CHF2Cl          C12H10_biphenyl HBO2    Mo+      PbI     Sr_OH_2
 BFOH      CHF3            Ca              HBS     Mo-      PbI2    SrS
 BF_OH_2   CHI3            Ca+             HBS+    MoO      PbI3    Sr2
 BF2       CH2             CaBr            HCN     MoO2     PbI4    Ta
 BF2+      CH2Br2          CaBr2           HCO     MoO3     PbO     Ta+
 BF2-      CH2Cl           CaCl            HCO+    MoO3-    PbO2    Ta-
 BF2Cl     CH2ClBr         CaCl+           HCCN    Mo2O6    PbS     TaCl5
 BF2OH     CH2Cl2          CaCl2           HCCO    Mo3O9    PbS2    TaO
 BF3       CH2F            CaF             HCl     Mo4O12   Rb      TaO2
 BF4-      CH2FBr          CaF+            HD      Mo5O15   Rb+     Ti
 BH        CH2FCl          CaF2            HD+     N        Rb-     Ti+
 BHCl      CH2F2           CaH             HDO     N+       RbBO2   Ti-
 BHCl2     CH2I2           CaI             HDO2    N-       RbBr    TiCl
 BHF       CH3             CaI2            HF      NCO      RbCl    TiCl2
 BHFCl     CH3Br           CaO             HI      ND       RbF     TiCl3
 BHF2      CH3Cl           CaO+            HNC     ND2      RbH     TiCl4
 BH2       CH3F            CaOH            HNCO    ND3      RbI     TiO
 BH2Cl     CH3I            CaOH+           HNO     NF       RbK     TiO+
 BH2F      CH2OH           Ca_OH_2         HNO2    NF2      Rbli    TiOCl
 BH3       CH2OH+          CaS             HNO3    NF3      RbNO2   TiOCl2
 BH3NH3    CH3O            Ca2             HOCl    NH       RbNO3   TiO2
 BH4       CH4             Cd              HOF     NH+      RbNa    U
 BI        CH3OH           Cd+             HO2     NHF      RbO     UF
 BI2       CH3OOH          Cl              HO2-    NHF2     RbOH    UF+
 BI3       CI              Cl+             HPO     NH2      Rb2Br2  UF-
 BN        CI2             Cl-             HSO3F   NH2F     Rb2Cl2  UF2
 BO        CI3             ClCN            H2      NH3      Rb2F2   UF2+
 BO-       CI4             ClF             H2+     NH2OH    Rb2I2   UF2-
 BOCl      CN              ClF3            H2-     NH4+     Rb2O    UF3
 BOCl2     CN+             ClF5            HBOH    NO       Rb2O2   UF3+
 BOF       CN-             ClO             HCOOH   NOCl     Rb2O2H2 UF3-
 BOF2      CNN             ClO2            H2F2    NOF      Rb2SO4  UF4
 BOH       CO              Cl2             H2O     NOF3     Rn      UF4+
 BO2       CO+             Cl2O            H2O+    NO2      Rn+     UF4-
 BO2-      COCl            Co              H2O2    NO2-     S       UF5
 B_OH_2    COCl2           Co+             H2S     NO2Cl    S+      UF5+
 BS        COFCl           Co-             H2SO4   NO2F     S-      UF5-
 BS2       COF2            Cr              H2BOH   NO3      SCl     UF6
 B2        COHCl           Cr+             HB_OH_2 NO3-     SCl2    UF6-
 B2C       COHF            Cr-             H3BO3   NO3F     SCl2+   UO
 B2Cl4     COS             CrN             H3B3O3  N2       SD      UO+
 B2F4      CO2             CrO             H3B3O6  N2+      SF      UOF
 B2H       CO2+            CrO2            H3F3    N2-      SF+     UOF2
 B2H2      COOH            CrO3            H3O+    NCN      SF-     UOF3
 B2H3      CP              CrO3-           H4F4    N2D2_cis SF2     UOF4
 B2H3_db   CS              Cs              H5F5    N2F2     SF2+    UO2
 B2H4      CS2             Cs+             H6F6    N2F4     SF2-    UO2+
 B2H4_db   C2              Cs-             H7F7    N2H2     SF3     UO2-
 B2H5      C2+             CsBO2           He      NH2NO2   SF3+    UO2F
 B2H5_db   C2-             CsBr            He+     N2H4     SF3-    UO2F2
 B2H6      C2Cl            CsCl            Hg      N2O      SF4     UO3
 B2O       C2Cl2           CsF             Hg+     N2O+     SF4+    UO3-
 B2O2      C2Cl3           CsH             HgBr2   N2O3     SF4-    V
 B2O3      C2Cl4           CsI             I       N2O4     SF5     V+
 B2_OH_4   C2Cl6           Csli            I+      N2O5     SF5+    V-
 B2S       C2F             CsNO2           I-      N3       SF5-    VCl4
 B2S2      C2FCl           CsNO3           IF5     N3H      SF6     VN
 B2S3      C2FCl3          CsNa            IF7     Na       SF6-    VO
 B3H7_C2v  C2F2            CsO             I2      Na+      SH      VO2
 B3H7_Cs   C2F2Cl2         CsOH            In      Na-      SH-     V4O10
 B3H9      C2F3            CsRb            In+     NaAlF4   SN      W
 B3N3H6    C2F3Cl          Cs2             InBr    NaBO2    SO      W+
 B3O3Cl3   C2F4            Cs2Br2          InBr2   NaBr     SO-     W-
 B3O3FCl2  C2F6            Cs2CO3          InBr3   NaCN     SOF2    WCl6
 B3O3F2Cl  C2H             Cs2Cl2          InCl    NaCl     SO2     WO
 B3O3F3    C2HCl           Cs2F2           InCl2   NaF      SO2-    WOCl4
 B4H4      C2HCl3          Cs2I2           InCl3   NaH      SO2Cl2  WO2
 B4H10     C2HF            Cs2O            InF     NaI      SO2FCl  WO2Cl2
 B4H12     C2HFCl2         Cs2O+           InF2    Nali     SO2F2   WO3
 B5H9      C2HF2Cl         Cs2O2           InF3    NaNO2    SO3     WO3-
 Ba        C2HF3           Cs2O2H2         InH     NaNO3    S2      Xe
 Ba+       C2H2_vinylidene Cs2SO4          InI     NaO      S2-     Xe+
 BaBr      C2H2Cl2         Cu              InI2    NaOH     S2Cl2   Zn
 BaBr2     C2H2FCl         Cu+             InI3    NaOH+    S2F2    Zn+
 BaCl      C2H2F2          Cu-             InO     Na2      S2O     Zr
 BaCl+     CH2CO_ketene    CuCl            InOH    Na2Br2   S3      Zr+
 BaCl2     O_CH_2O         CuF             In2Br2  Na2Cl2   S4      Zr-
 BaF       HO_CO_2OH       CuF2            In2Br4  Na2F2    S5      ZrN
 BaF+      C2H3_vinyl      CuO             In2Br6  Na2I2    S6      ZrO
 BaF2      CH2Br-COOH      Cu2             In2Cl2  Na2O     S7      ZrO+
 BaH       C2H3Cl          Cu3Cl3          In2Cl4  Na2O+    S8      ZrO2
 BaI       CH2Cl-COOH      D               In2Cl6  Na2O2    Sc
 BaI2      C2H3F           D+              In2F2   Na2O2H2  Sc+
 BaO       CH3CN           D-              In2F4   Na2SO4   Sc-
 BaO+      CH3CO_acetyl    DBr             In2F6   Na3Cl3   ScO
 BaOH      C2H4            DCl             In2I2   Na3F3    ScO+
</pre></HTML>"));

      package Common "Common packages and data for the ideal gas models"
      extends Modelica.Icons.Library;

      record DataRecord
        "Coefficient data record for properties of ideal gases based on NASA source"
        extends Modelica.Icons.Record;
        String name "Name of ideal gas";
        SI.MolarMass MM "Molar mass";
        SI.SpecificEnthalpy Hf "Enthalpy of formation at 298.15K";
        SI.SpecificEnthalpy H0 "H0(298.15K) - H0(0K)";
        SI.Temperature Tlimit
          "Temperature limit between low and high data sets";
        Real alow[7] "Low temperature coefficients a";
        Real blow[2] "Low temperature constants b";
        Real ahigh[7] "High temperature coefficients a";
        Real bhigh[2] "High temperature constants b";
        SI.SpecificHeatCapacity R "Gas constant";
        annotation (Documentation(info="<HTML>
<p>
This data record contains the coefficients for the
ideal gas equations according to:
</p>
<blockquote>
  <p>McBride B.J., Zehe M.J., and Gordon S. (2002): <b>NASA Glenn Coefficients
  for Calculating Thermodynamic Properties of Individual Species</b>. NASA
  report TP-2002-211556</p>
</blockquote>
<p>
The equations have the following structure:
</p>
<IMG SRC=\"../Images/Media/IdealGases/singleEquations.png\">
<p>
The polynomials for h(T) and s0(T) are derived via integration from the one for cp(T)  and contain the integration constants b1, b2 that define the reference specific enthalpy and entropy. For entropy differences the reference pressure p0 is arbitrary, but not for absolute entropies. It is chosen as 1 standard atmosphere (101325 Pa).
</p>
<p>
For most gases, the region of validity is from 200 K to 6000 K.
The equations are splitted into two regions that are separated
by Tlimit (usually 1000 K). In both regions the gas is described
by the data above. The two branches are continuous and in most
gases also differentiable at Tlimit.
</p>
</HTML>"));
      end DataRecord;

      partial package SingleGasNasa
        "Medium model of an ideal gas based on NASA source"

        annotation (
          Documentation(info="<HTML>
<p>
This model calculates medium properties
for an ideal gas of a single substance, or for an ideal
gas consisting of several substances where the
mass fractions are fixed. Independent variables
are temperature <b>T</b> and pressure <b>p</b>.
Only density is a function of T and p. All other quantities
are solely a function of T. The properties
are valid in the range:
</p>
<pre>
   200 K &le; T &le; 6000 K
</pre>
<p>
The following quantities are always computed:
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>Variable</b></td>
      <td valign=\"top\"><b>Unit</b></td>
      <td valign=\"top\"><b>Description</b></td></tr>
  <tr><td valign=\"top\">h</td>
      <td valign=\"top\">J/kg</td>
      <td valign=\"top\">specific enthalpy h = h(T)</td></tr>
  <tr><td valign=\"top\">u</td>
      <td valign=\"top\">J/kg</td>
      <td valign=\"top\">specific internal energy u = u(T)</b></td></tr>
  <tr><td valign=\"top\">d</td>
      <td valign=\"top\">kg/m^3</td>
      <td valign=\"top\">density d = d(p,T)</td></tr>
</table>
<p>
For the other variables, see the functions in
Modelica.Media.IdealGases.Common.SingleGasNasa.
Note, dynamic viscosity and thermal conductivity are only provided
for gases that use a data record from Modelica.Media.IdealGases.FluidData.
Currently these are the following gases:
</p>
<pre>
  Ar
  C2H2_vinylidene
  C2H4
  C2H5OH
  C2H6
  C3H6_propylene
  C3H7OH
  C3H8
  C4H8_1_butene
  C4H9OH
  C4H10_n_butane
  C5H10_1_pentene
  C5H12_n_pentane
  C6H6
  C6H12_1_hexene
  C6H14_n_heptane
  C7H14_1_heptene
  C8H10_ethylbenz
  CH3OH
  CH4
  CL2
  CO
  CO2
  F2
  H2
  H2O
  He
  N2
  N2O
  NH3
  NO
  O2
  SO2
  SO3
</pre>
<p>
<b>Sources for model and literature:</b><br>
Original Data: Computer program for calculation of complex chemical
equilibrium compositions and applications. Part 1: Analysis
Document ID: 19950013764 N (95N20180) File Series: NASA Technical Reports
Report Number: NASA-RP-1311  E-8017  NAS 1.61:1311
Authors: Gordon, Sanford (NASA Lewis Research Center)
 Mcbride, Bonnie J. (NASA Lewis Research Center)
Published: Oct 01, 1994.
</p>
<p><b>Known limits of validity:</b></br>
The data is valid for
temperatures between 200K and 6000K.  A few of the data sets for
monatomic gases have a discontinuous 1st derivative at 1000K, but
this never caused problems so far.
</p>
<p>
This model has been copied from the ThermoFluid library
and adapted to the Modelica.Media package.
</p>
</HTML>"),Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                  100}}),
               graphics),
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                  100}}),
                  graphics));

        extends Interfaces.PartialPureSubstance(
           ThermoStates = Choices.IndependentVariables.pT,
           mediumName=data.name,
           substanceNames={data.name},
           singleState=false,
           Temperature(min=200, max=6000, start=500, nominal=500),
           SpecificEnthalpy(start=if referenceChoice==ReferenceEnthalpy.ZeroAt0K then data.H0 else 
              if referenceChoice==ReferenceEnthalpy.UserDefined then h_offset else 0, nominal=1.0e5),
           Density(start=10, nominal=10),
           AbsolutePressure(start=10e5, nominal=10e5));

        redeclare record extends ThermodynamicState
          "thermodynamic state variables for ideal gases"
          AbsolutePressure p "Absolute pressure of medium";
          Temperature T "Temperature of medium";
        end ThermodynamicState;

        redeclare record extends FluidConstants "Extended fluid constants"
          Temperature criticalTemperature "critical temperature";
          AbsolutePressure criticalPressure "critical pressure";
          MolarVolume criticalMolarVolume "critical molar Volume";
          Real acentricFactor "Pitzer acentric factor";
          Temperature triplePointTemperature "triple point temperature";
          AbsolutePressure triplePointPressure "triple point pressure";
          Temperature meltingPoint "melting point at 101325 Pa";
          Temperature normalBoilingPoint "normal boiling point (at 101325 Pa)";
          DipoleMoment dipoleMoment
            "dipole moment of molecule in Debye (1 debye = 3.33564e10-30 C.m)";
          Boolean hasIdealGasHeatCapacity=false
            "true if ideal gas heat capacity is available";
          Boolean hasCriticalData=false "true if critical data are known";
          Boolean hasDipoleMoment=false "true if a dipole moment known";
          Boolean hasFundamentalEquation=false "true if a fundamental equation";
          Boolean hasLiquidHeatCapacity=false
            "true if liquid heat capacity is available";
          Boolean hasSolidHeatCapacity=false
            "true if solid heat capacity is available";
          Boolean hasAccurateViscosityData=false
            "true if accurate data for a viscosity function is available";
          Boolean hasAccurateConductivityData=false
            "true if accurate data for thermal conductivity is available";
          Boolean hasVapourPressureCurve=false
            "true if vapour pressure data, e.g. Antoine coefficents are known";
          Boolean hasAcentricFactor=false
            "true if Pitzer accentric factor is known";
          SpecificEnthalpy HCRIT0=0.0
            "Critical specific enthalpy of the fundamental equation";
          SpecificEntropy SCRIT0=0.0
            "Critical specific entropy of the fundamental equation";
          SpecificEnthalpy deltah=0.0
            "Difference between specific enthalpy model (h_m) and f.eq. (h_f) (h_m - h_f)";
          SpecificEntropy deltas=0.0
            "Difference between specific enthalpy model (s_m) and f.eq. (s_f) (s_m - s_f)";
        end FluidConstants;

        import SI = Modelica.SIunits;
        import Modelica.Math;
        import
          Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy;

        constant Boolean excludeEnthalpyOfFormation=true
          "If true, enthalpy of formation Hf is not included in specific enthalpy h";
        constant ReferenceEnthalpy referenceChoice=Choices.
              ReferenceEnthalpy.ZeroAt0K "Choice of reference enthalpy";
        constant SpecificEnthalpy h_offset=0.0
          "User defined offset for reference enthalpy, if referenceChoice = UserDefined";

        constant IdealGases.Common.DataRecord data
          "Data record of ideal gas substance";

        constant FluidConstants[nS] fluidConstants
          "constant data for the fluid";

        redeclare model extends BaseProperties(
         T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
         p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default))
          "Base properties of ideal gas medium"
        equation
          assert(T >= 200 and T <= 6000, "
Temperature T (= "       + String(T) + " K) is not in the allowed range
200 K <= T <= 6000 K required from medium model \""       + mediumName + "\".
");
          MM = data.MM;
          R = data.R;
          h = h_T(data, T, excludeEnthalpyOfFormation, referenceChoice, h_offset);
          u = h - R*T;

          // Has to be written in the form d=f(p,T) in order that static
          // state selection for p and T is possible
          d = p/(R*T);
          // connect state with BaseProperties
          state.T = T;
          state.p = p;
        end BaseProperties;

          redeclare function setState_pTX
          "Return thermodynamic state as function of p, T and composition X"
            extends Modelica.Icons.Function;
            input AbsolutePressure p "Pressure";
            input Temperature T "Temperature";
            input MassFraction X[:]=reference_X "Mass fractions";
            output ThermodynamicState state;
          algorithm
            state := ThermodynamicState(p=p,T=T);
          end setState_pTX;

          redeclare function setState_phX
          "Return thermodynamic state as function of p, h and composition X"
            extends Modelica.Icons.Function;
            input AbsolutePressure p "Pressure";
            input SpecificEnthalpy h "Specific enthalpy";
            input MassFraction X[:]=reference_X "Mass fractions";
            output ThermodynamicState state;
          algorithm
            state := ThermodynamicState(p=p,T=T_h(h));
          end setState_phX;

          redeclare function setState_psX
          "Return thermodynamic state as function of p, s and composition X"
            extends Modelica.Icons.Function;
            input AbsolutePressure p "Pressure";
            input SpecificEntropy s "Specific entropy";
            input MassFraction X[:]=reference_X "Mass fractions";
            output ThermodynamicState state;
          algorithm
            state := ThermodynamicState(p=p,T=T_ps(p,s));
          end setState_psX;

          redeclare function setState_dTX
          "Return thermodynamic state as function of d, T and composition X"
            extends Modelica.Icons.Function;
            input Density d "density";
            input Temperature T "Temperature";
            input MassFraction X[:]=reference_X "Mass fractions";
            output ThermodynamicState state;
          algorithm
            state := ThermodynamicState(p=d*data.R*T,T=T);
          end setState_dTX;

            redeclare function extends setSmoothState
          "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
            algorithm
              state := ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                          T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
            end setSmoothState;

        redeclare function extends pressure "return pressure of ideal gas"
        algorithm
          p := state.p;
        end pressure;

        redeclare function extends temperature
          "return temperature of ideal gas"
        algorithm
          T := state.T;
        end temperature;

        redeclare function extends density "return density of ideal gas"
        algorithm
          d := state.p/(data.R*state.T);
        end density;

        redeclare function extends specificEnthalpy "Return specific enthalpy"
          extends Modelica.Icons.Function;
        algorithm
          h := h_T(data,state.T);
        end specificEnthalpy;

        redeclare function extends specificInternalEnergy
          "Return specific internal energy"
          extends Modelica.Icons.Function;
        algorithm
          u := h_T(data,state.T) - data.R*state.T;
        end specificInternalEnergy;

        redeclare function extends specificEntropy "Return specific entropy"
          extends Modelica.Icons.Function;
        algorithm
          s := s0_T(data, state.T) - data.R*Modelica.Math.log(state.p/reference_p);
        end specificEntropy;

        redeclare function extends specificGibbsEnergy
          "Return specific Gibbs energy"
          extends Modelica.Icons.Function;
        algorithm
          g := h_T(data,state.T) - state.T*specificEntropy(state);
        end specificGibbsEnergy;

        redeclare function extends specificHelmholtzEnergy
          "Return specific Helmholtz energy"
          extends Modelica.Icons.Function;
        algorithm
          f := h_T(data,state.T) - data.R*state.T - state.T*specificEntropy(state);
        end specificHelmholtzEnergy;

        redeclare function extends specificHeatCapacityCp
          "Return specific heat capacity at constant pressure"
        algorithm
          cp := cp_T(data, state.T);
        end specificHeatCapacityCp;

        redeclare function extends specificHeatCapacityCv
          "Compute specific heat capacity at constant volume from temperature and gas data"
        algorithm
          cv := cp_T(data, state.T) - data.R;
        end specificHeatCapacityCv;

        redeclare function extends isentropicExponent
          "Return isentropic exponent"
        algorithm
          gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
        end isentropicExponent;

        redeclare function extends velocityOfSound "Return velocity of sound"
          extends Modelica.Icons.Function;
        algorithm
          a := sqrt(max(0,data.R*state.T*cp_T(data, state.T)/specificHeatCapacityCv(state)));
        end velocityOfSound;

        function isentropicEnthalpyApproximation
          "approximate method of calculating h_is from upstream properties and downstream pressure"
          extends Modelica.Icons.Function;
          input SI.Pressure p2 "downstream pressure";
          input ThermodynamicState state "properties at upstream location";
          input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
          input ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
          input SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
          output SI.SpecificEnthalpy h_is "isentropic enthalpy";
        protected
          IsentropicExponent gamma =  isentropicExponent(state)
            "Isentropic exponent";
        algorithm
          h_is := h_T(data,state.T,exclEnthForm,refChoice,h_off) +
            gamma/(gamma - 1.0)*state.p/density(state)*((p2/state.p)^((gamma - 1)/gamma) - 1.0);
        end isentropicEnthalpyApproximation;

        redeclare function extends isentropicEnthalpy
          "Return isentropic enthalpy"
        input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
        input ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
        input SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
        algorithm
          h_is := isentropicEnthalpyApproximation(p_downstream,refState,exclEnthForm,refChoice,h_off);
        end isentropicEnthalpy;

        redeclare function extends isobaricExpansionCoefficient
          "Returns overall the isobaric expansion coefficient beta"
        algorithm
          beta := 1/state.T;
        end isobaricExpansionCoefficient;

        redeclare function extends isothermalCompressibility
          "Returns overall the isothermal compressibility factor"
        algorithm
          kappa := 1.0/state.p;
        end isothermalCompressibility;

        redeclare function extends density_derp_T
          "Returns the partial derivative of density with respect to pressure at constant temperature"
        algorithm
          ddpT := 1/(state.T*data.R);
        end density_derp_T;

        redeclare function extends density_derT_p
          "Returns the partial derivative of density with respect to temperature at constant pressure"
        algorithm
          ddTp := -state.p/(state.T*state.T*data.R);
        end density_derT_p;

        redeclare function extends density_derX
          "Returns the partial derivative of density with respect to mass fractions at constant pressure and temperature"
        algorithm
          dddX := fill(0,0);
        end density_derX;

        function cp_T
          "Compute specific heat capacity at constant pressure from temperature and gas data"
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          output SI.SpecificHeatCapacity cp
            "Specific heat capacity at temperature T";
          annotation (InlineNoEvent=false,smoothOrder=2);
        algorithm
          cp := smooth(0,if T < data.Tlimit then data.R*(1/(T*T)*(data.alow[1] + T*(
            data.alow[2] + T*(1.*data.alow[3] + T*(data.alow[4] + T*(data.alow[5] + T
            *(data.alow[6] + data.alow[7]*T))))))) else data.R*(1/(T*T)*(data.ahigh[1]
             + T*(data.ahigh[2] + T*(1.*data.ahigh[3] + T*(data.ahigh[4] + T*(data.
            ahigh[5] + T*(data.ahigh[6] + data.ahigh[7]*T))))))));
        end cp_T;

        function cp_Tlow
          "Compute specific heat capacity at constant pressure, low T region"
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          output SI.SpecificHeatCapacity cp
            "Specific heat capacity at temperature T";
          annotation (Inline=false, derivative(zeroDerivative=data) = cp_Tlow_der);
        algorithm
          cp := data.R*(1/(T*T)*(data.alow[1] + T*(
            data.alow[2] + T*(1.*data.alow[3] + T*(data.alow[4] + T*(data.alow[5] + T
            *(data.alow[6] + data.alow[7]*T)))))));
        end cp_Tlow;

        function cp_Tlow_der
          "Compute specific heat capacity at constant pressure, low T region"
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          input Real dT "Temperature derivative";
          output Real cp_der "Derivative of specific heat capacity";
        algorithm
          cp_der := dT*data.R/(T*T*T)*(-2*data.alow[1] + T*(
            -data.alow[2] + T*T*(data.alow[4] + T*(2.*data.alow[5] + T
            *(3.*data.alow[6] + 4.*data.alow[7]*T)))));
        end cp_Tlow_der;

        function h_T "Compute specific enthalpy from temperature and gas data; reference is decided by the
    refChoice input, or by the referenceChoice package constant by default"
          import Modelica.Media.Interfaces.PartialMedium.Choices;
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
          input Choices.ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
          input SI.SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
          output SI.SpecificEnthalpy h "Specific enthalpy at temperature T";
          annotation (Inline=false,smoothOrder=2);
            //     annotation (InlineNoEvent=false, Inline=false,
            //                 derivative(zeroDerivative=data,
            //                            zeroDerivative=exclEnthForm,
            //                            zeroDerivative=refChoice,
            //                            zeroDerivative=h_off) = h_T_der);
        algorithm
          h := smooth(0,(if T < data.Tlimit then data.R*((-data.alow[1] + T*(data.
            blow[1] + data.alow[2]*Math.log(T) + T*(1.*data.alow[3] + T*(0.5*data.
            alow[4] + T*(1/3*data.alow[5] + T*(0.25*data.alow[6] + 0.2*data.alow[7]*T))))))
            /T) else data.R*((-data.ahigh[1] + T*(data.bhigh[1] + data.ahigh[2]*
            Math.log(T) + T*(1.*data.ahigh[3] + T*(0.5*data.ahigh[4] + T*(1/3*data.
            ahigh[5] + T*(0.25*data.ahigh[6] + 0.2*data.ahigh[7]*T))))))/T)) + (if 
            exclEnthForm then -data.Hf else 0.0) + (if (refChoice
             == Choices.ReferenceEnthalpy.ZeroAt0K) then data.H0 else 0.0) + (if 
            refChoice == Choices.ReferenceEnthalpy.UserDefined then h_off else 
                  0.0));
        end h_T;

        function h_T_der "derivative function for h_T"
          import Modelica.Media.Interfaces.PartialMedium.Choices;
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
          input Choices.ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
          input SI.SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
          input Real dT "Temperature derivative";
          output Real h_der "Specific enthalpy at temperature T";
        algorithm
          h_der := dT*cp_T(data,T);
        end h_T_der;

        function h_Tlow "Compute specific enthalpy, low T region; reference is decided by the
    refChoice input, or by the referenceChoice package constant by default"
          import Modelica.Media.Interfaces.PartialMedium.Choices;
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
          input Choices.ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
          input SI.SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
          output SI.SpecificEnthalpy h "Specific enthalpy at temperature T";
          annotation(Inline=false,InlineNoEvent=false,smoothOrder=2);
            //     annotation (Inline=false,InlineNoEvent=false, derivative(zeroDerivative=data,
            //                                zeroDerivative=exclEnthForm,
            //                                zeroDerivative=refChoice,
            //                                zeroDerivative=h_off) = h_Tlow_der);
        algorithm
          h := data.R*((-data.alow[1] + T*(data.
            blow[1] + data.alow[2]*Math.log(T) + T*(1.*data.alow[3] + T*(0.5*data.
            alow[4] + T*(1/3*data.alow[5] + T*(0.25*data.alow[6] + 0.2*data.alow[7]*T))))))
            /T) + (if 
            exclEnthForm then -data.Hf else 0.0) + (if (refChoice
             == Choices.ReferenceEnthalpy.ZeroAt0K) then data.H0 else 0.0) + (if 
            refChoice == Choices.ReferenceEnthalpy.UserDefined then h_off else 
                  0.0);
        end h_Tlow;

        function h_Tlow_der "Compute specific enthalpy, low T region; reference is decided by the
    refChoice input, or by the referenceChoice package constant by default"
          import Modelica.Media.Interfaces.PartialMedium.Choices;
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          input Boolean exclEnthForm=excludeEnthalpyOfFormation
            "If true, enthalpy of formation Hf is not included in specific enthalpy h";
          input Choices.ReferenceEnthalpy refChoice=referenceChoice
            "Choice of reference enthalpy";
          input SI.SpecificEnthalpy h_off=h_offset
            "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
          input Real dT(unit="K/s") "Temperature derivative";
          output Real h_der(unit="J/(kg.s)")
            "Derivative of specific enthalpy at temperature T";
        algorithm
          h_der := dT*cp_Tlow(data,T);
        end h_Tlow_der;

        function s0_T "Compute specific entropy from temperature and gas data"
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          output SI.SpecificEntropy s "Specific entropy at temperature T";
          annotation (InlineNoEvent=false,smoothOrder=1);
        algorithm
          s := noEvent(if T < data.Tlimit then data.R*(data.blow[2] - 0.5*data.alow[
            1]/(T*T) - data.alow[2]/T + data.alow[3]*Math.log(T) + T*(
            data.alow[4] + T*(0.5*data.alow[5] + T*(1/3*data.alow[6] + 0.25*data.alow[
            7]*T)))) else data.R*(data.bhigh[2] - 0.5*data.ahigh[1]/(T*T) - data.
            ahigh[2]/T + data.ahigh[3]*Math.log(T) + T*(data.ahigh[4]
             + T*(0.5*data.ahigh[5] + T*(1/3*data.ahigh[6] + 0.25*data.ahigh[7]*T)))));
        end s0_T;

        function s0_Tlow "Compute specific entropy, low T region"
          extends Modelica.Icons.Function;
          input IdealGases.Common.DataRecord data "Ideal gas data";
          input SI.Temperature T "Temperature";
          output SI.SpecificEntropy s "Specific entropy at temperature T";
          annotation (InlineNoEvent=false,smoothOrder=1);
        algorithm
          s := data.R*(data.blow[2] - 0.5*data.alow[
            1]/(T*T) - data.alow[2]/T + data.alow[3]*Math.log(T) + T*(
            data.alow[4] + T*(0.5*data.alow[5] + T*(1/3*data.alow[6] + 0.25*data.alow[
            7]*T))));
        end s0_Tlow;

        function dynamicViscosityLowPressure
          "Dynamic viscosity of low pressure gases"
          extends Modelica.Icons.Function;
          input SI.Temp_K T "Gas temperature";
          input SI.Temp_K Tc "Critical temperature of gas";
          input SI.MolarMass M "Molar mass of gas";
          input SI.MolarVolume Vc "Critical molar volume of gas";
          input Real w "Acentric factor of gas";
          input DipoleMoment mu "Dipole moment of gas molecule";
          input Real k =  0.0 "Special correction for highly polar substances";
          output SI.DynamicViscosity eta "Dynamic viscosity of gas";
          annotation (smoothOrder=2);
        protected
          parameter Real Const1_SI=40.785*10^(-9.5)
            "Constant in formula for eta converted to SI units";
          parameter Real Const2_SI=131.3/1000.0
            "Constant in formula for mur converted to SI units";
          Real mur=Const2_SI*mu/sqrt(Vc*Tc)
            "Dimensionless dipole moment of gas molecule";
          Real Fc=1 - 0.2756*w + 0.059035*mur^4 + k
            "Factor to account for molecular shape and polarities of gas";
          Real Tstar "Dimensionless temperature defined by equation below";
          Real Ov "Viscosity collision integral for the gas";

          annotation (Documentation(info="<html>
<p>
The used formula are based on the method of Chung et al (1984, 1988) referred to in ref [1] chapter 9.
The formula 9-4.10 is the one being used. The Formula is given in non-SI units, the follwong onversion constants were used to
transform the formula to SI units:
</p>

<ul>
<li> <b>Const1_SI:</b> The factor 10^(-9.5) =10^(-2.5)*1e-7 where the
     factor 10^(-2.5) originates from the conversion of g/mol->kg/mol + cm^3/mol->m^3/mol
      and the factor 1e-7 is due to conversionfrom microPoise->Pa.s.</li>
<li>  <b>Const2_SI:</b> The factor 1/3.335641e-27 = 1e-3/3.335641e-30
      where the factor 3.335641e-30 comes from debye->C.m and
      1e-3 is due to conversion from cm^3/mol->m^3/mol</li>
</ul>

<h4>References:</h4>
<p>
[1] Bruce E. Poling, John E. Prausnitz, John P. O'Connell, \"The Properties of Gases and Liquids\" 5th Ed. Mc Graw Hill.
</p>

<h4>Author</h4>
<p>T. Skoglund, Lund, Sweden, 2004-08-31</p>

</html>"));
        algorithm
          Tstar := 1.2593*T/Tc;
          Ov := 1.16145*Tstar^(-0.14874) + 0.52487*exp(-0.7732*Tstar) + 2.16178*exp(-2.43787
            *Tstar);
          eta := Const1_SI*Fc*sqrt(M*T)/(Vc^(2/3)*Ov);
        end dynamicViscosityLowPressure;

        redeclare replaceable function extends dynamicViscosity
          "dynamic viscosity"
          annotation (smoothOrder=2);
        algorithm
          assert(fluidConstants[1].hasCriticalData,
          "Failed to compute dynamicViscosity: For the species \"" + mediumName + "\" no critical data is available.");
          assert(fluidConstants[1].hasDipoleMoment,
          "Failed to compute dynamicViscosity: For the species \"" + mediumName + "\" no critical data is available.");
          eta := dynamicViscosityLowPressure(state.T,
                             fluidConstants[1].criticalTemperature,
                             fluidConstants[1].molarMass,
                             fluidConstants[1].criticalMolarVolume,
                             fluidConstants[1].acentricFactor,
                             fluidConstants[1].dipoleMoment);
        end dynamicViscosity;

        function thermalConductivityEstimate
          "Thermal conductivity of polyatomic gases(Eucken and Modified Eucken correlation)"
          extends Modelica.Icons.Function;
          input SpecificHeatCapacity Cp "Constant pressure heat capacity";
          input DynamicViscosity eta "Dynamic viscosity";
          input Integer method(min=1,max=2)=1
            "1: Eucken Method, 2: Modified Eucken Method";
          output ThermalConductivity lambda "Thermal conductivity [W/(m.k)]";
          annotation (smoothOrder=2);
        algorithm
          lambda := if method == 1 then eta*(Cp - data.R + (9/4)*data.R) else eta*(Cp
             - data.R)*(1.32 + 1.77/((Cp/Modelica.Constants.R) - 1.0));
          annotation (Documentation(info="<html>
<p>
This function provides two similar methods for estimating the
thermal conductivity of polyatomic gases.
The Eucken method (input method == 1) gives good results for low temperatures,
but it tends to give an underestimated value of the thermal conductivity
(lambda) at higher temperatures.<br>
The Modified Eucken method (input method == 2) gives good results for
high-temperatures, but it tends to give an overestimated value of the
thermal conductivity (lambda) at low temperatures.
</p>
</html>"));
        end thermalConductivityEstimate;

        redeclare replaceable function extends thermalConductivity
          "thermal conductivity of gas"
          input Integer method=1 "1: Eucken Method, 2: Modified Eucken Method";
          annotation (smoothOrder=2);
        algorithm
          assert(fluidConstants[1].hasCriticalData,
          "Failed to compute thermalConductivity: For the species \"" + mediumName + "\" no critical data is available.");
          lambda := thermalConductivityEstimate(specificHeatCapacityCp(state),
            dynamicViscosity(state), method=method);
        end thermalConductivity;

        redeclare function extends molarMass
          "return the molar mass of the medium"
        algorithm
          MM := data.MM;
        end molarMass;

        function T_h "Compute temperature from specific enthalpy"
          input SpecificEnthalpy h "Specific enthalpy";
          output Temperature T "Temperature";

        protected
        package Internal
            "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
          extends Modelica.Media.Common.OneNonLinearEquation;
          redeclare record extends f_nonlinear_Data
              "Data to be passed to non-linear function"
            extends Modelica.Media.IdealGases.Common.DataRecord;
          end f_nonlinear_Data;

          redeclare function extends f_nonlinear
          algorithm
              y := h_T(f_nonlinear_data,x);
          end f_nonlinear;

          // Dummy definition has to be added for current Dymola
          redeclare function extends solve
          end solve;
        end Internal;

        algorithm
          T := Internal.solve(h, 200, 6000, 1.0e5, {1}, data);
        end T_h;

        function T_ps "Compute temperature from pressure and specific entropy"
          input AbsolutePressure p "Pressure";
          input SpecificEntropy s "Specific entropy";
          output Temperature T "Temperature";

        protected
        package Internal
            "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
          extends Modelica.Media.Common.OneNonLinearEquation;
          redeclare record extends f_nonlinear_Data
              "Data to be passed to non-linear function"
            extends Modelica.Media.IdealGases.Common.DataRecord;
          end f_nonlinear_Data;

          redeclare function extends f_nonlinear
          algorithm
              y := s0_T(f_nonlinear_data,x)- data.R*Modelica.Math.log(p/reference_p);
          end f_nonlinear;

          // Dummy definition has to be added for current Dymola
          redeclare function extends solve
          end solve;
        end Internal;

        algorithm
          T := Internal.solve(s, 200, 6000, p, {1}, data);
        end T_ps;

      end SingleGasNasa;
      annotation (Documentation(info="<html>

</html>"));

        package FluidData "Critical data, dipole moments and related data"
          extends Modelica.Icons.Library;
          import Modelica.Media.Interfaces.PartialMedium;
          import Modelica.Media.IdealGases.Common.SingleGasesData;

          constant SingleGasNasa.FluidConstants N2(
                               chemicalFormula =        "N2",
                               iupacName =              "unknown",
                               structureFormula =       "unknown",
                               casRegistryNumber =      "7727-37-9",
                               meltingPoint =            63.15,
                               normalBoilingPoint =      77.35,
                               criticalTemperature =    126.20,
                               criticalPressure =        33.98e5,
                               criticalMolarVolume =     90.10e-6,
                               acentricFactor =           0.037,
                               dipoleMoment =             0.0,
                               molarMass =              SingleGasesData.N2.MM,
                               hasDipoleMoment =       true,
                               hasIdealGasHeatCapacity=true,
                               hasCriticalData =       true,
                               hasAcentricFactor =     true);

          constant SingleGasNasa.FluidConstants H2O(
                               chemicalFormula =        "H2O",
                               iupacName =              "unknown",
                               structureFormula =       "unknown",
                               casRegistryNumber =      "7732-18-5",
                               meltingPoint =           273.15,
                               normalBoilingPoint =     373.15,
                               criticalTemperature =    647.14,
                               criticalPressure =       220.64e5,
                               criticalMolarVolume =     55.95e-6,
                               acentricFactor =           0.344,
                               dipoleMoment =             1.8,
                               molarMass =              SingleGasesData.H2O.MM,
                               hasDipoleMoment =       true,
                               hasIdealGasHeatCapacity=true,
                               hasCriticalData =       true,
                               hasAcentricFactor =     true);
          annotation (Documentation(info="<html>
<p>
This package contains FluidConstants data records for the following 37 gases
(see also the description in
<a href=\"Modelica://Modelica.Media.IdealGases\">Modelica.Media.IdealGases</a>):
</p>
<pre>
Argon             Methane          Methanol       Carbon Monoxide  Carbon Dioxide
Acetylene         Ethylene         Ethanol        Ethane           Propylene
Propane           1-Propanol       1-Butene       N-Butane         1-Pentene
N-Pentane         Benzene          1-Hexene       N-Hexane         1-Heptane
N-Heptane         Ethylbenzene     N-Octane       Chlorine         Fluorine
Hydrogen          Steam            Helium         Ammonia          Nitric Oxide
Nitrogen Dioxide  Nitrogen         Nitrous        Oxide            Neon Oxygen
Sulfur Dioxide    Sulfur Trioxide
</pre>

</html>"));
        end FluidData;

        package SingleGasesData
        "Ideal gas data based on the NASA Glenn coefficients"
          extends Modelica.Icons.Library;
          annotation ( Documentation(info="<HTML>
<p>This package contains ideal gas models for the 1241 ideal gases from </p>
<blockquote>
  <p>McBride B.J., Zehe M.J., and Gordon S. (2002): <b>NASA Glenn Coefficients
  for Calculating Thermodynamic Properties of Individual Species</b>. NASA
  report TP-2002-211556</p>
</blockquote>

<pre>
 Ag        BaOH+           C2H4O_ethylen_o DF      In2I4    Nb      ScO2
 Ag+       Ba_OH_2         CH3CHO_ethanal  DOCl    In2I6    Nb+     Sc2O
 Ag-       BaS             CH3COOH         DO2     In2O     Nb-     Sc2O2
 Air       Ba2             OHCH2COOH       DO2-    K        NbCl5   Si
 Al        Be              C2H5            D2      K+       NbO     Si+
 Al+       Be+             C2H5Br          D2+     K-       NbOCl3  Si-
 Al-       Be++            C2H6            D2-     KAlF4    NbO2    SiBr
 AlBr      BeBr            CH3N2CH3        D2O     KBO2     Ne      SiBr2
 AlBr2     BeBr2           C2H5OH          D2O2    KBr      Ne+     SiBr3
 AlBr3     BeCl            CH3OCH3         D2S     KCN      Ni      SiBr4
 AlC       BeCl2           CH3O2CH3        e-      KCl      Ni+     SiC
 AlC2      BeF             CCN             F       KF       Ni-     SiC2
 AlCl      BeF2            CNC             F+      KH       NiCl    SiCl
 AlCl+     BeH             OCCN            F-      KI       NiCl2   SiCl2
 AlCl2     BeH+            C2N2            FCN     Kli      NiO     SiCl3
 AlCl3     BeH2            C2O             FCO     KNO2     NiS     SiCl4
 AlF       BeI             C3              FO      KNO3     O       SiF
 AlF+      BeI2            C3H3_1_propynl  FO2_FOO KNa      O+      SiFCl
 AlFCl     BeN             C3H3_2_propynl  FO2_OFO KO       O-      SiF2
 AlFCl2    BeO             C3H4_allene     F2      KOH      OD      SiF3
 AlF2      BeOH            C3H4_propyne    F2O     K2       OD-     SiF4
 AlF2-     BeOH+           C3H4_cyclo      F2O2    K2+      OH      SiH
 AlF2Cl    Be_OH_2         C3H5_allyl      FS2F    K2Br2    OH+     SiH+
 AlF3      BeS             C3H6_propylene  Fe      K2CO3    OH-     SiHBr3
 AlF4-     Be2             C3H6_cyclo      Fe+     K2C2N2   O2      SiHCl
 AlH       Be2Cl4          C3H6O_propylox  Fe_CO_5 K2Cl2    O2+     SiHCl3
 AlHCl     Be2F4           C3H6O_acetone   FeCl    K2F2     O2-     SiHF
 AlHCl2    Be2O            C3H6O_propanal  FeCl2   K2I2     O3      SiHF3
 AlHF      Be2OF2          C3H7_n_propyl   FeCl3   K2O      P       SiHI3
 AlHFCl    Be2O2           C3H7_i_propyl   FeO     K2O+     P+      SiH2
 AlHF2     Be3O3           C3H8            Fe_OH_2 K2O2     P-      SiH2Br2
 AlH2      Be4O4           C3H8O_1propanol Fe2Cl4  K2O2H2   PCl     SiH2Cl2
 AlH2Cl    Br              C3H8O_2propanol Fe2Cl6  K2SO4    PCl2    SiH2F2
 AlH2F     Br+             CNCOCN          Ga      Kr       PCl2-   SiH2I2
 AlH3      Br-             C3O2            Ga+     Kr+      PCl3    SiH3
 AlI       BrCl            C4              GaBr    li       PCl5    SiH3Br
 AlI2      BrF             C4H2_butadiyne  GaBr2   li+      PF      SiH3Cl
 AlI3      BrF3            C4H4_1_3-cyclo  GaBr3   li-      PF+     SiH3F
 AlN       BrF5            C4H6_butadiene  GaCl    liAlF4   PF-     SiH3I
 AlO       BrO             C4H6_1butyne    GaCl2   liBO2    PFCl    SiH4
 AlO+      OBrO            C4H6_2butyne    GaCl3   liBr     PFCl-   SiI
 AlO-      BrOO            C4H6_cyclo      GaF     liCl     PFCl2   SiI2
 AlOCl     BrO3            C4H8_1_butene   GaF2    liF      PFCl4   SiN
 AlOCl2    Br2             C4H8_cis2_buten GaF3    liH      PF2     SiO
 AlOF      BrBrO           C4H8_isobutene  GaH     liI      PF2-    SiO2
 AlOF2     BrOBr           C4H8_cyclo      GaI     liN      PF2Cl   SiS
 AlOF2-    C               C4H9_n_butyl    GaI2    liNO2    PF2Cl3  SiS2
 AlOH      C+              C4H9_i_butyl    GaI3    liNO3    PF3     Si2
 AlOHCl    C-              C4H9_s_butyl    GaO     liO      PF3Cl2  Si2C
 AlOHCl2   CBr             C4H9_t_butyl    GaOH    liOF     PF4Cl   Si2F6
 AlOHF     CBr2            C4H10_n_butane  Ga2Br2  liOH     PF5     Si2N
 AlOHF2    CBr3            C4H10_isobutane Ga2Br4  liON     PH      Si3
 AlO2      CBr4            C4N2            Ga2Br6  li2      PH2     Sn
 AlO2-     CCl             C5              Ga2Cl2  li2+     PH2-    Sn+
 Al_OH_2   CCl2            C5H6_1_3cyclo   Ga2Cl4  li2Br2   PH3     Sn-
 Al_OH_2Cl CCl2Br2         C5H8_cyclo      Ga2Cl6  li2F2    PN      SnBr
 Al_OH_2F  CCl3            C5H10_1_pentene Ga2F2   li2I2    PO      SnBr2
 Al_OH_3   CCl3Br          C5H10_cyclo     Ga2F4   li2O     PO-     SnBr3
 AlS       CCl4            C5H11_pentyl    Ga2F6   li2O+    POCl3   SnBr4
 AlS2      CF              C5H11_t_pentyl  Ga2I2   li2O2    POFCl2  SnCl
 Al2       CF+             C5H12_n_pentane Ga2I4   li2O2H2  POF2Cl  SnCl2
 Al2Br6    CFBr3           C5H12_i_pentane Ga2I6   li2SO4   POF3    SnCl3
 Al2C2     CFCl            CH3C_CH3_2CH3   Ga2O    li3+     PO2     SnCl4
 Al2Cl6    CFClBr2         C6D5_phenyl     Ge      li3Br3   PO2-    SnF
 Al2F6     CFCl2           C6D6            Ge+     li3Cl3   PS      SnF2
 Al2I6     CFCl2Br         C6H2            Ge-     li3F3    P2      SnF3
 Al2O      CFCl3           C6H5_phenyl     GeBr    li3I3    P2O3    SnF4
 Al2O+     CF2             C6H5O_phenoxy   GeBr2   Mg       P2O4    SnI
 Al2O2     CF2+            C6H6            GeBr3   Mg+      P2O5    SnI2
 Al2O2+    CF2Br2          C6H5OH_phenol   GeBr4   MgBr     P3      SnI3
 Al2O3     CF2Cl           C6H10_cyclo     GeCl    MgBr2    P3O6    SnI4
 Al2S      CF2ClBr         C6H12_1_hexene  GeCl2   MgCl     P4      SnO
 Al2S2     CF2Cl2          C6H12_cyclo     GeCl3   MgCl+    P4O6    SnO2
 Ar        CF3             C6H13_n_hexyl   GeCl4   MgCl2    P4O7    SnS
 Ar+       CF3+            C6H14_n_hexane  GeF     MgF      P4O8    SnS2
 B         CF3Br           C7H7_benzyl     GeF2    MgF+     P4O9    Sn2
 B+        CF3Cl           C7H8            GeF3    MgF2     P4O10   Sr
 B-        CF4             C7H8O_cresol_mx GeF4    MgF2+    Pb      Sr+
 BBr       CH+             C7H14_1_heptene GeH4    MgH      Pb+     SrBr
 BBr2      CHBr3           C7H15_n_heptyl  GeI     MgI      Pb-     SrBr2
 BBr3      CHCl            C7H16_n_heptane GeO     MgI2     PbBr    SrCl
 BC        CHClBr2         C7H16_2_methylh GeO2    MgN      PbBr2   SrCl+
 BC2       CHCl2           C8H8_styrene    GeS     MgO      PbBr3   SrCl2
 BCl       CHCl2Br         C8H10_ethylbenz GeS2    MgOH     PbBr4   SrF
 BCl+      CHCl3           C8H16_1_octene  Ge2     MgOH+    PbCl    SrF+
 BClOH     CHF             C8H17_n_octyl   H       Mg_OH_2  PbCl2   SrF2
 BCl_OH_2  CHFBr2          C8H18_n_octane  H+      MgS      PbCl3   SrH
 BCl2      CHFCl           C8H18_isooctane H-      Mg2      PbCl4   SrI
 BCl2+     CHFClBr         C9H19_n_nonyl   HAlO    Mg2F4    PbF     SrI2
 BCl2OH    CHFCl2          C10H8_naphthale HAlO2   Mn       PbF2    SrO
 BF        CHF2            C10H21_n_decyl  HBO     Mn+      PbF3    SrOH
 BFCl      CHF2Br          C12H9_o_bipheny HBO+    Mo       PbF4    SrOH+
 BFCl2     CHF2Cl          C12H10_biphenyl HBO2    Mo+      PbI     Sr_OH_2
 BFOH      CHF3            Ca              HBS     Mo-      PbI2    SrS
 BF_OH_2   CHI3            Ca+             HBS+    MoO      PbI3    Sr2
 BF2       CH2             CaBr            HCN     MoO2     PbI4    Ta
 BF2+      CH2Br2          CaBr2           HCO     MoO3     PbO     Ta+
 BF2-      CH2Cl           CaCl            HCO+    MoO3-    PbO2    Ta-
 BF2Cl     CH2ClBr         CaCl+           HCCN    Mo2O6    PbS     TaCl5
 BF2OH     CH2Cl2          CaCl2           HCCO    Mo3O9    PbS2    TaO
 BF3       CH2F            CaF             HCl     Mo4O12   Rb      TaO2
 BF4-      CH2FBr          CaF+            HD      Mo5O15   Rb+     Ti
 BH        CH2FCl          CaF2            HD+     N        Rb-     Ti+
 BHCl      CH2F2           CaH             HDO     N+       RbBO2   Ti-
 BHCl2     CH2I2           CaI             HDO2    N-       RbBr    TiCl
 BHF       CH3             CaI2            HF      NCO      RbCl    TiCl2
 BHFCl     CH3Br           CaO             HI      ND       RbF     TiCl3
 BHF2      CH3Cl           CaO+            HNC     ND2      RbH     TiCl4
 BH2       CH3F            CaOH            HNCO    ND3      RbI     TiO
 BH2Cl     CH3I            CaOH+           HNO     NF       RbK     TiO+
 BH2F      CH2OH           Ca_OH_2         HNO2    NF2      Rbli    TiOCl
 BH3       CH2OH+          CaS             HNO3    NF3      RbNO2   TiOCl2
 BH3NH3    CH3O            Ca2             HOCl    NH       RbNO3   TiO2
 BH4       CH4             Cd              HOF     NH+      RbNa    U
 BI        CH3OH           Cd+             HO2     NHF      RbO     UF
 BI2       CH3OOH          Cl              HO2-    NHF2     RbOH    UF+
 BI3       CI              Cl+             HPO     NH2      Rb2Br2  UF-
 BN        CI2             Cl-             HSO3F   NH2F     Rb2Cl2  UF2
 BO        CI3             ClCN            H2      NH3      Rb2F2   UF2+
 BO-       CI4             ClF             H2+     NH2OH    Rb2I2   UF2-
 BOCl      CN              ClF3            H2-     NH4+     Rb2O    UF3
 BOCl2     CN+             ClF5            HBOH    NO       Rb2O2   UF3+
 BOF       CN-             ClO             HCOOH   NOCl     Rb2O2H2 UF3-
 BOF2      CNN             ClO2            H2F2    NOF      Rb2SO4  UF4
 BOH       CO              Cl2             H2O     NOF3     Rn      UF4+
 BO2       CO+             Cl2O            H2O+    NO2      Rn+     UF4-
 BO2-      COCl            Co              H2O2    NO2-     S       UF5
 B_OH_2    COCl2           Co+             H2S     NO2Cl    S+      UF5+
 BS        COFCl           Co-             H2SO4   NO2F     S-      UF5-
 BS2       COF2            Cr              H2BOH   NO3      SCl     UF6
 B2        COHCl           Cr+             HB_OH_2 NO3-     SCl2    UF6-
 B2C       COHF            Cr-             H3BO3   NO3F     SCl2+   UO
 B2Cl4     COS             CrN             H3B3O3  N2       SD      UO+
 B2F4      CO2             CrO             H3B3O6  N2+      SF      UOF
 B2H       CO2+            CrO2            H3F3    N2-      SF+     UOF2
 B2H2      COOH            CrO3            H3O+    NCN      SF-     UOF3
 B2H3      CP              CrO3-           H4F4    N2D2_cis SF2     UOF4
 B2H3_db   CS              Cs              H5F5    N2F2     SF2+    UO2
 B2H4      CS2             Cs+             H6F6    N2F4     SF2-    UO2+
 B2H4_db   C2              Cs-             H7F7    N2H2     SF3     UO2-
 B2H5      C2+             CsBO2           He      NH2NO2   SF3+    UO2F
 B2H5_db   C2-             CsBr            He+     N2H4     SF3-    UO2F2
 B2H6      C2Cl            CsCl            Hg      N2O      SF4     UO3
 B2O       C2Cl2           CsF             Hg+     N2O+     SF4+    UO3-
 B2O2      C2Cl3           CsH             HgBr2   N2O3     SF4-    V
 B2O3      C2Cl4           CsI             I       N2O4     SF5     V+
 B2_OH_4   C2Cl6           Csli            I+      N2O5     SF5+    V-
 B2S       C2F             CsNO2           I-      N3       SF5-    VCl4
 B2S2      C2FCl           CsNO3           IF5     N3H      SF6     VN
 B2S3      C2FCl3          CsNa            IF7     Na       SF6-    VO
 B3H7_C2v  C2F2            CsO             I2      Na+      SH      VO2
 B3H7_Cs   C2F2Cl2         CsOH            In      Na-      SH-     V4O10
 B3H9      C2F3            CsRb            In+     NaAlF4   SN      W
 B3N3H6    C2F3Cl          Cs2             InBr    NaBO2    SO      W+
 B3O3Cl3   C2F4            Cs2Br2          InBr2   NaBr     SO-     W-
 B3O3FCl2  C2F6            Cs2CO3          InBr3   NaCN     SOF2    WCl6
 B3O3F2Cl  C2H             Cs2Cl2          InCl    NaCl     SO2     WO
 B3O3F3    C2HCl           Cs2F2           InCl2   NaF      SO2-    WOCl4
 B4H4      C2HCl3          Cs2I2           InCl3   NaH      SO2Cl2  WO2
 B4H10     C2HF            Cs2O            InF     NaI      SO2FCl  WO2Cl2
 B4H12     C2HFCl2         Cs2O+           InF2    Nali     SO2F2   WO3
 B5H9      C2HF2Cl         Cs2O2           InF3    NaNO2    SO3     WO3-
 Ba        C2HF3           Cs2O2H2         InH     NaNO3    S2      Xe
 Ba+       C2H2_vinylidene Cs2SO4          InI     NaO      S2-     Xe+
 BaBr      C2H2Cl2         Cu              InI2    NaOH     S2Cl2   Zn
 BaBr2     C2H2FCl         Cu+             InI3    NaOH+    S2F2    Zn+
 BaCl      C2H2F2          Cu-             InO     Na2      S2O     Zr
 BaCl+     CH2CO_ketene    CuCl            InOH    Na2Br2   S3      Zr+
 BaCl2     O_CH_2O         CuF             In2Br2  Na2Cl2   S4      Zr-
 BaF       HO_CO_2OH       CuF2            In2Br4  Na2F2    S5      ZrN
 BaF+      C2H3_vinyl      CuO             In2Br6  Na2I2    S6      ZrO
 BaF2      CH2Br-COOH      Cu2             In2Cl2  Na2O     S7      ZrO+
 BaH       C2H3Cl          Cu3Cl3          In2Cl4  Na2O+    S8      ZrO2
 BaI       CH2Cl-COOH      D               In2Cl6  Na2O2    Sc
 BaI2      C2H3F           D+              In2F2   Na2O2H2  Sc+
 BaO       CH3CN           D-              In2F4   Na2SO4   Sc-
 BaO+      CH3CO_acetyl    DBr             In2F6   Na3Cl3   ScO
 BaOH      C2H4            DCl             In2I2   Na3F3    ScO+
</pre>

</HTML>"));

          constant IdealGases.Common.DataRecord Air(
            name="Air",
            MM=0.0289651159,
            Hf=-4333.833858403446,
            H0=298609.6803431054,
            Tlimit=1000,
            alow={10099.5016,-196.827561,5.00915511,-0.00576101373,1.06685993e-005,-7.94029797e-009,
                2.18523191e-012},
            blow={-176.796731,-3.921504225},
            ahigh={241521.443,-1257.8746,5.14455867,-0.000213854179,7.06522784e-008,-1.07148349e-011,
                6.57780015e-016},
            bhigh={6462.26319,-8.147411905},
            R=287.0512249529787);

          constant IdealGases.Common.DataRecord H2O(
            name="H2O",
            MM=0.01801528,
            Hf=-13423382.81725291,
            H0=549760.6476280135,
            Tlimit=1000,
            alow={-39479.6083,575.573102,0.931782653,0.00722271286,-7.34255737e-006,
                4.95504349e-009,-1.336933246e-012},
            blow={-33039.7431,17.24205775},
            ahigh={1034972.096,-2412.698562,4.64611078,0.002291998307,-6.836830479999999e-007,
                9.426468930000001e-011,-4.82238053e-015},
            bhigh={-13842.86509,-7.97814851},
            R=461.5233290850878);

          constant IdealGases.Common.DataRecord N2(
            name="N2",
            MM=0.0280134,
            Hf=0,
            H0=309498.4543111511,
            Tlimit=1000,
            alow={22103.71497,-381.846182,6.08273836,-0.00853091441,1.384646189e-005,-9.62579362e-009,
                2.519705809e-012},
            blow={710.846086,-10.76003744},
            ahigh={587712.406,-2239.249073,6.06694922,-0.00061396855,1.491806679e-007,-1.923105485e-011,
                1.061954386e-015},
            bhigh={12832.10415,-15.86640027},
            R=296.8033869505308);
        end SingleGasesData;
      end Common;
    end IdealGases;

    package Incompressible
    "Medium model for T-dependent properties, defined by tables or polynomials"
      import SI = Modelica.SIunits;
      import Cv = Modelica.SIunits.Conversions;
      import Modelica.Constants;
      import Modelica.Math;

      package Common "Common data structures"

        record BaseProps_Tpoly "Fluid state record"
          extends Modelica.Icons.Record;
          annotation(Documentation(info="<html></html>"));
          SI.Temperature T "temperature";
          SI.Pressure p "pressure";
          //    SI.Density d "density";
        end BaseProps_Tpoly;
      end Common;

      package TableBased "Incompressible medium properties based on tables"
        import Poly = Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
        extends Modelica.Media.Interfaces.PartialMedium(
           ThermoStates = if enthalpyOfT then Choices.IndependentVariables.T else Choices.IndependentVariables.pT,
           final reducedX=true,
           final fixedX = true,
           mediumName="tableMedium",
           redeclare record ThermodynamicState=Common.BaseProps_Tpoly,
           singleState=true);

        constant Boolean enthalpyOfT=true
        "true if enthalpy is approximated as a function of T only, (p-dependence neglected)";

        constant Boolean densityOfT = size(tableDensity,1) > 1
        "true if density is a function of temperature";

        constant Temperature T_min "Minimum temperature valid for medium model";

        constant Temperature T_max "Maximum temperature valid for medium model";

        constant Temperature T0=273.15 "reference Temperature";

        constant SpecificEnthalpy h0=0 "reference enthalpy at T0, reference_p";

        constant SpecificEntropy s0=0 "reference entropy at T0, reference_p";

        constant MolarMass MM_const=0.1 "Molar mass";

        constant Integer npol=2 "degree of polynomial used for fitting";

        constant Integer neta=size(tableViscosity,1)
        "number of data points for viscosity";

        constant Real[:,:] tableDensity "Table for rho(T)";

        constant Real[:,:] tableHeatCapacity "Table for Cp(T)";

        constant Real[:,:] tableViscosity "Table for eta(T)";

        constant Real[:,:] tableConductivity "Table for lambda(T)";

        constant Boolean TinK "true if T[K],Kelvin used for table temperatures";

        constant Boolean hasDensity = not (size(tableDensity,1)==0)
        "true if table tableDensity is present";

        constant Boolean hasHeatCapacity = not (size(tableHeatCapacity,1)==0)
        "true if table tableHeatCapacity is present";

        constant Boolean hasViscosity = not (size(tableViscosity,1)==0)
        "true if table tableViscosity is present";

        final constant Real invTK[neta] = if size(tableViscosity,1) > 0 then 
            invertTemp(tableViscosity[:,1],TinK) else fill(0,0);
      annotation(__Dymola_keepConstant = true, Documentation(info="<HTML>
<p>
This is the base package for medium models of incompressible fluids based on
tables. The minimal data to provide for a useful medium description is tables
of density and heat capacity as functions of temperature.
</p>

<p>It should be noted that incompressible media only have 1 state per control volume (usually T),
but have both T and p as inputs for fully correct properties. The error of using only T-dependent
properties is small, therefore a Boolean flag enthalpyOfT exists. If it is true, the
enumeration Choices.independentVariables  is set to  Choices.independentVariables.T otherwise
it is set to Choices.independentVariables.pT. </p>

<h4>Using the package TableBased</h4>
<p>
To implement a new medium model, create a package that <b>extends</b> TableBased
and provides one or more of the constant tables:
</p>

<pre>
tableDensity        = [T, d];
tableHeatCapacity   = [T, Cp];
tableConductivity   = [T, lam];
tableViscosity      = [T, eta];
tableVaporPressure  = [T, pVap];
</pre>

<p>
The table data is used to fit constant polynomials of order <b>npol</b>, the
temperature data points do not need to be same for different properties. Properties
like enthalpy, inner energy and entropy are calculated consistently from integrals
and derivatives of d(T) and Cp(T). The minimal
data for a useful medium model is thus density and heat capacity. Transport
properties and vapor pressure are optional, if the data tables are empty the corresponding
function calls can not be used.
</p>
</HTML>"));

        final constant Real poly_rho[:] = if hasDensity then 
                                             Poly.fitting(tableDensity[:,1],tableDensity[:,2],npol) else 
                                               zeros(npol+1) annotation(keepConstant = true);

        final constant Real poly_Cp[:] = if hasHeatCapacity then 
                                             Poly.fitting(tableHeatCapacity[:,1],tableHeatCapacity[:,2],npol) else 
                                               zeros(npol+1) annotation(keepConstant = true);

        final constant Real poly_eta[:] = if hasViscosity then 
                                             Poly.fitting(invTK, Math.log(tableViscosity[:,2]),npol) else 
                                               zeros(npol+1) annotation(keepConstant = true);

        final constant Real poly_lam[:] = if size(tableConductivity,1)>0 then 
                                             Poly.fitting(tableConductivity[:,1],tableConductivity[:,2],npol) else 
                                               zeros(npol+1) annotation(keepConstant = true);

        function invertTemp "function to invert temperatures"
          input Real[:] table "table temperature data";
          input Boolean Tink "flag for Celsius or Kelvin";
          output Real invTable[size(table,1)] "inverted temperatures";
        algorithm
          for i in 1:size(table,1) loop
            invTable[i] := if TinK then 1/table[i] else 1/Cv.from_degC(table[i]);
          end for;
        end invertTemp;

        redeclare model extends BaseProperties(
          final standardOrderComponents=true,
          p_bar=Cv.to_bar(p),
          T_degC(start = T_start-273.15)=Cv.to_degC(T),
          T(start = T_start,
            stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default))
        "Base properties of T dependent medium"
        //  redeclare parameter SpecificHeatCapacity R=Modelica.Constants.R,

          annotation(Documentation(info="<html>
<p>
Note that the inner energy neglects the pressure dependence, which is only
true for an incompressible medium with d = constant. The neglected term is
p-reference_p)/rho*(T/rho)*(partial rho /partial T). This is very small for
liquids due to proportionality to 1/d^2, but can be problematic for gases that are
modeled incompressible.
</p>
<p>It should be noted that incompressible media only have 1 state per control volume (usually T),
but have both T and p as inputs for fully correct properties. The error of using only T-dependent
properties is small, therefore a Boolean flag enthalpyOfT exists. If it is true, the
enumeration Choices.independentVariables  is set to  Choices.independentVariables.T otherwise
it is set to Choices.independentVariables.pT. </p>
<p>
Enthalpy is never a function of T only (h = h(T) + (p-reference_p)/d), but the
error is also small and non-linear systems can be avoided. In particular,
non-linear systems are small and local as opposed to large and over all volumes.
</p>

<p>
Entropy is calculated as
</p>
<pre>
  s = s0 + integral(Cp(T)/T,dt)
</pre>
<p>
which is only exactly true for a fluid with constant density d=d0.
</p>
</html>
      "));
          SI.SpecificHeatCapacity cp "specific heat capacity";
          parameter SI.Temperature T_start = 298.15 "initial temperature";
        equation
          assert(hasDensity,"Medium " + mediumName +
                            " can not be used without assigning tableDensity.");
          assert(T >= T_min and T <= T_max, "Temperature T (= " + String(T) +
                 " K) is not in the allowed range (" + String(T_min) +
                 " K <= T <= " + String(T_max) + " K) required from medium model \""
                 + mediumName + "\".");
          R = Modelica.Constants.R;
          cp = Poly.evaluate(poly_Cp,if TinK then T else T_degC);
          h = if enthalpyOfT then h_T(T) else  h_pT(p,T,densityOfT);
          if singleState then
            u = h_T(T) - reference_p/d;
          else
            u = h - p/d;
          end if;
          d = Poly.evaluate(poly_rho,if TinK then T else T_degC);
          state.T = T;
          state.p = p;
          MM = MM_const;
        end BaseProperties;

        redeclare function extends setState_pTX
        "Returns state record, given pressure and temperature"
        algorithm
          state := ThermodynamicState(p=p,T=T);
        end setState_pTX;

        redeclare function extends setState_dTX
        "Returns state record, given pressure and temperature"
        algorithm
          assert(false, "for incompressible media with d(T) only, state can not be set from density and temperature");
        end setState_dTX;

        redeclare function extends setState_phX
        "Returns state record, given pressure and specific enthalpy"
        algorithm
          state :=ThermodynamicState(p=p,T=T_ph(p,h));
        end setState_phX;

        redeclare function extends setState_psX
        "Returns state record, given pressure and specific entropy"
        algorithm
          state :=ThermodynamicState(p=p,T=T_ps(p,s));
        end setState_psX;

            redeclare function extends setSmoothState
        "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
            algorithm
              state :=ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                         T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
            end setSmoothState;

        redeclare function extends specificHeatCapacityCv
        "Specific heat capacity at constant volume (or pressure) of medium"

         annotation(smoothOrder=2);
        algorithm
          assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                                 + mediumName + ".");
          cv := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
        end specificHeatCapacityCv;

        redeclare function extends specificHeatCapacityCp
        "Specific heat capacity at constant volume (or pressure) of medium"

         annotation(smoothOrder=2);
        algorithm
          assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                                 + mediumName + ".");
          cp := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
        end specificHeatCapacityCp;

        redeclare function extends dynamicViscosity
        "Return dynamic viscosity as a function of the thermodynamic state record"

         annotation(smoothOrder=2);
        algorithm
          assert(size(tableViscosity,1)>0,"DynamicViscosity, eta, is not defined for medium "
                                                 + mediumName + ".");
          eta := Math.exp(Poly.evaluate(poly_eta, 1/state.T));
        end dynamicViscosity;

        redeclare function extends thermalConductivity
        "Return thermal conductivity as a function of the thermodynamic state record"

         annotation(smoothOrder=2);
        algorithm
          assert(size(tableConductivity,1)>0,"ThermalConductivity, lambda, is not defined for medium "
                                                 + mediumName + ".");
          lambda := Poly.evaluate(poly_lam,if TinK then state.T else Cv.to_degC(state.T));
        end thermalConductivity;

        function s_T "compute specific entropy"
          input Temperature T "temperature";
          output SpecificEntropy s "specific entropy";
         annotation(smoothOrder=2);
        algorithm
          s := s0 + (if TinK then 
            Poly.integralValue(poly_Cp[1:npol],T, T0) else 
            Poly.integralValue(poly_Cp[1:npol],Cv.to_degC(T),Cv.to_degC(T0)))
            + Modelica.Math.log(T/T0)*
            Poly.evaluate(poly_Cp,if TinK then 0 else Modelica.Constants.T_zero);
        end s_T;

        redeclare function extends specificEntropy "Return specific entropy
 as a function of the thermodynamic state record"

      protected
          Integer npol=size(poly_Cp,1)-1;
         annotation(smoothOrder=2);
        algorithm
          assert(hasHeatCapacity,"Specific Entropy, s(T), is not defined for medium "
                                                 + mediumName + ".");
          s := s_T(state.T);
        end specificEntropy;

        function h_T "Compute specific enthalpy from temperature"
          import Modelica.SIunits.Conversions.to_degC;
          extends Modelica.Icons.Function;
          input SI.Temperature T "Temperature";
          output SI.SpecificEnthalpy h "Specific enthalpy at p, T";
         annotation(derivative=h_T_der);
        algorithm
          h :=h0 + Poly.integralValue(poly_Cp, if TinK then T else Cv.to_degC(T), if TinK then 
          T0 else Cv.to_degC(T0));
        end h_T;

        function h_T_der "Compute specific enthalpy from temperature"
          import Modelica.SIunits.Conversions.to_degC;
          extends Modelica.Icons.Function;
          input SI.Temperature T "Temperature";
          input Real dT "temperature derivative";
          output Real dh "derivative of Specific enthalpy at T";
         annotation(smoothOrder=1);
        algorithm
          dh :=Poly.evaluate(poly_Cp, if TinK then T else Cv.to_degC(T))*dT;
        end h_T_der;

        function h_pT "Compute specific enthalpy from pressure and temperature"
          import Modelica.SIunits.Conversions.to_degC;
          extends Modelica.Icons.Function;
          input SI.Pressure p "Pressure";
          input SI.Temperature T "Temperature";
          input Boolean densityOfT = false
          "include or neglect density derivative dependence of enthalpy"   annotation(Evaluate);
          output SI.SpecificEnthalpy h "Specific enthalpy at p, T";
         annotation(smoothOrder=2);
        algorithm
          h :=h0 + Poly.integralValue(poly_Cp, if TinK then T else Cv.to_degC(T), if TinK then 
          T0 else Cv.to_degC(T0)) + (p - reference_p)/Poly.evaluate(poly_rho, if TinK then 
                  T else Cv.to_degC(T))
            *(if densityOfT then (1 + T/Poly.evaluate(poly_rho, if TinK then T else Cv.to_degC(T))
          *Poly.derivativeValue(poly_rho,if TinK then T else Cv.to_degC(T))) else 1.0);
        end h_pT;

        redeclare function extends temperature
        "Return temperature as a function of the thermodynamic state record"
         annotation(smoothOrder=2);
        algorithm
         T := state.T;
        end temperature;

        redeclare function extends pressure
        "Return pressure as a function of the thermodynamic state record"
         annotation(smoothOrder=2);
        algorithm
         p := state.p;
        end pressure;

        redeclare function extends density
        "Return density as a function of the thermodynamic state record"
         annotation(smoothOrder=2);
        algorithm
          d := Poly.evaluate(poly_rho,if TinK then state.T else Cv.to_degC(state.T));
        end density;

        redeclare function extends specificEnthalpy
        "Return specific enthalpy as a function of the thermodynamic state record"
         annotation(smoothOrder=2);
        algorithm
          h := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T);
        end specificEnthalpy;

        redeclare function extends specificInternalEnergy
        "Return specific internal energy as a function of the thermodynamic state record"
         annotation(smoothOrder=2);
        algorithm
          u := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T)
            - (if singleState then  reference_p/density(state) else state.p/density(state));
        end specificInternalEnergy;

        function T_ph "Compute temperature from pressure and specific enthalpy"
          input AbsolutePressure p "pressure";
          input SpecificEnthalpy h "specific enthalpy";
          output Temperature T "temperature";
          annotation(Inline=false, LateInline=true, inverse=h_pT(p,T));
      protected
          package Internal
          "Solve h(T) for T with given h (use only indirectly via temperature_phX)"
            extends Modelica.Media.Common.OneNonLinearEquation;

            redeclare record extends f_nonlinear_Data
            "superfluous record, fix later when better structure of inverse functions exists"
                constant Real[5] dummy = {1,2,3,4,5};
            end f_nonlinear_Data;

            redeclare function extends f_nonlinear
            "p is smuggled in via vector"
            algorithm
              y := if singleState then h_T(x) else h_pT(p,x);
            end f_nonlinear;

            // Dummy definition has to be added for current Dymola
            redeclare function extends solve
            end solve;
          end Internal;
        algorithm
         T := Internal.solve(h, T_min, T_max, p, {1}, Internal.f_nonlinear_Data());
        end T_ph;

        function T_ps "Compute temperature from pressure and specific enthalpy"
          input AbsolutePressure p "pressure";
          input SpecificEntropy s "specific entropy";
          output Temperature T "temperature";
      protected
          package Internal
          "Solve h(T) for T with given h (use only indirectly via temperature_phX)"
            extends Modelica.Media.Common.OneNonLinearEquation;

            redeclare record extends f_nonlinear_Data
            "superfluous record, fix later when better structure of inverse functions exists"
                constant Real[5] dummy = {1,2,3,4,5};
            end f_nonlinear_Data;

            redeclare function extends f_nonlinear
            "p is smuggled in via vector"
            algorithm
              y := s_T(x);
            end f_nonlinear;

            // Dummy definition has to be added for current Dymola
            redeclare function extends solve
            end solve;
          end Internal;
        algorithm
         T := Internal.solve(s, T_min, T_max, p, {1}, Internal.f_nonlinear_Data());
        end T_ps;

        package Polynomials_Temp
        "Temporary Functions operating on polynomials (including polynomial fitting); only to be used in Modelica.Media.Incompressible.TableBased"
          extends Modelica.Icons.Library;
          annotation (Documentation(info="<HTML>
<p>
This package contains functions to operate on polynomials,
in particular to determine the derivative and the integral
of a polynomial and to use a polynomial to fit a given set
of data points.
</p>
<p>

<p><b>Copyright &copy; 2004-2009, Modelica Association and DLR.</b></p>

<p><i>
This package is <b>free</b> software. It can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> in the documentation of package
Modelica in file \"Modelica/package.mo\".
</i>
</p>

</HTML>
",         revisions="<html>
<ul>
<li><i>Oct. 22, 2004</i> by Martin Otter (DLR):<br>
       Renamed functions to not have abbrevations.<br>
       Based fitting on LAPACK<br>
       New function to return the polynomial of an indefinite integral<li>
<li><i>Sept. 3, 2004</i> by Jonas Eborn (Scynamics):<br>
       polyderval, polyintval added<li>
<li><i>March 1, 2004</i> by Martin Otter (DLR):<br>
       first version implemented
</li>
</ul>
</html>"));

          function evaluate "Evaluate polynomial at a given abszissa value"
            extends Modelica.Icons.Function;
            input Real p[:]
            "Polynomial coefficients (p[1] is coefficient of highest power)";
            input Real u "Abszissa value";
            output Real y "Value of polynomial at u";
            annotation(derivative(zeroDerivative=p)=evaluate_der);
          algorithm
            y := p[1];
            for j in 2:size(p, 1) loop
              y := p[j] + u*y;
            end for;
          end evaluate;

          function derivativeValue
          "Value of derivative of polynomial at abszissa value u"
            extends Modelica.Icons.Function;
            input Real p[:]
            "Polynomial coefficients (p[1] is coefficient of highest power)";
            input Real u "Abszissa value";
            output Real y "Value of derivative of polynomial at u";
            annotation(derivative(zeroDerivative=p)=derivativeValue_der);
        protected
            Integer n=size(p, 1);
          algorithm
            y := p[1]*(n - 1);
            for j in 2:size(p, 1)-1 loop
              y := p[j]*(n - j) + u*y;
            end for;
          end derivativeValue;

          function secondDerivativeValue
          "Value of 2nd derivative of polynomial at abszissa value u"
            extends Modelica.Icons.Function;
            input Real p[:]
            "Polynomial coefficients (p[1] is coefficient of highest power)";
            input Real u "Abszissa value";
            output Real y "Value of 2nd derivative of polynomial at u";
        protected
            Integer n=size(p, 1);
          algorithm
            y := p[1]*(n - 1)*(n - 2);
            for j in 2:size(p, 1)-2 loop
              y := p[j]*(n - j)*(n - j - 1) + u*y;
            end for;
          end secondDerivativeValue;

          function integralValue
          "Integral of polynomial p(u) from u_low to u_high"
            extends Modelica.Icons.Function;
            input Real p[:] "Polynomial coefficients";
            input Real u_high "High integrand value";
            input Real u_low=0 "Low integrand value, default 0";
            output Real integral=0.0
            "Integral of polynomial p from u_low to u_high";
            annotation(derivative(zeroDerivative=p)=integralValue_der);
        protected
            Integer n=size(p, 1) "degree of integrated polynomial";
            Real y_low=0 "value at lower integrand";
          algorithm
            for j in 1:n loop
              integral := u_high*(p[j]/(n - j + 1) + integral);
              y_low := u_low*(p[j]/(n - j + 1) + y_low);
            end for;
            integral := integral - y_low;
          end integralValue;

          function fitting
          "Computes the coefficients of a polynomial that fits a set of data points in a least-squares sense"
            extends Modelica.Icons.Function;
            input Real u[:] "Abscissa data values";
            input Real y[size(u, 1)] "Ordinate data values";
            input Integer n(min=1)
            "Order of desired polynomial that fits the data points (u,y)";
            output Real p[n + 1]
            "Polynomial coefficients of polynomial that fits the date points";
            annotation (Documentation(info="<HTML>
<p>
Polynomials.fitting(u,y,n) computes the coefficients of a polynomial
p(u) of degree \"n\" that fits the data \"p(u[i]) - y[i]\"
in a least squares sense. The polynomial is
returned as a vector p[n+1] that has the following definition:
</p>
<pre>
  p(u) = p[1]*u^n + p[2]*u^(n-1) + ... + p[n]*u + p[n+1];
</pre>
</HTML>"));
        protected
            Real V[size(u, 1), n + 1] "Vandermonde matrix";
          algorithm
            // Construct Vandermonde matrix
            V[:, n + 1] := ones(size(u, 1));
            for j in n:-1:1 loop
              V[:, j] := {u[i] * V[i, j + 1] for i in 1:size(u,1)};
            end for;

            // Solve least squares problem
            p :=Modelica.Math.Matrices.leastSquares(V, y);
          end fitting;

          function evaluate_der "Evaluate polynomial at a given abszissa value"
            extends Modelica.Icons.Function;
            input Real p[:]
            "Polynomial coefficients (p[1] is coefficient of highest power)";
            input Real u "Abszissa value";
            input Real du "Abszissa value";
            output Real dy "Value of polynomial at u";
        protected
            Integer n=size(p, 1);
          algorithm
            dy := p[1]*(n - 1);
            for j in 2:size(p, 1)-1 loop
              dy := p[j]*(n - j) + u*dy;
            end for;
            dy := dy*du;
          end evaluate_der;

          function integralValue_der
          "Time derivative of integral of polynomial p(u) from u_low to u_high, assuming only u_high as time-dependent (Leibnitz rule)"
            extends Modelica.Icons.Function;
            input Real p[:] "Polynomial coefficients";
            input Real u_high "High integrand value";
            input Real u_low=0 "Low integrand value, default 0";
            input Real du_high "High integrand value";
            input Real du_low=0 "Low integrand value, default 0";
            output Real dintegral=0.0
            "Integral of polynomial p from u_low to u_high";
          algorithm
            dintegral := evaluate(p,u_high)*du_high;
          end integralValue_der;

          function derivativeValue_der
          "time derivative of derivative of polynomial"
            extends Modelica.Icons.Function;
            input Real p[:]
            "Polynomial coefficients (p[1] is coefficient of highest power)";
            input Real u "Abszissa value";
            input Real du "delta of abszissa value";
            output Real dy
            "time-derivative of derivative of polynomial w.r.t. input variable at u";
        protected
            Integer n=size(p, 1);
          algorithm
            dy := secondDerivativeValue(p,u)*du;
          end derivativeValue_der;
        end Polynomials_Temp;
      annotation (
        Documentation(info="<HTML>
<h4>Table based media</h4>
<p>
This is the base package for medium models of incompressible fluids based on
tables. The minimal data to provide for a useful medium description is tables
of density and heat capacity as functions of temperature.
</p>
<h4>Using the package TableBased</h4>
<p>
To implement a new medium model, create a package that <b>extends</b> TableBased
and provides one or more of the constant tables:
<pre>
tableDensity        = [T, d];
tableHeatCapacity   = [T, Cp];
tableConductivity   = [T, lam];
tableViscosity      = [T, eta];
tableVaporPressure  = [T, pVap];
</pre>
The table data is used to fit constant polynomials of order <b>npol</b>, the
temperature data points do not need to be same for different properties. Properties
like enthalpy, inner energy and entropy are calculated consistently from integrals
and derivatives of d(T) and Cp(T). The minimal
data for a useful medium model is thus density and heat capacity. Transport
properties and vapor pressure are optional, if the data tables are empty the corresponding
function calls can not be used.
</HTML>"));
      end TableBased;
      annotation (
        Documentation(info="<HTML>
<h4>Incompressible media package</h4>
<p>
This package provides a structure and examples of how to create simple
medium models of incompressible fluids, meaning fluids with very little
pressure influence on density. The medium properties is typically described
in terms of tables, functions or polynomial coefficients.
</p>
<h4>Definitions</h4>
<p>
The common meaning of <em>incompressible</em> is that properties like density
and enthalpy are independent of pressure. Thus properties are conveniently
described as functions of temperature, e.g. as polynomials density(T) and cp(T).
However, enthalpy can not be independent of pressure since h = u - p/d. For liquids
it is anyway
common to neglect this dependence since for constant density the neglected term
is (p - p0)/d, which in comparison with cp is very small for most liquids. For
water, the equivalent change of temperature to increasing pressure 1 bar is
0.025 Kelvin.
</p>
<p>
Two boolean flags are used to choose how enthalpy and inner energy is calculated:
<ul>
<li><b>enthalpyOfT</b>=true, means assuming that enthalpy is only a function
of temperature, neglecting the pressure dependent term.</li>
<li><b>singleState</b>=true, means also neglect the pressure influence on inner
energy, which makes all medium properties pure functions of temperature.</li>
</ul>
The default setting for both these flags is true, which enables the simulation tool
to choose temperature as the only medium state and avoids non-linear equation
systems, see the section about
<a href=\"Modelica://Modelica.Media.UsersGuide.MediumDefinition.StaticStateSelection\">Static
state selection</a> in the Modelica.Media User's Guide.

</p>
<h4>Contents</h4>
<p>
Currently, the package contains the following parts:
</p>
<ol>
<li> <a href=\"Modelica://Modelica.Media.Incompressible.TableBased\">
      Table based medium models</a></li>
<li> <a href=\"Modelica://Modelica.Media.Incompressible.Examples\">
      Example medium models</a></li>
</ol>

<p>
A few examples are given in the Examples package. The model
<a href=\"Modelica://Modelica.Media.Incompressible.Examples.Glycol47\">
Examples.Glycol47</a> shows how the medium models can be used. For more
realistic examples of how to implement volume models with medium properties
look in the <a href=\"Modelica://Modelica.Media.UsersGuide.MediumUsage\">Medium
usage section</a> of the User's Guide.
</p>

</HTML>"));
    end Incompressible;
  end Media;

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
  <li> v1.2.0 2009/08/26 Anton Haumer<br>
       added component ThermalCollector</li>

</ul>
</html>"));

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

  package Math
  "Library of mathematical functions (e.g., sin, cos) and of functions operating on vectors and matrices"
  import SI = Modelica.SIunits;
  extends Modelica.Icons.Library2;
  annotation (
    Invisible=true,
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-59,-9},{42,-56}},
          lineColor={0,0,0},
          textString="f(x)")}),
    Documentation(info="<HTML>
<p>
This package contains <b>basic mathematical functions</b> (such as sin(..)),
as well as functions operating on <b>vectors</b> and <b>matrices</b>.
</p>

<dl>
<dt><b>Main Author:</b>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
    Institut f&uuml;r Robotik und Mechatronik<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    Germany<br>
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
       Function tempInterpol2 added.</li>
<li><i>Oct. 24, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Icons for icon and diagram level introduced.</li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized.</li>
</ul>

</html>"));

  package Matrices "Library of functions operating on matrices"
    extends Modelica.Icons.Library;
    annotation (
      Documentation(info="<HTML>
<h4>Library content</h4>
<p>
This library provides functions operating on matrices:
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><th><i>Function</i></th>
      <th><i>Description</i></th>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.isEqual\">isEqual</a>(M1, M2)</td>
      <td valign=\"top\">Determines whether two matrices have the same size and elements</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.norm\">norm</a>(A)</td>
      <td valign=\"top\">1-, 2- and infinity-norm of matrix A</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.sort\">sort</a>(M)</td>
      <td valign=\"top\">Sort rows or columns of matrix in ascending or descending order</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.solve\">solve</a>(A,b)</td>
      <td valign=\"top\">Solve real system of linear equations A*x=b with a b vector</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.solve2\">solve2</a>(A,B)</td>
      <td valign=\"top\">Solve real system of linear equations A*X=B with a B matrix</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.leastSquares\">leastSquares</a>(A,b)</td>
      <td valign=\"top\">Solve overdetermined or underdetermined real system of <br>
          linear equations A*x=b in a least squares sense</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.equalityLeastSquares\">equalityLeastSquares</a>(A,a,B,b)</td>
      <td valign=\"top\">Solve a linear equality constrained least squares problem:<br>
          min|A*x-a|^2 subject to B*x=b</td>
  </tr>
  <tr><td valign=\"top\">(LU,p,info) = <a href=\"Modelica://Modelica.Math.Matrices.LU\">LU</a>(A)</td>
      <td valign=\"top\">LU decomposition of square or rectangular matrix</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.LU_solve\">LU_solve</a>(LU,p,b)</td>
      <td valign=\"top\">Solve real system of linear equations P*L*U*x=b with a<br>
          b vector and an LU decomposition from \"LU(..)\"</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.LU_solve2\">LU_solve2</a>(LU,p,B)</td>
      <td valign=\"top\">Solve real system of linear equations P*L*U*X=B with a<br>
          B matrix and an LU decomposition from \"LU(..)\"</td>
  </tr>
  <tr><td valign=\"top\">(Q,R,p) = <a href=\"Modelica://Modelica.Math.Matrices.QR\">QR</a>(A)</td>
      <td valign=\"top\"> QR decomposition with column pivoting of rectangular matrix (Q*R = A[:,p]) </td>
  </tr>
  <tr><td valign=\"top\">eval = <a href=\"Modelica://Modelica.Math.Matrices.eigenValues\">eigenValues</a>(A)<br>
          (eval,evec) = <a href=\"Modelica://Modelica.Math.Matrices.eigenValues\">eigenValues</a>(A)</td>
      <td valign=\"top\"> Compute eigenvalues and optionally eigenvectors<br>
           for a real, nonsymmetric matrix </td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.eigenValueMatrix\">eigenValueMatrix</a>(eigen)</td>
      <td valign=\"top\"> Return real valued block diagonal matrix J of eigenvalues of
            matrix A (A=V*J*Vinv) </td>
  </tr>
  <tr><td valign=\"top\">sigma = <a href=\"Modelica://Modelica.Math.Matrices.singularValues\">singularValues</a>(A)<br>
      (sigma,U,VT) = <a href=\"Modelica://Modelica.Math.Matrices.singularValues\">singularValues</a>(A)</td>
      <td valign=\"top\"> Compute singular values and optionally left and right singular vectors </td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.det\">det</a>(A)</td>
      <td valign=\"top\"> Determinant of a matrix (do <b>not</b> use; use rank(..))</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.inv\">inv</a>(A)</td>
      <td valign=\"top\"> Inverse of a matrix </td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.rank\">rank</a>(A)</td>
      <td valign=\"top\"> Rank of a matrix </td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.balance\">balance</a>(A)</td>
      <td valign=\"top\">Balance a square matrix to improve the condition</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices.exp\">exp</a>(A)</td>
      <td valign=\"top\"> Compute the exponential of a matrix by adaptive Taylor series<br>
           expansion with scaling and balancing</td>
  </tr>
  <tr><td valign=\"top\">(P, G) = <a href=\"Modelica://Modelica.Math.Matrices.integralExp\">integralExp</a>(A,B)</td>
      <td valign=\"top\"> Compute the exponential of a matrix and its integral</td>
  </tr>
  <tr><td valign=\"top\">(P, G, GT) = <a href=\"Modelica://Modelica.Math.Matrices.integralExpT\">integralExpT</a>(A,B)</td>
      <td valign=\"top\"> Compute the exponential of a matrix and two integrals</td>
  </tr>
</table>

<p>
Most functions are solely an interface to the external LAPACK library
(<a href=\"http://www.netlib.org/lapack\">http://www.netlib.org/lapack</a>).
The details of this library are described in:
</p>

<dl>
<dt>Anderson E., Bai Z., Bischof C., Blackford S., Demmel J., Dongarra J.,
    Du Croz J., Greenbaum A., Hammarling S., McKenney A., and Sorensen D.:</dt>
<dd> <b>Lapack Users' Guide</b>.
     Third Edition, SIAM, 1999.</dd>
</dl>

<h4>See also</h4>
<a href=\"Modelica://Modelica.Math.Vectors\">Vectors</a>

</HTML>
"));

    function solve
    "Solve real system of linear equations A*x=b with a b vector (Gaussian elemination with partial pivoting)"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)] "Matrix A of A*x = b";
      input Real b[size(A, 1)] "Vector b of A*x = b";
      output Real x[size(b, 1)] "Vector x such that A*x = b";

      annotation (
        Documentation(info="<HTML>
<h4>Syntax</h4>
<blockquote><pre>
Matrices.<b>solve</b>(A,b);
</pre></blockquote>
<h4>Description</h4>
<p>
This function call returns the
solution <b>x</b> of the linear system of equations
</p>
<blockquote>
<p>
<b>A</b>*<b>x</b> = <b>b</b>
</p>
</blockquote>
<p>
If a unique solution <b>x</b> does not exist (since <b>A</b> is singular),
an exception is raised.
</p>
<p>
Note, the solution is computed with the LAPACK function \"dgesv\",
i.e., by Gaussian elemination with partial pivoting.
</p>
<h4>Example</h4>
<blockquote><pre>
  Real A[3,3] = [1,2,3;
                 3,4,5;
                 2,1,4];
  Real b[3] = {10,22,12};
  Real x[3];
<b>algorithm</b>
  x := Matrices.solve(A,b);  // x = {3,2,1}
</pre></blockquote>
<h4>See also</h4>
<a href=\"Modelica://Modelica.Math.Matrices.LU\">Matrices.LU</a>,
<a href=\"Modelica://Modelica.Math.Matrices.LU_solve\">Matrices.LU_solve</a>
</HTML>"));

  protected
      Integer info;
    algorithm
      (x,info) := LAPACK.dgesv_vec(A, b);
      assert(info == 0, "Solving a linear system of equations with function
\"Matrices.solve\" is not possible, because the system has either
no or infinitely many solutions (A is singular).");
    end solve;

    function leastSquares
    "Solve overdetermined or underdetermined real system of linear equations A*x=b in a least squares sense (A may be rank deficient)"
      extends Modelica.Icons.Function;
      input Real A[:, :] "Matrix A";
      input Real b[size(A, 1)] "Vector b";
      output Real x[size(A, 2)]
      "Vector x such that min|A*x-b|^2 if size(A,1) >= size(A,2) or min|x|^2 and A*x=b, if size(A,1) < size(A,2)";

      annotation (
        Documentation(info="<HTML>
<h4>Syntax</h4>
<blockquote><pre>
x = Matrices.<b>leastSquares</b>(A,b);
</pre></blockquote>
<h4>Description</h4>
<p>
A linear system of equations A*x = b has no solutions or infinitely
many solutions if A is not square. Function \"leastSquares\" returns
a solution in a least squarse sense:
</p>
<pre>
  size(A,1) &gt; size(A,2):  returns x such that |A*x - b|^2 is a minimum
  size(A,1) = size(A,2):  returns x such that A*x = b
  size(A,1) &lt; size(A,2):  returns x such that |x|^2 is a minimum for all
                          vectors x that fulfill A*x = b
</pre>
<p>
Note, the solution is computed with the LAPACK function \"dgelsx\",
i.e., QR or LQ factorization of A with column pivoting.
If A does not have full rank,
the solution is not unique and from the infinitely many solutions
the one is selected that minimizes both |x|^2 and |A*x - b|^2.
</p>
</HTML>"));

  protected
      Integer info;
      Integer rank;
      Real xx[max(size(A,1),size(A,2))];
    algorithm
      (xx,info,rank) := LAPACK.dgelsx_vec(A, b, 100*Modelica.Constants.eps);
      x := xx[1:size(A,2)];
      assert(info == 0, "Solving an overdetermined or underdetermined linear system of
equations with function \"Matrices.leastSquares\" failed.");
    end leastSquares;

    package LAPACK
    "Interface to LAPACK library (should usually not directly be used but only indirectly via Modelica.Math.Matrices)"
      extends Modelica.Icons.Library;

      function dgelsx_vec
      "Computes the minimum-norm solution to a real linear least squares problem with rank deficient A"

        extends Modelica.Icons.Function;
        input Real A[:, :];
        input Real b[size(A,1)];
        input Real rcond=0.0 "Reciprocal condition number to estimate rank";
        output Real x[max(nrow,ncol)]= cat(1,b,zeros(max(nrow,ncol)-nrow))
        "solution is in first size(A,2) rows";
        output Integer info;
        output Integer rank "Effective rank of A";
    protected
        Integer nrow=size(A,1);
        Integer ncol=size(A,2);
        Integer nx=max(nrow,ncol);
        Integer lwork=max( min(nrow,ncol)+3*ncol, 2*min(nrow,ncol)+1);
        Real work[lwork];
        Real Awork[nrow,ncol]=A;
        Integer jpvt[ncol]=zeros(ncol);
        external "FORTRAN 77" dgelsx(nrow, ncol, 1, Awork, nrow, x, nx, jpvt,
                                    rcond, rank, work, lwork, info) annotation (Library="Lapack");

        annotation (
          Documentation(info="Lapack documentation
  Purpose
  =======

  DGELSX computes the minimum-norm solution to a real linear least
  squares problem:
      minimize || A * X - B ||
  using a complete orthogonal factorization of A.  A is an M-by-N
  matrix which may be rank-deficient.

  Several right hand side vectors b and solution vectors x can be
  handled in a single call; they are stored as the columns of the
  M-by-NRHS right hand side matrix B and the N-by-NRHS solution
  matrix X.

  The routine first computes a QR factorization with column pivoting:
      A * P = Q * [ R11 R12 ]
                  [  0  R22 ]
  with R11 defined as the largest leading submatrix whose estimated
  condition number is less than 1/RCOND.  The order of R11, RANK,
  is the effective rank of A.

  Then, R22 is considered to be negligible, and R12 is annihilated
  by orthogonal transformations from the right, arriving at the
  complete orthogonal factorization:
     A * P = Q * [ T11 0 ] * Z
                 [  0  0 ]
  The minimum-norm solution is then
     X = P * Z' [ inv(T11)*Q1'*B ]
                [        0       ]
  where Q1 consists of the first RANK columns of Q.

  Arguments
  =========

  M       (input) INTEGER
          The number of rows of the matrix A.  M >= 0.

  N       (input) INTEGER
          The number of columns of the matrix A.  N >= 0.

  NRHS    (input) INTEGER
          The number of right hand sides, i.e., the number of
          columns of matrices B and X. NRHS >= 0.

  A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
          On entry, the M-by-N matrix A.
          On exit, A has been overwritten by details of its
          complete orthogonal factorization.

  LDA     (input) INTEGER
          The leading dimension of the array A.  LDA >= max(1,M).

  B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
          On entry, the M-by-NRHS right hand side matrix B.
          On exit, the N-by-NRHS solution matrix X.
          If m >= n and RANK = n, the residual sum-of-squares for
          the solution in the i-th column is given by the sum of
          squares of elements N+1:M in that column.

  LDB     (input) INTEGER
          The leading dimension of the array B. LDB >= max(1,M,N).

  JPVT    (input/output) INTEGER array, dimension (N)
          On entry, if JPVT(i) .ne. 0, the i-th column of A is an
          initial column, otherwise it is a free column.  Before
          the QR factorization of A, all initial columns are
          permuted to the leading positions; only the remaining
          free columns are moved as a result of column pivoting
          during the factorization.
          On exit, if JPVT(i) = k, then the i-th column of A*P
          was the k-th column of A.

  RCOND   (input) DOUBLE PRECISION
          RCOND is used to determine the effective rank of A, which
          is defined as the order of the largest leading triangular
          submatrix R11 in the QR factorization with pivoting of A,
          whose estimated condition number < 1/RCOND.

  RANK    (output) INTEGER
          The effective rank of A, i.e., the order of the submatrix
          R11.  This is the same as the order of the submatrix T11
          in the complete orthogonal factorization of A.

  WORK    (workspace) DOUBLE PRECISION array, dimension
                      (max( min(M,N)+3*N, 2*min(M,N)+NRHS )),

  INFO    (output) INTEGER
          = 0:  successful exit
          < 0:  if INFO = -i, the i-th argument had an illegal value    "));

      end dgelsx_vec;

      function dgesv_vec
      "Solve real system of linear equations A*x=b with a b vector"
        extends Modelica.Icons.Function;
        input Real A[:, size(A, 1)];
        input Real b[size(A, 1)];
        output Real x[size(A, 1)]=b;
        output Integer info;
    protected
        Real Awork[size(A, 1), size(A, 1)]=A;
        Integer ipiv[size(A, 1)];

        annotation (
          Documentation(info="
Same as function LAPACK.dgesv, but right hand side is a vector and not a matrix.
For details of the arguments, see documentation of dgesv.
"));

      external "FORTRAN 77" dgesv(size(A, 1), 1, Awork, size(A, 1), ipiv, x, size(
          A, 1), info) annotation (Library="Lapack");
      end dgesv_vec;
        annotation (Documentation(info="<html>
<p>
This package contains external Modelica functions as interface to the
LAPACK library
(<a href=\"http://www.netlib.org/lapack\">http://www.netlib.org/lapack</a>)
that provides FORTRAN subroutines to solve linear algebra
tasks. Usually, these functions are not directly called, but only via
the much more convenient interface of
<a href=\"Modelica://Modelica.Math.Matrices\">Modelica.Math.Matrices</a>.
The documentation of the LAPACK functions is a copy of the original
FORTRAN code.
</p>

<p>
The details of LAPACK are described in:
</p>

<dl>
<dt>Anderson E., Bai Z., Bischof C., Blackford S., Demmel J., Dongarra J.,
    Du Croz J., Greenbaum A., Hammarling S., McKenney A., and Sorensen D.:</dt>
<dd> <b>Lapack Users' Guide</b>.
     Third Edition, SIAM, 1999.</dd>
</dl>

<p>
This package contains a direct interface to the LAPACK subroutines
</p>

</html>"));
    end LAPACK;
  end Matrices;

  function cos "Cosine"
    extends baseIcon1;
    input SI.Angle u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,0},{68,0}}, color={192,192,192}),
          Polygon(
            points={{90,0},{68,8},{68,-8},{90,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,80},{-74.4,78.1},{-68.7,72.3},{-63.1,63},{-56.7,48.7},
                {-48.6,26.6},{-29.3,-32.5},{-22.1,-51.7},{-15.7,-65.3},{-10.1,-73.8},
                {-4.42,-78.8},{1.21,-79.9},{6.83,-77.1},{12.5,-70.6},{18.1,-60.6},
                {24.5,-45.7},{32.6,-23},{50.3,31.3},{57.5,50.7},{63.9,64.6},{69.5,
                73.4},{75.2,78.6},{80,80}}, color={0,0,0}),
          Text(
            extent={{-36,82},{36,34}},
            lineColor={192,192,192},
            textString="cos")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Text(
            extent={{-103,72},{-83,88}},
            textString="1",
            lineColor={0,0,255}),
          Text(
            extent={{-103,-72},{-83,-88}},
            textString="-1",
            lineColor={0,0,255}),
          Text(
            extent={{70,25},{90,5}},
            textString="2*pi",
            lineColor={0,0,255}),
          Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
            points={{98,0},{82,6},{82,-6},{98,0}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,80},{-74.4,78.1},{-68.7,72.3},{-63.1,63},{-56.7,48.7},{-48.6,
                26.6},{-29.3,-32.5},{-22.1,-51.7},{-15.7,-65.3},{-10.1,-73.8},{-4.42,
                -78.8},{1.21,-79.9},{6.83,-77.1},{12.5,-70.6},{18.1,-60.6},{24.5,
                -45.7},{32.6,-23},{50.3,31.3},{57.5,50.7},{63.9,64.6},{69.5,73.4},
                {75.2,78.6},{80,80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{78,-6},{98,-26}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{-80,-80},{18,-80}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = cos(u), with -&infin; &lt; u &lt; &infin;:
</p>

<p>
<img src=\"../Images/Math/cos.png\">
</p>
</html>"));

  external "C" y=  cos(u);
  annotation(Library="ModelicaExternalC");
  end cos;

  function tan "Tangent (u shall not be -pi/2, pi/2, 3*pi/2, ...)"
    extends baseIcon2;
    input SI.Angle u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,0},{68,0}}, color={192,192,192}),
          Polygon(
            points={{90,0},{68,8},{68,-8},{90,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-78.4,-68.4},{-76.8,-59.7},{-74.4,-50},{-71.2,-40.9},
                {-67.1,-33},{-60.7,-24.8},{-51.1,-17.2},{-35.8,-9.98},{-4.42,-1.07},
                {33.4,9.12},{49.4,16.2},{59.1,23.2},{65.5,30.6},{70.4,39.1},{73.6,
                47.4},{76,56.1},{77.6,63.8},{80,80}}, color={0,0,0}),
          Text(
            extent={{-90,72},{-18,24}},
            lineColor={192,192,192},
            textString="tan")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Text(
            extent={{-37,-72},{-17,-88}},
            textString="-5.8",
            lineColor={0,0,255}),
          Text(
            extent={{-33,86},{-13,70}},
            textString=" 5.8",
            lineColor={0,0,255}),
          Text(
            extent={{68,-13},{88,-33}},
            textString="1.4",
            lineColor={0,0,255}),
          Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
            points={{98,0},{82,6},{82,-6},{98,0}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,-80},{-78.4,-68.4},{-76.8,-59.7},{-74.4,-50},{-71.2,-40.9},
                {-67.1,-33},{-60.7,-24.8},{-51.1,-17.2},{-35.8,-9.98},{-4.42,-1.07},
                {33.4,9.12},{49.4,16.2},{59.1,23.2},{65.5,30.6},{70.4,39.1},{73.6,
                47.4},{76,56.1},{77.6,63.8},{80,80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{82,22},{102,2}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{0,80},{86,80}},
            color={175,175,175},
            smooth=Smooth.None),
          Line(
            points={{80,88},{80,-16}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = tan(u), with -&infin; &lt; u &lt; &infin;
(if u is a multiple of (2n-1)*pi/2, y = tan(u) is +/- infinity).
</p>

<p>
<img src=\"../Images/Math/tan.png\">
</p>
</html>"));

  external "C" y=  tan(u);
  annotation(Library="ModelicaExternalC");
  end tan;

  function asin "Inverse sine (-1 <= u <= 1)"
    extends baseIcon2;
    input Real u;
    output SI.Angle y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,0},{68,0}}, color={192,192,192}),
          Polygon(
            points={{90,0},{68,8},{68,-8},{90,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-79.2,-72.8},{-77.6,-67.5},{-73.6,-59.4},{-66.3,
                -49.8},{-53.5,-37.3},{-30.2,-19.7},{37.4,24.8},{57.5,40.8},{68.7,
                52.7},{75.2,62.2},{77.6,67.5},{80,80}}, color={0,0,0}),
          Text(
            extent={{-88,78},{-16,30}},
            lineColor={192,192,192},
            textString="asin")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Text(
            extent={{-40,-72},{-15,-88}},
            textString="-pi/2",
            lineColor={0,0,255}),
          Text(
            extent={{-38,88},{-13,72}},
            textString=" pi/2",
            lineColor={0,0,255}),
          Text(
            extent={{68,-9},{88,-29}},
            textString="+1",
            lineColor={0,0,255}),
          Text(
            extent={{-90,21},{-70,1}},
            textString="-1",
            lineColor={0,0,255}),
          Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
            points={{98,0},{82,6},{82,-6},{98,0}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,-80},{-79.2,-72.8},{-77.6,-67.5},{-73.6,-59.4},{-66.3,-49.8},
                {-53.5,-37.3},{-30.2,-19.7},{37.4,24.8},{57.5,40.8},{68.7,52.7},{
                75.2,62.2},{77.6,67.5},{80,80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{82,24},{102,4}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{0,80},{86,80}},
            color={175,175,175},
            smooth=Smooth.None),
          Line(
            points={{80,86},{80,-10}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = asin(u), with -1 &le; u &le; +1:
</p>

<p>
<img src=\"../Images/Math/asin.png\">
</p>
</html>"));

  external "C" y=  asin(u);
  annotation(Library="ModelicaExternalC");
  end asin;

  function cosh "Hyperbolic cosine"
    extends baseIcon2;
    input Real u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,-86.083},{68,-86.083}}, color={192,192,192}),
          Polygon(
            points={{90,-86.083},{68,-78.083},{68,-94.083},{90,-86.083}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,80},{-77.6,61.1},{-74.4,39.3},{-71.2,20.7},{-67.1,
                1.29},{-63.1,-14.6},{-58.3,-29.8},{-52.7,-43.5},{-46.2,-55.1},{-39,
                -64.3},{-30.2,-71.7},{-18.9,-77.1},{-4.42,-79.9},{10.9,-79.1},{
                23.7,-75.2},{34.2,-68.7},{42.2,-60.6},{48.6,-51.2},{54.3,-40},{
                59.1,-27.5},{63.1,-14.6},{67.1,1.29},{71.2,20.7},{74.4,39.3},{
                77.6,61.1},{80,80}}, color={0,0,0}),
          Text(
            extent={{4,66},{66,20}},
            lineColor={192,192,192},
            textString="cosh")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-100,-84.083},{84,-84.083}}, color={95,95,95}),
          Polygon(
            points={{98,-84.083},{82,-78.083},{82,-90.083},{98,-84.083}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,80},{-77.6,61.1},{-74.4,39.3},{-71.2,20.7},{-67.1,1.29},
                {-63.1,-14.6},{-58.3,-29.8},{-52.7,-43.5},{-46.2,-55.1},{-39,-64.3},
                {-30.2,-71.7},{-18.9,-77.1},{-4.42,-79.9},{10.9,-79.1},{23.7,-75.2},
                {34.2,-68.7},{42.2,-60.6},{48.6,-51.2},{54.3,-40},{59.1,-27.5},{
                63.1,-14.6},{67.1,1.29},{71.2,20.7},{74.4,39.3},{77.6,61.1},{80,
                80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{-31,72},{-11,88}},
            textString="27",
            lineColor={0,0,255}),
          Text(
            extent={{64,-83},{84,-103}},
            textString="4",
            lineColor={0,0,255}),
          Text(
            extent={{-94,-63},{-74,-83}},
            textString="-4",
            lineColor={0,0,255}),
          Text(
            extent={{80,-60},{100,-80}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{0,80},{88,80}},
            color={175,175,175},
            smooth=Smooth.None),
          Line(
            points={{80,84},{80,-90}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = cosh(u), with -&infin; &lt; u &lt; &infin;:
</p>

<p>
<img src=\"../Images/Math/cosh.png\">
</p>
</html>"));

  external "C" y=  cosh(u);
  annotation(Library="ModelicaExternalC");
  end cosh;

  function tanh "Hyperbolic tangent"
    extends baseIcon2;
    input Real u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={0.5,0.5}), graphics={
          Line(points={{-90,0},{68,0}}, color={192,192,192}),
          Polygon(
            points={{90,0},{68,8},{68,-8},{90,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-47.8,-78.7},{-35.8,-75.7},{-27.7,-70.6},{-22.1,
                -64.2},{-17.3,-55.9},{-12.5,-44.3},{-7.64,-29.2},{-1.21,-4.82},{
                6.83,26.3},{11.7,42},{16.5,54.2},{21.3,63.1},{26.9,69.9},{34.2,75},
                {45.4,78.4},{72,79.9},{80,80}}, color={0,0,0}),
          Text(
            extent={{-88,72},{-16,24}},
            lineColor={192,192,192},
            textString="tanh")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={0.5,0.5}), graphics={
          Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
            points={{96,0},{80,6},{80,-6},{96,0}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,-80.5},{-47.8,-79.2},{-35.8,-76.2},{-27.7,-71.1},{-22.1,
                -64.7},{-17.3,-56.4},{-12.5,-44.8},{-7.64,-29.7},{-1.21,-5.32},{
                6.83,25.8},{11.7,41.5},{16.5,53.7},{21.3,62.6},{26.9,69.4},{34.2,
                74.5},{45.4,77.9},{72,79.4},{80,79.5}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{-29,72},{-9,88}},
            textString="1",
            lineColor={0,0,255}),
          Text(
            extent={{3,-72},{23,-88}},
            textString="-1",
            lineColor={0,0,255}),
          Text(
            extent={{82,-2},{102,-22}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{0,80},{88,80}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = tanh(u), with -&infin; &lt; u &lt; &infin;:
</p>

<p>
<img src=\"../Images/Math/tanh.png\">
</p>
</html>"));

  external "C" y=  tanh(u);
  annotation(Library="ModelicaExternalC");
  end tanh;

  function exp "Exponential, base e"
    extends baseIcon2;
    input Real u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,-80.3976},{68,-80.3976}}, color={192,192,192}),
          Polygon(
            points={{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},
                {34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{
                67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color={0,0,0}),
          Text(
            extent={{-86,50},{-14,2}},
            lineColor={192,192,192},
            textString="exp")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-100,-80.3976},{84,-80.3976}}, color={95,95,95}),
          Polygon(
            points={{98,-80.3976},{82,-74.3976},{82,-86.3976},{98,-80.3976}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},{
                34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{
                67.1,18.6},{72,38.2},{76,57.6},{80,80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{-31,72},{-11,88}},
            textString="20",
            lineColor={0,0,255}),
          Text(
            extent={{-92,-81},{-72,-101}},
            textString="-3",
            lineColor={0,0,255}),
          Text(
            extent={{66,-81},{86,-101}},
            textString="3",
            lineColor={0,0,255}),
          Text(
            extent={{2,-69},{22,-89}},
            textString="1",
            lineColor={0,0,255}),
          Text(
            extent={{78,-54},{98,-74}},
            lineColor={95,95,95},
            textString="u"),
          Line(
            points={{0,80},{88,80}},
            color={175,175,175},
            smooth=Smooth.None),
          Line(
            points={{80,84},{80,-84}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = exp(u), with -&infin; &lt; u &lt; &infin;:
</p>

<p>
<img src=\"../Images/Math/exp.png\">
</p>
</html>"));

  external "C" y=  exp(u);
  annotation(Library="ModelicaExternalC");
  end exp;

  function log "Natural (base e) logarithm (u shall be > 0)"
    extends baseIcon1;
    input Real u;
    output Real y;

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-90,0},{68,0}}, color={192,192,192}),
          Polygon(
            points={{90,0},{68,8},{68,-8},{90,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-79.2,-50.6},{-78.4,-37},{-77.6,-28},{-76.8,-21.3},
                {-75.2,-11.4},{-72.8,-1.31},{-69.5,8.08},{-64.7,17.9},{-57.5,28},
                {-47,38.1},{-31.8,48.1},{-10.1,58},{22.1,68},{68.7,78.1},{80,80}},
              color={0,0,0}),
          Text(
            extent={{-6,-24},{66,-72}},
            lineColor={192,192,192},
            textString="log")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
            points={{100,0},{84,6},{84,-6},{100,0}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid),
          Line(
            points={{-78,-80},{-77.2,-50.6},{-76.4,-37},{-75.6,-28},{-74.8,-21.3},
                {-73.2,-11.4},{-70.8,-1.31},{-67.5,8.08},{-62.7,17.9},{-55.5,28},
                {-45,38.1},{-29.8,48.1},{-8.1,58},{24.1,68},{70.7,78.1},{82,80}},
            color={0,0,255},
            thickness=0.5),
          Text(
            extent={{-105,72},{-85,88}},
            textString="3",
            lineColor={0,0,255}),
          Text(
            extent={{60,-3},{80,-23}},
            textString="20",
            lineColor={0,0,255}),
          Text(
            extent={{-78,-7},{-58,-27}},
            textString="1",
            lineColor={0,0,255}),
          Text(
            extent={{84,26},{104,6}},
            lineColor={95,95,95},
            textString="u"),
          Text(
            extent={{-100,9},{-80,-11}},
            textString="0",
            lineColor={0,0,255}),
          Line(
            points={{-80,80},{84,80}},
            color={175,175,175},
            smooth=Smooth.None),
          Line(
            points={{82,82},{82,-6}},
            color={175,175,175},
            smooth=Smooth.None)}),
      Documentation(info="<html>
<p>
This function returns y = log(10) (the natural logarithm of u),
with u &gt; 0:
</p>

<p>
<img src=\"../Images/Math/log.png\">
</p>
</html>"));

  external "C" y=  log(u);
  annotation(Library="ModelicaExternalC");
  end log;

  partial function baseIcon1
    "Basic icon for mathematical function with y-axis on left side"

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={
          Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,0},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,-80},{-80,68}}, color={192,192,192}),
          Polygon(
            points={{-80,90},{-88,68},{-72,68},{-80,90}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-150,150},{150,110}},
            textString="%name",
            lineColor={0,0,255})}),                          Diagram(
          coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
              100}}), graphics={
          Line(points={{-80,80},{-88,80}}, color={95,95,95}),
          Line(points={{-80,-80},{-88,-80}}, color={95,95,95}),
          Line(points={{-80,-90},{-80,84}}, color={95,95,95}),
          Text(
            extent={{-75,104},{-55,84}},
            lineColor={95,95,95},
            textString="y"),
          Polygon(
            points={{-80,98},{-86,82},{-74,82},{-80,98}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Icon for a mathematical function, consisting of an y-axis on the left side.
It is expected, that an x-axis is added and a plot of the function.
</p>
</html>"));
  end baseIcon1;

  partial function baseIcon2
    "Basic icon for mathematical function with y-axis in middle"

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={
          Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,0},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Line(points={{0,-80},{0,68}}, color={192,192,192}),
          Polygon(
            points={{0,90},{-8,68},{8,68},{0,90}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-150,150},{150,110}},
            textString="%name",
            lineColor={0,0,255})}),                          Diagram(graphics={
          Line(points={{0,80},{-8,80}}, color={95,95,95}),
          Line(points={{0,-80},{-8,-80}}, color={95,95,95}),
          Line(points={{0,-90},{0,84}}, color={95,95,95}),
          Text(
            extent={{5,104},{25,84}},
            lineColor={95,95,95},
            textString="y"),
          Polygon(
            points={{0,98},{-6,82},{6,82},{0,98}},
            lineColor={95,95,95},
            fillColor={95,95,95},
            fillPattern=FillPattern.Solid)}),
      Documentation(revisions="<html>
<p>
Icon for a mathematical function, consisting of an y-axis in the middle.
It is expected, that an x-axis is added and a plot of the function.
</p>
</html>"));
  end baseIcon2;
  end Math;

  package Utilities
  "Library of utility functions dedicated to scripting (operating on files, streams, strings, system)"
    extends Modelica.Icons.Library;
      annotation (
  Documentation(info="<html>
<p>
This package contains Modelica <b>functions</b> that are
especially suited for <b>scripting</b>. The functions might
be used to work with strings, read data from file, write data
to file or copy, move and remove files.
</p>
<p>
For an introduction, have especially a look at:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.Utilities.UsersGuide\">Modelica.Utilities.User's Guide</a>
     discusses the most important aspects of this library.</li>
<li> <a href=\"Modelica://Modelica.Utilities.Examples\">Modelica.Utilities.Examples</a>
     contains examples that demonstrate the usage of this library.</li>
</ul>
<p>
The following main sublibraries are available:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.Utilities.Files\">Files</a>
     provides functions to operate on files and directories, e.g.,
     to copy, move, remove files.</li>
<li> <a href=\"Modelica://Modelica.Utilities.Streams\">Streams</a>
     provides functions to read from files and write to files.</li>
<li> <a href=\"Modelica://Modelica.Utilities.Strings\">Strings</a>
     provides functions to operate on strings. E.g.
     substring, find, replace, sort, scanToken.</li>
<li> <a href=\"Modelica://Modelica.Utilities.System\">System</a>
     provides functions to interact with the environment.
     E.g., get or set the working directory or environment
     variables and to send a command to the default shell.</li>
</ul>

<p>
Copyright &copy; 1998-2009, Modelica Association, DLR and Dynasim.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b>
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p><br>
</html>
"));

    package Streams "Read from files and write to files"
      extends Modelica.Icons.Library;
      annotation (
        Documentation(info="<HTML>
<h4>Library content</h4>
<p>
Package <b>Streams</b> contains functions to input and output strings
to a message window or on files. Note that a string is interpreted
and displayed as html text (e.g., with print(..) or error(..))
if it is enclosed with the Modelica html quotation, e.g.,
</p>
<center>
string = \"&lt;html&gt; first line &lt;br&gt; second line &lt;/html&gt;\".
</center>
<p>
It is a quality of implementation, whether (a) all tags of html are supported
or only a subset, (b) how html tags are interpreted if the output device
does not allow to display formatted text.
</p>
<p>
In the table below an example call to every function is given:
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><th><b><i>Function/type</i></b></th><th><b><i>Description</i></b></th></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Streams.print\">print</a>(string)<br>
          <a href=\"Modelica://Modelica.Utilities.Streams.print\">print</a>(string,fileName)</td>
      <td valign=\"top\"> Print string \"string\" or vector of strings to message window or on
           file \"fileName\".</td>
  </tr>
  <tr><td valign=\"top\">stringVector =
         <a href=\"Modelica://Modelica.Utilities.Streams.readFile\">readFile</a>(fileName)</td>
      <td valign=\"top\"> Read complete text file and return it as a vector of strings.</td>
  </tr>
  <tr><td valign=\"top\">(string, endOfFile) =
         <a href=\"Modelica://Modelica.Utilities.Streams.readLine\">readLine</a>(fileName, lineNumber)</td>
      <td valign=\"top\">Returns from the file the content of line lineNumber.</td>
  </tr>
  <tr><td valign=\"top\">lines =
         <a href=\"Modelica://Modelica.Utilities.Streams.countLines\">countLines</a>(fileName)</td>
      <td valign=\"top\">Returns the number of lines in a file.</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Streams.error\">error</a>(string)</td>
      <td valign=\"top\"> Print error message \"string\" to message window
           and cancel all actions</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Streams.close\">close</a>(fileName)</td>
      <td valign=\"top\"> Close file if it is still open. Ignore call if
           file is already closed or does not exist. </td>
  </tr>
</table>
<p>
Use functions <b>scanXXX</b> from package
<a href=\"Modelica://Modelica.Utilities.Strings\">Strings</a>
to parse a string.
</p>
<p>
If Real, Integer or Boolean values shall be printed
or used in an error message, they have to be first converted
to strings with the builtin operator
<a href=\"Modelica://ModelicaReference.Operators.string\">String</a>(...).
Example:
</p>
<pre>
  <b>if</b> x &lt; 0 <b>or</b> x &gt; 1 <b>then</b>
     Streams.error(\"x (= \" + String(x) + \") has to be in the range 0 .. 1\");
  <b>end if</b>;
</pre>
</HTML>
"));

      function print "Print string to terminal or file"
        extends Modelica.Icons.Function;
        input String string="" "String to be printed";
        input String fileName=""
        "File where to print (empty string is the terminal)" 
                     annotation(Dialog(__Dymola_saveSelector(filter="Text files (*.txt)",
                            caption="Text file to store the output of print(..)")));
      external "C" ModelicaInternal_print(string, fileName);
        annotation (Library="ModelicaExternalC",
      Documentation(info="<HTML>
<h4>Syntax</h4>
<blockquote><pre>
Streams.<b>print</b>(string);
Streams.<b>print</b>(string,fileName);
</pre></blockquote>
<h4>Description</h4>
<p>
Function <b>print</b>(..) opens automatically the given file, if
it is not yet open. If the file does not exist, it is created.
If the file does exist, the given string is appended to the file.
If this is not desired, call \"Files.remove(fileName)\" before calling print
(\"remove(..)\" is silent, if the file does not exist).
The Modelica environment may close the file whenever appropriate.
This can be enforced by calling <b>Streams.close</b>(fileName).
After every call of \"print(..)\" a \"new line\" is printed automatically.
</p>
<h4>Example</h4>
<blockquote><pre>
  Streams.print(\"x = \" + String(x));
  Streams.print(\"y = \" + String(y));
  Streams.print(\"x = \" + String(y), \"mytestfile.txt\");
</pre></blockquote>
<p>
<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Utilities.Streams\">Streams</a>,
<a href=\"Modelica://Modelica.Utilities.Streams.error\">Streams.error</a>,
<a href=\"Modelica://ModelicaReference.Operators.string\">String</a>
</p>
</HTML>"));
      end print;

      function error "Print error message and cancel all actions"
        extends Modelica.Icons.Function;
        input String string "String to be printed to error message window";
        external "C" ModelicaError(string);
        annotation (Library="ModelicaExternalC",
      Documentation(info="<html>
<h4>Syntax</h4>
<blockquote><pre>
Streams.<b>error</b>(string);
</pre></blockquote>
<h4>Description</h4>
<p>
Print the string \"string\" as error message and
cancel all actions. Line breaks are characterized
by \"\\n\" in the string.
</p>
<h4>Example</h4>
<blockquote><pre>
  Streams.error(\"x (= \" + String(x) + \")\\nhas to be in the range 0 .. 1\");
</pre></blockquote>
<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Utilities.Streams\">Streams</a>,
<a href=\"Modelica://Modelica.Utilities.Streams.print\">Streams.print</a>,
<a href=\"Modelica://ModelicaReference.Operators.string\">String</a>
</p>
</html>"));
      end error;
    end Streams;

    package Strings "Operations on strings"

      function compare "Compare two strings lexicographically"
        extends Modelica.Icons.Function;
        input String string1;
        input String string2;
        input Boolean caseSensitive=true
        "= false, if case of letters is ignored";
        output Modelica.Utilities.Types.Compare result "Result of comparison";
      external "C" result = ModelicaStrings_compare(string1, string2, caseSensitive);
        annotation (Library="ModelicaExternalC", Documentation(info="<html>
<h4>Syntax</h4>
<blockquote><pre>
result = Strings.<b>compare</b>(string1, string2);
result = Strings.<b>compare</b>(string1, string2, caseSensitive=true);
</pre></blockquote>
<h4>Description</h4>
<p>
Compares two strings. If the optional argument caseSensitive=false,
upper case letters are treated as if they would be lower case letters.
The result of the comparison is returned as:
</p>
<pre>
  result = Modelica.Utilities.Types.Compare.Less     // string1 &lt; string2
         = Modelica.Utilities.Types.Compare.Equal    // string1 = string2
         = Modelica.Utilities.Types.Compare.Greater  // string1 &gt; string2
</pre>
<p>
Comparison is with regards to lexicographical order,
e.g., \"a\" &lt; \"b\";
</p>
</html>"));
      end compare;

      function isEqual "Determine whether two strings are identical"
        extends Modelica.Icons.Function;
        input String string1;
        input String string2;
        input Boolean caseSensitive=true
        "= false, if lower and upper case are ignored for the comparison";
        output Boolean identical "True, if string1 is identical to string2";
        annotation (
      Documentation(info="<html>
<h4>Syntax</h4>
<blockquote><pre>
Strings.<b>isEqual</b>(string1, string2);
Strings.<b>isEqual</b>(string1, string2, caseSensitive=true);
</pre></blockquote>
<h4>Description</h4>
<p>
Compare whether two strings are identical,
optionally ignoring case.
</p>
</html>"));
      algorithm
        identical :=compare(string1, string2, caseSensitive) == Types.Compare.Equal;
      end isEqual;
      extends Modelica.Icons.Library;
      annotation (
        Documentation(info="<HTML>
<h4>Library content</h4>
<p>
Package <b>Strings</b> contains functions to manipulate strings.
</p>
<p>
In the table below an example
call to every function is given using the <b>default</b> options.
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><th><b><i>Function</i></b></th><th><b><i>Description</i></b></th></tr>
  <tr><td valign=\"top\">len = <a href=\"Modelica://Modelica.Utilities.Strings.length\">length</a>(string)</td>
      <td valign=\"top\">Returns length of string</td></tr>
  <tr><td valign=\"top\">string2 = <a href=\"Modelica://Modelica.Utilities.Strings.substring\">substring</a>(string1,startIndex,endIndex)
       </td>
      <td valign=\"top\">Returns a substring defined by start and end index</td></tr>
  <tr><td valign=\"top\">result = <a href=\"Modelica://Modelica.Utilities.Strings.repeat\">repeat</a>(n)<br>
 result = <a href=\"Modelica://Modelica.Utilities.Strings.repeat\">repeat</a>(n,string)</td>
      <td valign=\"top\">Repeat a blank or a string n times.</td></tr>
  <tr><td valign=\"top\">result = <a href=\"Modelica://Modelica.Utilities.Strings.compare\">compare</a>(string1, string2)</td>
      <td valign=\"top\">Compares two substrings with regards to alphabetical order</td></tr>
  <tr><td valign=\"top\">identical =
<a href=\"Modelica://Modelica.Utilities.Strings.isEqual\">isEqual</a>(string1,string2)</td>
      <td valign=\"top\">Determine whether two strings are identical</td></tr>
  <tr><td valign=\"top\">result = <a href=\"Modelica://Modelica.Utilities.Strings.count\">count</a>(string,searchString)</td>
      <td valign=\"top\">Count the number of occurrences of a string</td></tr>
  <tr>
<td valign=\"top\">index = <a href=\"Modelica://Modelica.Utilities.Strings.find\">find</a>(string,searchString)</td>
      <td valign=\"top\">Find first occurrence of a string in another string</td></tr>
<tr>
<td valign=\"top\">index = <a href=\"Modelica://Modelica.Utilities.Strings.findLast\">findLast</a>(string,searchString)</td>
      <td valign=\"top\">Find last occurrence of a string in another string</td></tr>
  <tr><td valign=\"top\">string2 = <a href=\"Modelica://Modelica.Utilities.Strings.replace\">replace</a>(string,searchString,replaceString)</td>
      <td valign=\"top\">Replace one or all occurrences of a string</td></tr>
  <tr><td valign=\"top\">stringVector2 = <a href=\"Modelica://Modelica.Utilities.Strings.sort\">sort</a>(stringVector1)</td>
      <td valign=\"top\">Sort vector of strings in alphabetic order</td></tr>
  <tr><td valign=\"top\">(token, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanToken\">scanToken</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for a token (Real/Integer/Boolean/String/Identifier/Delimiter/NoToken)</td></tr>
  <tr><td valign=\"top\">(number, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanReal\">scanReal</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for a Real constant</td></tr>
  <tr><td valign=\"top\">(number, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanInteger\">scanInteger</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for an Integer constant</td></tr>
  <tr><td valign=\"top\">(boolean, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanBoolean\">scanBoolean</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for a Boolean constant</td></tr>
  <tr><td valign=\"top\">(string2, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanString\">scanString</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for a String constant</td></tr>
  <tr><td valign=\"top\">(identifier, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanIdentifier\">scanIdentifier</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for an identifier</td></tr>
  <tr><td valign=\"top\">(delimiter, index) = <a href=\"Modelica://Modelica.Utilities.Strings.scanDelimiter\">scanDelimiter</a>(string,startIndex)</td>
      <td valign=\"top\">Scan for delimiters</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Strings.scanNoToken\">scanNoToken</a>(string,startIndex)</td>
      <td valign=\"top\">Check that remaining part of string consists solely of <br>
          white space or line comments (\"// ...\\n\").</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Strings.syntaxError\">syntaxError</a>(string,index,message)</td>
      <td valign=\"top\"> Print a \"syntax error message\" as well as a string and the <br>
           index at which scanning detected an error</td></tr>
</table>
<p>
The functions \"compare\", \"isEqual\", \"count\", \"find\", \"findLast\", \"replace\", \"sort\"
have the optional
input argument <b>caseSensitive</b> with default <b>true</b>.
If <b>false</b>, the operation is carried out without taking
into account whether a character is upper or lower case.
</p>
</HTML>"));
    end Strings;

    package Types "Type definitions used in package Modelica.Utilities"

      type Compare = enumeration(
        Less "String 1 is lexicographically less than string 2",
        Equal "String 1 is identical to string 2",
        Greater "String 1 is lexicographically greater than string 2")
      "Enumeration defining comparision of two strings";
      annotation (Documentation(info="<html>
<p>
This package contains type definitions used in Modelica.Utilities.
</p>

</html>"));
    end Types;
  end Utilities;

  package Constants
  "Library of mathematical constants and constants of nature (e.g., pi, eps, R, sigma)"
    import SI = Modelica.SIunits;
    import NonSI = Modelica.SIunits.Conversions.NonSIunits;
    extends Modelica.Icons.Library2;

    final constant Real pi=2*Modelica.Math.asin(1.0);

    final constant Real eps=1.e-15 "Biggest number such that 1.0 + eps = 1.0";

    final constant Real small=1.e-60
    "Smallest number such that small and -small are representable on the machine";

    final constant Real inf=1.e+60
    "Biggest Real number such that inf and -inf are representable on the machine";

    final constant SI.Acceleration g_n=9.80665
    "Standard acceleration of gravity on earth";

    final constant Real R(final unit="J/(mol.K)") = 8.314472
    "Molar gas constant";

    final constant NonSI.Temperature_degC T_zero=-273.15
    "Absolute zero temperature";
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
              textString="Library")}),
        Documentation(info="<html>
<p>
This icon is designed for a <b>package</b> where a package
specific graphic is additionally included in the icon.
</p>
</html>"));
    end Library2;

    partial function Function "Icon for a function"

      annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}}), graphics={
            Text(
              extent={{-140,162},{136,102}},
              textString="%name",
              lineColor={0,0,255}),
            Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={255,127,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-100,100},{100,-100}},
              lineColor={255,127,0},
              textString="f")}),
                          Documentation(info="<html>
<p>
This icon is designed for a <b>function</b>
</p>
</html>"));
    end Function;

    partial record Record "Icon for a record"

      annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}}), graphics={
            Rectangle(
              extent={{-100,50},{100,-100}},
              fillColor={255,255,127},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,255}),
            Text(
              extent={{-127,115},{127,55}},
              textString="%name",
              lineColor={0,0,255}),
            Line(points={{-100,-50},{100,-50}}, color={0,0,0}),
            Line(points={{-100,0},{100,0}}, color={0,0,0}),
            Line(points={{0,50},{0,-100}}, color={0,0,0})}),
                                                          Documentation(info="<html>
<p>
This icon is designed for a <b>record</b>
</p>
</html>"));
    end Record;

    partial model RotationalSensor
    "Icon representing rotational measurement device"

      annotation (
        Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={
          Ellipse(
            extent={{-70,70},{70,-70}},
            lineColor={0,0,0},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Line(points={{0,70},{0,40}}, color={0,0,0}),
          Line(points={{22.9,32.8},{40.2,57.3}}, color={0,0,0}),
          Line(points={{-22.9,32.8},{-40.2,57.3}}, color={0,0,0}),
          Line(points={{37.6,13.7},{65.8,23.9}}, color={0,0,0}),
          Line(points={{-37.6,13.7},{-65.8,23.9}}, color={0,0,0}),
          Line(points={{0,0},{9.02,28.6}}, color={0,0,0}),
          Polygon(
            points={{-0.48,31.6},{18,26},{18,57.2},{-0.48,31.6}},
            lineColor={0,0,0},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
          Ellipse(
            extent={{-5,5},{5,-5}},
            lineColor={0,0,0},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid)}),
        Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics),
        Documentation(info="<html>
<p>
This icon is designed for a <b>rotational sensor</b> model.
</p>
</html>"));
    equation

    end RotationalSensor;
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

        type Temperature_degC = Real (final quantity="ThermodynamicTemperature",
              final unit="degC")
        "Absolute temperature in degree Celsius (for relative temperature use SIunits.TemperatureDifference)"
                                                                                                            annotation(__Dymola_absoluteValue=true);

        type AngularVelocity_rpm = Real (final quantity="AngularVelocity", final unit
            =      "1/min")
        "Angular velocity in revolutions per minute. Alias unit names that are outside of the SI system: rpm, r/min, rev/min"
          annotation (Documentation(info="<html>
<p>

</html>"));

        type Pressure_bar = Real (final quantity="Pressure", final unit="bar")
        "Absolute pressure in bar";
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

      function to_degC "Convert from Kelvin to °Celsius"
        extends ConversionIcon;
        input Temperature Kelvin "Kelvin value";
        output NonSIunits.Temperature_degC Celsius "Celsius value";
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{-20,100},{-100,20}},
                lineColor={0,0,0},
                textString="K"), Text(
                extent={{100,-20},{20,-100}},
                lineColor={0,0,0},
                textString="°C")}));
      algorithm
        Celsius := Kelvin + Modelica.Constants.T_zero;
      end to_degC;

      function from_degC "Convert from °Celsius to Kelvin"
        extends ConversionIcon;
        input NonSIunits.Temperature_degC Celsius "Celsius value";
        output Temperature Kelvin "Kelvin value";
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{-20,100},{-100,20}},
                lineColor={0,0,0},
                textString="°C"), Text(
                extent={{100,-20},{20,-100}},
                lineColor={0,0,0},
                textString="K")}));
      algorithm
        Kelvin := Celsius - Modelica.Constants.T_zero;
      end from_degC;

      function to_bar "Convert from Pascal to bar"
        extends ConversionIcon;
        input Pressure Pa "Pascal value";
        output NonSIunits.Pressure_bar bar "bar value";
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{-20,100},{-100,20}},
                lineColor={0,0,0},
                textString="Pa"), Text(
                extent={{100,-20},{20,-100}},
                lineColor={0,0,0},
                textString="bar")}));
      algorithm
        bar := Pa/1e5;
      end to_bar;

      partial function ConversionIcon "Base icon for conversion functions"
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                  -100},{100,100}}), graphics={
              Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={191,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,0},{30,0}}, color={191,0,0}),
              Polygon(
                points={{90,0},{30,20},{30,-20},{90,0}},
                lineColor={191,0,0},
                fillColor={191,0,0},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-115,155},{115,105}},
                textString="%name",
                lineColor={0,0,255})}));
      end ConversionIcon;
    end Conversions;

    type Angle = Real (
        final quantity="Angle",
        final unit="rad",
        displayUnit="deg");

    type Length = Real (final quantity="Length", final unit="m");

    type Area = Real (final quantity="Area", final unit="m2");

    type Volume = Real (final quantity="Volume", final unit="m3");

    type Time = Real (final quantity="Time", final unit="s");

    type Velocity = Real (final quantity="Velocity", final unit="m/s");

    type Acceleration = Real (final quantity="Acceleration", final unit="m/s2");

    type Mass = Real (
        quantity="Mass",
        final unit="kg",
        min=0);

    type Density = Real (
        final quantity="Density",
        final unit="kg/m3",
        displayUnit="g/cm3",
        min=0);

    type Pressure = Real (
        final quantity="Pressure",
        final unit="Pa",
        displayUnit="bar");

    type AbsolutePressure = Pressure (min=0);

    type DynamicViscosity = Real (
        final quantity="DynamicViscosity",
        final unit="Pa.s",
        min=0);

    type SurfaceTension = Real (final quantity="SurfaceTension", final unit="N/m");

    type Energy = Real (final quantity="Energy", final unit="J");

    type Power = Real (final quantity="Power", final unit="W");

    type EnthalpyFlowRate = Real (final quantity="EnthalpyFlowRate", final unit
        =   "W");

    type MassFlowRate = Real (quantity="MassFlowRate", final unit="kg/s");

    type VolumeFlowRate = Real (final quantity="VolumeFlowRate", final unit=
            "m3/s");

    type ThermodynamicTemperature = Real (
        final quantity="ThermodynamicTemperature",
        final unit="K",
        min = 0,
        displayUnit="degC")
    "Absolute temperature (use type TemperatureDifference for relative temperatures)"
                                                                                                        annotation(__Dymola_absoluteValue=true);

    type Temp_K = ThermodynamicTemperature;

    type Temperature = ThermodynamicTemperature;

    type Compressibility = Real (final quantity="Compressibility", final unit=
            "1/Pa");

    type IsothermalCompressibility = Compressibility;

    type HeatFlowRate = Real (final quantity="Power", final unit="W");

    type ThermalConductivity = Real (final quantity="ThermalConductivity", final unit
        =      "W/(m.K)");

    type CoefficientOfHeatTransfer = Real (final quantity=
            "CoefficientOfHeatTransfer", final unit="W/(m2.K)");

    type SpecificHeatCapacity = Real (final quantity="SpecificHeatCapacity",
          final unit="J/(kg.K)");

    type RatioOfSpecificHeatCapacities = Real (final quantity=
            "RatioOfSpecificHeatCapacities", final unit="1");

    type SpecificEntropy = Real (final quantity="SpecificEntropy", final unit=
            "J/(kg.K)");

    type SpecificEnergy = Real (final quantity="SpecificEnergy", final unit=
            "J/kg");

    type SpecificInternalEnergy = SpecificEnergy;

    type SpecificEnthalpy = SpecificEnergy;

    type DerDensityByEnthalpy = Real (final unit="kg.s2/m5");

    type DerDensityByPressure = Real (final unit="s2/m2");

    type DerDensityByTemperature = Real (final unit="kg/(m3.K)");

    type DerEnthalpyByPressure = Real (final unit="J.m.s2/kg2");

    type MolarMass = Real (final quantity="MolarMass", final unit="kg/mol",min=0);

    type MolarVolume = Real (final quantity="MolarVolume", final unit="m3/mol", min=0);

    type MassFraction = Real (final quantity="MassFraction", final unit="1");

    type MoleFraction = Real (final quantity="MoleFraction", final unit="1");

    type PrandtlNumber = Real (final quantity="PrandtlNumber", final unit="1");
  end SIunits;
end Modelica;

package Buildings "Library with models for building energy and control systems"
annotation (preferedView="info",
      version="0.8.0",
      uses(Modelica(version="3.1")),
      Documentation(info="<html>
The <b>Buildings</b> library is a free library
for modeling building energy and control systems. 
Many models are based on models from the package
<a href=\"Modelica://Modelica.Fluid\">Modelica.Fluid</a> and use
the same ports to ensure compatibility with models from that library.
</p>
<p>
The figure below shows a section of the schematic view of the model 
<a href=\"Modelica:Buildings.Examples.HydronicHeating\">
Buildings.Examples.HydronicHeating</a>.
In the lower part of the figure, there is a dynamic model of a boiler, a pump and a stratified energy storage tank. Based on the temperatures of the storage tank, a finite state machine switches the boiler on and off. 
The heat distribution is done using a hydronic heating system with a three way valve and a pump with variable revolutions. The upper right hand corner shows a simplified room model that is connected to a radiator whose flow is controlled by a thermostatic valve.
</p>
<p>
<img src=\"Images/UsersGuide/HydronicHeating.png\" border=\"1\">
</p>
<p>
The web page for this library is
<a href=\"http://simulationresearch.lbl.gov/modelica\">http://simulationresearch.lbl.gov/modelica</a>. 
Contributions from different users to further advance this library are
welcomed.
Contributions may not only be in the form of model development, but also
through model use, model testing,
requirements definition or providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"));

  package Fluid "Package with models for fluid flow systems"
  annotation (
  preferedView="info", Documentation(info="<html>
This package contains components for fluid flow systems such as
pumps, valves and sensors. For other fluid flow models, see 
<a href=\"Modelica:Modelica.Fluid\">Modelica.Fluid</a>.
</html>"));

    package FixedResistances
    "Package with models for fixed flow resistances (pipes, diffusers etc.)"

      model FixedResistanceDpM
      "Fixed flow resistance with dp and m_flow as parameter"
        extends Buildings.Fluid.BaseClasses.PartialResistance;
        annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                            graphics),
                             Documentation(info="<html>
<p>
This is a model of a resistance with a fixed flow coefficient <tt>k = m_flow/sqrt(dP)</tt>.
<p>
</p>
Near the origin, the square root relation is regularized to ensure that the derivative is bounded.
</p>
</html>",       revisions="<html>
<ul>
<li>
May 30, 2008 by Michael Wetter:<br>
Added parameters <tt>use_dh</tt> and <tt>deltaM</tt> for easier parameterization.
</li>
<li>
July 20, 2007 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"),Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics={Text(
              extent={{-102,86},{-4,22}},
              lineColor={0,0,255},
              textString="dp_nominal=%dp_nominal"), Text(
              extent={{-106,106},{6,60}},
              lineColor={0,0,255},
              textString="m0=%m_flow_nominal")}));
        parameter Boolean use_dh = false
        "Set to true to specify hydraulic diameter" 
             annotation(Evaluate=true, Dialog(enable = not linearized));
        parameter Modelica.SIunits.Length dh=1 "Hydraulic diameter" 
             annotation(Evaluate=true, Dialog(enable = use_dh and not linearized));
        parameter Real ReC=4000
        "Reynolds number where transition to turbulent starts" 
             annotation(Evaluate=true, Dialog(enable = use_dh and not linearized));
        parameter Real deltaM(min=0.01) = 0.3
        "Fraction of nominal mass flow rate where transition to turbulent occurs"
             annotation(Evaluate=true, Dialog(enable = not use_dh and not linearized));
      initial equation
       if ( m_flow_turbulent > m_flow_nominal) then
         Modelica.Utilities.Streams.print("Warning: In FixedResistanceDpM, m_flow_nominal is smaller than m_flow_turbulent."
                 + "\n"
                 + "  m_flow_nominal = " + realString(m_flow_nominal) + "\n"
                 + "  dh      = " + realString(dh) + "\n"
                 + "  To fix, set dh < " +
                      realString(     4*m_flow_nominal/eta_nominal/Modelica.Constants.pi/ReC) + "\n"
                 + "  Suggested value: dh = " +
                      realString(1/10*4*m_flow_nominal/eta_nominal/Modelica.Constants.pi/ReC));
       end if;

      equation
       m_flow_turbulent = if use_dh then 
                            eta_nominal*dh/4*Modelica.Constants.pi*ReC else 
                            deltaM * m_flow_nominal;
        if linearized then
         k = m_flow_nominal / dp_nominal / conv2;
        else
         k = m_flow_nominal / sqrt(dp_nominal);
       end if;
      end FixedResistanceDpM;
    end FixedResistances;

    package HeatExchangers "Package with heat exchanger models"
    annotation (preferedView="info", Documentation(info="<html>
This package contains models for heat exchangers with and without humidity condensation.
</html>"));

      model HeaterCoolerPrescribed
      "Heater or cooler with prescribed heat flow rate"
        extends Fluid.Interfaces.PartialStaticTwoPortHeatMassTransfer;
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={
            Rectangle(
              extent={{-70,80},{70,-80}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-102,5},{99,-5}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-56,-12},{54,-72}},
              lineColor={0,0,255},
              textString="Q=%Q_flow_nominal"),
            Rectangle(
              extent={{-100,61},{-70,58}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-122,106},{-78,78}},
              lineColor={0,0,255},
              textString="u")}),
      Documentation(info="<html>
<p>
Model for an ideal heater or cooler with prescribed heat flow rate to the medium.
</p>
<p>
This model adds heat in the amount of <tt>Q_flow = u Q_flow_nominal</tt> to the medium.
The input signal <tt>u</tt> and the nominal heat flow rate <tt>Q_flow_nominal</tt> 
can be positive or negative.
</p>
<p>
Note that for non-zero <tt>Q_flow</tt>,
if the mass flow rate tends to zero, the temperature difference over this 
component tends to infinity.
Hence, using a proper control for <tt>u</tt> is essential when using this component.
</p>
</html>",
      revisions="<html>
<ul>
<li>
April 17, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        parameter Modelica.SIunits.HeatFlowRate Q_flow_nominal
        "Heat flow rate at u=1, positive for heating";
        Modelica.Blocks.Interfaces.RealInput u "Control input" 
          annotation (Placement(transformation(
                extent={{-140,40},{-100,80}}, rotation=0)));
      equation
        Q_flow = Q_flow_nominal * u;
        mXi_flow = zeros(Medium.nXi); // no mass added or removed (sensible heat only)
      end HeaterCoolerPrescribed;
    end HeatExchangers;

    package MassExchangers "Package with mass exchanger models"
    annotation (preferedView="info", Documentation(info="<html>
This package contains models for mass exchangers.
For heat exchanger models with humidity transfer, see the package
<a href=\"Modelica:Buildings.Fluid.HeatExchangers\">
Buildings.Fluid.HeatExchangers</a>.
</html>"));

      model HumidifierPrescribed
      "Ideal humidifier or dehumidifier with prescribed water mass flow rate addition or subtraction"
        extends Fluid.Interfaces.PartialStaticTwoPortHeatMassTransfer;
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={
            Rectangle(
              extent={{-70,80},{70,-80}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={85,170,255},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-102,5},{99,-5}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-56,-12},{54,-72}},
              lineColor={0,0,255},
              textString="m=%m_flow_nominal"),
            Rectangle(
              extent={{-100,61},{-70,58}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={0,0,127},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-144,114},{-100,86}},
              lineColor={0,0,255},
              textString="u"),
            Text(
              extent={{-140,-20},{-96,-48}},
              lineColor={0,0,255},
              textString="T"),
            Rectangle(
              extent={{-100,-59},{-70,-62}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={255,0,0},
              fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Model for an air humidifier or dehumidifier.
</p>
<p>
This model adds (or removes) moisture from the air stream.
The amount of exchanged moisture is equal to <tt>m_flow = u * m_flow_nominal</tt>.
The input signal <tt>u</tt> and the nominal moisture flow rate added to the air stream <tt>m_flow_nominal</tt> can be positive or negative.
If the product <tt>u * m_flow_nominal</tt> is positive, then moisture is added
to the air stream, otherwise it is removed.
</p>
<p>
<p>If the connector <tt>T_in</tt> is left unconnected, the value
set by the parameter <tt>T</tt> is used for temperature of the water that is 
added to the air stream.
</p>
<p>
Note that for non-zero <tt>m_flow</tt>, 
if the mass flow rate tends to zero, then the moisture difference over this 
component tends to infinity.
Hence, using a proper control for <tt>u</tt> is essential when using this component.
</p>
<p>
This model can only be used with medium models that define the integer constant
<tt>Water</tt> which needs to be equal to the index of the water mass fraction 
in the species vector.
</p>
</html>",
      revisions="<html>
<ul>
<li>
April 17, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        parameter Modelica.SIunits.MassFlowRate mWat0_flow
        "Water mass flow rate at u=1, positive for humidification";
        parameter Modelica.SIunits.Temperature T = 293.15
        "Temperature of water that is added to the fluid stream (used only if T_in is unconnected)";
        Modelica.Blocks.Interfaces.RealInput T_in
        "Temperature of water added to the fluid stream" 
          annotation (Placement(transformation(extent={{-140,-80},{-100,-40}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealInput u "Control input" 
          annotation (Placement(transformation(
                extent={{-140,40},{-100,80}}, rotation=0)));
    protected
        constant Modelica.SIunits.MassFraction[Medium.nXi] XiWat = {1}
        "Mass fraction of water";
        Modelica.SIunits.MassFlowRate mWat_flow "Water flow rate";
      equation
        if cardinality(T_in)==0 then
          T_in = T;
        end if;
        mWat_flow = u * mWat0_flow;
        Q_flow = Medium.enthalpyOfLiquid(T_in) * mWat_flow;
        for i in 1:Medium.nXi loop
           mXi_flow[i] = if ( i == Medium.Water) then  mWat_flow else 0;
        end for;
      end HumidifierPrescribed;
    end MassExchangers;

    package Movers "Package with fan and pump models"
    annotation (Documentation(info="<html>
<p>This package contains models that can be used for fans and pumps. </p>
<p>The models with names FlowMachine_* are similar to the pump models in the package <a href=\"Modelica.Fluid.Machines\">Modelica.Fluid.Machines</a>. However, the models in this package differ primarily in the following points:
<ul>
<li>
For the model with prescribed pressure, the input signal is the 
pressure difference between the two ports, and not the absolute
pressure at <code>port_b</code>.
</li>
<li>
The pressure calculations are based on total pressure in Pascals instead of the pump head in meters. This change was done to avoid ambiguities in the parameterization if the models are used as a fan with air as the medium. The original formulation in <a href=\"Modelica.Fluid.Machines\">Modelica.Fluid.Machines</a> converts head to pressure using the density <code>medium.d</code>. Therefore, for fans, head would be converted to pressure using the density of air. However, for fans, manufacturers typically publish the head in millimeters water (mmH20). Therefore, to avoid confusion when using these models with media other than water, they have been changed to use total pressure in Pascals instead of head in meters.
</li>
<li>
Additional performance curves have been added to the package <a href=\"Modelica:Buildings.Fluid.Movers.BaseClasses.Characteristics\">Buildings.Fluid.Movers.BaseClasses.Characteristics</a>.
</li>
</ul>
</p>
<p>
For a detailed description of the models with names <code>FlowMachine_*</code>,
see their base class <a href=\"Modelica://Buildings.Fluid.Movers.BaseClasses.PartialFlowMachine\">
Buildings.Fluid.Movers.BaseClasses.PartialFlowMachine.</a>
</p>.
The model <a href=\"Modelica://Buildings.Fluid.Movers.FlowMachinePolynomial\">
Buildings.Fluid.Movers.FlowMachinePolynomial</a> is in this package for compatibility 
with older versions of this library. It is recommended to use the other models as they optionally
allow use of a medium volume that provides state variables which are needed in some models 
when the flow rate is zero.
</html>"));

      package BaseClasses
      "Base classes used in the Machines package (only of interest to build new component models)"
        extends Modelica.Fluid.Icons.BaseClassLibrary;

        function assertPositiveDifference
          extends Modelica.Icons.Function;
          input Modelica.SIunits.Pressure p;
          input Modelica.SIunits.Pressure p_sat;
          input String message;
          output Modelica.SIunits.Pressure dp;
        algorithm
          dp := p - p_sat;
          assert(p >= p_sat, message);
        end assertPositiveDifference;

        package Characteristics "Functions for fan or pump characteristics"
          annotation (Documentation(info="<html>
<p>This package is similar to <a href=\"Modelica:Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics\">
Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics</a>, 
but instead of head in meters H20, total pressure in Pascal is used. 
This makes the models applicable for fans as well since the flow models from Modelica.Fluid use the 
density of the medium model, such as the density of air instead of water, 
to convert head to pressure.</p>
<p>This package also contains higher order functions for power consumption and efficiency.</p>
</html>",
        revisions="<html>
<ul>
<li>
October 28, 2009, by Michael Wetter:<br>
Added Wrapper function <a href=\"Modelica:Buildings.Fluid.Movers.BaseClasses.Characteristics.solve\">
Buildings.Fluid.Movers.BaseClasses.Characteristics.solve</a> for 
<a href=\"Modelica:Modelica.Math.Matrices.solve\">
Modelica.Math.Matrices.solve</a>. This is currently needed since 
<a href=\"Modelica:Modelica.Math.Matrices.solve\">
Modelica.Math.Matrices.solve</a> does not specify a 
derivative.
</li>
<li>
October 15, 2009, by Michael Wetter:<br>
Added derivative function for <code>linearFlow</code>.
</li>
<li>
October 1, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

          partial function baseFlow
          "Base class for fan or pump flow characteristics"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.VolumeFlowRate V_flow "Volumetric flow rate";
            output Modelica.SIunits.Pressure dp(displayUnit="Pa")
            "Fan or pump total pressure";
          end baseFlow;

          partial function basePower
          "Base class for fan or pump power consumption characteristics"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.VolumeFlowRate V_flow "Volumetric flow rate";
            output Modelica.SIunits.Power consumption "Power consumption";
          end basePower;

          partial function baseEfficiency
          "Base class for efficiency characteristics"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.VolumeFlowRate V_flow "Volumetric flow rate";
            output Real eta "Efficiency";
          end baseEfficiency;

          function linearFlow "Linear flow characteristic"
            extends baseFlow;
            annotation(smoothOrder=100);

            input Modelica.SIunits.VolumeFlowRate V_flow_nominal[2]
            "Volume flow rate for two operating points (single fan or pump)"   annotation(Dialog);
            input Modelica.SIunits.Pressure dp_nominal[2](displayUnit="Pa")
            "Fan or pump total pressure for two operating points"                                 annotation(Dialog);
            /* Linear system to determine the coefficients:
  dp_nominal[1] = c[1] + V_flow_nominal[1]*c[2];
  dp_nominal[2] = c[1] + V_flow_nominal[2]*c[2];
  */
        protected
            Real c[2] = Buildings.Fluid.Movers.BaseClasses.Characteristics.solve( [ones(2),V_flow_nominal],dp_nominal)
            "Coefficients of linear total pressure curve";
          algorithm
            // Flow equation: dp = q*c[1] + c[2];
            dp := c[1] + V_flow*c[2];
          end linearFlow;

          function quadraticPower "Quadratic power consumption characteristic"
            extends basePower;
            input Modelica.SIunits.VolumeFlowRate V_flow_nominal[3]
            "Volume flow rate for three operating points (single fan or pump)"   annotation(Dialog);
            input Modelica.SIunits.Power W_nominal[3]
            "Power consumption for three operating points"                             annotation(Dialog);
        protected
            Real V_flow_nominal2[3] = {V_flow_nominal[1]^2,V_flow_nominal[2]^2, V_flow_nominal[3]^2}
            "Squared nominal flow rates";
            /* Linear system to determine the coefficients:
  W_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
  W_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
  W_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
  */
            Real c[3] = Buildings.Fluid.Movers.BaseClasses.Characteristics.solve( [ones(3),V_flow_nominal,V_flow_nominal2],W_nominal)
            "Coefficients of quadratic power consumption curve";
          algorithm
            consumption := c[1] + V_flow*c[2] + V_flow^2*c[3];
          end quadraticPower;

          function constantEfficiency "Constant efficiency characteristic"
             extends baseEfficiency;
             input Real eta_nominal(min=0, max=1) "Nominal efficiency" annotation(Dialog);
          algorithm
            eta := eta_nominal;
          end constantEfficiency;

          function solve "Wrapper for Modelica.Math.Matrices.solve"
           input Real A[:,size(A,1)];
           input Real x[size(A,1)];
          output Real b[size(A,1)];
          algorithm
           b:=Modelica.Math.Matrices.solve(A,x);

           annotation(derivative=Buildings.Fluid.Movers.BaseClasses.Characteristics.der_solve,
                Documentation(info="<html>
Wrapper function for 
<a href=\"Modelica:Modelica.Math.Matrices.solve\">
Modelica.Math.Matrices.solve</a>. This is currently needed since 
<a href=\"Modelica:Modelica.Math.Matrices.solve\">
Modelica.Math.Matrices.solve</a> does not specify a 
derivative. 
The implementation is based on the code from Hans Olsson, Dynasim support
request 10872.
</html>",           revisions="<html>
<ul>
<li><i>October 28, 2009</i>
    by Michael Wetter</a>:<br>
First implementation.
</li>
</ul>
</html>"));
          end solve;

          function der_solve "Derivative for function solve"
            input Real A[:,size(A,1)];
            input Real x[size(A,1)];
            input Real Ader[:,size(A,1)];
            input Real xder[size(A,1)];
            output Real b[size(A,1)];
          algorithm
            b:=Modelica.Math.Matrices.solve(A,xder-Ader*Modelica.Math.Matrices.solve(A,x));
          end der_solve;
        end Characteristics;

        partial model PartialFlowMachine "Base model for fans or pumps"
        //    import Modelica.SIunits.Conversions.NonSIunits.*;
          import Modelica.Constants;

          extends Modelica.Fluid.Interfaces.PartialTwoPort(
            port_b_exposesState = energyDynamics<>Modelica.Fluid.Types.Dynamics.SteadyState or 
                 massDynamics<>Modelica.Fluid.Types.Dynamics.SteadyState,
            port_a(
              p(start=p_a_start),
              m_flow(start = m_flow_start,
                     min = if allowFlowReversal and not checkValve then -Constants.inf else 0)),
            port_b(
              p(start=p_b_start),
              m_flow(start = -m_flow_start,
                     max = if allowFlowReversal and not checkValve then +Constants.inf else 0)));

          // Initialization
          parameter Medium.AbsolutePressure p_a_start=system.p_start
          "Guess value for inlet pressure" 
            annotation(Dialog(tab="Initialization"));
          parameter Medium.AbsolutePressure p_b_start=p_a_start
          "Guess value for outlet pressure" 
            annotation(Dialog(tab="Initialization"));
          parameter Medium.MassFlowRate m_flow_start = 1
          "Guess value of m_flow = port_a.m_flow" 
            annotation(Dialog(tab = "Initialization"));

          // Characteristics
          parameter Integer nParallel(min=1) = 1
          "Number of fans or pumps in parallel" 
            annotation(Dialog(group="Characteristics"));
          replaceable function flowCharacteristic = 
              Characteristics.baseFlow
          "Total pressure vs. V_flow characteristic at nominal speed" 
            annotation(Dialog(group="Characteristics"), choicesAllMatching=true);
          parameter Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm
          N_nominal =   1500 "Nominal rotational speed for flow characteristic"
            annotation(Dialog(group="Characteristics"));
          parameter Medium.Density rho_nominal = Medium.density_pTX(Medium.p_default, Medium.T_default, Medium.X_default)
          "Nominal fluid density" 
            annotation(Dialog(group="Characteristics"));
          parameter Boolean use_powerCharacteristic = false
          "Use powerCharacteristic (vs. efficiencyCharacteristic)" 
             annotation(Evaluate=true,Dialog(group="Characteristics"));
          replaceable function powerCharacteristic = 
                Characteristics.quadraticPower (
               V_flow_nominal={0,0,0},W_nominal={0,0,0})
          "Power consumption vs. V_flow at nominal speed and density" 
            annotation(Dialog(group="Characteristics", enable = use_powerCharacteristic),
                       choicesAllMatching=true);
          replaceable function efficiencyCharacteristic = 
            Characteristics.constantEfficiency(eta_nominal = 0.8) constrainedby
          Characteristics.baseEfficiency
          "Efficiency vs. V_flow at nominal speed and density" 
            annotation(Dialog(group="Characteristics",enable = not use_powerCharacteristic),
                       choicesAllMatching=true);

          // Assumptions
          parameter Boolean checkValve=false "= true to prevent reverse flow" 
            annotation(Dialog(tab="Assumptions"), Evaluate=true);

          parameter Modelica.SIunits.Volume V=0 "Volume inside the pump" 
            annotation(Dialog(tab="Assumptions"),Evaluate=true);

          // Energy and mass balance
          extends Modelica.Fluid.Interfaces.PartialLumpedVolume(
              final fluidVolume = V,
              energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState,
              massDynamics = energyDynamics,
              final p_start = p_b_start);

          // Heat transfer through boundary, e.g. to add a housing
          parameter Boolean use_HeatTransfer = false
          "= true to use a HeatTransfer model, e.g. for a housing" 
              annotation (Dialog(tab="Assumptions",group="Heat transfer"));
          replaceable model HeatTransfer = 
              Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer
            constrainedby
          Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer
          "Wall heat transfer" 
              annotation (Dialog(tab="Assumptions",group="Heat transfer",enable=use_HeatTransfer),choicesAllMatching=true);
          HeatTransfer heatTransfer(
            redeclare final package Medium = Medium,
            final n=1,
            surfaceAreas={4*Modelica.Constants.pi*(3/4*V/Modelica.Constants.pi)^(2/3)},
            final states = {medium.state},
            final use_k = use_HeatTransfer) 
              annotation (Placement(transformation(
                extent={{-10,-10},{30,30}},
                rotation=180,
                origin={50,-10})));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if use_HeatTransfer 
            annotation (Placement(transformation(extent={{30,-70},{50,-50}})));

          // Variables
        //  final parameter Modelica.SIunits.Acceleration g=system.g;
        //  Medium.Density rho = medium.d;
          Modelica.SIunits.Pressure dp(displayUnit="Pa")=port_b.p - port_a.p
          "Pressure increase";
        //  Modelica.SIunits.Height head=dp_pump/(medium.d*g) "Pump head";
          Modelica.SIunits.MassFlowRate m_flow=port_a.m_flow
          "Mass flow rate (total)";
          Modelica.SIunits.MassFlowRate m_flow_single=m_flow/nParallel
          "Mass flow rate (single pump)";
          Modelica.SIunits.VolumeFlowRate V_flow=m_flow/medium.d
          "Volume flow rate (total)";
          Modelica.SIunits.VolumeFlowRate V_flow_single(start=m_flow_start/rho_nominal/
                  nParallel)=V_flow/nParallel "Volume flow rate (single pump)";
          Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm N(min=0, start = N_nominal)
          "Shaft rotational speed";
          Modelica.SIunits.Power W_single
          "Power consumption (single fan or pump)";
          Modelica.SIunits.Power W_total=W_single*nParallel
          "Power consumption (total)";
          Real eta "Global efficiency";
          Real s(start = m_flow_start)
          "Curvilinear abscissa for the flow curve in parametric form (either mass flow rate or total pressure)";

          // Diagnostics
          parameter Boolean show_NPSHa = false
          "= true to compute Net Positive Suction Head available" 
            annotation(Dialog(tab="Advanced", group="Diagnostics"));
          Medium.ThermodynamicState state_a=
            Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow)) if 
               show_NPSHa "state for medium inflowing through port_a";
          Medium.Density rho_in = Medium.density(state_a) if show_NPSHa
          "Liquid density at the inlet port_a";
          Modelica.SIunits.Length NPSHa=NPSPa/(rho_in*system.g) if show_NPSHa
          "Net Positive Suction Head available";
          Modelica.SIunits.Pressure NPSPa=assertPositiveDifference(
                port_a.p,
                Medium.saturationPressure(Medium.temperature(state_a)),
                "Cavitation occurs at the pump inlet") if show_NPSHa
          "Net Positive Suction Pressure available";
          Modelica.SIunits.Pressure NPDPa=assertPositiveDifference(
                port_b.p,
                Medium.saturationPressure(medium.T),
                "Cavitation occurs in the pump") if show_NPSHa
          "Net Positive Discharge Pressure available";
          // constant Modelica.SIunits.Height unitHead=1;

      protected
          constant Modelica.SIunits.Pressure unitPressure=1;
          constant Modelica.SIunits.MassFlowRate unitMassFlowRate=1;

        equation
          // Flow equations
          if not checkValve then
            // Regular flow characteristics without check valve
            // With a replaceable function, Dymola 7.3 does not find the derivative function.
            // Support request: Dynasim #10872
            dp = (N/N_nominal)^2*flowCharacteristic(V_flow_single*(N_nominal/N));
            // With the statement below, Dymola 7.3 finds the derivative function
           // dp = (N/N_nominal)^2*Buildings.Fluid.Movers.BaseClasses.Characteristics.quadraticFlow(V_flow_nominal={0,1.8,3}, dp_nominal={1000,600,0},
           //  V_flow=V_flow_single*(N_nominal/N));
            s = 0;
          elseif s > 0 then
            // Flow characteristics when check valve is open
            dp = (N/N_nominal)^2*flowCharacteristic(V_flow_single*(N_nominal/N));
            V_flow_single = s*unitMassFlowRate/medium.d;
          else
            // Flow characteristics when check valve is closed
            dp = (N/N_nominal)^2*flowCharacteristic(0) - s*unitPressure;
            V_flow_single = 0;
          end if;

          // Power consumption
          if use_powerCharacteristic then
            W_single = (N/N_nominal)^3*(medium.d/rho_nominal)*powerCharacteristic(V_flow_single*(N_nominal/N));
            eta = dp*V_flow_single/W_single;
          else
            eta = efficiencyCharacteristic(V_flow_single*(N_nominal/N));
            W_single = dp*V_flow_single/eta;
          end if;

          // Energy balance
          Wb_flow = W_total;
          Qb_flow = heatTransfer.Q_flows[1];
          Hb_flow = port_a.m_flow*actualStream(port_a.h_outflow) +
                    port_b.m_flow*actualStream(port_b.h_outflow);

          // Ports
          port_a.h_outflow = medium.h;
          port_b.h_outflow = medium.h;
          port_b.p = medium.p
          "outlet pressure is equal to medium pressure, which includes Wb_flow";

          // Mass balance
          mb_flow = port_a.m_flow + port_b.m_flow;

          mbXi_flow = port_a.m_flow*actualStream(port_a.Xi_outflow) +
                      port_b.m_flow*actualStream(port_b.Xi_outflow);
          port_a.Xi_outflow = medium.Xi;
          port_b.Xi_outflow = medium.Xi;

          mbC_flow = port_a.m_flow*actualStream(port_a.C_outflow) +
                     port_b.m_flow*actualStream(port_b.C_outflow);
          port_a.C_outflow = C;
          port_b.C_outflow = C;

          connect(heatTransfer.heatPorts[1], heatPort) annotation (Line(
              points={{40,-34},{40,-60}},
              color={127,0,0},
              smooth=Smooth.None));
          annotation (
            Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(
                extent={{-100,46},{100,-46}},
                lineColor={0,0,0},
                fillColor={0,127,255},
                fillPattern=FillPattern.HorizontalCylinder),
              Polygon(
                points={{-48,-60},{-72,-100},{72,-100},{48,-60},{-48,-60}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={0,0,0},
                fillPattern=FillPattern.VerticalCylinder),
              Ellipse(
                extent={{-80,80},{80,-80}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={0,100,199}),
              Polygon(
                points={{0,68},{0,-68},{70,2},{0,68}},
                lineColor={0,0,0},
                pattern=LinePattern.None,
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={255,255,255})}),
            Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{
                    100,100}}),
                    graphics),
            Documentation(info="<HTML>
<p>This is the base model for fans and pumps.
<p>The model is similar to <a href=\"Modelica.Fluid.Machines.BaseClasses.PartialPump\">
Modelica.Fluid.Machines.BaseClasses.PartialPump</a>, except for the parameterization which
has been changed so that the model is also applicable for fans.
See the revision notes of this model for details.
<p>The model describes a fan or pump, or a group of <tt>nParallel</tt> identical fans or pumps. The model is based on the theory of kinematic similarity: the fan or pump characteristics are given for nominal operating conditions (rotational speed and fluid density), and then adapted to actual operating condition, according to the similarity equations.

<p><b>Fan or pump characteristics</b></p>
<p> The nominal hydraulic characteristic (total pressure vs. volume flow rate) is given by the the replaceable function <tt>flowCharacteristic</tt>.
<p> The fan or pump energy balance can be specified in two alternative ways:
<ul>
<li><tt>use_powerCharacteristic = false</tt> (default option): the replaceable function <tt>efficiencyCharacteristic</tt> (efficiency vs. volume flow rate in nominal conditions) is used to determine the efficiency, and then the power consumption.
    The default is a constant efficiency of 0.8.</li>
<li><tt>use_powerCharacteristic = true</tt>: the replaceable function <tt>powerCharacteristic</tt> (power consumption vs. volume flow rate in nominal conditions) is used to determine the power consumption, and then the efficiency.
    Use <tt>powerCharacteristic</tt> to specify a non-zero power consumption for zero flow rate.
</ul>
<p>
Several functions are provided in the package <tt>Characteristics</tt> to specify the characteristics as a function of some operating points at nominal conditions.
<p>Depending on the value of the <tt>checkValve</tt> parameter, the model either supports reverse flow conditions, or includes a built-in check valve to avoid flow reversal.
</p>
<p>It is possible to take into account the heat capacity of the fluid inside the fan or pump by specifying its volume <tt>V</tt>;
this is necessary to avoid singularities in the computation of the outlet enthalpy in case of zero flow rate.
If zero flow rate conditions are always avoided, this dynamic effect can be neglected by leaving the default value <tt>V = 0</tt>, thus avoiding a fast state variable in the model.
</p>

<p><b>Dynamics options</b></p>
<p>
Steady-state mass and energy balances are assumed per default, neglecting the holdup of fluid in the fan or pump.
Dynamic mass and energy balance can be used by setting the corresponding dynamic parameters.
This might be desirable if the fan or pump is assembled together with valves before port_a and behind port_b.
If both valves are closed, then the fluid is useful to define the thermodynamic state and in particular the absolute pressure in the fan or pump.
Note that the <tt>flowCharacteristic</tt> only specifies a pressure difference.
</p>

<p><b>Heat transfer</b></p>
<p>
The boolean paramter <tt>use_HeatTransfer</tt> can be set to true if heat exchanged with the environment
should be taken into account or to model a housing. This might be desirable if a fan or pump with realistic
<tt>powerCharacteristic</tt> for zero flow operates while a valve prevents fluid flow.
</p>

<p><b>Diagnostics of Cavitation</b></p>
<p>The boolean parameter show_NPSHa can set true to compute the Net Positive Suction Head available and check for cavitation,
provided a two-phase medium model is used.
</p>
</HTML>",     revisions="<html>
<ul>
<li><i>October 1, 2009</i>
    by Michael Wetter:<br>
    Changed model so that it is based on total pressure in Pascals instead of the pump head in meters.
    This change is needed if the device is used with air as a medium. The original formulation in Modelica.Fluid
    converts head to pressure using the density medium.d. Therefore, for fans, head would be converted to pressure
    using the density of air. However, for fans, manufacturers typically publish the head in 
    millimeters water (mmH20). Therefore, to avoid confusion and to make this model applicable for any medium,
    the model has been changed to use total pressure in Pascals instead of head in meters.
</li>
<li><i>Dec 2008</i>
    by R&uuml;diger Franke:<br>
    <ul>
    <li>Replaced simplified mass and energy balances with rigorous formulation (base class PartialLumpedVolume)</li>
    <li>Introduced optional HeatTransfer model defining Qb_flow</li>
    <li>Enabled events when the checkValve is operating to support the opening of a discrete valve before port_a</li>
    </ul></li>
<li><i>31 Oct 2005</i>
    by <a href=\"mailto:francesco.casella@polimi.it\">Francesco Casella</a>:<br>
       Model added to the Fluid library</li>
</ul>
</html>"));

        end PartialFlowMachine;
      end BaseClasses;

      model FlowMachine_y
      "Pump or fan with ideally controlled normalized speed"
        extends Buildings.Fluid.Movers.BaseClasses.PartialFlowMachine(
        final N_nominal=1500 "fix N_nominal as it is used only for scaling",
        redeclare replaceable function flowCharacteristic = 
            Buildings.Fluid.Movers.BaseClasses.Characteristics.baseFlow);
        parameter Boolean use_y_in = true
        "Get the rotational speed from the input connector";
        parameter Real y_const(min=0, max=1) = 1
        "Constant normalized rotational speed"   annotation(Dialog(enable = not use_y_in));
        Modelica.Blocks.Interfaces.RealInput y_in(min=0, max=1) if use_y_in
        "Constant normalized rotational speed" 
          annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=-90,
              origin={0,100}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=-90,
              origin={0,100})));
        annotation (defaultComponentName="fan",
          Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                {100,100}}), graphics={Text(
              visible=use_N_in,
              extent={{14,98},{178,82}},
              textString="y_in [0, 1]")}),
          Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{
                  100,100}}), graphics),
          Documentation(info="<HTML>
<p>This model describes a centrifugal pump (or a group of <tt>nParallel</tt> pumps) with prescribed speed, either fixed or provided by an external signal.
<p>If the <tt>y_in</tt> input connector is wired, it provides the normalized rotational speed of the pumps (between 0 and 1); otherwise, a constant rotational speed equal to <tt>y_const</tt> is assumed.</p>
</HTML>",   revisions="<html>
<ul>
<li><i>October 1, 2009</i>
    by Michael Wetter:<br>
       Model added to the Buildings library. Changed control signal from rpm to normalized value between 0 and 1</li>
<li><i>31 Oct 2005</i>
    by <a href=\"mailto:francesco.casella@polimi.it\">Francesco Casella</a>:<br>
       Model added to the Fluid library</li>
</ul>
</html>"));

    protected
        Modelica.Blocks.Interfaces.RealInput y_in_internal(min=0, max=1)
        "Needed to connect to conditional connector";
      equation
        // Connect statement active only if use_y_in = true
        connect(y_in, y_in_internal);
        // Internal connector value when use_p_in = false
        if not use_y_in then
          y_in_internal = y_const;
        end if;
        // Set N with a lower limit to avoid singularities at zero speed
        N = max(y_in_internal*N_nominal,1e-3) "Rotational speed";

      end FlowMachine_y;
    end Movers;

    package Sensors "Package with sensor models"
    annotation (preferedView="info",
      __Dymola_classOrder={
    "Density",
    "DensityTwoPort",
    "EnthalpyFlowRate",
    "LatentEnthalpyFlowRate",
    "MassFlowRate",
    "MassFraction",
    "Pressure",
    "RelativePressure",
    "RelativeTemperature",
    "SensibleEnthalpyFlowRate",
    "SpecificEnthalpy",
    "SpecificEnthalpyTwoPort",
    "SpecificEntropy",
    "SpecificEntropyTwoPort",
    "Temperature",
    "TemperatureDryBulbDynamic",
    "TemperatureTwoPort",
    "TemperatureWetBulb",
    "TraceSubstances",
    "TraceSubstancesTwoPort",
    "VolumeFlowRate",
    "Conversions",
    "Examples"},                       Documentation(info="<html>
<p align = justify>
Package <b>Sensors</b> consists of idealized sensor components that
provide variables of a medium model and/or fluid ports as
output signals. These signals can be, e.g., further processed
with components of the Modelica.Blocks library.
Also more realistic sensor models can be built, by further
processing (e.g., by attaching block Modelica.Blocks.FirstOrder to
model the time constant of the sensor).
 
</p>
 
<p align = justify>For the thermodynamic state variables temperature, specific entalpy, specific entropy and density 
the fluid library provides two different types of sensors: <b>regular one port</b> and <b>two port</b> sensors. </p>
 
<ul>
<li>
The <b>regular one port</b> sensors have the advantage of easy introduction and removal from a model, as no connections have to be broken. 
A potential drawback is that the obtained value jumps as flow reverts.
<a href= \"Modelica.Fluid.Test.TestComponents.Sensors.TestTemperatureSensor\">Modelica.Fluid.Test.TestComponents.Sensors.TestTemperatureSensor </a> provides a test case, 
which demonstrates this.</li> 
 
<li> The <b>two port</b> sensors offer the advantages of an adjustable regularized step function around zero flow.
Moreover the obtained result is restricted to the value flowing into port_a if allowFlowReversal is false.</li>
</ul>
 
 
</html>", revisions="<html>
<ul>
<li><i>22 Dec 2008</i>
    by R;uumldiger Franke<br>
    <ul>
    <li>flow sensors based on Interfaces.PartialTwoPort</li>
    <li>adapted docu to stream connectors, i.e. less need for two port sensors</li>
    </ul>
<li><i>4 Dec 2008</i>
    by Michael Wetter<br>
       included sensors for trace substance</li>
<li><i>31 Oct 2007</i>
    by Carsten Heinrich<br>
       updated sensor models, included one and two port sensors for thermodynamic state variables</li>
</ul>
</html>"));

      model EnthalpyFlowRate "Ideal enthalphy flow rate sensor"
        extends Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor;
        extends Modelica.Icons.RotationalSensor;
        Modelica.Blocks.Interfaces.RealOutput H_flow(unit="W")
        "Enthalpy flow rate, positive if from port_a to port_b" 
          annotation (Placement(transformation(
              origin={0,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));

      annotation (
        Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{100,
                  100}}), graphics),
        Icon(graphics={
              Line(points={{-100,0},{-70,0}}, color={0,128,255}),
              Line(points={{70,0},{100,0}}, color={0,128,255}),
              Line(points={{0,100},{0,70}}, color={0,0,127}),
              Text(
                extent={{180,151},{20,99}},
                lineColor={0,0,0},
                textString="H_flow")}),
        Documentation(info="<HTML>
<p>
This component monitors the enthalphy flow rate of the medium in the flow
between fluid ports. The sensor is ideal, i.e., it does not influence the fluid.
</p>
<p>
For a sensor that measures the latent enthalpy flow rate, use
<a href=\"Modelica:Buildings.Fluid.Sensors.LatentEnthalpyFlowRate\">
Buildings.Fluid.Sensors.LatentEnthalpyFlowRate</a>.
</p>
</HTML>
",       revisions="<html>
<ul>
<li>
April 9, 2008 by Michael Wetter:<br>
First implementation based on enthalpy sensor of Modelica.Fluid.
</li>
</ul>
</html>"));

      equation
        if allowFlowReversal then
           H_flow = port_a.m_flow * actualStream(port_a.h_outflow);
        else
           H_flow = port_a.m_flow * port_b.h_outflow;
        end if;
      end EnthalpyFlowRate;

      model MassFraction "Ideal one port mass fraction sensor"
        extends Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor;
        extends Modelica.Icons.RotationalSensor;
        parameter String substanceName = "water" "Name of species substance";

        Modelica.Blocks.Interfaces.RealOutput X "Mass fraction in port medium" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}},
                rotation=0)));

      annotation (defaultComponentName="massFraction",
        Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{100,
                  100}}),     graphics),
        Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                100,100}}), graphics={
            Line(points={{0,-70},{0,-100}}, color={0,0,127}),
            Text(
              extent={{-150,80},{150,120}},
              textString="%name",
              lineColor={0,0,255}),
            Text(
              extent={{160,-30},{60,-60}},
              lineColor={0,0,0},
              textString="X"),
            Line(points={{70,0},{100,0}}, color={0,0,127})}),
        Documentation(info="<HTML>
<p>
This component monitors the mass fraction contained in the fluid passing its port. 
The sensor is ideal, i.e. it does not influence the fluid.
</p>
</HTML>
",       revisions="<html>
<ul>
<li>
April 7, 2009 by Michael Wetter:<br>
First implementation based on enthalpy sensor of Modelica.Fluid.
</li>
</ul>
</html>"));
    protected
        parameter Integer ind(fixed=false)
        "Index of species in vector of auxiliary substances";
        Medium.MassFraction XiVec[Medium.nXi](
            quantity=Medium.extraPropertiesNames)
        "Trace substances vector, needed because indexed argument for the operator inStream is not supported";
      initial algorithm
        ind:= -1;
        for i in 1:Medium.nX loop
          if ( Modelica.Utilities.Strings.isEqual(Medium.substanceNames[i], substanceName)) then
            ind := i;
          end if;
        end for;
        assert(ind > 0, "Species with name '" + substanceName + "' is not present in medium '"
               + Medium.mediumName + "'.\n"
               + "Check sensor parameter and medium model.");
      equation
        XiVec = inStream(port.Xi_outflow);
        X = if ind > Medium.nXi then (1-sum(XiVec)) else XiVec[ind];
      end MassFraction;

      model SensibleEnthalpyFlowRate
      "Ideal enthalphy flow rate sensor that outputs the sensible enthalpy flow rate only"
        extends Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor;
        extends Modelica.Icons.RotationalSensor;
        // redeclare Medium with a more restricting base class. This improves the error
        // message if a user selects a medium that does not contain the function
        // enthalpyOfLiquid(.)
        replaceable package Medium = 
            Modelica.Media.Interfaces.PartialCondensingGases 
            annotation (choicesAllMatching = true);

        Modelica.Blocks.Interfaces.RealOutput H_flow(unit="W")
        "Sensible enthalpy flow rate, positive if from port_a to port_b" 
          annotation (Placement(transformation(
              origin={0,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        Medium.MassFraction XiActual[Medium.nXi]
        "Medium mass fraction in port_a";
        Medium.ThermodynamicState sta "Medium properties in port_a";

      annotation (
        Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{100,
                  100}}), graphics),
        Icon(graphics={
              Line(points={{-100,0},{-70,0}}, color={0,128,255}),
              Line(points={{70,0},{100,0}}, color={0,128,255}),
              Line(points={{0,100},{0,70}}, color={0,0,127}),
              Text(
                extent={{180,151},{20,99}},
                lineColor={0,0,0},
                textString="HS_flow")}),
        Documentation(info="<HTML>
<p>
This component monitors the <i>sensible</i> enthalphy flow rate of the medium in the flow
between fluid ports. In particular, if the enthalpy flow rate is
<pre>
  HTotal_flow = HSensible_flow + HLatent_flow,
</pre>
where <code>HSensible_flow = m_flow * (1-X[water]) * cp_air</code>, then
this sensor outputs <code>H_flow = HSensible_flow</code>.
This sensor can only be used with medium models that implement the function
<code>enthalpyOfNonCondensingGas(state)</code>. 
</p>
<p>
For a sensor that measures 
<code>HTotal_flow</code>, use
<a href=\"Modelica:Buildings.Fluid.Sensors.EnthalpyFlowRate\">
Buildings.Fluid.Sensors.EnthalpyFlowRate</a>.<br>
For a sensor that measures 
<code>HLatent_flow</code>, use
<a href=\"Modelica:Buildings.Fluid.Sensors.LatentEnthalpyFlowRate\">
Buildings.Fluid.Sensors.LatentEnthalpyFlowRate</a>.
<p>
The sensor is ideal, i.e., it does not influence the fluid.
</p>
</HTML>
",       revisions="<html>
<ul>
<li>
September 9, 2009 by Michael Wetter:<br>
First implementation based on enthalpy sensor of Modelica.Fluid.
</li>
</ul>
</html>"));
    protected
        parameter Integer iWat(min=1, fixed=false) "Index for water substance";
      initial algorithm
        iWat :=1;
          for i in 1:Medium.nXi loop
            if Modelica.Utilities.Strings.isEqual(Medium.substanceNames[i], "Water") then
              iWat :=i;
            end if;
          end for;
      equation
        if allowFlowReversal then
           XiActual = actualStream(port_a.Xi_outflow);
           sta = Medium.setState_phX(port_a.p, actualStream(port_a.h_outflow), XiActual);
        else
           XiActual = port_b.Xi_outflow;
           sta = Medium.setState_phX(port_b.p, port_b.h_outflow, XiActual);
        end if;
           H_flow = port_a.m_flow * (1-XiActual[iWat]) * Medium.enthalpyOfNonCondensingGas(Medium.temperature(sta));
      end SensibleEnthalpyFlowRate;

      model Temperature "Ideal one port temperature sensor"
          extends Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor;

        Modelica.Blocks.Interfaces.RealOutput T(final quantity="ThermodynamicTemperature",
                                                final unit = "K", displayUnit = "degC", min=0)
        "Temperature in port medium" 
          annotation (Placement(transformation(extent={{60,-10},{80,10}}, rotation=
                  0)));

      annotation (defaultComponentName="temperature",
          Documentation(info="<HTML>
<p>
This component monitors the temperature of the fluid passing its port. 
The sensor is ideal, i.e. it does not influence the fluid.
</p>
</HTML>
"),     Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                  100,100}}), graphics={
              Line(points={{0,-70},{0,-100}}, color={0,0,127}),
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
              Line(points={{12,0},{60,0}}, color={0,0,127})}),
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics={
            Ellipse(
              extent={{-20,-88},{20,-50}},
              lineColor={0,0,0},
              lineThickness=0.5,
              fillColor={191,0,0},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-12,50},{12,-58}},
              lineColor={191,0,0},
              fillColor={191,0,0},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-12,50},{-12,90},{-10,96},{-6,98},{0,100},{6,98},{10,96},
                  {12,90},{12,50},{-12,50}},
              lineColor={0,0,0},
              lineThickness=0.5),
            Line(
              points={{-12,50},{-12,-54}},
              color={0,0,0},
              thickness=0.5),
            Line(
              points={{12,50},{12,-54}},
              color={0,0,0},
              thickness=0.5),
            Line(points={{-40,-10},{-12,-10}}, color={0,0,0}),
            Line(points={{-40,30},{-12,30}}, color={0,0,0}),
            Line(points={{-40,70},{-12,70}}, color={0,0,0}),
            Text(
              extent={{126,-30},{6,-60}},
              lineColor={0,0,0},
              textString="T"),
            Text(
              extent={{-150,110},{150,150}},
              textString="%name",
              lineColor={0,0,255}),
            Line(points={{12,0},{60,0}}, color={0,0,127})}));
      equation
        T = Medium.temperature(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
      end Temperature;
    end Sensors;

    package Sources "Define fixed or prescribed boundary conditions"
      annotation (preferedView="info",
      __Dymola_classOrder={
    "Boundary_pT",
    "Boundary_ph",
    "FixedBoundary",
    "MassFlowSource_T",
    "MassFlowSource_h",
    "PrescribedExtraPropertyFlowRate",
    "BaseClasses",
    "Examples"},
    Documentation(info="<html>
<p>
Package <b>Sources</b> contains generic sources for fluid connectors
to define fixed or prescribed ambient conditions.
</p>
</html>"));

      model Boundary_pT
      "Boundary with prescribed pressure, temperature, composition and trace substances"
        extends Modelica.Fluid.Sources.BaseClasses.PartialSource;
        parameter Boolean use_p_in = false
        "Get the pressure from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_T_in= false
        "Get the temperature from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_X_in = false
        "Get the composition from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_C_in = false
        "Get the trace substances from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Medium.AbsolutePressure p = Medium.p_default
        "Fixed value of pressure" 
          annotation (Evaluate = true,
                      Dialog(enable = not use_p_in));
        parameter Medium.Temperature T = Medium.T_default
        "Fixed value of temperature" 
          annotation (Evaluate = true,
                      Dialog(enable = not use_T_in));
        parameter Medium.MassFraction X[Medium.nX] = Medium.X_default
        "Fixed value of composition" 
          annotation (Evaluate = true,
                      Dialog(enable = (not use_X_in) and Medium.nXi > 0));
        parameter Medium.ExtraProperty C[Medium.nC](
             quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC)
        "Fixed values of trace substances" 
          annotation (Evaluate=true,
                      Dialog(enable = (not use_C_in) and Medium.nC > 0));
        Modelica.Blocks.Interfaces.RealInput p_in if              use_p_in
        "Prescribed boundary pressure" 
          annotation (Placement(transformation(extent={{-140,60},{-100,100}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealInput T_in if         use_T_in
        "Prescribed boundary temperature" 
          annotation (Placement(transformation(extent={{-140,20},{-100,60}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                              use_X_in
        "Prescribed boundary composition" 
          annotation (Placement(transformation(extent={{-140,-60},{-100,-20}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                              use_C_in
        "Prescribed boundary trace substances" 
          annotation (Placement(transformation(extent={{-140,-100},{-100,-60}},
                rotation=0)));
    protected
        Modelica.Blocks.Interfaces.RealInput p_in_internal
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput T_in_internal
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX]
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC]
        "Needed to connect to conditional connector";
        annotation (defaultComponentName="boundary",
          Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
            Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillPattern=FillPattern.Sphere,
              fillColor={0,127,255}),
            Text(
              extent={{-150,110},{150,150}},
              textString="%name",
              lineColor={0,0,255}),
            Line(
              visible=use_p_in,
              points={{-100,80},{-58,80}},
              color={0,0,255}),
            Line(
              visible=use_T_in,
              points={{-100,40},{-92,40}},
              color={0,0,255}),
            Line(
              visible=use_X_in,
              points={{-100,-40},{-92,-40}},
              color={0,0,255}),
            Line(
              visible=use_C_in,
              points={{-100,-80},{-60,-80}},
              color={0,0,255}),
            Text(
              visible=use_p_in,
              extent={{-152,134},{-68,94}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="p"),
            Text(
              visible=use_X_in,
              extent={{-164,4},{-62,-36}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="X"),
            Text(
              visible=use_C_in,
              extent={{-164,-90},{-62,-130}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="C"),
            Text(
              visible=use_T_in,
              extent={{-162,34},{-60,-6}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="T")}),
          Documentation(info="<html>
<p>
Defines prescribed values for boundary conditions:
</p>
<ul>
<li> Prescribed boundary pressure.</li>
<li> Prescribed boundary temperature.</li>
<li> Boundary composition (only for multi-substance or trace-substance flow).</li>
</ul>
<p>If <tt>use_p_in</tt> is false (default option), the <tt>p</tt> parameter
is used as boundary pressure, and the <tt>p_in</tt> input connector is disabled; if <tt>use_p_in</tt> is true, then the <tt>p</tt> parameter is ignored, and the value provided by the input connector is used instead.</p> 
<p>The same thing goes for the temperature, composition and trace substances.</p>
<p>
Note, that boundary temperature,
mass fractions and trace substances have only an effect if the mass flow
is from the boundary into the port. If mass is flowing from
the port into the boundary, the boundary definitions,
with exception of boundary pressure, do not have an effect.
</p>
</html>"),Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics));
      equation
        Modelica.Fluid.Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
          Medium.singleState, true, X_in_internal, "Boundary_pT");
        connect(p_in, p_in_internal);
        connect(T_in, T_in_internal);
        connect(X_in, X_in_internal);
        connect(C_in, C_in_internal);
        if not use_p_in then
          p_in_internal = p;
        end if;
        if not use_T_in then
          T_in_internal = T;
        end if;
        if not use_X_in then
          X_in_internal = X;
        end if;
        if not use_C_in then
          C_in_internal = C;
        end if;
        medium.p = p_in_internal;
        medium.T = T_in_internal;
        medium.Xi = X_in_internal[1:Medium.nXi];
        ports.C_outflow = fill(C_in_internal, nPorts);
      end Boundary_pT;

      model MassFlowSource_T
      "Ideal flow source that produces a prescribed mass flow with prescribed temperature, mass fraction and trace substances"
        extends Modelica.Fluid.Sources.BaseClasses.PartialSource;
        parameter Boolean use_m_flow_in = false
        "Get the mass flow rate from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_T_in= false
        "Get the temperature from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_X_in = false
        "Get the composition from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Boolean use_C_in = false
        "Get the trace substances from the input connector" 
          annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
        parameter Medium.MassFlowRate m_flow = 0
        "Fixed mass flow rate going out of the fluid port" 
          annotation (Evaluate = true,
                      Dialog(enable = not use_m_flow_in));
        parameter Medium.Temperature T = Medium.T_default
        "Fixed value of temperature" 
          annotation (Evaluate = true,
                      Dialog(enable = not use_T_in));
        parameter Medium.MassFraction X[Medium.nX] = Medium.X_default
        "Fixed value of composition" 
          annotation (Evaluate = true,
                      Dialog(enable = (not use_X_in) and Medium.nXi > 0));
        parameter Medium.ExtraProperty C[Medium.nC](
             quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC)
        "Fixed values of trace substances" 
          annotation (Evaluate=true,
                      Dialog(enable = (not use_C_in) and Medium.nC > 0));
        Modelica.Blocks.Interfaces.RealInput m_flow_in if     use_m_flow_in
        "Prescribed mass flow rate" 
          annotation (Placement(transformation(extent={{-120,60},{-80,100}},
                rotation=0), iconTransformation(extent={{-120,60},{-80,100}})));
        Modelica.Blocks.Interfaces.RealInput T_in if         use_T_in
        "Prescribed fluid temperature" 
          annotation (Placement(transformation(extent={{-140,20},{-100,60}},
                rotation=0), iconTransformation(extent={{-140,20},{-100,60}})));
        Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                              use_X_in
        "Prescribed fluid composition" 
          annotation (Placement(transformation(extent={{-140,-60},{-100,-20}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                              use_C_in
        "Prescribed boundary trace substances" 
          annotation (Placement(transformation(extent={{-120,-100},{-80,-60}},
                rotation=0)));
    protected
        Modelica.Blocks.Interfaces.RealInput m_flow_in_internal
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput T_in_internal
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX]
        "Needed to connect to conditional connector";
        Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC]
        "Needed to connect to conditional connector";
        annotation (defaultComponentName="boundary",
          Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Rectangle(
                extent={{35,45},{100,-45}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={0,127,255}),
              Ellipse(
                extent={{-100,80},{60,-80}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-60,70},{60,0},{-60,-68},{-60,70}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-54,32},{16,-30}},
                lineColor={255,0,0},
                fillColor={255,0,0},
                fillPattern=FillPattern.Solid,
                textString="m"),
              Text(
                extent={{-150,130},{150,170}},
                textString="%name",
                lineColor={0,0,255}),
              Ellipse(
                extent={{-26,30},{-18,22}},
                lineColor={255,0,0},
                fillColor={255,0,0},
                fillPattern=FillPattern.Solid),
              Text(
                visible=use_m_flow_in,
                extent={{-185,132},{-45,100}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="m_flow"),
              Text(
                visible=use_T_in,
                extent={{-111,71},{-71,37}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="T"),
              Text(
                visible=use_X_in,
                extent={{-153,-44},{-33,-72}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="X"),
              Text(
                visible=use_C_in,
                extent={{-155,-98},{-35,-126}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="C")}),
          Window(
            x=0.45,
            y=0.01,
            width=0.44,
            height=0.65),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
          Documentation(info="<html>
<p>
Models an ideal flow source, with prescribed values of flow rate, temperature, composition and trace substances:
</p>
<ul>
<li> Prescribed mass flow rate.</li>
<li> Prescribed temperature.</li>
<li> Boundary composition (only for multi-substance or trace-substance flow).</li>
</ul>
<p>If <tt>use_m_flow_in</tt> is false (default option), the <tt>m_flow</tt> parameter
is used as boundary pressure, and the <tt>m_flow_in</tt> input connector is disabled; if <tt>use_m_flow_in</tt> is true, then the <tt>m_flow</tt> parameter is ignored, and the value provided by the input connector is used instead.</p> 
<p>The same thing goes for the temperature and composition</p>
<p>
Note, that boundary temperature,
mass fractions and trace substances have only an effect if the mass flow
is from the boundary into the port. If mass is flowing from
the port into the boundary, the boundary definitions,
with exception of boundary flow rate, do not have an effect.
</p>
</html>"));
      equation
        Modelica.Fluid.Utilities.checkBoundary(
          Medium.mediumName,
          Medium.substanceNames,
          Medium.singleState,
          true,
          X_in_internal,
          "MassFlowSource_T");
        connect(m_flow_in, m_flow_in_internal);
        connect(T_in, T_in_internal);
        connect(X_in, X_in_internal);
        connect(C_in, C_in_internal);
        if not use_m_flow_in then
          m_flow_in_internal = m_flow;
        end if;
        if not use_T_in then
          T_in_internal = T;
        end if;
        if not use_X_in then
          X_in_internal = X;
        end if;
        if not use_C_in then
          C_in_internal = C;
        end if;
        sum(ports.m_flow) = -m_flow_in_internal;
        medium.T = T_in_internal;
        medium.Xi = X_in_internal[1:Medium.nXi];
        ports.C_outflow = fill(C_in_internal, nPorts);
      end MassFlowSource_T;
    end Sources;

    package BaseClasses "Package with base classes for fluid models"
      extends Modelica.Fluid.Icons.BaseClassLibrary;
    annotation (preferedView="info", Documentation(info="<html>
This package contains base classes that are used to construct the models in 
<a href=\"Modelica:Buildings.Fluid\">Buildings.Fluid</a>.
</html>"));

      package FlowModels "Flow models for pressure drop calculations"
      annotation (Documentation(info="<html>
This package contains a basic flow model that is used by the 
various models that compute pressure drop.
Because the density does not change signficantly in heating,
ventilation and air conditioning systems for buildings,
this model computes the pressure drop based on the mass flow
rate and not the volume flow rate. This typically leads to simpler
equations because it does not require
the mass density, which changes when the flow is reversed. 
Although, for conceptual design of building energy system, there is
in general not enough information available that would warrant a more
detailed pressure drop calculation.
If a more detailed computation of the flow resistance is needed,
then a user can use models from the 
<tt>Modelica.Fluid</tt> library.
</html>",       revisions="<html>
<ul>
<li>
April 10, 2009 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        function basicFlowFunction_dp "Basic class for flow models"

        annotation(LateInline=true,
                   inverse(dp=Buildings.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(m_flow=m_flow, k=k, m_flow_turbulent=m_flow_turbulent, linearized=linearized)),
                   smoothOrder=2,
                   Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                    {100,100}}), graphics={Line(
                  points={{-80,-40},{-80,60},{80,-40},{80,60}},
                  color={0,0,255},
                  smooth=Smooth.None,
                  thickness=1), Text(
                  extent={{-40,-40},{40,-80}},
                  lineColor={0,0,0},
                  fillPattern=FillPattern.Sphere,
                  fillColor={232,0,0},
                  textString="%name")}),
        Documentation(info="<html>
<p>
Function that computes the pressure drop of flow elements as
<pre>
  m_flow = sign(dp) * k * sqrt(|dp|),
</pre>
with regularization near the origin.
The variable <tt>m_flow_turbulent</tt> determines the location of the regularization.
</p>
</html>"),
        revisions="<html>
<ul>
<li>
April 13, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>");
          input Modelica.SIunits.Pressure dp(displayUnit="Pa")
          "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
          input Real k(unit="")
          "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
          input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
          "Mass flow rate";
          input Boolean linearized = false
          "= true, use linear relation between m_flow and dp for any flow rate";
           output Modelica.SIunits.MassFlowRate m_flow
          "Mass flow rate in design flow direction";
      protected
          Modelica.SIunits.Pressure dp_turbulent(displayUnit="Pa")
          "Turbulent flow if |dp| >= dp_small, not a parameter because k can be a function of time";
      protected
         Real kSqu(unit="kg.m") "Flow coefficient, kSqu=k^2=m_flow^2/|dp|";
         constant Real conv(unit="m.s2/kg") = 1
          "Factor, needed to satisfy unit check";
         constant Real conv2 = sqrt(conv)
          "Factor, needed to satisfy unit check";
        algorithm
          kSqu:=k*k;
          dp_turbulent :=m_flow_turbulent^2/kSqu;
          if linearized then
             m_flow :=k*dp*conv2;
          else
             m_flow :=Modelica.Fluid.Utilities.regRoot2(x=dp, x_small=dp_turbulent, k1=kSqu, k2=kSqu);
          end if;
        end basicFlowFunction_dp;

        function basicFlowFunction_m_flow "Basic class for flow models"

         annotation (LateInline=true,
                     inverse(m_flow=Buildings.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(dp=dp, k=k, m_flow_turbulent=m_flow_turbulent, linearized=linearized)),
                     smoothOrder=2,
                     Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                    -100},{100,100}}), graphics={Line(
                  points={{-80,-40},{-80,60},{80,-40},{80,60}},
                  color={0,0,255},
                  smooth=Smooth.None,
                  thickness=1), Text(
                  extent={{-40,-40},{40,-80}},
                  lineColor={0,0,0},
                  fillPattern=FillPattern.Sphere,
                  fillColor={232,0,0},
                  textString="%name")}),
        Documentation(info="<html>
<p>
Function that computes the pressure drop of flow elements as
<pre>
  dp = 1/k^2 * sign(m_flow) m_flow^2
</pre>
with regularization near the origin.
The variable <tt>m_flow_turbulent</tt> determines the location of the regularization.
</p>
</html>"),
        revisions="<html>
<ul>
<li>
April 13, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>");
          input Modelica.SIunits.MassFlowRate m_flow
          "Mass flow rate in design flow direction";
          input Real k(unit="")
          "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
          input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
          "Mass flow rate";
          input Boolean linearized = false
          "= true, use linear relation between m_flow and dp for any flow rate";
          output Modelica.SIunits.Pressure dp(displayUnit="Pa")
          "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
      protected
         Real kSquInv(unit="1/(kg.m)") "Flow coefficient";
         constant Real conv(unit="m.s2/kg") = 1
          "Factor, needed to satisfy unit check";
         constant Real conv2 = sqrt(conv)
          "Factor, needed to satisfy unit check";
        algorithm
          kSquInv:=1/k^2;
          if linearized then
             dp := m_flow/k/conv2;
          else
             dp :=Modelica.Fluid.Utilities.regSquare2(x=m_flow, x_small=m_flow_turbulent, k1=kSquInv, k2=kSquInv);
          end if;
        end basicFlowFunction_m_flow;
      end FlowModels;

      partial model PartialResistance
      "Partial model for a hydraulic resistance"
          extends Modelica.Fluid.Interfaces.PartialTwoPortTransport(m_flow_small = 1E-4*m_flow_nominal,
           m_flow(nominal=m_flow_nominal), dp(nominal=dp_nominal, displayUnit="Pa"));

        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Rectangle(
              extent={{-100,40},{100,-40}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={192,192,192}), Rectangle(
              extent={{-100,22},{100,-24}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={0,127,255})}),
                defaultComponentName="res",
      Documentation(info="<html>
<p>
Partial model for a flow resistance, possible with variable flow coefficient.
The pressure drop is computed by an instance of
<a href=\"Modelica:Buildings.Fluid.BaseClasses.FlowModels.BasicFlowModel\">
Buildings.Fluid.BaseClasses.FlowModels.BasicFlowModel</a>,
i.e., using a regularized implementation of the equation
<pre>
  m_flow = sign(dp) * k * sqrt(|dp|).
</pre>
</p>
</html>"),
      revisions="<html>
<ul>
<li>
April 13, 2009, by Michael Wetter:<br>
Extracted pressure drop computation and implemented it in the
new model
<a href=\"Modelica:Buildings.Fluid.BaseClasses.FlowModels.BasicFlowModel\">
Buildings.Fluid.BaseClasses.FlowModels.BasicFlowModel</a>.
</li>
<li>
September 18, 2008, by Michael Wetter:<br>
Added equations for the mass balance of extra species flow,
i.e., <tt>C</tt> and <tt>mC_flow</tt>.
</li>
<li>
July 20, 2007 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>");

        parameter Boolean from_dp = true
        "= true, use m_flow = f(dp) else dp = f(m_flow)" 
          annotation (Evaluate=true, Dialog(tab="Advanced"), choices(__Dymola_checkBox=true));
        parameter Medium.MassFlowRate m_flow_nominal(min=0)
        "Nominal mass flow rate" 
          annotation(Dialog(group = "Nominal condition"));
        parameter Modelica.SIunits.Pressure dp_nominal(min=0, displayUnit="Pa")
        "Pressure"                                  annotation(Dialog(group = "Nominal condition"));
        parameter Boolean linearized = false
        "= true, use linear relation between m_flow and dp for any flow rate" 
          annotation(Evaluate=true, Dialog(tab="Advanced"), choices(__Dymola_checkBox=true));

        Real k(unit="")
        "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
        Medium.MassFlowRate m_flow_turbulent
        "Turbulent flow if |m_flow| >= m_flow_turbulent, not a parameter because k can be a function of time"
           annotation(Evaluate=true);

      //  Modelica.SIunits.Pressure dp_turbulent
      //    "Turbulent flow if |dp| >= dp_small, not a parameter because k can be a function of time";

    protected
        parameter Medium.ThermodynamicState sta0=
           Medium.setState_pTX(T=Medium.T_default, p=Medium.p_default, X=Medium.X_default);
        parameter Modelica.SIunits.DynamicViscosity eta_nominal=Medium.dynamicViscosity(sta0)
        "Dynamic viscosity, used to compute transition to turbulent flow regime";
        parameter Modelica.SIunits.SpecificEnthalpy h0=Medium.h_default
        "Initial value for solver for specific enthalpy";             //specificEnthalpy(sta0)
       constant Real conv(unit="m.s2/kg") = 1
        "Factor, needed to satisfy unit check";
       constant Real conv2 = sqrt(conv) "Factor, needed to satisfy unit check";
      equation
        // Pressure drop calculation
        if from_dp then
          m_flow=FlowModels.basicFlowFunction_dp(dp=dp, k=k, m_flow_turbulent=m_flow_turbulent, linearized=linearized);
        else
          dp=FlowModels.basicFlowFunction_m_flow(m_flow=m_flow, k=k, m_flow_turbulent=m_flow_turbulent, linearized=linearized);
        end if;

        // Isenthalpic state transformation (no storage and no loss of energy)
        port_a.h_outflow = inStream(port_b.h_outflow);
        port_b.h_outflow = inStream(port_a.h_outflow);

      end PartialResistance;
    end BaseClasses;

    package Interfaces "Package with interfaces for fluid models"
      extends Modelica.Fluid.Icons.BaseClassLibrary;
    annotation (preferedView="info", Documentation(info="<html>
This package contains basic classes that are used to build
component models that change the state of the
fluid. The classes are not directly usable, but can
be extended when building a new model.
</html>"));

      partial model PartialStaticTwoPortHeatMassTransfer
      "Partial model transporting fluid between two ports without storing mass or energy"
        extends Buildings.Fluid.Interfaces.PartialStaticTwoPortInterface;
        extends Buildings.Fluid.Interfaces.TwoPortFlowResistanceParameters(
          final computeFlowResistance=true);
        import Modelica.Constants;

        annotation (
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
          Documentation(info="<html>
<p>
This component transports fluid between its two ports, without
storing mass or energy. It is based on 
<tt>Modelica.Fluid.Interfaces.PartialTwoPortTransport</tt> but it does
use a different implementation for handling reverse flow because
in this component, mass flow rate can be added or removed from
the medium.
<p>
Depending on the parameter settings, this component computes
pressure drop due to flow friction.
The pressure drop is defined by a quadratic function that goes through
the point <tt>(m_flow_nominal, dp_nominal)</tt>. At <tt>|m_flow| &lt; deltaM * m_flow_nominal</tt>,
the pressure drop vs. flow relation is linearized.
If the parameter <tt>linearizeFlowResistance</tt> is set to true,
then the whole pressure drop vs. flow resistance curve is linearized.
</p>
<p>
When using this partial component, an equation for 
the energy and mass balances need to be added, such as
<pre>
  mWat_flow = u * m_flow_nominal;
  Q_flow = Medium.enthalpyOfLiquid(TWat) * mWat_flow;
  for i in 1:Medium.nXi loop
     mXi_flow[i] = if ( i == Medium.Water) then  mWat_flow else 0;
  end for;
</pre>
</p>
</html>",       revisions="<html>
<ul>
<li>
April 10, 2009, by Michael Wetter:<br>
Added model to compute flow friction.
</li>
<li>
April 22, 2008, by Michael Wetter:<br>
Revised to add mass balance.
</li>
<li>
March 17, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"),Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics));
        Modelica.SIunits.HeatFlowRate Q_flow "Heat transfered into the medium";
        Medium.MassFlowRate mXi_flow[Medium.nXi]
        "Mass flow rates of independent substances added to the medium";

      equation
        // Energy balance (no storage, no heat loss/gain)
        port_a.m_flow*port_a.h_outflow + port_b.m_flow*inStream(port_b.h_outflow) = -Q_flow;
        port_a.m_flow*port_b.h_outflow + port_b.m_flow*inStream(port_a.h_outflow) =  Q_flow;

        // Mass balance (no storage)
        port_a.m_flow + port_b.m_flow = -sum(mXi_flow);

        port_a.m_flow*port_a.Xi_outflow + port_b.m_flow*inStream(port_b.Xi_outflow) = -mXi_flow;
        port_a.m_flow*port_b.Xi_outflow + port_b.m_flow*inStream(port_a.Xi_outflow) = mXi_flow;

        // Transport of trace substances
        port_a.C_outflow = inStream(port_b.C_outflow);
        port_b.C_outflow = inStream(port_a.C_outflow);

        // Pressure drop calculation
        if computeFlowResistance then
         if from_dp then
            m_flow = Buildings.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(
               dp=dp, k=m_flow_nominal/sqrt(dp_nominal), m_flow_turbulent=deltaM * m_flow_nominal,
               linearized=linearizeFlowResistance);
         else
            dp = Buildings.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
               m_flow=m_flow, k=m_flow_nominal/sqrt(dp_nominal), m_flow_turbulent=deltaM * m_flow_nominal,
               linearized=linearizeFlowResistance);
         end if;
        else
          dp = 0;
        end if;

      end PartialStaticTwoPortHeatMassTransfer;

      partial model PartialStaticTwoPortInterface
      "Partial model transporting fluid between two ports without storing mass or energy"
        import Modelica.Constants;
        extends Modelica.Fluid.Interfaces.PartialTwoPort(
          port_a(
            p(start=p_a_start),
            m_flow(min = if allowFlowReversal then -Constants.inf else 0)),
          port_b(
            p(start=p_b_start),
            m_flow(max = if allowFlowReversal then +Constants.inf else 0)));

        annotation (
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
          Documentation(info="<html>
<p>
This component defines the interface for models that 
transports a fluid between two ports. It is similar to 
<a href=\"Modelica:Modelica.Fluid.Interfaces.PartialTwoPortTransport\">
Modelica.Fluid.Interfaces.PartialTwoPortTransport</a>, but it does not 
include the species balance 
<pre>
  port_b.Xi_outflow = inStream(port_a.Xi_outflow);
</pre>.
Thus, it can be used as a base class for a heat <i>and</i> mass transfer component
</p>
<p>
The model is used by other models in this package that add heat transfer,
mass transfer and pressure drop equations. See for example
<a href=\"Modelica:Buildings.Fluid.Interfaces.PartialStaticTwoPortHeatMassTransfer\">
Buildings.Fluid.Interfaces.PartialStaticTwoPortHeatMassTransfer</a>.
</p>
</html>",       revisions="<html>
<ul>
<li>
September 19, 2008 by Michael Wetter:<br>
Added equations for the mass balance of extra species flow,
i.e., <tt>C</tt> and <tt>mC_flow</tt>.
</li>
<li>
March 11, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        parameter Medium.MassFlowRate m_flow_nominal(min=0)
        "Nominal mass flow rate" 
          annotation(Dialog(group = "Nominal condition"));
        parameter Medium.MassFlowRate m_flow_small(min=0) = 1E-4*m_flow_nominal
        "Small mass flow rate for regularization of zero flow" 
          annotation(Dialog(tab = "Advanced"));

        // Initialization
        parameter Medium.AbsolutePressure p_a_start=system.p_start
        "Guess value for inlet pressure" 
          annotation(Dialog(tab="Initialization"));
        parameter Medium.AbsolutePressure p_b_start=p_a_start
        "Guess value for outlet pressure" 
          annotation(Dialog(tab="Initialization"));

        // Diagnostics
         parameter Boolean show_V_flow = false
        "= true, if volume flow rate at inflowing port is computed" 
          annotation(Dialog(tab="Advanced",group="Diagnostics"));

        Modelica.SIunits.VolumeFlowRate V_flow=
            m_flow/Modelica.Fluid.Utilities.regStep(m_flow,
                        Medium.density(state_a_inflow),
                        Medium.density(state_b_inflow),
                        m_flow_small) if show_V_flow
        "Volume flow rate at inflowing port (positive when flow from port_a to port_b)";

      /*
  Medium.Temperature port_a_T=
      Modelica.Fluid.Utilities.regStep(port_a.m_flow,
                  Medium.temperature(state_a),
                  Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow)),
                  m_flow_small) if show_T 
    "Temperature close to port_a, if show_T = true";
  Medium.Temperature port_b_T=
      Modelica.Fluid.Utilities.regStep(port_b.m_flow,
                  Medium.temperature(state_b),
                  Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow)),
                  m_flow_small) if show_T 
    "Temperature close to port_b, if show_T = true";
*/
        Medium.MassFlowRate m_flow(start=0)
        "Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction)";
        Modelica.SIunits.Pressure dp(start=0, displayUnit="Pa")
        "Pressure difference between port_a and port_b";

        Medium.ThermodynamicState sta_a=
            Medium.setState_phX(port_a.p, actualStream(port_a.h_outflow), actualStream(port_a.Xi_outflow))
        "Medium properties in port_a";
        Medium.ThermodynamicState sta_b=
            Medium.setState_phX(port_b.p, actualStream(port_b.h_outflow), actualStream(port_b.Xi_outflow))
        "Medium properties in port_b";

    protected
        Medium.ThermodynamicState state_a_inflow=
          Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow))
        "state for medium inflowing through port_a";
        Medium.ThermodynamicState state_b_inflow=
          Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow))
        "state for medium inflowing through port_b";

      equation
      //   medium_a.state=sta_a;
       //  medium_a.Xi = actualStream(port_a.Xi_outflow);
        // Design direction of mass flow rate
        m_flow = port_a.m_flow;

        // Pressure difference between ports
        dp = port_a.p - port_b.p;

      end PartialStaticTwoPortInterface;

      record TwoPortFlowResistanceParameters
      "Parameters for flow resistance for models with two ports"

      annotation (Documentation(info="<html>
This class contains parameters that are used to
compute the pressure drop in models that have one fluid stream.
Note that the nominal mass flow rate is not declared here because
the model 
<a href=\"Modelica:Buildings.Fluid.Interfaces.PartialStaticTwoPortInterface\">
PartialStaticTwoPortInterface</a>
already declares it.
</html>",
      revisions="<html>
<ul>
<li>
April 13, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        parameter Boolean computeFlowResistance = true
        "=true, compute flow resistance. Set to false to assume no friction" 
          annotation (Evaluate=true, Dialog(tab="Flow resistance"), choices(__Dymola_checkBox=true));

        parameter Boolean from_dp = true
        "= true, use m_flow = f(dp) else dp = f(m_flow)" 
          annotation (Evaluate=true, Dialog(enable = computeFlowResistance,
                      tab="Flow resistance"), choices(__Dymola_checkBox=true));
        parameter Modelica.SIunits.Pressure dp_nominal(min=0, displayUnit="Pa")
        "Pressure"                                  annotation(Dialog(group = "Nominal condition"));
        parameter Boolean linearizeFlowResistance = false
        "= true, use linear relation between m_flow and dp for any flow rate" 
          annotation(Dialog(enable = computeFlowResistance,
                     tab="Flow resistance"), choices(__Dymola_checkBox=true));
        parameter Real deltaM = 0.1
        "Fraction of nominal flow rate where flow transitions to laminar" 
          annotation(Dialog(enable = computeFlowResistance, tab="Flow resistance"));

      end TwoPortFlowResistanceParameters;
    end Interfaces;
  end Fluid;

  package Media "Package with medium models"
    annotation (preferedView="info", Documentation(info="<html>
This package contains different implementations for
various media.
The media models in this package are
compatible with 
<a href=\"Modelica:Modelica.Media\">
Modelica.Media</a> 
but the implementation is in general simpler, which often 
leads to easier numerical problems and better convergence of the
models.
Due to the simplifications, the media model of this package
are generally accurate for a smaller temperature range than the 
models in <a href=\"Modelica:Modelica.Media\">
Modelica.Media</a>, but the smaller temperature range may often be 
sufficient for building HVAC applications. 
</html>"));

    package GasesPTDecoupled
    "Package with models for gases where pressure and temperature are independent of each other"
      annotation (preferedView="info", Documentation(info="<HTML>
<p>
Medium models in this package use the gas law
<tt>d/dStp = p/pStp</tt> where 
<tt>pStd</tt> and <tt>dStp</tt> are constants for a reference
temperature and density instead of the ideal gas law
<tt>d = p/(R*T)</tt>.
</p>
<p>
This new formulation often leads to smaller systems of nonlinear equations 
because pressure and temperature are decoupled, at the expense of accuracy.
</p>
</HTML>",     revisions="<html>
<ul>
<li>
March 19, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

      package MoistAir
      "Package with moist air model that decouples pressure and temperature"
        extends Modelica.Media.Interfaces.PartialCondensingGases(
           mediumName="MoistAirPTDecoupled",
           substanceNames={"water", "air"},
           final reducedX=true,
           final singleState=false,
           reference_X={0.01,0.99},
           fluidConstants = {Modelica.Media.IdealGases.Common.FluidData.H2O,
                             Modelica.Media.IdealGases.Common.FluidData.N2});
        annotation (preferedView="info", Documentation(info="<HTML>
<p>
This is a medium model that is identical to 
<a href=\"Modelica:Buildings.Media.PerfectGases.MoistAir\">
Buildings.Media.PerfectGases.MoistAir</a>, except the 
equation <tt>d = p/(R*T)</tt> has been replaced with 
<tt>d/dStp = p/pStp</tt> where 
<tt>pStd</tt> and <tt>dStp</tt> are constants for a reference
temperature and density.
</p>
<p>
This new formulation often leads to smaller systems of nonlinear equations 
because pressure and temperature are decoupled, at the expense of accuracy.
</p>
</HTML>",       revisions="<html>
<ul>
<li>
January 13, 2010, by Michael Wetter:<br>
Added function <tt>enthalpyOfNonCondensingGas</tt> and its derivative.
</li>
<li>
January 13, 2010, by Michael Wetter:<br>
Fixed implementation of derivative functions.
</li>
<li>
August 28, 2008, by Michael Wetter:<br>
Referenced <tt>spliceFunction</tt> from package 
<a href=\"Modelica:Buildings.Utilities.Math\">Buildings.Utilities.Math</a>
to avoid duplicate code.
</li>
<li>
August 21, 2008, by Michael Wetter:<br>
Replaced <tt>d*pStp = p*dStp</tt> by
<tt>d/dStp = p/pStp</tt> to indicate that division by 
<tt>dStp</tt> and <tt>pStp</tt> is allowed.
</li>
<li>
August 22, 2008, by Michael Wetter:<br>
Changed function 
<a href=\"Modelica:Buildings.Media.GasesPTDecoupled.MoistAir.density\">
density</a> so that it uses <tt>rho=p/pStd*rhoStp</tt>
instead of the ideal gas law.
</li>
<li>
August 18, 2008, by Michael Wetter:<br>
Changed function 
<a href=\"Modelica:Buildings.Media.GasesPTDecoupled.MoistAir.T_phX\">
T_phX</a> so that it uses the implementation of
<a href=\"Buildings.Media.PerfectGases.MoistAir.T_phX\">
Buildings.Media.PerfectGases.MoistAir.T_phX</a>.
</li>
<li>
August 15, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        constant Integer Water=1
        "Index of water (in substanceNames, massFractions X, etc.)";

        constant Integer Air=2
        "Index of air (in substanceNames, massFractions X, etc.)";

        constant Real k_mair =  steam.MM/dryair.MM "ratio of molar weights";

        constant Buildings.Media.PerfectGases.Common.DataRecord dryair=
              Buildings.Media.PerfectGases.Common.SingleGasData.Air;

        constant Buildings.Media.PerfectGases.Common.DataRecord steam=
              Buildings.Media.PerfectGases.Common.SingleGasData.H2O;
        import SI = Modelica.SIunits;

        redeclare replaceable model extends BaseProperties(
          T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          Xi(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default))

          /* p, T, X = X[Water] are used as preferred states, since only then all
     other quantities can be computed in a recursive sequence. 
     If other variables are selected as states, static state selection
     is no longer possible and non-linear algebraic equations occur.
      */
          MassFraction x_water "Mass of total water/mass of dry air";
          Real phi "Relative humidity";
          annotation(structurallyIncomplete);

      protected
          constant SI.MolarMass[2] MMX = {steam.MM,dryair.MM}
          "Molar masses of components";

          MassFraction X_liquid "Mass fraction of liquid water";
          MassFraction X_steam "Mass fraction of steam water";
          MassFraction X_air "Mass fraction of air";
          MassFraction X_sat
          "Steam water mass fraction of saturation boundary in kg_water/kg_moistair";
          MassFraction x_sat
          "Steam water mass content of saturation boundary in kg_water/kg_dryair";
          AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
         constant AbsolutePressure pStp = 101325
          "Pressure for which dStp is defined";
         constant Density dStp = 1.2 "Fluid density at pressure pStp";
        equation
          assert(T >= 200.0 and T <= 423.15, "
Temperature T is not in the allowed range
200.0 K <= (T ="     + String(T) + " K) <= 423.15 K
required from medium model \""           + mediumName + "\".");
          MM = 1/(Xi[Water]/MMX[Water]+(1.0-Xi[Water])/MMX[Air]);

          p_steam_sat = min(saturationPressure(T),0.999*p);
          X_sat = min(p_steam_sat * k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat)*(1 - Xi[Water]), 1.0)
          "Water content at saturation with respect to actual water content";
          X_liquid = max(Xi[Water] - X_sat, 0.0);
          X_steam  = Xi[Water]-X_liquid;
          X_air    = 1-Xi[Water];

          h = specificEnthalpy_pTX(p,T,Xi);
          R = dryair.R*(1 - X_steam/(1 - X_liquid)) + steam.R*X_steam/(1 - X_liquid);
          //
          u = h - R*T;
          //    d = p/(R*T);
          d/dStp = p/pStp;

          /* Note, u and d are computed under the assumption that the volume of the liquid
         water is neglible with respect to the volume of air and of steam
      */
          state.p = p;
          state.T = T;
          state.X = X;

          // this x_steam is water load / dry air!!!!!!!!!!!
          x_sat    = k_mair*p_steam_sat/max(100*Modelica.Constants.eps,p - p_steam_sat);
          x_water = Xi[Water]/max(X_air,100*Modelica.Constants.eps);
          phi = p/p_steam_sat*Xi[Water]/(Xi[Water] + k_mair*X_air);
        end BaseProperties;

        redeclare function setState_pTX
        "Thermodynamic state as function of p, T and composition X"
            extends Buildings.Media.PerfectGases.MoistAir.setState_pTX;
        end setState_pTX;

        redeclare function setState_phX
        "Thermodynamic state as function of p, h and composition X"
        extends Modelica.Icons.Function;
          annotation (Documentation(info="<html>
Function to set the state for given pressure, enthalpy and species concentration.
This function needed to be reimplemented in order for the medium model to use
the implementation of <tt>T_phX</tt> provided by this package as opposed to the 
implementation provided by its parent package.
</html>"));
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:] "Mass fractions";
        output ThermodynamicState state;
        algorithm
        state := if size(X,1) == nX then 
               ThermodynamicState(p=p,T=T_phX(p,h,X),X=X) else 
              ThermodynamicState(p=p,T=T_phX(p,h,X), X=cat(1,X,{1-sum(X)}));
           //   ThermodynamicState(p=p,T=T_phX(p,h,cat(1,X,{1-sum(X)})), X=cat(1,X,{1-sum(X)}));
        end setState_phX;

        redeclare function setState_dTX
        "Thermodynamic state as function of d, T and composition X"
           extends Buildings.Media.PerfectGases.MoistAir.setState_dTX;
        end setState_dTX;

        redeclare function gasConstant
        "Gas constant (computation neglects liquid fraction)"
           extends Buildings.Media.PerfectGases.MoistAir.gasConstant;
        end gasConstant;

        function saturationPressureLiquid = 
            Buildings.Media.PerfectGases.MoistAir.saturationPressureLiquid
        "Saturation curve valid for 273.16 <= T <= 373.16. Outside of these limits a (less accurate) result is returned";

        function sublimationPressureIce = 
            Buildings.Media.PerfectGases.MoistAir.sublimationPressureIce
        "Saturation curve valid for 223.16 <= T <= 273.16. Outside of these limits a (less accurate) result is returned";

      redeclare function extends saturationPressure
        "Saturation curve valid for 223.16 <= T <= 373.16 (and slightly outside with less accuracy)"

        annotation(Inline=false,smoothOrder=5);
      algorithm
        psat := Buildings.Utilities.Math.Functions.spliceFunction(
                                                        saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);
      end saturationPressure;

       redeclare function pressure "Gas pressure"
          extends Buildings.Media.PerfectGases.MoistAir.pressure;
       end pressure;

       redeclare function temperature "Gas temperature"
          extends Buildings.Media.PerfectGases.MoistAir.temperature;
       end temperature;

       redeclare function density "Gas density"
         extends Modelica.Icons.Function;
         input ThermodynamicState state;
         output Density d "Density";
       algorithm
        d :=state.p*1.2/101325;
       end density;

       redeclare function specificEntropy
        "Specific entropy (liquid part neglected, mixing entropy included)"
          extends Buildings.Media.PerfectGases.MoistAir.specificEntropy;
       end specificEntropy;

       redeclare function extends enthalpyOfVaporization
        "Enthalpy of vaporization of water"
       algorithm
        r0 := 2501014.5;
       end enthalpyOfVaporization;

      redeclare replaceable function extends enthalpyOfLiquid
        "Enthalpy of liquid (per unit mass of liquid) which is linear in the temperature"

        annotation(smoothOrder=5, derivative=der_enthalpyOfLiquid);
      algorithm
        h := (T - 273.15)*4186;
      end enthalpyOfLiquid;

      replaceable function der_enthalpyOfLiquid
        "Temperature derivative of enthalpy of liquid per unit mass of liquid"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of liquid enthalpy";
      algorithm
        der_h := 4186*der_T;
      end der_enthalpyOfLiquid;

      redeclare function enthalpyOfCondensingGas
        "Enthalpy of steam per unit mass of steam"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfCondensingGas);
        input Temperature T "temperature";
        output SpecificEnthalpy h "steam enthalpy";
      algorithm
        h := (T-273.15) * steam.cp + enthalpyOfVaporization(T);
      end enthalpyOfCondensingGas;

      replaceable function der_enthalpyOfCondensingGas
        "Derivative of enthalpy of steam per unit mass of steam"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of steam enthalpy";
      algorithm
        der_h := steam.cp*der_T;
      end der_enthalpyOfCondensingGas;

      redeclare function enthalpyOfNonCondensingGas
        "Enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfNonCondensingGas);
        input Temperature T "temperature";
        output SpecificEnthalpy h "enthalpy";
      algorithm
        h := enthalpyOfDryAir(T);
      end enthalpyOfNonCondensingGas;

      replaceable function der_enthalpyOfNonCondensingGas
        "Derivative of enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of steam enthalpy";
      algorithm
        der_h := der_enthalpyOfDryAir(T, der_T);
      end der_enthalpyOfNonCondensingGas;

      redeclare replaceable function extends enthalpyOfGas
        "Enthalpy of gas mixture per unit mass of gas mixture"
      algorithm
        h := enthalpyOfCondensingGas(T)*X[Water]
             + enthalpyOfDryAir(T)*(1.0-X[Water]);
      end enthalpyOfGas;

      replaceable function enthalpyOfDryAir
        "Enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfDryAir);
        input Temperature T "temperature";
        output SpecificEnthalpy h "dry air enthalpy";
      algorithm
        h := (T - 273.15)*dryair.cp;
      end enthalpyOfDryAir;

      replaceable function der_enthalpyOfDryAir
        "Derivative of enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of dry air enthalpy";
      algorithm
        der_h := dryair.cp*der_T;
      end der_enthalpyOfDryAir;

      redeclare replaceable function extends specificHeatCapacityCp
        "Specific heat capacity of gas mixture at constant pressure"
      algorithm
        cp := dryair.cp*(1-state.X[Water]) +steam.cp*state.X[Water];
      end specificHeatCapacityCp;

      redeclare replaceable function extends specificHeatCapacityCv
        "Specific heat capacity of gas mixture at constant volume"
      algorithm
        cv:= dryair.cv*(1-state.X[Water]) +steam.cv*state.X[Water];
      end specificHeatCapacityCv;

      redeclare function extends dynamicViscosity
        "dynamic viscosity of dry air"
      algorithm
        eta := 1.85E-5;
      end dynamicViscosity;

      redeclare function extends thermalConductivity
        "Thermal conductivity of dry air as a polynomial in the temperature"
        import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
      algorithm
        lambda := Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
        Modelica.SIunits.Conversions.to_degC(state.T));
      end thermalConductivity;

      function h_pTX
        "Compute specific enthalpy from pressure, temperature and mass fraction"
        extends Buildings.Media.PerfectGases.MoistAir.h_pTX;
      end h_pTX;

      redeclare function extends specificEnthalpy "Specific enthalpy"
      algorithm
        h := h_pTX(state.p, state.T, state.X);
      end specificEnthalpy;

      redeclare function extends specificInternalEnergy
        "Specific internal energy"
        extends Modelica.Icons.Function;
      algorithm
        u := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T;
      end specificInternalEnergy;

      redeclare function extends specificGibbsEnergy "Specific Gibbs energy"
        extends Modelica.Icons.Function;
      algorithm
        g := h_pTX(state.p,state.T,state.X) - state.T*specificEntropy(state);
      end specificGibbsEnergy;

      redeclare function extends specificHelmholtzEnergy
        "Specific Helmholtz energy"
        extends Modelica.Icons.Function;
      algorithm
        f := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
      end specificHelmholtzEnergy;

      function T_phX
        "Compute temperature from specific enthalpy and mass fraction"
        extends Buildings.Media.PerfectGases.MoistAir.T_phX;
      end T_phX;
      end MoistAir;
    end GasesPTDecoupled;

    package PerfectGases "Package with models for perfect gases"

      package Common "Package with common data for perfect gases"

        record DataRecord
        "Coefficient data record for properties of perfect gases"
          extends Modelica.Icons.Record;
          annotation (Documentation(preferedView="info", info="<HTML>
<p>
This data record contains the coefficients for perfect gases.
</p>
</HTML>"),         revisions=
                "<html>
<ul>
<li>
May 12, 2008 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>");

          String name "Name of ideal gas";
          Modelica.SIunits.MolarMass MM "Molar mass";
          Modelica.SIunits.SpecificHeatCapacity R "Gas constant";
          Modelica.SIunits.SpecificHeatCapacity cp
          "Specific heat capacity at constant pressure";
          Modelica.SIunits.SpecificHeatCapacity cv = cp - R
          "Specific heat capacity at constant volume";
        end DataRecord;

        package SingleGasData "Package with data records for single gases"
          annotation (Documentation(preferedView="info", info="<HTML>
<p>
This package contains the coefficients for perfect gases.
</p>
</HTML>"),         revisions="<html>
<ul>
<li>
May 12, 2008 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>");

         constant PerfectGases.Common.DataRecord Air(
           name = Modelica.Media.IdealGases.Common.SingleGasesData.Air.name,
           R =    Modelica.Media.IdealGases.Common.SingleGasesData.Air.R,
           MM =   Modelica.Media.IdealGases.Common.SingleGasesData.Air.MM,
           cp =   1006);

        constant PerfectGases.Common.DataRecord H2O(
           name = Modelica.Media.IdealGases.Common.SingleGasesData.H2O.name,
           R =    Modelica.Media.IdealGases.Common.SingleGasesData.H2O.R,
           MM =   Modelica.Media.IdealGases.Common.SingleGasesData.H2O.MM,
           cp =   1860);
        end SingleGasData;
      end Common;

      package MoistAir
        extends Modelica.Media.Interfaces.PartialCondensingGases(
           mediumName="Moist air perfect gas",
           substanceNames={"water", "air"},
           final reducedX=true,
           final singleState=false,
           reference_X={0.01,0.99},
           fluidConstants = {Modelica.Media.IdealGases.Common.FluidData.H2O,
                             Modelica.Media.IdealGases.Common.FluidData.N2});
        annotation (preferedView="info", Documentation(info="<HTML>
<p>
This is a medium model that is similar to 
<a href=\"Modelica:Modelica.Media.Air.MoistAir\">
Modelica.Media.Air.MoistAir</a> but 
it has a constant specific heat capacity.
</p><p>
In particular, the medium is <i>thermally perfect</i>, i.e., 
<ul>
<li>
it is in thermodynamic equilibrium,
</li><li>
it is chemically not reacting, and
</li><li>
internal energy and enthalpy are functions of the temperature only.
</li>
</ul>
In addition, the gas is <i>calorically perfect</i>, i.e., the
specific heat capacities at constant pressure
and constant volume are both constant (Bower 1998).
</p>
<h4>References</h4>
Bower, William B. <i>A primer in fluid mechanics: Dynamics of flows in one
space dimension</i>. CRC Press. 1998.
</HTML>",       revisions="<html>
<ul>
<li>
January 27, 2010, by Michael Wetter:<br>
Fixed bug that lead to run-time error in <code>T_phX</code>.
</li>
<li>
January 13, 2010, by Michael Wetter:<br>
Added function <tt>enthalpyOfNonCondensingGas</tt> and its derivative.
</li>
<li>
January 13, 2010, by Michael Wetter:<br>
Fixed implementation of derivative functions.
</li>
<li>
October 12, 2009, by Michael Wetter:<br>
Added annotation for analytic derivative for functions
<code>saturationPressureLiquid</code> and <code>sublimationPressureIce</code>.
<li>
August 28, 2008, by Michael Wetter:<br>
Referenced <tt>spliceFunction</tt> from package 
<a href=\"Modelica:Buildings.Utilities.Math\">Buildings.Utilities.Math</a>
to avoid duplicate code.
</li>
<li>
May 8, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

        constant Integer Water=1
        "Index of water (in substanceNames, massFractions X, etc.)";

        constant Integer Air=2
        "Index of air (in substanceNames, massFractions X, etc.)";

        constant Real k_mair =  steam.MM/dryair.MM "ratio of molar weights";

        constant Buildings.Media.PerfectGases.Common.DataRecord dryair=
              Buildings.Media.PerfectGases.Common.SingleGasData.Air;

        constant Buildings.Media.PerfectGases.Common.DataRecord steam=
              Buildings.Media.PerfectGases.Common.SingleGasData.H2O;
        import SI = Modelica.SIunits;

          constant Modelica.SIunits.Temperature TMin = 200
        "Minimum temperature";

          constant Modelica.SIunits.Temperature TMax = 400
        "Maximum temperature";

        redeclare replaceable model extends BaseProperties(
          T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          Xi(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default))

          /* p, T, X = X[Water] are used as preferred states, since only then all
     other quantities can be computed in a recursive sequence. 
     If other variables are selected as states, static state selection
     is no longer possible and non-linear algebraic equations occur.
      */
          MassFraction x_water "mass of total water/mass of dry air";
          Real phi "relative humidity";
          annotation(structurallyIncomplete);

      protected
          constant SI.MolarMass[2] MMX = {steam.MM,dryair.MM}
          "Molar masses of components";

          MassFraction X_liquid "Mass fraction of liquid water";
          MassFraction X_steam "Mass fraction of steam water";
          MassFraction X_air "Mass fraction of air";
          MassFraction X_sat
          "Steam water mass fraction of saturation boundary in kg_water/kg_moistair";
          MassFraction x_sat
          "Steam water mass content of saturation boundary in kg_water/kg_dryair";
          AbsolutePressure p_steam_sat "Partial saturation pressure of steam";

        equation
          assert(T >= TMin and T <= TMax, "
Temperature T is not in the allowed range "       + String(TMin) + " <= (T ="
                     + String(T) + " K) <= " + String(TMax) + " K
required from medium model \""           + mediumName + "\".");
          MM = 1/(Xi[Water]/MMX[Water]+(1.0-Xi[Water])/MMX[Air]);

          p_steam_sat = min(saturationPressure(T),0.999*p);
          X_sat = min(p_steam_sat * k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat)*(1 - Xi[Water]), 1.0)
          "Water content at saturation with respect to actual water content";
          X_liquid = max(Xi[Water] - X_sat, 0.0);
          X_steam  = Xi[Water]-X_liquid;
          X_air    = 1-Xi[Water];

          h = specificEnthalpy_pTX(p,T,Xi);
          R = dryair.R*(1 - X_steam/(1 - X_liquid)) + steam.R*X_steam/(1 - X_liquid);
          //
          u = h - R*T;
          d = p/(R*T);
          /* Note, u and d are computed under the assumption that the volume of the liquid
         water is neglible with respect to the volume of air and of steam
      */
          state.p = p;
          state.T = T;
          state.X = X;

          // this x_steam is water load / dry air!!!!!!!!!!!
          x_sat    = k_mair*p_steam_sat/max(100*Modelica.Constants.eps,p - p_steam_sat);
          x_water = Xi[Water]/max(X_air,100*Modelica.Constants.eps);
          phi = p/p_steam_sat*Xi[Water]/(Xi[Water] + k_mair*X_air);
        end BaseProperties;

        redeclare function setState_pTX
        "Thermodynamic state as function of p, T and composition X"
            extends Modelica.Media.Air.MoistAir.setState_pTX;
        end setState_pTX;

        redeclare function setState_phX
        "Thermodynamic state as function of p, h and composition X"
        extends Modelica.Icons.Function;
          annotation (Documentation(info="<html>
Function to set the state for given pressure, enthalpy and species concentration.
This function needed to be reimplemented in order for the medium model to use
the implementation of <tt>T_phX</tt> provided by this package as opposed to the 
implementation provided by its parent package.
</html>"));
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:] "Mass fractions";
        output ThermodynamicState state;
        algorithm
        state := if size(X,1) == nX then 
              ThermodynamicState(p=p,T=T_phX(p,h,X),X=X) else 
              ThermodynamicState(p=p,T=T_phX(p,h,X), X=cat(1,X,{1-sum(X)}));
        end setState_phX;

        redeclare function setState_dTX
        "Thermodynamic state as function of d, T and composition X"
           extends Modelica.Media.Air.MoistAir.setState_dTX;
        end setState_dTX;

        redeclare function gasConstant
        "Gas constant (computation neglects liquid fraction)"
           extends Modelica.Media.Air.MoistAir.gasConstant;
        end gasConstant;

        function saturationPressureLiquid = 
            Modelica.Media.Air.MoistAir.saturationPressureLiquid
        "Saturation curve valid for 273.16 <= T <= 373.16. Outside of these limits a (less accurate) result is returned"
          annotation(Inline=false,smoothOrder=5, derivative=Modelica.Media.Air.MoistAir.saturationPressureLiquid_der);

        function sublimationPressureIce = 
            Modelica.Media.Air.MoistAir.sublimationPressureIce
        "Saturation curve valid for 223.16 <= T <= 273.16. Outside of these limits a (less accurate) result is returned"
          annotation(Inline=false,smoothOrder=5,derivative=Modelica.Media.Air.MoistAir.sublimationPressureIce_der);

      redeclare function extends saturationPressure
        "Saturation curve valid for 223.16 <= T <= 373.16 (and slightly outside with less accuracy)"

        annotation(Inline=false,smoothOrder=5);
      algorithm
        psat := Buildings.Utilities.Math.Functions.spliceFunction(
                                                        saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);
      end saturationPressure;

       redeclare function pressure "Gas pressure"
          extends Modelica.Media.Air.MoistAir.pressure;
       end pressure;

       redeclare function temperature "Gas temperature"
          extends Modelica.Media.Air.MoistAir.temperature;
       end temperature;

       redeclare function density "Gas density"
          extends Modelica.Media.Air.MoistAir.density;
       end density;

       redeclare function specificEntropy
        "Specific entropy (liquid part neglected, mixing entropy included)"
          extends Modelica.Media.Air.MoistAir.specificEntropy;
       end specificEntropy;

       redeclare function extends enthalpyOfVaporization
        "Enthalpy of vaporization of water"
       algorithm
        r0 := 2501014.5;
       end enthalpyOfVaporization;

      redeclare replaceable function extends enthalpyOfLiquid
        "Enthalpy of liquid (per unit mass of liquid) which is linear in the temperature"

        annotation(smoothOrder=5, derivative=der_enthalpyOfLiquid);
      algorithm
        h := (T - 273.15)*4186;
      end enthalpyOfLiquid;

      replaceable function der_enthalpyOfLiquid
        "Temperature derivative of enthalpy of liquid per unit mass of liquid"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of liquid enthalpy";
      algorithm
        der_h := 4186*der_T;
      end der_enthalpyOfLiquid;

      redeclare function enthalpyOfCondensingGas
        "Enthalpy of steam per unit mass of steam"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfCondensingGas);
        input Temperature T "temperature";
        output SpecificEnthalpy h "steam enthalpy";
      algorithm
        h := (T-273.15) * steam.cp + enthalpyOfVaporization(T);
      end enthalpyOfCondensingGas;

      replaceable function der_enthalpyOfCondensingGas
        "Derivative of enthalpy of steam per unit mass of steam"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of steam enthalpy";
      algorithm
        der_h := steam.cp*der_T;
      end der_enthalpyOfCondensingGas;

      redeclare function enthalpyOfNonCondensingGas
        "Enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfNonCondensingGas);
        input Temperature T "temperature";
        output SpecificEnthalpy h "enthalpy";
      algorithm
        h := enthalpyOfDryAir(T);
      end enthalpyOfNonCondensingGas;

      replaceable function der_enthalpyOfNonCondensingGas
        "Derivative of enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of steam enthalpy";
      algorithm
        der_h := der_enthalpyOfDryAir(T, der_T);
      end der_enthalpyOfNonCondensingGas;

      redeclare replaceable function extends enthalpyOfGas
        "Enthalpy of gas mixture per unit mass of gas mixture"
      algorithm
        h := enthalpyOfCondensingGas(T)*X[Water]
             + enthalpyOfDryAir(T)*(1.0-X[Water]);
      end enthalpyOfGas;

      replaceable function enthalpyOfDryAir
        "Enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;

        annotation(smoothOrder=5, derivative=der_enthalpyOfDryAir);
        input Temperature T "temperature";
        output SpecificEnthalpy h "dry air enthalpy";
      algorithm
        h := (T - 273.15)*dryair.cp;
      end enthalpyOfDryAir;

      replaceable function der_enthalpyOfDryAir
        "Derivative of enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;
        input Temperature T "temperature";
        input Real der_T "temperature derivative";
        output Real der_h "derivative of dry air enthalpy";
      algorithm
        der_h := dryair.cp*der_T;
      end der_enthalpyOfDryAir;

      redeclare replaceable function extends specificHeatCapacityCp
        "Specific heat capacity of gas mixture at constant pressure"
      algorithm
        cp := dryair.cp*(1-state.X[Water]) +steam.cp*state.X[Water];
      end specificHeatCapacityCp;

      redeclare replaceable function extends specificHeatCapacityCv
        "Specific heat capacity of gas mixture at constant volume"
      algorithm
        cv:= dryair.cv*(1-state.X[Water]) +steam.cv*state.X[Water];
      end specificHeatCapacityCv;

      redeclare function extends dynamicViscosity
        "dynamic viscosity of dry air"
      algorithm
        eta := 1.85E-5;
      end dynamicViscosity;

      redeclare function extends thermalConductivity
        "Thermal conductivity of dry air as a polynomial in the temperature"
      algorithm
        lambda := Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluate(
                     {(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
                     Modelica.SIunits.Conversions.to_degC(state.T));
      end thermalConductivity;

      function h_pTX
        "Compute specific enthalpy from pressure, temperature and mass fraction"
        extends Modelica.Icons.Function;
        input SI.Pressure p "Pressure";
        input SI.Temperature T "Temperature";
        input SI.MassFraction X[:] "Mass fractions of moist air";
        output SI.SpecificEnthalpy h "Specific enthalpy at p, T, X";

        annotation(Inline=false,smoothOrder=1);
      protected
        SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
        SI.MassFraction x_sat
          "steam water mass fraction of saturation boundary";
        SI.MassFraction X_liquid "mass fraction of liquid water";
        SI.MassFraction X_steam "mass fraction of steam water";
        SI.MassFraction X_air "mass fraction of air";
        SI.SpecificEnthalpy hDryAir "Enthalpy of dry air";
      algorithm
        p_steam_sat :=saturationPressure(T);
        x_sat    :=k_mair*p_steam_sat/(p - p_steam_sat);
        X_liquid :=max(X[Water] - x_sat/(1 + x_sat), 0.0);
        X_steam  :=X[Water] - X_liquid;
        X_air    :=1 - X[Water];

      /* THIS DOES NOT WORK --------------------------    
  h := enthalpyOfDryAir(T) * X_air + 
       Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas(T) * X_steam + enthalpyOfLiquid(T)*X_liquid;
--------------------------------- */

      /* THIS WORKS!!!! +++++++++++++++++++++
  h := (T - 273.15)*dryair.cp * X_air + 
       Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas(T) * X_steam + enthalpyOfLiquid(T)*X_liquid;
 +++++++++++++++++++++*/

        hDryAir := (T - 273.15)*dryair.cp;
        h := hDryAir * X_air +
             ((T-273.15) * steam.cp + 2501014.5) * X_steam +
             (T - 273.15)*4186*X_liquid;
      end h_pTX;

      redeclare function extends specificEnthalpy "Specific enthalpy"
      algorithm
        h := h_pTX(state.p, state.T, state.X);
      end specificEnthalpy;

      redeclare function extends specificInternalEnergy
        "Specific internal energy"
        extends Modelica.Icons.Function;
      algorithm
        u := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T;
      end specificInternalEnergy;

      redeclare function extends specificGibbsEnergy "Specific Gibbs energy"
        extends Modelica.Icons.Function;
      algorithm
        g := h_pTX(state.p,state.T,state.X) - state.T*specificEntropy(state);
      end specificGibbsEnergy;

      redeclare function extends specificHelmholtzEnergy
        "Specific Helmholtz energy"
        extends Modelica.Icons.Function;
      algorithm
        f := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
      end specificHelmholtzEnergy;

      function T_phX
        "Compute temperature from specific enthalpy and mass fraction"
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "Specific enthalpy";
        input MassFraction X[:] "Mass fractions of composition";
        output Temperature T "Temperature";

      protected
      package Internal
          "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
        extends Modelica.Media.Common.OneNonLinearEquation;

        redeclare record extends f_nonlinear_Data
            "Data to be passed to non-linear function"
          extends Modelica.Media.IdealGases.Common.DataRecord;
        end f_nonlinear_Data;

        redeclare function extends f_nonlinear
        algorithm
            y := h_pTX(p,x,X);
        end f_nonlinear;

        // Dummy definition has to be added for current Dymola
        redeclare function extends solve
        end solve;
      end Internal;
      protected
      constant Modelica.Media.IdealGases.Common.DataRecord steam=
                    Modelica.Media.IdealGases.Common.SingleGasesData.H2O;
      algorithm
        T := Internal.solve(h, TMin, TMax, p, X[1:nXi], steam);
          annotation (Documentation(info="<html>
Temperature is computed from pressure, specific enthalpy and composition via numerical inversion of function <a href=Modelica:Modelica.Media.Air.MoistAir.h_pTX>h_pTX</a>.
</html>"));
      end T_phX;
      end MoistAir;
    end PerfectGases;
  end Media;

  package Utilities "Package with utility functions such as for I/O"

    package IO "Package with I/O functions"

      package BCVTB
      "Package with functions to communicate with the Building Controls Virtual Test Bed"

        package BaseClasses "Package with base classes for BCVTB interface"
          extends Modelica.Fluid.Icons.BaseClassLibrary;
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
                      closeModelicaClient(socketFD) 
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
  xmlFileName=\"C:\\\\examples\\\\dymola-room\\\\socket.cfg\"
</pre>
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
                        establishModelicaClient(xmlFileName) 
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
                      exchangeModelicaClient(socketFD,
                 flaWri, flaRea,
                 simTimWri,
                 dblValWri, nDblWri,
                 simTimRea,
                 dblValRea, nDblRea) 
              annotation(Library="bcvtb_modelica",
                  Include="#include \"bcvtb.h\"");
          end exchangeReals;

          partial model FluidInterface
          "Partial class for fluid interface that can be coupled to BCVTB"
            import Buildings;
            extends Buildings.BaseClasses.BaseIcon;
            annotation (defaultComponentName="bouBCVTB",
                        Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                      -100},{100,100}}), graphics),
              Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                    -100},{100,100}}), graphics={
                Line(points={{-100,40},{-92,40}}, color={0,0,255}),
                Line(points={{-100,-40},{-92,-40}}, color={0,0,255}),
                Text(
                  extent={{-168,50},{-66,10}},
                  lineColor={0,0,0},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid,
                  textString="T"),
                Rectangle(
                  extent={{35,45},{100,-45}},
                  lineColor={0,0,0},
                  fillPattern=FillPattern.HorizontalCylinder,
                  fillColor={0,127,255}),
                Ellipse(
                  extent={{-100,80},{60,-80}},
                  lineColor={0,0,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Polygon(
                  points={{-60,70},{60,0},{-60,-68},{-60,70}},
                  lineColor={0,0,127},
                  fillColor={0,0,127},
                  fillPattern=FillPattern.Solid),
                Text(
                  extent={{-54,32},{16,-30}},
                  lineColor={255,0,0},
                  fillColor={255,0,0},
                  fillPattern=FillPattern.Solid,
                  textString="m"),
                Ellipse(
                  extent={{-26,30},{-18,22}},
                  lineColor={255,0,0},
                  fillColor={255,0,0},
                  fillPattern=FillPattern.Solid)}));

            replaceable package Medium = 
                Modelica.Media.Interfaces.PartialMedium
            "Medium model within the source" 
               annotation (choicesAllMatching=true);

            parameter Integer nPorts=1 "Number of ports" annotation(Dialog(__Dymola_connectorSizing=true));
            Modelica.Blocks.Interfaces.RealInput m_flow_in if     use_m_flow_in
            "Prescribed mass flow rate" 
              annotation (Placement(transformation(extent={{-120,60},{-80,100}},
                    rotation=0), iconTransformation(extent={{-120,60},{-80,100}})));
            Modelica.Blocks.Interfaces.RealInput T_in
            "Prescribed boundary temperature" 
              annotation (Placement(transformation(extent={{-140,40},{-100,80}},
                    rotation=0)));

             parameter Boolean use_m_flow_in = false
            "Get the mass flow rate from the input connector" 
              annotation(Evaluate=true, HideResult=true, choices(__Dymola_checkBox=true));
            parameter Medium.MassFlowRate m_flow = 0
            "Fixed mass flow rate going out of the fluid port" 
              annotation (Evaluate = true,
                          Dialog(enable = not use_m_flow_in));

            Buildings.Fluid.Sensors.EnthalpyFlowRate totEntFloRat[nPorts](redeclare
              package Medium =   Medium)
            "Total enthalpy flow rate (sensible plus latent)" 
              annotation (Placement(transformation(extent={{0,-10},{-20,10}})));
            Modelica.Fluid.Interfaces.FluidPorts_b ports[
                                          nPorts](
                               redeclare each package Medium = Medium,
                               m_flow(each max=if flowDirection==Modelica.Fluid.Types.PortFlowDirection.Leaving then 0 else 
                                               +Modelica.Constants.inf,
                                      each min=if flowDirection==Modelica.Fluid.Types.PortFlowDirection.Entering then 0 else 
                                               -Modelica.Constants.inf)) 
              annotation (Placement(transformation(extent={{88,40},{108,-40}})));

            Modelica.Blocks.Math.Sum sumHTot_flow(nin=nPorts)
            "Sum of total enthalpy flow rates" 
              annotation (Placement(transformation(extent={{0,70},{20,90}})));
            Modelica.Blocks.Interfaces.RealOutput HSen_flow(unit="W")
            "Sensible enthalpy flow rate, positive if flow into the component" 
              annotation (Placement(transformation(extent={{100,80},{120,100}})));
            Buildings.Fluid.Sources.MassFlowSource_T bou(
              redeclare package Medium = Medium,
              final use_T_in=true,
              final nPorts=nPorts,
              use_X_in=false,
              use_C_in=false,
              final use_m_flow_in=true) 
              annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
        protected
            parameter Modelica.Fluid.Types.PortFlowDirection flowDirection=
                             Modelica.Fluid.Types.PortFlowDirection.Bidirectional
            "Allowed flow direction"                 annotation(Evaluate=true, Dialog(tab="Advanced"));
          equation
            connect(m_flow_in, bou.m_flow_in);
            if not use_m_flow_in then
              bou.m_flow_in = m_flow;
            end if;

            for i in 1:nPorts loop
            connect(totEntFloRat[i].port_b, bou.ports[i]) annotation (Line(
                points={{-20,0},{-40,0}},
                color={0,127,255},
                smooth=Smooth.None));
            end for;
            connect(sumHTot_flow.u, totEntFloRat.H_flow) 
                                                   annotation (Line(
                points={{-2,80},{-10,80},{-10,11}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(bou.T_in, T_in) annotation (Line(
                points={{-62,4},{-80,4},{-80,60},{-120,60}},
                color={0,0,127},
                smooth=Smooth.None));
          end FluidInterface;
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
          parameter Integer flaDblWri[nDblWri] = zeros(nDblWri)
          "Flag for double values (0: use current value, 1: use average over interval, 2: use integral over interval)";
          parameter Real uStart[nDblWri]
          "Initial input signal, used during first data transfer with BCVTB";
          parameter Boolean activateInterface = true
          "Set to false to deactivate interface and use instead yFixed as output"
            annotation(Evaluate = true);
          parameter Real yRFixed[nDblRea] = zeros(nDblRea)
          "Fixed output, used if activateInterface=false" 
            annotation(Evaluate = true,
                        Dialog(enable = not activateInterface));

          Modelica.Blocks.Interfaces.RealInput uR[nDblWri]
          "Real inputs to be sent to the BCVTB" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
          Modelica.Blocks.Interfaces.RealOutput yR[nDblRea]
          "Real outputs received from the BCVTB" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}})));

         Integer flaRea "Flag received from BCVTB";
         Modelica.SIunits.Time simTimRea
          "Current simulation time received from the BCVTB";
         Integer retVal "Return value from the BSD socket data exchange";
      protected
          parameter Integer socketFD(fixed=false)
          "Socket file descripter, or a negative value if an error occured";
          parameter Real _uStart[nDblWri](fixed=false)
          "Initial input signal, used during first data transfer with BCVTB";
          constant Integer flaWri=0;
          Real uRInt[nDblWri] "Value of integral";
          Real uRIntPre[nDblWri]
          "Value of integral at previous sampling instance";
      public
          Real uRWri[nDblWri] "Value to be sent to the interface";
        initial algorithm
          socketFD :=if activateInterface then 
              Buildings.Utilities.IO.BCVTB.BaseClasses.establishClientSocket(xmlFileName=xmlFileName) else 
              0;
            // check for valid socketFD
             assert(socketFD >= 0, "Socket file descripter for BCVTB must be positive.\n" +
                                 "   A negative value indicates that no connection\n" +
                                 "   could be established. Check file 'utilSocket.log'.\n" +
                                 "   Received: socketFD = " + integerString(socketFD));
           flaRea   := 0;
           uRInt    := zeros(nDblWri);
           uRIntPre := zeros(nDblWri);
           for i in 1:nDblWri loop
             assert(flaDblWri[i]>=0 and flaDblWri[i]<=2,
                "Parameter flaDblWri out of range for " + integerString(i) + "-th component.");
             if (flaDblWri[i] == 0) then
                _uStart[i] := uStart[i];               // Current value.
             elseif (flaDblWri[i] == 1) then
                _uStart[i] := uStart[i];                // Average over interval
             else
                _uStart[i] := uStart[i]*samplePeriod;  // Integral over the sampling interval
                                                       // This is multiplied with samplePeriod because if
                                                       // u is power, then uRWri needs to be energy.

             end if;
           end for;

        equation
           for i in 1:nDblWri loop
              der(uRInt[i]) = if (flaDblWri[i] > 0) then uR[i] else 0;
           end for;
        algorithm
          when {sampleTrigger} then
            assert(flaRea == 0, "BCVTB interface attempts to exchange data after Ptolemy reached its final time.\n" +
                                "   Aborting simulation. Check final time in Modelica and in Ptolemy.\n" +
                                "   Received: flaRea = " + integerString(flaRea));
             // Compute value that will be sent to the BCVTB interface
             for i in 1:nDblWri loop
               if (flaDblWri[i] == 0) then
                 uRWri[i] :=pre(uR[i]);  // Send the current value.
                                         // Without the pre(), Dymola 7.2 crashes during translation of Examples.MoistAir
               else
                 uRWri[i] :=uRInt[i] - uRIntPre[i]; // Integral over the sampling interval
                 if (flaDblWri[i] == 1) then
                    uRWri[i] := uRWri[i]/samplePeriod;   // Average value over the sampling interval
                 end if;
               end if;
              end for;

            // Exchange data
            if activateInterface then
              (flaRea, simTimRea, yR, retVal) :=
                Buildings.Utilities.IO.BCVTB.BaseClasses.exchangeReals(
                socketFD=socketFD,
                flaWri=flaWri,
                simTimWri=time,
                dblValWri=if firstTrigger then _uStart else uRWri,
                nDblWri=size(uRWri, 1),
                nDblRea=size(yR, 1));
            else
              flaRea := 0;
              simTimRea := time;
              yR := yRFixed;
              retVal := 0;
              end if;
            // Check for valid return flags
            assert(flaRea >= 0, "BCVTB sent a negative flag to Modelica during data transfer.\n" +
                                "   Aborting simulation. Check file 'utilSocket.log'.\n" +
                                "   Received: flaRea = " + integerString(flaRea));
            assert(retVal >= 0, "Obtained negative return value during data transfer with BCVTB.\n" +
                                "   Aborting simulation. Check file 'utilSocket.log'.\n" +
                                "   Received: retVal = " + integerString(retVal));

            // Store current value of integral
            uRIntPre:=uRInt;
          end when;
           // Close socket connnection
           when terminal() then
             if activateInterface then
                Buildings.Utilities.IO.BCVTB.BaseClasses.closeClientSocket(
                                                                  socketFD);
             end if;
           end when;

          annotation (defaultComponentName="cliBCVTB",
           Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                    100}}),            graphics), Icon(coordinateSystem(
                  preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
              graphics={
              Rectangle(
                visible=not activateInterface,
                extent={{-100,-100},{100,100}},
                lineColor={0,0,127},
                fillColor={255,0,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                visible=activateInterface,
                extent={{-100,-100},{100,100}},
                lineColor={0,0,127},
                fillColor={223,223,159},
                fillPattern=FillPattern.Solid),
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
                extent={{-82,108},{30,40}},
                lineColor={0,0,0},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid,
                textString="tS=%samplePeriod%")}),
            Documentation(info="<html>
Block that exchanges data with the 
<a href=\"https://gaia.lbl.gov/bcvtb\">Building Controls Virtual Test Bed</a> (BCVTB).
<p>
At the start of the simulation, this block establishes a socket connection
using the Berkeley Software Distribution socket (BSD socket).
At each sampling interval, data are exchanged between Modelica
and the BCVTB.
When Dymola terminates, a signal is sent to the BCVTB
so that it can terminate gracefully.
</p>
<p>
For each element in the input vector <code>uR[nDblWri]</code>, 
the value of the flag <code>flaDblWri[nDblWri]</code> determines whether
the current value, the average over the sampling interval or the integral
over the sampling interval is sent to the BCVTB. The following three options are allowed:
<table border=\"1\">
<tr>
<td>
flaDblWri[i]
</td>
<td>
Value sent to the BCVTB
</td>
</tr>
<tr>
<td>
0
</td>
<td>
Current value of uR[i]
</td>
</tr>
<tr>
<td>
1
</td>
<td>
Average value of uR[i] over the sampling interval
</td>
</tr>
<tr>
<td>
2
</td>
<td>
Integral of uR[i] over the sampling interval
</td>
</tr>
</table>
</p>
<p>
For the first call to the BCVTB interface, the value of the parameter <code>uStart[nDblWri]</code>
will be used instead of <code>uR[nDblWri]</code>. This avoids an algebraic loop when determining
the initial conditions. If <code>uR[nDblWri]</code> were to be used, then computing the initial conditions
may require an iterative solution in which the function <code>exchangeWithSocket</code> may be called
multiple times.
Unfortunately, it does not seem possible to use a parameter that would give a user the option to either
select <code>uR[i]</code> or <code>uStart[i]</code> in the first data exchange. The reason is that the symbolic solver does not evaluate
the test that picks <code>uR[i]</code> or <code>uStart[i]</code>, and hence there would be an algebraic loop.
</p>
<p>
If the parameter <code>activateInterface</code> is set to false, then no data is exchanged with the BCVTB.
The output of this block is then equal to the value of the parameter <code>yRFixed[nDblRea]</code>.
This option can be helpful during debugging. Since during model translation, the functions are 
still linked to the C library, the header files and libraries need to be present in the current working 
directory even if <code>activateInterface=false</code>.
</p>
</html>",         revisions="<html>
<ul>
<li>
January 19, 2010, by Michael Wetter:<br>
Introduced parameter to set initial value to be sent to the BCVTB.
In the prior implementation, if a variable was in an algebraic loop, then zero was
sent for this variable.
</li>
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

          model MoistAir
          "Model with interfaces for media with moist air that will be linked to the BCVTB which models the response of the room"
            import Buildings;
          // package Medium = Modelica.Media.Air.MoistAir;
            package Medium = Buildings.Media.GasesPTDecoupled.MoistAir;

            annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                    -100},{460,200}}),   graphics),
              Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{460,
                      200}})),
              Documentation(info="<html>
This example illustrates the use of Modelica with the Building Controls Virtual Test Bed.
</p>
<p>
The model represents an air-based heating system with an ideal heater and an ideal humidifier
in the supply duct. The heater and humidifier are controlled with a feedback loop that 
tracks the room air temperature and room air humidity. These quantities are simulated
in the EnergyPlus simulation program through the Building Controls Virtual Test Bed.
The component <code>bouBCVTB</code> models the boundary between the domain that models the air
system (in Modelica) and the room response (in EnergyPlus).
</p>
<p>
This model is implemented in <tt>bcvtb\\examples\\dymolaEPlusXY-singleZone</tt>,
where <code>XY</code> denotes the EnergyPlus version number.
</html>",           revisions="<html>
<ul>
<li>
January 21, by Michael Wetter:<br>
Changed model to include fan instead of having flow driven by two reservoirs at 
different pressure.
</li>
<li>
September 11, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"),    experiment(
                Tolerance=1e-05,
                Algorithm="Lsodar"),
              experimentSetupOutput);
            parameter Modelica.Media.Interfaces.PartialMedium.MassFlowRate
            m_flow_nominal=
                259.2*6/1.2/3600 "Nominal mass flow rate";
            Buildings.Fluid.FixedResistances.FixedResistanceDpM dp1(
              redeclare package Medium = Medium,
              m_flow_nominal=m_flow_nominal,
              dp_nominal=200,
              from_dp=false,
              allowFlowReversal=false) 
              annotation (Placement(transformation(extent={{278,90},{298,110}})));
            Buildings.Fluid.Sources.Boundary_pT sou1(
              nPorts=2,
              redeclare package Medium = Medium,
              use_T_in=true,
              use_X_in=true,
              p(displayUnit="Pa") = 101325,
              T=293.15)             annotation (Placement(transformation(extent={{96,60},
                      {116,80}}, rotation=0)));
            inner Modelica.Fluid.System system 
              annotation (Placement(transformation(extent={{-80,160},{-60,180}})));
            Buildings.Fluid.FixedResistances.FixedResistanceDpM dp2(
              redeclare package Medium = Medium,
              m_flow_nominal=m_flow_nominal,
              dp_nominal=200,
              from_dp=false,
              allowFlowReversal=false) 
              annotation (Placement(transformation(extent={{10,10},{-10,-10}},
                  rotation=180,
                  origin={262,-50})));
            Buildings.Utilities.IO.BCVTB.MoistAirInterface bouBCVTB(
              nPorts=2,
              redeclare package Medium = Medium,
              m_flow=0,
              use_m_flow_in=false) 
              annotation (Placement(transformation(extent={{208,0},{228,20}})));
            Buildings.Fluid.MassExchangers.HumidifierPrescribed hum(
              m_flow_nominal=m_flow_nominal,
              dp_nominal=200,
              redeclare package Medium = Medium,
              mWat0_flow=0.01*m_flow_nominal,
              from_dp=false,
              allowFlowReversal=false) "Humidifier" 
              annotation (Placement(transformation(extent={{240,90},{260,110}})));
            Buildings.Fluid.HeatExchangers.HeaterCoolerPrescribed hex(
              m_flow_nominal=m_flow_nominal,
              dp_nominal=200,
              redeclare package Medium = Medium,
              Q_flow_nominal=m_flow_nominal*50*1006,
              from_dp=false,
              allowFlowReversal=false) "Heat exchanger" 
              annotation (Placement(transformation(extent={{192,90},{212,110}})));
            Modelica.Blocks.Sources.Constant TWat(k=293.15) 
              annotation (Placement(transformation(extent={{200,50},{220,70}})));
            Buildings.Fluid.Sensors.Temperature TRet(redeclare package Medium
              =                                                                 Medium)
            "Return air temperature" 
              annotation (Placement(transformation(extent={{310,-40},{330,-20}})));
            Buildings.Fluid.Sensors.MassFraction XiWat(redeclare package Medium
              =                                                                   Medium)
            "Measured air humidity" 
              annotation (Placement(transformation(extent={{282,-20},{302,0}})));
            Modelica.Blocks.Sources.Constant XSet(k=0.005)
            "Set point for humidity" 
              annotation (Placement(transformation(extent={{180,160},{200,180}})));
            Modelica.Blocks.Sources.Constant TRooSet(k=273.15 + 20)
            "Set point for room air temperature" 
              annotation (Placement(transformation(extent={{100,160},{120,180}})));
            Modelica.Blocks.Continuous.LimPID PIDHea(
              yMax=1,
              yMin=0,
              controllerType=Modelica.Blocks.Types.SimpleController.PI,
              Td=1,
              k=0.1,
              Ti=600) "Controller for heating" 
              annotation (Placement(transformation(extent={{140,160},{160,180}})));
            Modelica.Blocks.Continuous.LimPID PIDHum(
              yMax=1,
              yMin=0,
              controllerType=Modelica.Blocks.Types.SimpleController.PI,
              k=20,
              Ti=60,
              Td=60) "Controller for humidifier" 
              annotation (Placement(transformation(extent={{220,160},{240,180}})));
            Buildings.Utilities.IO.BCVTB.BCVTB bcvtb(
              xmlFileName="socket.cfg",
              nDblRea=4,
              nDblWri=5,
              flaDblWri={1,1,1,1,1},
              uStart={0,0,0,0,20},
              activateInterface=true,
              samplePeriod=60) 
              annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
            Modelica.Blocks.Routing.DeMultiplex4 deMultiplex2_1(
              n1=1,
              n2=1,
              n3=1,
              n4=1) 
              annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
            Modelica.Blocks.Sources.Constant uniCon(k=273.15) "Unit conversion"
              annotation (Placement(transformation(extent={{-40,106},{-20,126}})));
            Modelica.Blocks.Math.Add add 
              annotation (Placement(transformation(extent={{40,100},{60,120}})));
            Modelica.Blocks.Math.Add add1 
              annotation (Placement(transformation(extent={{40,-20},{60,0}})));
            Buildings.Utilities.Psychrometrics.ToTotalAir toTotalAir 
              annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
            Buildings.Utilities.Psychrometrics.ToTotalAir toTotalAir1 
              annotation (Placement(transformation(extent={{40,60},{60,80}})));
            Modelica.Blocks.Routing.Multiplex5 mul 
              annotation (Placement(transformation(extent={{400,0},{420,20}})));
            Buildings.Fluid.Sensors.Temperature TSup(redeclare package Medium
              =                                                                 Medium)
            "Supply air temperature" 
              annotation (Placement(transformation(extent={{310,58},{330,78}})));
            Modelica.Blocks.Math.Add add2(k2=-1) 
              annotation (Placement(transformation(extent={{336,32},{356,52}})));
            Buildings.Fluid.Movers.FlowMachine_y fan(redeclare package Medium
              =                                                                 Medium,
                redeclare function flowCharacteristic = 
                  Buildings.Fluid.Movers.BaseClasses.Characteristics.linearFlow
                (   V_flow_nominal={0,m_flow_nominal/1.2}, dp_nominal={2*400,400})) 
              annotation (Placement(transformation(extent={{140,90},{160,110}})));
            Modelica.Blocks.Sources.Constant yFan(k=1) "Fan control signal" 
              annotation (Placement(transformation(extent={{100,110},{120,130}})));
          equation
            connect(dp1.port_b, bouBCVTB.ports[1]) annotation (Line(
                points={{298,100},{310,100},{310,12},{227.8,12}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(dp2.port_a, bouBCVTB.ports[2]) annotation (Line(
                points={{252,-50},{240,-50},{240,8},{227.8,8}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(TWat.y, hum.T_in) annotation (Line(
                points={{221,60},{228,60},{228,94},{238,94}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(dp1.port_a, hum.port_b) annotation (Line(
                points={{278,100},{260,100}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(XiWat.port, dp2.port_b) annotation (Line(
                points={{292,-20},{292,-50},{272,-50}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(hex.port_b, hum.port_a) annotation (Line(
                points={{212,100},{240,100}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(PIDHea.u_s, TRooSet.y) annotation (Line(
                points={{138,170},{121,170}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(TRet.T, PIDHea.u_m) annotation (Line(
                points={{327,-30},{368,-30},{368,130},{150,130},{150,158}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(PIDHea.y, hex.u) annotation (Line(
                points={{161,170},{170,170},{170,106},{190,106}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(XSet.y, PIDHum.u_s)  annotation (Line(
                points={{201,170},{218,170}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(PIDHum.y, hum.u)  annotation (Line(
                points={{241,170},{260,170},{260,120},{226,120},{226,106},{238,106}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(bcvtb.yR, deMultiplex2_1.u) annotation (Line(
                points={{-49,30},{-42,30}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(uniCon.y, add.u1) annotation (Line(
                points={{-19,116},{38,116}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(add.y, sou1.T_in) annotation (Line(
                points={{61,110},{80,110},{80,74},{94,74}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(deMultiplex2_1.y1[1], add.u2) annotation (Line(
                points={{-19,39},{30,39},{30,104},{38,104}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(deMultiplex2_1.y2[1], add1.u2) annotation (Line(
                points={{-19,33},{14,33},{14,-16},{38,-16}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(uniCon.y, add1.u1) annotation (Line(
                points={{-19,116},{20,116},{20,-4},{38,-4}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(add1.y, bouBCVTB.T_in) annotation (Line(
                points={{61,-10},{80,-10},{80,16},{206,16}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(toTotalAir.XiDry, deMultiplex2_1.y4[1]) annotation (Line(
                points={{39,-50},{10,-50},{10,21},{-19,21}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(toTotalAir1.XiTotalAir, sou1.X_in[1]) annotation (Line(
                points={{61,70},{80,70},{80,66},{94,66}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(toTotalAir1.XNonVapor, sou1.X_in[2]) annotation (Line(
                points={{61,66},{94,66}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(mul.y, bcvtb.uR)          annotation (Line(
                points={{421,10},{430,10},{430,-80},{-80,-80},{-80,30},{-72,30}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(PIDHum.y, mul.u4[1])          annotation (Line(
                points={{241,170},{380,170},{380,5},{398,5}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(PIDHea.y, mul.u3[1])          annotation (Line(
                points={{161,170},{170,170},{170,140},{388,140},{388,10},{398,10}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(mul.u1[1], bouBCVTB.HSen_flow)          annotation (Line(
                points={{398,20},{240,20},{240,19},{229,19}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(bouBCVTB.HLat_flow, mul.u2[1])          annotation (Line(
                points={{229,16},{244,16},{244,15},{398,15}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(TSup.port, dp1.port_b) annotation (Line(
                points={{320,58},{320,42},{310,42},{310,100},{298,100}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(add2.u1, TSup.T) annotation (Line(
                points={{334,48},{330,48},{330,68},{327,68}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(uniCon.y, add2.u2) annotation (Line(
                points={{-19,116},{26,116},{26,36},{334,36}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(add2.y, mul.u5[1]) annotation (Line(
                points={{357,42},{374,42},{374,-6.66134e-16},{398,-6.66134e-16}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(toTotalAir.XiTotalAir, bouBCVTB.X[1]) annotation (Line(
                points={{61,-50},{102,-50},{102,4},{206,4}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(toTotalAir.XNonVapor, bouBCVTB.X[2]) annotation (Line(
                points={{61,-54},{104,-54},{104,4},{206,4}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(deMultiplex2_1.y3[1], toTotalAir1.XiDry) annotation (Line(
                points={{-19,27},{-6,27},{-6,70},{39,70}},
                color={0,127,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dash));
            connect(dp2.port_b, TRet.port) annotation (Line(
                points={{272,-50},{320,-50},{320,-40}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(XiWat.X, PIDHum.u_m) annotation (Line(
                points={{303,-10},{364,-10},{364,148},{230,148},{230,158}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(fan.port_b, hex.port_a) annotation (Line(
                points={{160,100},{192,100}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(fan.port_a, sou1.ports[1]) annotation (Line(
                points={{140,100},{130,100},{130,72},{116,72}},
                color={0,127,255},
                smooth=Smooth.None));
            connect(yFan.y, fan.y_in) annotation (Line(
                points={{121,120},{150,120},{150,110}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(dp2.port_b, sou1.ports[2]) annotation (Line(
                points={{272,-50},{320,-50},{320,-70},{130,-70},{130,68},{116,68}},
                color={0,127,255},
                smooth=Smooth.None));
          end MoistAir;
        end Examples;

        model MoistAirInterface
        "Fluid interface that can be coupled to BCVTB for medium that model the air humidity"
          extends Buildings.Utilities.IO.BCVTB.BaseClasses.FluidInterface(bou(
                final use_X_in=true));
          annotation (Diagram(graphics), Icon(coordinateSystem(preserveAspectRatio=false,
                           extent={{-100,-100},{100,100}}), graphics={Text(
                extent={{32,104},{102,78}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="HSen"), Text(
                extent={{30,72},{100,46}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid,
                textString="HLat")}),
            Documentation(info="<html>
This model allows interfacing to the 
<a href=\"https://gaia.lbl.gov/bcvtb\">Building Controls Virtual Test Bed</a>
an air-conditioning system
that uses a medium model with water vapor concentration.
</p>
<p>
The model takes as input signals the temperature and water vapor
concentration and, optionally, a bulk mass flow rate into or
out of the system boundary. The state of the fluid 
that flows out of this model will be at this temperature and
water vapor concentration. The output of this model are the sensible and
latent heat exchanged across the system boundary.
</p>
<p>
When used with the BCVTB, a building
simulation program such as EnergyPlus
may compute the room air temperatures and
room air humidity rate, which is then used as an input
to this model. The sensible and latent heat flow rates may be
sent to EnergyPlus to couple the air-conditioning system to 
the energy balance of the building model.
</p>
<p>
<b>Note:</b> The EnergyPlus building simulation program outputs the
absolute humidity ratio in units of [kg/kg dry air]. Since
<code>Modelica.Media</code> uses [kg/kg total mass of air], this quantity
needs to be converted. The conversion can be done with the model
<a href=\"Modelica:Buildings.Utilities.Psychrometrics.ToTotalAir\">
Buildings.Utilities.Psychrometrics.ToTotalAir</a>.
</html>",         revisions="<html>
<ul>
<li>
September 10, 2009, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));

          Modelica.Blocks.Interfaces.RealOutput HLat_flow(unit="W")
          "Latent enthalpy flow rate, positive if flow into the component" 
            annotation (Placement(transformation(extent={{100,50},{120,70}})));
          Buildings.Fluid.Sensors.SensibleEnthalpyFlowRate senEntFloRat[nPorts](
              redeclare package Medium = Medium) "Sensible enthalpy flow rates"
            annotation (Placement(transformation(extent={{40,-10},{20,10}})));
      public
          Modelica.Blocks.Math.Sum sumHSen_flow(nin=nPorts)
          "Sum of sensible enthalpy flow rates" 
            annotation (Placement(transformation(extent={{20,30},{40,50}})));
          Modelica.Blocks.Math.Feedback diff
          "Difference between total and sensible enthalpy flow rate" 
            annotation (Placement(transformation(extent={{70,50},{90,70}})));
          Modelica.Blocks.Interfaces.RealInput X[Medium.nX]
          "Medium species concentration" 
            annotation (Placement(transformation(extent={{-140,-80},{-100,-40}},
                  rotation=0)));
        equation
          for i in 1:nPorts loop
          connect(senEntFloRat[i].port_a, ports[i]) annotation (Line(
              points={{40,0},{98,0}},
              color={0,127,255},
              smooth=Smooth.None));
          connect(senEntFloRat[i].H_flow, sumHSen_flow.u[i]) annotation (Line(
              points={{30,11},{30,20},{6,20},{6,40},{18,40}},
              color={0,0,127},
              smooth=Smooth.None));
          end for;
          connect(senEntFloRat.port_b, totEntFloRat.port_a) annotation (Line(
              points={{20,0},{0,0}},
              color={0,127,255},
              smooth=Smooth.None));
          connect(sumHSen_flow.y, HSen_flow) annotation (Line(
              points={{41,40},{60,40},{60,90},{110,90}},
              color={0,0,127},
              smooth=Smooth.None));
          connect(sumHTot_flow.y, diff.u1) annotation (Line(
              points={{21,80},{36,80},{36,60},{72,60}},
              color={0,0,127},
              smooth=Smooth.None));
          connect(diff.y, HLat_flow) annotation (Line(
              points={{89,60},{110,60}},
              color={0,0,127},
              smooth=Smooth.None));
          connect(diff.u2, sumHSen_flow.y) annotation (Line(
              points={{80,52},{80,40},{41,40}},
              color={0,0,127},
              smooth=Smooth.None));
          connect(bou.X_in, X) annotation (Line(
              points={{-62,-4},{-80,-4},{-80,-60},{-120,-60}},
              color={0,0,127},
              smooth=Smooth.None));
        end MoistAirInterface;
      end BCVTB;
    end IO;

    package Math "Library with functions such as for smoothing"

      package Functions "Package with mathematical functions"

        package BaseClasses
        "Library with base classes for mathematical functions"
          extends Modelica.Fluid.Icons.BaseClassLibrary;

          function der_spliceFunction
              input Real pos;
              input Real neg;
              input Real x;
              input Real deltax=1;
              input Real dpos;
              input Real dneg;
              input Real dx;
              input Real ddeltax=0;
              output Real out;
        protected
              Real scaledX;
              Real scaledX1;
              Real dscaledX1;
              Real y;
          algorithm
              scaledX1 := x/deltax;
              scaledX := scaledX1*Modelica.Math.asin(1);
              dscaledX1 := (dx - scaledX1*ddeltax)/deltax;
              if scaledX1 <= -0.99999999999 then
                y := 0;
              elseif scaledX1 >= 0.9999999999 then
                y := 1;
              else
                y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX)) + 1)/2;
              end if;
              out := dpos*y + (1 - y)*dneg;
              if (abs(scaledX1) < 1) then
                out := out + (pos - neg)*dscaledX1*Modelica.Math.asin(1)/2/(
                  Modelica.Math.cosh(Modelica.Math.tan(scaledX))*Modelica.Math.cos(
                  scaledX))^2;
              end if;
          end der_spliceFunction;
        end BaseClasses;

        function spliceFunction
            input Real pos "Argument of x > 0";
            input Real neg "Argument of x < 0";
            input Real x "Independent value";
            input Real deltax=1 "Width of transition interval";
            output Real out "Smoothed value";
            annotation (smoothOrder=1, derivative=BaseClasses.der_spliceFunction, Documentation(info="<html>
<p>
Function to provide a once continuously differentialbe transition between 
to arguments.
</p><p>
The function is adapted from 
<a href=\"Modelica:Modelica.Media.Air.MoistAir.Utilities.spliceFunction\">
Modelica.Media.Air.MoistAir.Utilities.spliceFunction</a> and provided here
for easier accessability to model developers.
</html>",         revisions="<html>
<ul>
<li>
May 20, 2008, by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"));
      protected
            Real scaledX;
            Real scaledX1;
            Real y;
        algorithm
            scaledX1 := x/deltax;
            scaledX := scaledX1*Modelica.Math.asin(1);
            if scaledX1 <= -0.999999999 then
              y := 0;
            elseif scaledX1 >= 0.999999999 then
              y := 1;
            else
              y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX)) + 1)/2;
            end if;
            out := pos*y + (1 - y)*neg;
        end spliceFunction;
      end Functions;
    end Math;

    package Psychrometrics "Library with psychrometric functions"

      block ToTotalAir
      "Block to convert absolute humidity from [kg/kg dry air] to [kg/kg total air]"
        extends Modelica.Blocks.Interfaces.BlockIcon;
          annotation (
          Documentation(info="<html>
<p>
Block that converts humidity concentration from [kg/kg dry air] to [kg/kg total air].
</p>
<p>
This block may be used, for example, to convert absolute humidity that is received from
EnergyPlus to [kg/kg total air], which is the convention used by Modelica.Media.
</p>
</html>",       revisions="<html>
<ul>
<li>
September 10, 2009 by Michael Wetter:<br>
First implementation.
</li>
</ul>
</html>"),Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics={Text(
              extent={{-88,32},{-36,-32}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              textString="XiDry"), Text(
              extent={{20,50},{92,-50}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              textString="XiTotal")}),
          Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{
                  100,100}}), graphics));
        Modelica.Blocks.Interfaces.RealOutput XiTotalAir
        "Water vapor concentration in [kg/kg total air]" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=
                  0)));
        Modelica.Blocks.Interfaces.RealInput XiDry
        "Water vapor concentration in [kg/kg dry air]" 
          annotation (Placement(transformation(extent={{-120,-10},{-100,10}},
                rotation=0)));

        Modelica.Blocks.Interfaces.RealOutput XNonVapor
        "Mass fraction of remaining substances" 
          annotation (Placement(transformation(extent={{100,-50},{120,-30}},rotation=
                  0)));
      equation
        XiTotalAir = XiDry / (1+XiDry);
        XNonVapor = 1 - XiTotalAir;
      end ToTotalAir;
    end Psychrometrics;
  end Utilities;

  package BaseClasses "Package with base classes for Buildings library"
    extends Modelica.Fluid.Icons.BaseClassLibrary;
    annotation (Documentation(info="<html>
This package contains base classes that are used by various models
in the <tt>Buildings</tt> library.
</html>"));

    model BaseIcon "Base icon"
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Text(
            extent={{-46,138},{52,90}},
            lineColor={0,0,255},
            textString="%name")}));
    end BaseIcon;

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
end Buildings;
model Buildings_Utilities_IO_BCVTB_Examples_MoistAir
 extends Buildings.Utilities.IO.BCVTB.Examples.MoistAir;
  annotation(experiment(Tolerance=1e-05, Algorithm="Lsodar"),uses(Buildings(version="0.8.0")));
end Buildings_Utilities_IO_BCVTB_Examples_MoistAir;
