import HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisContractileRingPackage where
  actinFilaments : Type u
  myosinFilaments : Type v
  septinScaffold : Type w
  ringAssembly : Prop
  ringConstriction : Prop
  disassembly : Prop

structure ContractileRingEvidence (P : CytokinesisContractileRingPackage) where
  ringAssemblyClosed : P.ringAssembly
  ringConstrictionClosed : P.ringConstriction
  disassemblyClosed : P.disassembly

def ContractileRingClosed (P : CytokinesisContractileRingPackage) : Prop :=
  P.ringAssembly ∧ P.ringConstriction ∧ P.disassembly

theorem contractile_ring_closed_from_evidence
    (P : CytokinesisContractileRingPackage) (E : ContractileRingEvidence P) :
    ContractileRingClosed P := by
  exact And.intro E.ringAssemblyClosed (And.intro E.ringConstrictionClosed E.disassemblyClosed)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse