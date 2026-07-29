import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CytokinesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse