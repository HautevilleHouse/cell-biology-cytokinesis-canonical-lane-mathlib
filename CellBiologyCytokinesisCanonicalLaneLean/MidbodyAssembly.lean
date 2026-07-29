import CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MidbodyAssemblyPackage where
  centralSpindleFormation : Prop
  midbodyRecruitment : Prop
  midbodyMaturation : Prop
  abscissionSignal : Prop

structure MidbodyAssemblyEvidence (P : MidbodyAssemblyPackage) where
  centralSpindleFormationClosed : P.centralSpindleFormation
  midbodyRecruitmentClosed : P.midbodyRecruitment
  midbodyMaturationClosed : P.midbodyMaturation
  abscissionSignalClosed : P.abscissionSignal

def MidbodyAssemblyClosed (P : MidbodyAssemblyPackage) : Prop :=
  P.centralSpindleFormation ∧ P.midbodyRecruitment ∧ P.midbodyMaturation ∧ P.abscissionSignal

theorem midbody_assembly_closed_from_evidence (P : MidbodyAssemblyPackage) (E : MidbodyAssemblyEvidence P) :
    MidbodyAssemblyClosed P := by
  exact And.intro E.centralSpindleFormationClosed (And.intro E.midbodyRecruitmentClosed (And.intro E.midbodyMaturationClosed E.abscissionSignalClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse