import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure UnitBallPackage (D : DualSpacePackage) (W : WeakStarTopologyPackage D) where
  unitBall : Set (D.boundedLinearFunctionals)
  closedInWeakStar : Prop
  weakStarCompact : Prop
  normBound : ℝ
  normBoundPos : 0 < normBound
  containsAllFunctionals : Prop

structure UnitBallEvidence {D : DualSpacePackage} {W : WeakStarTopologyPackage D} (U : UnitBallPackage D W) where
  closedInWeakStarClosed : U.closedInWeakStar
  weakStarCompactClosed : U.weakStarCompact
  containsAllFunctionalsClosed : U.containsAllFunctionals

def UnitBallClosed {D : DualSpacePackage} {W : WeakStarTopologyPackage D} (U : UnitBallPackage D W) : Prop :=
  U.closedInWeakStar ∧ U.weakStarCompact ∧ U.containsAllFunctionals

theorem unit_ball_closed_from_evidence {D : DualSpacePackage} {W : WeakStarTopologyPackage D} (U : UnitBallPackage D W) (E : UnitBallEvidence U) :
    UnitBallClosed U := by
  exact And.intro E.closedInWeakStarClosed (And.intro E.weakStarCompactClosed E.containsAllFunctionalsClosed)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse