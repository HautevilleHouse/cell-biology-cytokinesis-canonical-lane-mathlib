import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure IngressionCouplingPackage where
  membraneIngression : Type u
  actomyosinCoupling : Type v
  furrowPositioning : Prop
  cellPolarity : Prop
  adhesionDynamics : Prop
  tensionRegulation : Prop

structure IngressionCouplingEvidence (I : IngressionCouplingPackage) where
  membraneIngressionClosed : I.membraneIngression
  actomyosinCouplingClosed : I.actomyosinCoupling
  furrowPositioningClosed : I.furrowPositioning
  cellPolarityClosed : I.cellPolarity
  adhesionDynamicsClosed : I.adhesionDynamics
  tensionRegulationClosed : I.tensionRegulation

def IngressionCouplingClosed (I : IngressionCouplingPackage) : Prop :=
  I.membraneIngression ∧ I.actomyosinCoupling ∧ I.furrowPositioning ∧
  I.cellPolarity ∧ I.adhesionDynamics ∧ I.tensionRegulation

theorem ingression_coupling_closed_from_evidence (I : IngressionCouplingPackage) (E : IngressionCouplingEvidence I) : IngressionCouplingClosed I := by
  exact And.intro E.membraneIngressionClosed
    (And.intro E.actomyosinCouplingClosed
      (And.intro E.furrowPositioningClosed
        (And.intro E.cellPolarityClosed
          (And.intro E.adhesionDynamicsClosed E.tensionRegulationClosed))))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
