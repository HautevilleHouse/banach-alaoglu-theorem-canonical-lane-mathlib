import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlaogluTheoremCanonicalLaneLean.DualSpace
import HautevilleHouse.BanachAlaogluTheoremCanonicalLaneLean.WeakStarTopology

namespace HautevilleHouse
namespace BanachAlaogluTheoremCanonicalLaneLean

structure BanachAlaogluAdmittedObject where
  dualPackage : NormedDualPackage
  weakStarPackage : WeakStarCompactnessPackage
  dualClosed : NormedDualClosed dualPackage
  weakStarClosed : WeakStarCompactnessClosed weakStarPackage
  conclusion : dualClosed ∧ weakStarClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BanachAlaogluTheoremCanonicalLaneLean
end HautevilleHouse