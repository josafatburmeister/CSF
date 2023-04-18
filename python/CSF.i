%module CSF
%{
  #define SWIG_FILE_WITH_INIT
  #include "../src/CSF.h"
%}

%include "std_string.i"
%include "std_vector.i"

namespace std
{
    %template(VecInt) vector<int>;
    %template(VecFloat) vector<float>;
    %template(VecDouble) vector<double>;

    %template(VecVecFloat) vector< vector<float> >;
    %template(VecVecDouble) vector< vector<double> >;

    %template(VecVecVecFloat) vector< vector< vector <float> > >;
    %template(VecVecVecDouble) vector< vector< vector <double> > >;
}

%include "../src/CSF.h"
