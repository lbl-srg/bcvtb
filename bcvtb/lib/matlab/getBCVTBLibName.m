function r = getBCVTBLibName()
% GETBCVTBLIBNAME - Gets the name of the BCVTB library
%
%  This function returns the name of the BCVTB library, which is 
%  operating-system dependent.

%  Revision history
%  ----------------  
%  2010-10-26 MWetter@lbl.gov: Added support for 64 bit  
%  2009-06-26 MWetter@lbl.gov: First version.
switch computer
 case 'PCWIN'
  r='bcvtb32'
 case 'PCWIN64'
  r='bcvtb64'
  case {'MACI32','GLNX86'}
   r='libbcvtb32';
 case {'MACI64','GLNXA64'}
  r='libbcvtb64';
 otherwise
  error('getBCVTBLibName:unsupportedArchitecture', ...
  'Error in getBCVTBLibName.m, unknown architecture.')
end
