import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure AbscissionPackage where
  esrtFilaments : Type u
  tsg101Recruitment : Prop
  vps4Activity : Prop
  membraneFission : Prop

def AbscissionClosed (A : AbscissionPackage) : Prop :=
  A.tsg101Recruitment ∧ A.vps4Activity ∧ A.membraneFission

structure AbscissionEvidence (A : AbscissionPackage) where
  tsg101RecruitmentClosed : A.tsg101Recruitment
  vps4ActivityClosed : A.vps4Activity
  membraneFissionClosed : A.membraneFission

theorem abscission_closed_from_evidence (A : AbscissionPackage) (E : AbscissionEvidence A) : AbscissionClosed A := by
  exact And.intro E.tsg101RecruitmentClosed (And.intro E.vps4ActivityClosed E.membraneFissionClosed)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse