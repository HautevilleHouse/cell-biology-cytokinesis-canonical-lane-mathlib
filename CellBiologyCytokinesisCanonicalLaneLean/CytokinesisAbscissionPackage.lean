import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisAbscissionPackage where
  midbodyFormation : Prop
  escrtRecruitment : Prop
  membraneFission : Prop
  abscissionCompletion : Prop

structure CytokinesisAbscissionEvidence (A : CytokinesisAbscissionPackage) where
  midbodyFormationClosed : A.midbodyFormation
  escrtRecruitmentClosed : A.escrtRecruitment
  membraneFissionClosed : A.membraneFission
  abscissionCompletionClosed : A.abscissionCompletion

def CytokinesisAbscissionClosed (A : CytokinesisAbscissionPackage) : Prop :=
  A.midbodyFormation ∧ A.escrtRecruitment ∧ A.membraneFission ∧ A.abscissionCompletion

theorem cytokinesis_abscission_closed_from_evidence (A : CytokinesisAbscissionPackage) (E : CytokinesisAbscissionEvidence A) :
    CytokinesisAbscissionClosed A := by
  exact And.intro E.midbodyFormationClosed
    (And.intro E.escrtRecruitmentClosed
      (And.intro E.membraneFissionClosed E.abscissionCompletionClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse