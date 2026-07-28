import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure DualSpacePackage where
  normedVectorSpace : Type u
  norm : normedVectorSpace → ℝ
  boundedLinearFunctionals : Type v
  dualNorm : boundedLinearFunctionals → ℝ
  linearity : Prop
  normCompatibility : Prop
  banachProperty : Prop

structure DualSpaceEvidence (D : DualSpacePackage) where
  linearityClosed : D.linearity
  normCompatibilityClosed : D.normCompatibility
  banachPropertyClosed : D.banachProperty

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.linearity ∧ D.normCompatibility ∧ D.banachProperty

theorem dual_space_closed_from_evidence (D : DualSpacePackage) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact And.intro E.linearityClosed (And.intro E.normCompatibilityClosed E.banachPropertyClosed)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse