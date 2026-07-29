import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

open HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean

structure FinalSeparation where
  membraneSealing : Prop
  abscissionComplete : Prop
  daughterCellIntegrity : Prop
  separationClosed : membraneSealing ∧ abscissionComplete ∧ daughterCellIntegrity
  separationEvidence : separationClosed

structure CytokinesisClosure (A : AdmissibleClass) where
  contractileRing : ContractileRingAssembly A
  ingression : CleavageFurrowIngression A
  abscission : AbscissionRegulation A
  contractility : ActomyosinContractility A
  finalSeparation : FinalSeparation

def ConstrainedCytokinesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytokinesis_endgame (A : AdmissibleClass) :
    ConstrainedCytokinesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse