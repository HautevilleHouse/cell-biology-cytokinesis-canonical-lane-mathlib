import HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisAdmittedObject where
  cell : Type
  spindleAssemblyCheckpointSatisfied : Prop
  cytokinesisCompleted : Prop
  conclusion : cytokinesisCompleted

def CytokinesisWitnessClosed (O : CytokinesisAdmittedObject) : Prop :=
  O.cytokinesisCompleted

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse