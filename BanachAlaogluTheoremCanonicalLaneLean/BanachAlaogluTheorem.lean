import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure BanachAlaogluTheoremPackage where
  banachSpace : Type u
  normedGroup : NormedAddCommGroup banachSpace
  complete : CompleteSpace banachSpace
  closedUnitBall : Set banachSpace
  unitBallDefined : closedUnitBall = Metric.closedBall (0 : banachSpace) 1
  weakStarCompact : Prop

def BanachAlaogluTheoremClosed (B : BanachAlaogluTheoremPackage) : Prop :=
  B.weakStarCompact

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse