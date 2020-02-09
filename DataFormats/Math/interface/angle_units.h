#ifndef DataFormats_Math_Angle_Units_h
#define DataFormats_Math_Angle_Units_h

#include <cmath>

namespace angle_units {

#ifdef __clang__
  constexpr long double piRadians(M_PI);              // M_PIl is long double version of pi
#else
  constexpr long double piRadians(M_PIl);              // M_PIl is long double version of pi
#endif
  constexpr long double degPerRad = 180. / piRadians;  // Degrees per radian

  namespace operators {

    // Angle
    constexpr long double operator"" _pi(long double x) { return x * piRadians; }
    constexpr long double operator"" _pi(unsigned long long int x) { return x * piRadians; }
    constexpr long double operator"" _deg(long double deg) { return deg / degPerRad; }
    constexpr long double operator"" _deg(unsigned long long int deg) { return deg / degPerRad; }
    constexpr long double operator"" _rad(long double rad) { return rad * 1.; }

    template <class NumType>
    inline constexpr NumType convertRadToDeg(NumType radians)  // Radians -> degrees
    {
      return (radians * degPerRad);
    }

    template <class NumType>
    inline constexpr long double convertDegToRad(NumType degrees)  // Degrees -> radians
    {
      return (degrees / degPerRad);
    }
  }  // namespace operators
}  // namespace angle_units

#endif
