import HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean.RhoSignaling

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure FurrowIngressionPackage {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} where
  cleavageFurrowFormation : Prop
  furrowIngressionRate : Prop
  contractileRingConstriction : Prop
  midbodyFormation : Prop

structure FurrowIngressionEvidence {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} (F : FurrowIngressionPackage P S) where
  cleavageFurrowFormationClosed : F.cleavageFurrowFormation
  furrowIngressionRateClosed : F.furrowIngressionRate
  contractileRingConstrictionClosed : F.contractileRingConstriction
  midbodyFormationClosed : F.midbodyFormation

def FurrowIngressionClosed {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} (F : FurrowIngressionPackage P S) : Prop :=
  F.cleavageFurrowFormation ∧ F.furrowIngressionRate ∧
  F.contractileRingConstriction ∧ F.midbodyFormation

theorem furrow_ingression_closed_from_evidence
    {P : CytokinesisContractileRingPackage} {S : RhoSignalingPackage P}
    (F : FurrowIngressionPackage P S) (E : FurrowIngressionEvidence F) :
    FurrowIngressionClosed F := by
  exact And.intro E.cleavageFurrowFormationClosed
    (And.intro E.furrowIngressionRateClosed
      (And.intro E.contractileRingConstrictionClosed E.midbodyFormationClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse