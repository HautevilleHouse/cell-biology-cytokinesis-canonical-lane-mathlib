import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ContractileRingPackage where
  actinFilamentBundle : Prop
  myosinMotorActivity : Prop
  ringConstriction : Prop
  furrowIngression : Prop

structure ContractileRingEvidence (C : ContractileRingPackage) where
  actinFilamentBundleClosed : C.actinFilamentBundle
  myosinMotorActivityClosed : C.myosinMotorActivity
  ringConstrictionClosed : C.ringConstriction
  furrowIngressionClosed : C.furrowIngression

def ContractileRingClosed (C : ContractileRingPackage) : Prop :=
  C.actinFilamentBundle ∧ C.myosinMotorActivity ∧ C.ringConstriction ∧ C.furrowIngression

theorem contractile_ring_closed_from_evidence (C : ContractileRingPackage) (E : ContractileRingEvidence C) :
    ContractileRingClosed C := by
  exact And.intro E.actinFilamentBundleClosed
    (And.intro E.myosinMotorActivityClosed
      (And.intro E.ringConstrictionClosed E.furrowIngressionClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse