import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure WeakStarCompactnessPackage where
  weakStarTopology : Type u → Type v
  closureUnderLimits : Prop
  compactUnitBall : Prop
  banachAlaogluStatement : Prop

structure WeakStarCompactnessEvidence (W : WeakStarCompactnessPackage) where
  closureUnderLimitsClosed : W.closureUnderLimits
  compactUnitBallClosed : W.compactUnitBall
  banachAlaogluStatementClosed : W.banachAlaogluStatement

def WeakStarCompactnessClosed (W : WeakStarCompactnessPackage) : Prop :=
  W.closureUnderLimits ∧ W.compactUnitBall ∧ W.banachAlaogluStatement

theorem weak_star_compactness_closed_from_evidence (W : WeakStarCompactnessPackage) (E : WeakStarCompactnessEvidence W) : WeakStarCompactnessClosed W :=
  And.intro E.closureUnderLimitsClosed (And.intro E.compactUnitBallClosed E.banachAlaogluStatementClosed)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse