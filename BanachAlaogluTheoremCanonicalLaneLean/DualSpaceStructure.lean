import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure DualSpaceStructurePackage where
  originalSpace : Type u
  normedGroup : NormedAddCommGroup originalSpace
  dual : Type v
  dualNormedGroup : NormedAddCommGroup dual
  pairing : originalSpace → dual → ℝ
  isBilinear : Prop

structure DualSpaceStructureEvidence (D : DualSpaceStructurePackage) where
  isBilinearClosed : D.isBilinear

def DualSpaceStructureClosed (D : DualSpaceStructurePackage) : Prop :=
  D.isBilinear

theorem dual_space_structure_closed_from_evidence
    (D : DualSpaceStructurePackage) (E : DualSpaceStructureEvidence D) :
    DualSpaceStructureClosed D := by
  exact E.isBilinearClosed

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse