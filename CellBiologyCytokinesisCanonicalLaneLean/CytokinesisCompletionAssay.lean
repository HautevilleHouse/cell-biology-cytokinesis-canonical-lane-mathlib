import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisCompletionAssayPackage where
  liveCellImaging : Prop
  furrowIngressionTracking : Prop
  midbodyFormation : Prop
  abscissionTiming : Prop
  daughterCellSeparation : Prop

structure CytokinesisCompletionAssayEvidence (P : CytokinesisCompletionAssayPackage) where
  liveCellImagingClosed : P.liveCellImaging
  furrowIngressionTrackingClosed : P.furrowIngressionTracking
  midbodyFormationClosed : P.midbodyFormation
  abscissionTimingClosed : P.abscissionTiming
  daughterCellSeparationClosed : P.daughterCellSeparation

def CytokinesisCompletionAssayClosed (P : CytokinesisCompletionAssayPackage) : Prop :=
  P.liveCellImaging ∧ P.furrowIngressionTracking ∧ P.midbodyFormation ∧ P.abscissionTiming ∧ P.daughterCellSeparation

theorem cytokinesis_completion_assay_closed_from_evidence (P : CytokinesisCompletionAssayPackage) (E : CytokinesisCompletionAssayEvidence P) :
    CytokinesisCompletionAssayClosed P := by
  exact And.intro E.liveCellImagingClosed (And.intro E.furrowIngressionTrackingClosed (And.intro E.midbodyFormationClosed (And.intro E.abscissionTimingClosed E.daughterCellSeparationClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse