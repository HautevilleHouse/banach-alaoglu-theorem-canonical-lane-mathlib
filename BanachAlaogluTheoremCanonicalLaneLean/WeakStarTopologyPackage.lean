import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure WeakStarTopologyPackage (D : DualSpacePackage) where
  topology : Type u
  openSets : topology → Prop
  pointwiseConvergence : Prop
  separatedness : Prop
  hausdorff : Prop
  topologicalVectorSpace : Prop

structure WeakStarTopologyEvidence {D : DualSpacePackage} (W : WeakStarTopologyPackage D) where
  pointwiseConvergenceClosed : W.pointwiseConvergence
  separatednessClosed : W.separatedness
  hausdorffClosed : W.hausdorff
  topologicalVectorSpaceClosed : W.topologicalVectorSpace

def WeakStarTopologyClosed {D : DualSpacePackage} (W : WeakStarTopologyPackage D) : Prop :=
  W.pointwiseConvergence ∧ W.separatedness ∧ W.hausdorff ∧ W.topologicalVectorSpace

theorem weak_star_topology_closed_from_evidence {D : DualSpacePackage} (W : WeakStarTopologyPackage D) (E : WeakStarTopologyEvidence W) :
    WeakStarTopologyClosed W := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.separatednessClosed
      (And.intro E.hausdorffClosed E.topologicalVectorSpaceClosed))

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse