import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure FurrowFormationPackage where
  anillinScaffold : Type u
  septinFilaments : Type v
  membraneCurvatureSensors : Type w
  cleavagePlaneSpecified : Prop
  equatorialCorticalFlow : Prop
  furrowIngressionInitiated : Prop

def FurrowFormationClosed (F : FurrowFormationPackage) : Prop :=
  F.cleavagePlaneSpecified ∧ F.equatorialCorticalFlow ∧ F.furrowIngressionInitiated

structure FurrowFormationEvidence (F : FurrowFormationPackage) where
  cleavagePlaneSpecifiedClosed : F.cleavagePlaneSpecified
  equatorialCorticalFlowClosed : F.equatorialCorticalFlow
  furrowIngressionInitiatedClosed : F.furrowIngressionInitiated

theorem furrow_formation_closed_from_evidence (F : FurrowFormationPackage) (E : FurrowFormationEvidence F) : FurrowFormationClosed F := by
  exact And.intro E.cleavagePlaneSpecifiedClosed (And.intro E.equatorialCorticalFlowClosed E.furrowIngressionInitiatedClosed)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse