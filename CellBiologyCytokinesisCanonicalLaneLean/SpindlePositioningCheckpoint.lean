import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure SpindlePositioningCheckpointPackage where
  spindlePositionAssessment : Prop
  corticalPolarityCues : Prop
  noGoSignalPrevention : Prop
  timingCoordination : Prop
  abscissionCompetence : Prop

structure SpindlePositioningCheckpointEvidence (P : SpindlePositioningCheckpointPackage) where
  spindlePositionAssessmentClosed : P.spindlePositionAssessment
  corticalPolarityCuesClosed : P.corticalPolarityCues
  noGoSignalPreventionClosed : P.noGoSignalPrevention
  timingCoordinationClosed : P.timingCoordination
  abscissionCompetenceClosed : P.abscissionCompetence

def SpindlePositioningCheckpointClosed (P : SpindlePositioningCheckpointPackage) : Prop :=
  P.spindlePositionAssessment ∧ P.corticalPolarityCues ∧ P.noGoSignalPrevention ∧ P.timingCoordination ∧ P.abscissionCompetence

theorem spindle_positioning_checkpoint_closed_from_evidence (P : SpindlePositioningCheckpointPackage) (E : SpindlePositioningCheckpointEvidence P) :
    SpindlePositioningCheckpointClosed P := by
  exact And.intro E.spindlePositionAssessmentClosed (And.intro E.corticalPolarityCuesClosed (And.intro E.noGoSignalPreventionClosed (And.intro E.timingCoordinationClosed E.abscissionCompetenceClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse