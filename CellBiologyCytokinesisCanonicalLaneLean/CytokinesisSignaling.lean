import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RhoSignaling where
  rhoActivation : Prop
  forminNucleation : Prop
  contractileRingOrganization : Prop

structure CytokinesisSignalingPackage where
  rhoGtpase : RhoSignaling
  actomyosinRegulation : Prop
  abscissionCheckpoint : Prop

structure CytokinesisSignalingEvidence (S : CytokinesisSignalingPackage) where
  rhoActivationClosed : S.rhoGtpase.rhoActivation
  contractileRingOrganizationClosed : S.rhoGtpase.contractileRingOrganization

def CytokinesisSignalingClosed (S : CytokinesisSignalingPackage) : Prop :=
  S.rhoGtpase.rhoActivation ∧ S.rhoGtpase.contractileRingOrganization

theorem cytokinesis_signaling_closed_from_evidence (S : CytokinesisSignalingPackage)
    (E : CytokinesisSignalingEvidence S) : CytokinesisSignalingClosed S := by
  exact And.intro E.rhoActivationClosed E.contractileRingOrganizationClosed

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse