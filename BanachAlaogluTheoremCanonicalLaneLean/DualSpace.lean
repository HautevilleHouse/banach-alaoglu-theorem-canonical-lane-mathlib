import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure NormedDualPackage where
  normedSpace : Type u
  norm : normedSpace → ℝ
  dualSpace : Type v
  dualNorm : dualSpace → ℝ
  unitBall : Set dualSpace
  unitBallClosed : Prop
  unitBallBounded : Prop
  unitBallWeakStarCompact : Prop

structure NormedDualEvidence (P : NormedDualPackage) where
  unitBallClosedClosed : P.unitBallClosed
  unitBallBoundedClosed : P.unitBallBounded
  unitBallWeakStarCompactClosed : P.unitBallWeakStarCompact

def NormedDualClosed (P : NormedDualPackage) : Prop :=
  P.unitBallClosed ∧ P.unitBallBounded ∧ P.unitBallWeakStarCompact

theorem normed_dual_closed_from_evidence (P : NormedDualPackage) (E : NormedDualEvidence P) : NormedDualClosed P :=
  And.intro E.unitBallClosedClosed (And.intro E.unitBallBoundedClosed E.unitBallWeakStarCompactClosed)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse