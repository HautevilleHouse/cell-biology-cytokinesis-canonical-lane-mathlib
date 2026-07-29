import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MidbodyPackage where
  centralSpindle : Type u
  microtubuleOrganizingCenter : Type v
  midbodyMatrix : Type w
  midbodyAssembly : Prop
  microtubuleBundling : Prop
  proteinRecruitment : Prop
  abscissionSignaling : Prop

structure MidbodyEvidence (M : MidbodyPackage) where
  midbodyAssemblyClosed : M.midbodyAssembly
  microtubuleBundlingClosed : M.microtubuleBundling
  proteinRecruitmentClosed : M.proteinRecruitment
  abscissionSignalingClosed : M.abscissionSignaling

def MidbodyClosed (M : MidbodyPackage) : Prop :=
  M.midbodyAssembly ∧ M.microtubuleBundling ∧
  M.proteinRecruitment ∧ M.abscissionSignaling

theorem midbody_closed_from_evidence (M : MidbodyPackage) (E : MidbodyEvidence M) : MidbodyClosed M := by
  exact And.intro E.midbodyAssemblyClosed
    (And.intro E.microtubuleBundlingClosed
      (And.intro E.proteinRecruitmentClosed E.abscissionSignalingClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
