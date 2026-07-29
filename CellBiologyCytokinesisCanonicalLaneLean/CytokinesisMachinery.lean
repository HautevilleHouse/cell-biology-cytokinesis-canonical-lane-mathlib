import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ContractileRingPackage where
  actinFilaments : Type u
  myosinII : Type v
  crossLinkerProteins : Type w
  ringConstriction : Prop
  actinPolymerizationDynamics : Prop
  myosinActivityRegulation : Prop
  ringDisassemblyTiming : Prop

structure ContractileRingEvidence (C : ContractileRingPackage) where
  ringConstrictionClosed : C.ringConstriction
  actinPolymerizationDynamicsClosed : C.actinPolymerizationDynamics
  myosinActivityRegulationClosed : C.myosinActivityRegulation
  ringDisassemblyTimingClosed : C.ringDisassemblyTiming

def ContractileRingClosed (C : ContractileRingPackage) : Prop :=
  C.ringConstriction ∧ C.actinPolymerizationDynamics ∧
  C.myosinActivityRegulation ∧ C.ringDisassemblyTiming

theorem contractile_ring_closed_from_evidence (C : ContractileRingPackage) (E : ContractileRingEvidence C) : ContractileRingClosed C := by
  exact And.intro E.ringConstrictionClosed
    (And.intro E.actinPolymerizationDynamicsClosed
      (And.intro E.myosinActivityRegulationClosed E.ringDisassemblyTimingClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
