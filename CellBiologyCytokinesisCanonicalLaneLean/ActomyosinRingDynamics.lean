import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ActomyosinRingDynamicsPackage where
  myosinIILocalization : Prop
  actinPolymerization : Prop
  ringContractionForce : Prop
  regulatoryLightChainPhosphorylation : Prop
  rhoGTPaseActivity : Prop

structure ActomyosinRingDynamicsEvidence (P : ActomyosinRingDynamicsPackage) where
  myosinIILocalizationClosed : P.myosinIILocalization
  actinPolymerizationClosed : P.actinPolymerization
  ringContractionForceClosed : P.ringContractionForce
  regulatoryLightChainPhosphorylationClosed : P.regulatoryLightChainPhosphorylation
  rhoGTPaseActivityClosed : P.rhoGTPaseActivity

def ActomyosinRingDynamicsClosed (P : ActomyosinRingDynamicsPackage) : Prop :=
  P.myosinIILocalization ∧ P.actinPolymerization ∧ P.ringContractionForce ∧ P.regulatoryLightChainPhosphorylation ∧ P.rhoGTPaseActivity

theorem actomyosin_ring_dynamics_closed_from_evidence (P : ActomyosinRingDynamicsPackage) (E : ActomyosinRingDynamicsEvidence P) :
    ActomyosinRingDynamicsClosed P := by
  exact And.intro E.myosinIILocalizationClosed (And.intro E.actinPolymerizationClosed (And.intro E.ringContractionForceClosed (And.intro E.regulatoryLightChainPhosphorylationClosed E.rhoGTPaseActivityClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse