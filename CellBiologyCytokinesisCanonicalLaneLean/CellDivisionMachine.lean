import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CellDivisionMachine where
  cell : Type u
  membrane : Type v
  cytoskeleton : Type w
  cellCycleStage : Prop
  spindleAssembly : Prop
  contractileRing : Prop
  abscissionSignal : Prop
  cellDivisionComplete : Prop

structure CellDivisionMachineEvidence (M : CellDivisionMachine) where
  cellCycleStageClosed : M.cellCycleStage
  spindleAssemblyClosed : M.spindleAssembly
  contractileRingClosed : M.contractileRing
  abscissionSignalClosed : M.abscissionSignal
  cellDivisionCompleteClosed : M.cellDivisionComplete

def CellDivisionMachineClosed (M : CellDivisionMachine) : Prop :=
  M.cellCycleStage ∧ M.spindleAssembly ∧ M.contractileRing ∧ M.abscissionSignal ∧ M.cellDivisionComplete

theorem cell_division_machine_closed_from_evidence (M : CellDivisionMachine) (E : CellDivisionMachineEvidence M) :
    CellDivisionMachineClosed M := by
  exact And.intro E.cellCycleStageClosed (And.intro E.spindleAssemblyClosed (And.intro E.contractileRingClosed (And.intro E.abscissionSignalClosed E.cellDivisionCompleteClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse