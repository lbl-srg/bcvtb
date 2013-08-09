within ;


package Buildings "Library with models for building energy and control systems"
  extends Modelica.Icons.Package;

  package HeatTransfer "Package with heat transfer models"
    extends Modelica.Icons.Package;

    package Sources "Thermal sources"
    extends Modelica.Icons.SourcesPackage;

      model FixedTemperature "Fixed temperature boundary condition in Kelvin"

        parameter Modelica.SIunits.Temperature T "Fixed temperature at port";
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port annotation (Placement(transformation(extent={{90,
                  -10},{110,10}}, rotation=0)));
      equation
        port.T = T;
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                  100,100}}), graphics={
              Text(
                extent={{-150,150},{150,110}},
                textString="%name",
                lineColor={0,0,255}),
              Text(
                extent={{-150,-110},{150,-140}},
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
"),       Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
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
      end FixedTemperature;

      model PrescribedHeatFlow "Prescribed heat flow boundary condition"
        Modelica.Blocks.Interfaces.RealInput Q_flow
              annotation (Placement(transformation(
              origin={-100,0},
              extent={{20,-20},{-20,20}},
              rotation=180)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port annotation (Placement(transformation(extent={{90,
                  -10},{110,10}}, rotation=0)));
      equation
        port.Q_flow = -Q_flow;
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                  100,100}}), graphics={
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
                extent={{-150,100},{150,60}},
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
This model is identical to
<a href=\"modelica:Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow\">
Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow</a>, except that
the parameters <code>alpha</code> and <code>T_ref</code> have
been deleted as these can cause division by zero in some fluid flow models.
</p>
</HTML>
",    revisions="<html>
<ul>
<li>
March 29 2011, by Michael Wetter:<br/>
First implementation based on <a href=\"modelica:Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow\">
Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow</a>.
</li>
</ul>
</html>"),       Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
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
      end PrescribedHeatFlow;
      annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}})),   Documentation(info="<html>
This package is identical to
<a href=\"modelica:Modelica.Thermal.HeatTransfer.Sources\">
Modelica.Thermal.HeatTransfer.Sources</a>, except that
the parameters <code>alpha</code> and <code>T_ref</code> have
been deleted in the models
<a href=\"modelica:Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow\">
Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow</a> and
<a href=\"modelica:Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow\">
Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow</a>
 as these can cause division by zero in some fluid flow models.
</html>"));
    end Sources;
  annotation (preferredView="info", Documentation(info="<html>
This package contains models for heat transfer elements.
</html>"));
  end HeatTransfer;

  package Utilities "Package with utility functions such as for I/O"
    extends Modelica.Icons.Package;

    package IO "Package with I/O functions"
      extends Modelica.Icons.VariantsPackage;

      package BCVTB
        "Package with functions to communicate with the Building Controls Virtual Test Bed"
        extends Modelica.Icons.VariantsPackage;

        model BCVTB
          "Block that exchanges data with the Building Controls Virtual Test Bed"
          extends Modelica.Blocks.Interfaces.DiscreteBlock(final startTime=0,
          final samplePeriod = if activateInterface then timeStep else Modelica.Constants.inf);
          parameter Boolean activateInterface = true
            "Set to false to deactivate interface and use instead yFixed as output"
            annotation(Evaluate = true);
          parameter Modelica.SIunits.Time timeStep
            "Time step used for the synchronization"
            annotation(Dialog(enable = activateInterface));
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
                                 "   Received: socketFD = " + String(socketFD));
           flaRea   := 0;
           uRInt    := zeros(nDblWri);
           uRIntPre := zeros(nDblWri);
           for i in 1:nDblWri loop
             assert(flaDblWri[i]>=0 and flaDblWri[i]<=2,
                "Parameter flaDblWri out of range for " + String(i) + "-th component.");
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
           // Exchange initial values
            if activateInterface then
              (flaRea, simTimRea, yR, retVal) :=
                Buildings.Utilities.IO.BCVTB.BaseClasses.exchangeReals(
                socketFD=socketFD,
                flaWri=flaWri,
                simTimWri=time,
                dblValWri=_uStart,
                nDblWri=size(uRWri, 1),
                nDblRea=size(yR, 1));
            else
              flaRea := 0;
              simTimRea := time;
              yR := yRFixed;
              retVal := 0;
              end if;

        equation
           for i in 1:nDblWri loop
              der(uRInt[i]) = if (flaDblWri[i] > 0) then uR[i] else 0;
           end for;
        algorithm
          when {sampleTrigger} then
            assert(flaRea == 0, "BCVTB interface attempts to exchange data after Ptolemy reached its final time.\n" +
                                "   Aborting simulation. Check final time in Modelica and in Ptolemy.\n" +
                                "   Received: flaRea = " + String(flaRea));
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
                dblValWri=uRWri,
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
                                "   Received: flaRea = " + String(flaRea));
            assert(retVal >= 0, "Obtained negative return value during data transfer with BCVTB.\n" +
                                "   Aborting simulation. Check file 'utilSocket.log'.\n" +
                                "   Received: retVal = " + String(retVal));

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
                  preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
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
<a href=\"http://simulationresearch.lbl.gov/bcvtb\">Building Controls Virtual Test Bed</a> (BCVTB).
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
<table summary=\"summary\" border=\"1\">
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
<br/>
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
July 19, 2012, by Michael Wetter:<br/>
Added a call to <code>Buildings.Utilities.IO.BCVTB.BaseClasses.exchangeReals</code>
in the <code>initial algorithm</code> section.
This is needed to propagate the initial condition to the server.
It also leads to one more data exchange, which is correct and avoids the
warning message in Ptolemy that says that the simulation reached its stop time
one time step prior to the final time.
</li>
<li>
January 19, 2010, by Michael Wetter:<br/>
Introduced parameter to set initial value to be sent to the BCVTB.
In the prior implementation, if a variable was in an algebraic loop, then zero was
sent for this variable.
</li>
<li>
May 14, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end BCVTB;

        block To_degC "Converts Kelvin to Celsius"
          extends Modelica.Blocks.Interfaces.BlockIcon;

          Modelica.Blocks.Interfaces.RealInput Kelvin(final quantity="ThermodynamicTemperature",
                                                      final unit = "K", displayUnit = "degC", min=0)
            "Temperature in Kelvin"
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}}),
                iconTransformation(extent={{-140,-20},{-100,20}})));
          Modelica.Blocks.Interfaces.RealOutput Celsius(final quantity="ThermodynamicTemperature",
                                                        final unit = "degC", displayUnit = "degC", min=-273.15)
            "Temperature in Celsius"
            annotation (Placement(transformation(extent={{100,-10},{120,10}}),
                iconTransformation(extent={{100,-10},{120,10}})));
        equation
          Kelvin = Modelica.SIunits.Conversions.from_degC(Celsius);
        annotation (
        defaultComponentName="toDegC",
        Documentation(info="<html>
<p>
Converts the input from degree Celsius to Kelvin.
Note that inside Modelica, it is strongly recommended to use
Kelvin. This block is provided for convenience since the BCVTB
interface may couple Modelica to programs that use Celsius 
as the unit for temperature.
</p>
</html>",
        revisions="<html>
<ul>
<li>
April 14, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),         Icon(graphics={               Text(
                  extent={{-26,96},{-106,16}},
                  lineColor={0,0,0},
                  textString="K"),
                Polygon(
                  points={{84,-4},{24,16},{24,-24},{84,-4}},
                  lineColor={191,0,0},
                  fillColor={191,0,0},
                  fillPattern=FillPattern.Solid),
                                   Text(
                  extent={{94,-24},{14,-104}},
                  lineColor={0,0,0},
                  textString="degC"),
                Line(points={{-96,-4},{24,-4}},
                                              color={191,0,0})}),
            Diagram(graphics));
        end To_degC;

        package Examples
          "Collection of models that illustrate model use and test models"
          extends Modelica.Icons.ExamplesPackage;

          model TwoRooms
            "Thermal model of two rooms that will be linked to the BCVTB which models the controls"
            import Buildings;
            extends Modelica.Icons.Example;
            parameter Modelica.SIunits.Time tau = 2*3600 "Room time constant";
            parameter Modelica.SIunits.HeatFlowRate Q_flow_nom = 100
              "Nominal heat flow";
            parameter Modelica.SIunits.ThermalConductance UA = Q_flow_nom / 20
              "Thermal conductance of room";
            parameter Modelica.SIunits.Temperature TStart = 283.15
              "Start temperature";
            Modelica.Thermal.HeatTransfer.Components.HeatCapacitor C1(C=tau*UA, T(start=
                    TStart, fixed=true)) "Heat capacity of room"
              annotation (Placement(transformation(extent={{70,70},{90,90}})));
            Modelica.Thermal.HeatTransfer.Components.ThermalConductor UA1(G=UA)
              "Heat transmission of room"
              annotation (Placement(transformation(extent={{40,60},{60,80}})));
            Buildings.HeatTransfer.Sources.FixedTemperature TOut1(T=278.15)
              "Outside air temperature"
              annotation (Placement(transformation(extent={{0,60},{20,80}})));
            Buildings.HeatTransfer.Sources.PrescribedHeatFlow Q_flow_1
              "Heat input into the room"
              annotation (Placement(transformation(extent={{42,20},{62,40}})));
            Modelica.Blocks.Math.Gain GaiQ_flow_nom1(k=Q_flow_nom)
              "Gain for nominal heat load"
              annotation (Placement(transformation(extent={{0,20},{20,40}})));
            Modelica.Thermal.HeatTransfer.Components.ThermalConductor UA2(G=UA)
              "Heat transmission of room"
              annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
            Modelica.Thermal.HeatTransfer.Components.HeatCapacitor C2(C=2*tau*UA, T(start=
                    TStart, fixed=true)) "Heat capacity of room"
              annotation (Placement(transformation(extent={{70,-28},{90,-8}})));
            Buildings.HeatTransfer.Sources.FixedTemperature TOut2(T=278.15)
              "Outside air temperature"
              annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
            Buildings.HeatTransfer.Sources.PrescribedHeatFlow Q_flow_2
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
            Buildings.Utilities.IO.BCVTB.To_degC to_degC1
              annotation (Placement(transformation(extent={{140,60},{160,80}})));
            Buildings.Utilities.IO.BCVTB.To_degC to_degC2
              annotation (Placement(transformation(extent={{140,-40},{160,-20}})));
            Modelica.Blocks.Interfaces.RealInput u_1 annotation (Placement(
                  transformation(extent={{-138,10},{-98,50}})));
            Modelica.Blocks.Interfaces.RealInput u_2 annotation (Placement(
                  transformation(extent={{-140,-90},{-100,-50}})));
            Modelica.Blocks.Interfaces.RealOutput TRoo_1 annotation (Placement(
                  transformation(extent={{240,58},{264,82}})));
            Modelica.Blocks.Interfaces.RealOutput TRoo_2 annotation (Placement(
                  transformation(extent={{240,-42},{264,-18}})));
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
            connect(TRoo1.T, to_degC1.Kelvin) annotation (Line(
                points={{112,70},{138,70}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(TRoo2.T, to_degC2.Kelvin) annotation (Line(
                points={{110,-30},{138,-30}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(u_2, GaiQ_flow_nom2.u) annotation (Line(
                points={{-120,-70},{0,-70}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(u_1, GaiQ_flow_nom1.u) annotation (Line(
                points={{-118,30},{-2,30}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(to_degC2.Celsius, TRoo_2) annotation (Line(
                points={{161,-30},{252,-30}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(to_degC1.Celsius, TRoo_1) annotation (Line(
                points={{161,70},{252,70}},
                color={0,0,127},
                smooth=Smooth.None));
            connect(TRoo_2, TRoo_2) annotation (Line(
                points={{252,-30},{252,-30}},
                color={0,0,127},
                smooth=Smooth.None));
            annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,
                      -100},{240,100}}), graphics),
              experiment(StopTime=21600),
              Documentation(info="<html>
This example illustrates the use of Modelica with the Building Controls Virtual Test Bed.<br/>
<p>
Given a control signal for two heat flow rates, Modelica simulates the thermal response 
of two first order systems. The two systems may represent a first order approximation of a room.
The control signal for the heat flow rate is computed in the Building Controls Virtual Test Bed
using a discrete time implementation of a proportional controller.
Every 60 seconds, measured temperatures and control signals for the heat flow rates are
exchanged between Dymola and the Building Controls Virtual Test Bed.
</p>
<p>
This model is implemented in <code>bcvtb\\examples\\dymola-room</code>.
</html>",           revisions="<html>
<ul>
<li>
May 15, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end TwoRooms;
        annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains examples for the use of models that can be found in
<a href=\"modelica://Buildings.Utilities.IO.BCVTB\">
Buildings.Utilities.IO.BCVTB</a>.
</p>
</html>"));
        end Examples;

        package BaseClasses
          "Package with base classes for Buildings.Utilities.IO.BCVTB"
          extends Modelica.Icons.BasesPackage;

          function establishClientSocket
            "Establishes the client socket connection"

            input String xmlFileName = "socket.cfg"
              "Name of xml file that contains the socket information";
            output Integer socketFD
              "Socket file descripter, or a negative value if an error occured";
            external "C"
               socketFD =
                        establishModelicaClient(xmlFileName)
                 annotation(Library="bcvtb_modelica",
                            Include="#include \"bcvtb.h\"");
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
May 5, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end establishClientSocket;

          function exchangeReals
            "Exchanges values of type Real with the socket"

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
          annotation(Documentation(info="<html>
Function to exchange data of type <code>Real</code> with the socket.
This function must only be called once in each 
communication interval.
</html>", revisions="<html>
<ul>
<li>
May 5, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end exchangeReals;

          function closeClientSocket
            "Closes the socket for the inter process communication"

            input Integer socketFD
              "Socket file descripter, or a negative value if an error occured";
            output Integer retVal
              "Return value of the function that closes the socket connection";
            external "C"
               retVal =
                      closeModelicaClient(socketFD)
                 annotation(Library="bcvtb_modelica",
                            Include="#include \"bcvtb.h\"");
          annotation(Documentation(info="<html>
Function that closes the inter-process communication.
</html>", revisions="<html>
<ul>
<li>
May 5, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end closeClientSocket;
        annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains base classes that are used to construct the models in
<a href=\"modelica://Buildings.Utilities.IO.BCVTB\">Buildings.Utilities.IO.BCVTB</a>.
</p>
</html>"));
        end BaseClasses;
      end BCVTB;
    annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains components models for input and output.
Its package
<a href=\"modelica://Buildings.Utilities.IO.BCVTB\">
Buildings.Utilities.IO.BCVTB</a>
can be used for co-simulation with the
<a href=\"http://simulationresearch.lbl.gov/bcvtb\">
Building Controls Virtual Test Bed</a>.
</p>
</html>"));
    end IO;
  annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains utility models such as for thermal comfort calculation, input/output, co-simulation, psychrometric calculations and various functions that are used throughout the library.
</p>
</html>"));
  end Utilities;
annotation (
preferredView="info",
version="1.5",
versionBuild=0,
versionDate="2013-05-15",
dateModified = "2013-05-15",
uses(Modelica(version="3.2")),
uses(Modelica_StateGraph2(version="2.0.1")),
conversion(
 from(version="1.4",
      script="modelica://Buildings/Resources/Scripts/Dymola/ConvertBuildings_from_1.4_to_1.5.mos"),
 noneFromVersion="1.3",
 noneFromVersion="1.2",
 from(version="1.1",
      script="modelica://Buildings/Resources/Scripts/Dymola/ConvertBuildings_from_1.1_to_1.2.mos"),
 from(version="1.0",
      script="modelica://Buildings/Resources/Scripts/Dymola/ConvertBuildings_from_1.0_to_1.1.mos"),
 from(version="0.12",
      script="modelica://Buildings/Resources/Scripts/Dymola/ConvertBuildings_from_0.12_to_1.0.mos")),
revisionId="$Id$",
preferredView="info",
Documentation(info="<html>
<p>
The <code>Buildings</code> library is a free library
for modeling building energy and control systems. 
Many models are based on models from the package
<code>Modelica.Fluid</code> and use
the same ports to ensure compatibility with the Modelica Standard
Library.
</p>
<p>
The figure below shows a section of the schematic view of the model 
<a href=\"modelica://Buildings.Examples.HydronicHeating\">
Buildings.Examples.HydronicHeating</a>.
In the lower part of the figure, there is a dynamic model of a boiler, a pump and a stratified energy storage tank. Based on the temperatures of the storage tank, a finite state machine switches the boiler and its pump on and off. 
The heat distribution is done using a hydronic heating system with a three way valve and a pump with variable revolutions. The upper right hand corner shows a room model that is connected to a radiator whose flow is controlled by a thermostatic valve.
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://Buildings/Resources/Images/UsersGuide/HydronicHeating.png\" border=\"1\"/>
</p>
<p>
The web page for this library is
<a href=\"http://simulationresearch.lbl.gov/modelica\">http://simulationresearch.lbl.gov/modelica</a>,
and the development page is
<a href=\"https://github.com/lbl-srg/modelica-buildings\">https://github.com/lbl-srg/modelica-buildings</a>.
Contributions to further advance the library are welcomed.
Contributions may not only be in the form of model development, but also
through model use, model testing,
requirements definition or providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"));
end Buildings;

model Buildings_Utilities_IO_BCVTB_Examples_TwoRooms
 extends Buildings.Utilities.IO.BCVTB.Examples.TwoRooms;
  annotation(experiment(StopTime=21600),uses(Buildings(version="1.5")));
end Buildings_Utilities_IO_BCVTB_Examples_TwoRooms;
