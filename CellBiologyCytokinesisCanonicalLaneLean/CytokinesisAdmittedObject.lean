import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisObject where
  carrier : Type
  contractileRingAssembled : Prop
  furrowIngression : Prop
  midbodyFormed : Prop
  abscissionComplete : Prop
  conclusion : contractileRingAssembled ∧ furrowIngression ∧ midbodyFormed ∧ abscissionComplete

structure CytokinesisAdmittedObject where
  object : CytokinesisObject
  closedWitness : object.conclusion

def cytokinesisWitnessClosed (O : CytokinesisAdmittedObject) : Prop :=
  O.object.conclusion

end HautevilleHouse
end CellBiologyCytokinesisCanonicalLaneLean