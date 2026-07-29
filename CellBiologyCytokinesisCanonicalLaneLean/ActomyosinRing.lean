import CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ActomyosinRingPackage where
  ringFormation : Prop
  myosinActivation : Prop
  actinPolymerization : Prop
  ringConstriction : Prop

structure ActomyosinRingEvidence (P : ActomyosinRingPackage) where
  ringFormationClosed : P.ringFormation
  myosinActivationClosed : P.myosinActivation
  actinPolymerizationClosed : P.actinPolymerization
  ringConstrictionClosed : P.ringConstriction

def ActomyosinRingClosed (P : ActomyosinRingPackage) : Prop :=
  P.ringFormation ∧ P.myosinActivation ∧ P.actinPolymerization ∧ P.ringConstriction

theorem actomyosin_ring_closed_from_evidence (P : ActomyosinRingPackage) (E : ActomyosinRingEvidence P) :
    ActomyosinRingClosed P := by
  exact And.intro E.ringFormationClosed (And.intro E.myosinActivationClosed (And.intro E.actinPolymerizationClosed E.ringConstrictionClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse