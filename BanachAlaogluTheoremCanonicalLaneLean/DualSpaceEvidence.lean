import BanachAlaogluTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure DualSpacePackage {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V] where
  dual : Type v
  dualNormedAddCommGroup : NormedAddCommGroup dual
  dualNormedSpace : NormedSpace ℝ dual
  weakStarTopology : TopologicalSpace dual
  closedUnitBall : Set dual
  isClosedClosedUnitBall : Prop
  unitBallBounded : Prop
  weakStarCompactClosedUnitBall : Prop

structure DualSpaceEvidence {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V] (D : DualSpacePackage V) where
  isClosedClosedUnitBallClosed : D.isClosedClosedUnitBall
  unitBallBoundedClosed : D.unitBallBounded
  weakStarCompactClosedUnitBallClosed : D.weakStarCompactClosedUnitBall

def DualSpaceClosed {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V] (D : DualSpacePackage V) : Prop :=
  D.isClosedClosedUnitBall ∧ D.unitBallBounded ∧ D.weakStarCompactClosedUnitBall

theorem dual_space_closed_from_evidence {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (D : DualSpacePackage V) (E : DualSpaceEvidence D) : DualSpaceClosed D := by
  exact And.intro E.isClosedClosedUnitBallClosed
    (And.intro E.unitBallBoundedClosed E.weakStarCompactClosedUnitBallClosed)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse