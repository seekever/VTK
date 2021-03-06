package require vtk
package require vtkinteraction
package require vtktesting

# Load base (spike and test)

source [file join [file dirname [info script]] TestStyleBase.tcl]
source [file join [file dirname [info script]] TestStyleBaseSpike.tcl]

# Set interactor style

vtkInteractorStyleSwitch inStyle
iren SetInteractorStyle inStyle
iren Initialize

# Switch to Joystick+Camera mode

iren SetKeyEventInformation 0 0 j 0 0
iren InvokeEvent "CharEvent"

iren SetKeyEventInformation 0 0 c 0 0
iren InvokeEvent "CharEvent"

# Test style

test_style [inStyle GetCurrentStyle]
