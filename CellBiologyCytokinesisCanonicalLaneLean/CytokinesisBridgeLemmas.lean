import CytokinesisAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  cytokinesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closedWitness

end HautevilleHouse
end CellBiologyCytokinesisCanonicalLaneLean