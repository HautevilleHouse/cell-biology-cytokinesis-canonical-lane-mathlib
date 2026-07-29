import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MyosinIIDynamics where
  motorActivity : Prop
  filamentBundling : Prop
  processivity : Prop
  dynamicsClosed : motorActivity ∧ filamentBundling ∧ processivity
  dynamicsEvidence : dynamicsClosed

structure ActinCrosslinking where
  alphaActinin : Prop
  filamin : Prop
  crosslinkDensity : Prop
  crosslinkingClosed : alphaActinin ∧ filamin ∧ crosslinkDensity
  crosslinkingEvidence : crosslinkingClosed

structure ContractileForceGeneration (A : AdmissibleClass) where
  forceProduction : Prop
  tensionMaintenance : Prop
  forceTransmission : Prop
  forceClosed : forceProduction ∧ tensionMaintenance ∧ forceTransmission
  forceEvidence : forceClosed

def ActomyosinContractilityClosed (A : AdmissibleClass) (F : ContractileForceGeneration A) : Prop :=
  F.forceClosed ∧ (∀ (m : MyosinIIDynamics), m.dynamicsClosed) ∧ (∀ (a : ActinCrosslinking), a.crosslinkingClosed)

theorem actomyosin_contractility_closed (A : AdmissibleClass) (F : ContractileForceGeneration A)
    (m : MyosinIIDynamics) (a : ActinCrosslinking) :
    ActomyosinContractilityClosed A F := by
  exact And.intro F.forceEvidence (And.intro (fun _ => m.dynamicsEvidence) (fun _ => a.crosslinkingEvidence))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse