import HautevilleHouse.BanachAlaogluTheoremCanonicalLaneLean.BanachAlaogluBridge

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

def ConstrainedBanachAlaogluClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_alaoglu_endgame (A : AdmissibleClass) : ConstrainedBanachAlaogluClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse