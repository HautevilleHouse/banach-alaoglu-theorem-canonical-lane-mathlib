import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  add : carrier → carrier → carrier
  zero : carrier
  smul : ℝ → carrier → carrier
  normAddGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  complete : CompleteSpace carrier

structure Dual (X : BanachSpace) where
  linearFunctional : X.carrier → ℝ
  bounded : BoundedLinearFunctional X.carrier ℝ

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse