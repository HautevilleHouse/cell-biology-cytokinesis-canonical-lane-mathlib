import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure MidbodyComponents where
  centralSpindleMicrotubules : Prop
  midbodyMatrix : Prop
  abscissionMachinery : Prop

structure MidbodyFormationPackage where
  components : MidbodyComponents
  timing : Prop

structure MidbodyFormationEvidence (M : MidbodyFormationPackage) where
  centralSpindleMicrotubulesClosed : M.components.centralSpindleMicrotubules
  midbodyMatrixClosed : M.components.midbodyMatrix

def MidbodyFormationClosed (M : MidbodyFormationPackage) : Prop :=
  M.components.centralSpindleMicrotubules ∧ M.components.midbodyMatrix

theorem midbody_formation_closed_from_evidence (M : MidbodyFormationPackage)
    (E : MidbodyFormationEvidence M) : MidbodyFormationClosed M := by
  exact And.intro E.centralSpindleMicrotubulesClosed E.midbodyMatrixClosed

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse