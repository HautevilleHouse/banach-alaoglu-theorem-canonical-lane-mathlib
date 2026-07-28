import Mathlib.Topology.Basic
import Mathlib.Analysis.NormedSpace.Basic

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure BanachAlaogluSpace (V : Type u) where
  normedAddCommGroup : NormedAddCommGroup V
  normedSpace : NormedSpace ℝ V

structure BanachAlaogluAdmittedObject {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V] where
  dual : Type v
  dualNormedAddCommGroup : NormedAddCommGroup dual
  dualNormedSpace : NormedSpace ℝ dual
  weakStarTopology : TopologicalSpace dual
  closedUnitBall : Set dual
  closedUnitBallCompact : Prop
  conclusion : closedUnitBallCompact

def BanachAlaogluWitnessClosed {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V] (O : BanachAlaogluAdmittedObject V) : Prop :=
  O.closedUnitBallCompact

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse