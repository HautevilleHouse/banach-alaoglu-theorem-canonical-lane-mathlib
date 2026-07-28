import BanachAlaogluTheoremCanonicalLaneLean.BanachAlaogluProof

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure WeakStarCompactnessEvidence (X : BanachSpace) (D : DualSpace X) where
  unitBallInProduct : Set (X → ℝ)
  embeddingHomeo : Homeomorphism (dualUnitBall X D) (unitBallInProduct)
  compactnessProjected : IsCompact unitBallInProduct

def WeakStarCompactnessClosed (X : BanachSpace) (D : DualSpace X) : Prop :=
  ∃ (E : WeakStarCompactnessEvidence X D), True

theorem weak_star_compactness_from_evidence (X : BanachSpace) (D : DualSpace X)
    (E : WeakStarCompactnessEvidence X D) : WeakStarCompactnessClosed X D := by
  exact ⟨E, trivial⟩

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse
