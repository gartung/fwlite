#include "FWCore/Version/interface/GetReleaseVersion.h"
#define PROJECT_VERSION CMSSW_10_5_0
#define STRINGIFY_(x_) #x_
#define STRINGIFY(x_) STRINGIFY_(x_)

namespace edm {
  std::string getReleaseVersion() {
    static std::string const releaseVersion(STRINGIFY(PROJECT_VERSION));
    return releaseVersion; 
  }
}
