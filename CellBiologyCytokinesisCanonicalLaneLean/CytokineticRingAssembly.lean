import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokineticRingPackage where
  actinFilamentPolymerization : Prop
  myosinMotorActivity : Prop
  ringConstrictionRate : Prop
  midbodyFormation : Prop

structure CytokineticRingEvidence (R : CytokineticRingPackage) where
  actinFilamentPolymerizationClosed : R.actinFilamentPolymerization
  myosinMotorActivityClosed : R.myosinMotorActivity
  ringConstrictionRateClosed : R.ringConstrictionRate
  midbodyFormationClosed : R.midbodyFormation

def CytokineticRingClosed (R : CytokineticRingPackage) : Prop :=
  R.actinFilamentPolymerization ∧ R.myosinMotorActivity ∧ R.ringConstrictionRate ∧ R.midbodyFormation

theorem cytokinetic_ring_closed_from_evidence (R : CytokineticRingPackage) (E : CytokineticRingEvidence R) :
    CytokineticRingClosed R := by
  exact And.intro E.actinFilamentPolymerizationClosed
    (And.intro E.myosinMotorActivityClosed
      (And.intro E.ringConstrictionRateClosed E.midbodyFormationClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
