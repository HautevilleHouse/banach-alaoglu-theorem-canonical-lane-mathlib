import canonicalLaneMathlib.AdmissibleClass
import BanachAlaogluTheoremCanonicalLaneLean.WeakStarTopology

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure UnitBallCompactnessPackage {W : WeakStarTopologyPackage} where
  unitBallWeakStarCompact : Prop
  closureUnderLimit : Prop

structure UnitBallCompactnessEvidence {W : WeakStarTopologyPackage}
    (U : UnitBallCompactnessPackage W) where
  unitBallWeakStarCompactClosed : U.unitBallWeakStarCompact
  closureUnderLimitClosed : U.closureUnderLimit

def UnitBallCompactnessClosed {W : WeakStarTopologyPackage}
    (U : UnitBallCompactnessPackage W) : Prop :=
  U.unitBallWeakStarCompact ∧ U.closureUnderLimit

theorem unit_ball_compactness_closed_from_evidence
    {W : WeakStarTopologyPackage} (U : UnitBallCompactnessPackage W)
    (E : UnitBallCompactnessEvidence U) : UnitBallCompactnessClosed U := by
  exact And.intro E.unitBallWeakStarCompactClosed E.closureUnderLimitClosed

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse