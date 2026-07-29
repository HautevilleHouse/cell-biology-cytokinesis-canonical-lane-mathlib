import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisSignalingPackage where
  rhoGTPaseActivation : Prop
  ect2Centralspindlin : Prop
  rhoKinaseSignaling : Prop
  furrowPositioning : Prop

structure CytokinesisSignalingEvidence (S : CytokinesisSignalingPackage) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  ect2CentralspindlinClosed : S.ect2Centralspindlin
  rhoKinaseSignalingClosed : S.rhoKinaseSignaling
  furrowPositioningClosed : S.furrowPositioning

def CytokinesisSignalingClosed (S : CytokinesisSignalingPackage) : Prop :=
  S.rhoGTPaseActivation ∧ S.ect2Centralspindlin ∧ S.rhoKinaseSignaling ∧ S.furrowPositioning

theorem cytokinesis_signaling_closed_from_evidence (S : CytokinesisSignalingPackage) (E : CytokinesisSignalingEvidence S) :
    CytokinesisSignalingClosed S := by
  exact And.intro E.rhoGTPaseActivationClosed
    (And.intro E.ect2CentralspindlinClosed
      (And.intro E.rhoKinaseSignalingClosed E.furrowPositioningClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse