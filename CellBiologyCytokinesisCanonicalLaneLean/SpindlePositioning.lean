import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure SpindlePositioningPackage where
  astralMicrotubules : Type u
  corticalActin : Type v
  spindlePoleMovement : Prop
  orientationCorrect : Prop
  asymmetricDivision : Prop
  forceGeneration : Prop

structure SpindlePositioningEvidence (S : SpindlePositioningPackage) where
  astralMicrotubulesClosed : S.astralMicrotubules
  corticalActinClosed : S.corticalActin
  spindlePoleMovementClosed : S.spindlePoleMovement
  orientationCorrectClosed : S.orientationCorrect
  asymmetricDivisionClosed : S.asymmetricDivision
  forceGenerationClosed : S.forceGeneration

def SpindlePositioningClosed (S : SpindlePositioningPackage) : Prop :=
  S.astralMicrotubules ∧ S.corticalActin ∧ S.spindlePoleMovement ∧
  S.orientationCorrect ∧ S.asymmetricDivision ∧ S.forceGeneration

theorem spindle_positioning_closed_from_evidence (S : SpindlePositioningPackage) (E : SpindlePositioningEvidence S) : SpindlePositioningClosed S := by
  exact And.intro E.astralMicrotubulesClosed
    (And.intro E.corticalActinClosed
      (And.intro E.spindlePoleMovementClosed
        (And.intro E.orientationCorrectClosed
          (And.intro E.asymmetricDivisionClosed E.forceGenerationClosed))))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
