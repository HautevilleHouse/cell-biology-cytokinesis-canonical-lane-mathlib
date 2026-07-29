import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RegulationPackage where
  cdk1Activity : Prop
  auroraBKinase : Prop
  rhoAcycling : Prop
  contractileRingDisassembly : Prop

def RegulationClosed (R : RegulationPackage) : Prop :=
  R.cdk1Activity ∧ R.auroraBKinase ∧ R.rhoAcycling ∧ R.contractileRingDisassembly

structure RegulationEvidence (R : RegulationPackage) where
  cdk1ActivityClosed : R.cdk1Activity
  auroraBKinaseClosed : R.auroraBKinase
  rhoAcyclingClosed : R.rhoAcycling
  contractileRingDisassemblyClosed : R.contractileRingDisassembly

theorem regulation_closed_from_evidence (R : RegulationPackage) (E : RegulationEvidence R) : RegulationClosed R := by
  exact And.intro E.cdk1ActivityClosed (And.intro E.auroraBKinaseClosed (And.intro E.rhoAcyclingClosed E.contractileRingDisassemblyClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse