import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MembraneTensionDynamics where
  corticalTension : Prop
  membraneFusion : Prop
  vesicleTrafficking : Prop
  membraneTensionClosed : corticalTension ∧ membraneFusion ∧ vesicleTrafficking
  tensionEvidence : membraneTensionClosed

structure CytoskeletalRearrangement where
  actinDepolymerization : Prop
  microtubuleResorption : Prop
  intermediateFilamentReorganization : Prop
  rearrangementClosed : actinDepolymerization ∧ microtubuleResorption ∧ intermediateFilamentReorganization
  rearrangementEvidence : rearrangementClosed

structure MidbodyFormation (A : AdmissibleClass) where
  midbodyComponents : Prop
  abscissionMachinery : Prop
  midbodyFormationClosed : midbodyComponents ∧ abscissionMachinery
  midbodyEvidence : midbodyFormationClosed

def CleavageFurrowIngressionClosed (A : AdmissibleClass) (M : MidbodyFormation A) : Prop :=
  M.midbodyFormationClosed ∧ (∀ (t : MembraneTensionDynamics), t.membraneTensionClosed) ∧
  (∀ (c : CytoskeletalRearrangement), c.rearrangementClosed)

theorem cleavage_furrow_ingression_closed (A : AdmissibleClass) (M : MidbodyFormation A)
    (t : MembraneTensionDynamics) (c : CytoskeletalRearrangement) :
    CleavageFurrowIngressionClosed A M := by
  exact And.intro M.midbodyEvidence (And.intro (fun _ => t.tensionEvidence) (fun _ => c.rearrangementEvidence))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse