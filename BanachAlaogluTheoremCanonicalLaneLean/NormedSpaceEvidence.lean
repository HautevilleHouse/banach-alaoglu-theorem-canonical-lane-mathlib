import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure NormedSpaceEvidencePackage where
  space : Type u
  normedGroup : NormedAddCommGroup space
  normedSpace : NormedSpace ℝ space
  isBanach : CompleteSpace space

def NormedSpaceEvidenceClosed (N : NormedSpaceEvidencePackage) : Prop :=
  N.isBanach

theorem normed_space_evidence_closed (N : NormedSpaceEvidencePackage) :
    NormedSpaceEvidenceClosed N := by
  exact N.isBanach

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse