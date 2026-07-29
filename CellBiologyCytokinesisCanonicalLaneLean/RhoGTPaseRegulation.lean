import CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RhoGTPaseRegulationPackage where
  rhoActivation : Prop
  rhoEffectorBinding : Prop
  rhoInactivation : Prop
  spatialTemporalControl : Prop

structure RhoGTPaseRegulationEvidence (P : RhoGTPaseRegulationPackage) where
  rhoActivationClosed : P.rhoActivation
  rhoEffectorBindingClosed : P.rhoEffectorBinding
  rhoInactivationClosed : P.rhoInactivation
  spatialTemporalControlClosed : P.spatialTemporalControl

def RhoGTPaseRegulationClosed (P : RhoGTPaseRegulationPackage) : Prop :=
  P.rhoActivation ∧ P.rhoEffectorBinding ∧ P.rhoInactivation ∧ P.spatialTemporalControl

theorem rho_gtpase_regulation_closed_from_evidence (P : RhoGTPaseRegulationPackage) (E : RhoGTPaseRegulationEvidence P) :
    RhoGTPaseRegulationClosed P := by
  exact And.intro E.rhoActivationClosed (And.intro E.rhoEffectorBindingClosed (And.intro E.rhoInactivationClosed E.spatialTemporalControlClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse