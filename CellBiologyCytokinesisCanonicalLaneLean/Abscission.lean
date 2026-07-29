import HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean.FurrowIngression

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure AbscissionPackage {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} {F : FurrowIngressionPackage P S} where
  midbodyMaturation : Prop
  microtubuleDisassembly : Prop
  abscissionSealing : Prop
  cellSeparation : Prop

structure AbscissionEvidence {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} {F : FurrowIngressionPackage P S}
    (A : AbscissionPackage P S F) where
  midbodyMaturationClosed : A.midbodyMaturation
  microtubuleDisassemblyClosed : A.microtubuleDisassembly
  abscissionSealingClosed : A.abscissionSealing
  cellSeparationClosed : A.cellSeparation

def AbscissionClosed {P : CytokinesisContractileRingPackage}
    {S : RhoSignalingPackage P} {F : FurrowIngressionPackage P S}
    (A : AbscissionPackage P S F) : Prop :=
  A.midbodyMaturation ∧ A.microtubuleDisassembly ∧
  A.abscissionSealing ∧ A.cellSeparation

theorem abscission_closed_from_evidence
    {P : CytokinesisContractileRingPackage} {S : RhoSignalingPackage P}
    {F : FurrowIngressionPackage P S} (A : AbscissionPackage P S F)
    (E : AbscissionEvidence A) : AbscissionClosed A := by
  exact And.intro E.midbodyMaturationClosed
    (And.intro E.microtubuleDisassemblyClosed
      (And.intro E.abscissionSealingClosed E.cellSeparationClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse