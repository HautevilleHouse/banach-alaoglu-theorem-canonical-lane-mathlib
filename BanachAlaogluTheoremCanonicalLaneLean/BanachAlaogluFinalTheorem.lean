import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

def BanachAlaogluClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem banach_alaoglu_endgame (A : AdmissibleClass) : BanachAlaogluClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse