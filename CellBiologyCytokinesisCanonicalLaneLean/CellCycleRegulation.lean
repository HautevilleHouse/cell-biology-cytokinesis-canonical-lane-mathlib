import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CellCyclePhase where
  phaseName : String
  regulatoryProteins : List String
  checkpointActive : Prop

structure CellCycleRegulationPackage where
  phases : List CellCyclePhase
  cyclinDependentKinases : List String
  checkpointControl : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  checkpointControlClosed : C.checkpointControl

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.checkpointControl

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage)
    (E : CellCycleRegulationEvidence C) : CellCycleRegulationClosed C := by
  exact E.checkpointControlClosed

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse