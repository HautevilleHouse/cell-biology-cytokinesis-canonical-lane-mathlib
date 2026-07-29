import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ActomyosinRingAssembly where
  actinFilamentsFormed : Prop
  myosinIIActivated : Prop
  ringContractile : Prop

structure ActomyosinRingPackage where
  assembly : ActomyosinRingAssembly
  constrictionDynamics : Prop
  disassembly : Prop

structure ActomyosinRingEvidence (A : ActomyosinRingPackage) where
  actinFilamentsFormedClosed : A.assembly.actinFilamentsFormed
  myosinIIActivatedClosed : A.assembly.myosinIIActivated
  ringContractileClosed : A.assembly.ringContractile

def ActomyosinRingClosed (A : ActomyosinRingPackage) : Prop :=
  A.assembly.actinFilamentsFormed ∧ A.assembly.myosinIIActivated ∧ A.assembly.ringContractile

theorem actomyosin_ring_closed_from_evidence (A : ActomyosinRingPackage)
    (E : ActomyosinRingEvidence A) : ActomyosinRingClosed A := by
  exact And.intro E.actinFilamentsFormedClosed (And.intro E.myosinIIActivatedClosed E.ringContractileClosed)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse