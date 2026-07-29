import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ContractileRingPackage where
  actinFilaments : Type u
  myosinII : Type v
  forminProteins : Type w
  rhoGTPaseSignaling : Prop
  ringAssemblyInitiated : Prop
  actinPolymerizationActive : Prop
  myosinMotorActivity : Prop
  ringConstrictionCompetent : Prop

structure ContractileRingEvidence (R : ContractileRingPackage) where
  ringAssemblyInitiatedClosed : R.ringAssemblyInitiated
  actinPolymerizationActiveClosed : R.actinPolymerizationActive
  myosinMotorActivityClosed : R.myosinMotorActivity
  ringConstrictionCompetentClosed : R.ringConstrictionCompetent

def ContractileRingClosed (R : ContractileRingPackage) : Prop :=
  R.ringAssemblyInitiated ∧ R.actinPolymerizationActive ∧
  R.myosinMotorActivity ∧ R.ringConstrictionCompetent

theorem contractile_ring_closed_from_evidence (R : ContractileRingPackage) (E : ContractileRingEvidence R) : ContractileRingClosed R := by
  exact And.intro E.ringAssemblyInitiatedClosed (And.intro E.actinPolymerizationActiveClosed (And.intro E.myosinMotorActivityClosed E.ringConstrictionCompetentClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse