import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MidbodyAssemblyPackage where
  centralSpindleMicrotubules : Type u
  centralspindlinComplex : Type v
  eso1Forces : Prop
  midbodyMatrixDeposited : Prop
  abscissionCompetent : Prop

def MidbodyAssemblyClosed (M : MidbodyAssemblyPackage) : Prop :=
  M.eso1Forces ∧ M.midbodyMatrixDeposited ∧ M.abscissionCompetent

structure MidbodyAssemblyEvidence (M : MidbodyAssemblyPackage) where
  eso1ForcesClosed : M.eso1Forces
  midbodyMatrixDepositedClosed : M.midbodyMatrixDeposited
  abscissionCompetentClosed : M.abscissionCompetent

theorem midbody_assembly_closed_from_evidence (M : MidbodyAssemblyPackage) (E : MidbodyAssemblyEvidence M) : MidbodyAssemblyClosed M := by
  exact And.intro E.eso1ForcesClosed (And.intro E.midbodyMatrixDepositedClosed E.abscissionCompetentClosed)

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse