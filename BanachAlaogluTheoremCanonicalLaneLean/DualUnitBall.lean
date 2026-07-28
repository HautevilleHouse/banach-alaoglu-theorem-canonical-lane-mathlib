import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure DualUnitBall (X : BanachSpace) where
  ball : Set (Dual X)
  ballDefined : ball = {f : Dual X | ‖f‖ ≤ 1}
  ballClosedWeakStar : WeakStarClosed X ball
  ballCompactWeakStar : IsCompact ball

def unitBallCompact (X : BanachSpace) : Prop :=
  IsCompact ({f : Dual X | ‖f‖ ≤ 1} : Set (Dual X))

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse