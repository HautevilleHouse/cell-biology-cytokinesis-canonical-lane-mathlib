import CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisCheckpointPackage where
  abscissionCheckpointActive : Prop
  noDamageCheck : Prop
  budneckCompletionCheck : Prop
  checkpointPassed : Prop

structure CytokinesisCheckpointEvidence (P : CytokinesisCheckpointPackage) where
  abscissionCheckpointActiveClosed : P.abscissionCheckpointActive
  noDamageCheckClosed : P.noDamageCheck
  budneckCompletionCheckClosed : P.budneckCompletionCheck
  checkpointPassedClosed : P.checkpointPassed

def CytokinesisCheckpointClosed (P : CytokinesisCheckpointPackage) : Prop :=
  P.abscissionCheckpointActive ∧ P.noDamageCheck ∧ P.budneckCompletionCheck ∧ P.checkpointPassed

theorem cytokinesis_checkpoint_closed_from_evidence (P : CytokinesisCheckpointPackage) (E : CytokinesisCheckpointEvidence P) :
    CytokinesisCheckpointClosed P := by
  exact And.intro E.abscissionCheckpointActiveClosed (And.intro E.noDamageCheckClosed (And.intro E.budneckCompletionCheckClosed E.checkpointPassedClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse