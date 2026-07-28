import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure AdmissibleBanachAlaoglu where
  dualSpace : Type u
  normedDual : NormedAddCommGroup dualSpace
  weakStarTopology : TopologicalSpace dualSpace
  unitBall : Set dualSpace
  unitBallClosedWeakStar : IsClosed unitBall
  unitBallCompactWeakStar : IsCompact unitBall

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse