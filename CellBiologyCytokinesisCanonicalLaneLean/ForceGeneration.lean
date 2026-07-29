import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ForceGenerationPackage where
  actinMyosinContractileForce : Prop
  membraneCortexCoupling : Prop
  furrowIngressionMechanics : Prop
  tensionDistribution : Prop

structure ForceGenerationEvidence (F : ForceGenerationPackage) where
  actinMyosinContractileForceClosed : F.actinMyosinContractileForce
  membraneCortexCouplingClosed : F.membraneCortexCoupling
  furrowIngressionMechanicsClosed : F.furrowIngressionMechanics
  tensionDistributionClosed : F.tensionDistribution

def ForceGenerationClosed (F : ForceGenerationPackage) : Prop :=
  F.actinMyosinContractileForce ∧ F.membraneCortexCoupling ∧ F.furrowIngressionMechanics ∧ F.tensionDistribution

theorem force_generation_closed_from_evidence (F : ForceGenerationPackage) (E : ForceGenerationEvidence F) :
    ForceGenerationClosed F := by
  exact And.intro E.actinMyosinContractileForceClosed
    (And.intro E.membraneCortexCouplingClosed
      (And.intro E.furrowIngressionMechanicsClosed
        E.tensionDistributionClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
