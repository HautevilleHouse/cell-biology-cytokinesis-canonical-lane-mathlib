import CellBiologyCytokinesisCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RhoGTPaseCyclePackage where
  rhoAactivation : Prop
  gtpaseCycleRegulation : Prop
  effectorsRecruitment : Prop
  feedbackMechanisms : Prop

structure RhoGTPaseCycleEvidence (R : RhoGTPaseCyclePackage) where
  rhoAactivationClosed : R.rhoAactivation
  gtpaseCycleRegulationClosed : R.gtpaseCycleRegulation
  effectorsRecruitmentClosed : R.effectorsRecruitment
  feedbackMechanismsClosed : R.feedbackMechanisms

def RhoGTPaseCycleClosed (R : RhoGTPaseCyclePackage) : Prop :=
  R.rhoAactivation ∧ R.gtpaseCycleRegulation ∧ R.effectorsRecruitment ∧ R.feedbackMechanisms

theorem rho_gtpase_cycle_closed_from_evidence (R : RhoGTPaseCyclePackage)
    (E : RhoGTPaseCycleEvidence R) : RhoGTPaseCycleClosed R := by
  exact And.intro E.rhoAactivationClosed
    (And.intro E.gtpaseCycleRegulationClosed
      (And.intro E.effectorsRecruitmentClosed E.feedbackMechanismsClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse