import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokinesisSignalingNetworkPackage where
  rhoActivation : Prop
  forminMediatedActin : Prop
  myosinLightChainKinase : Prop
  citronKinase : Prop
  auroraBCoordination : Prop

structure CytokinesisSignalingNetworkEvidence (P : CytokinesisSignalingNetworkPackage) where
  rhoActivationClosed : P.rhoActivation
  forminMediatedActinClosed : P.forminMediatedActin
  myosinLightChainKinaseClosed : P.myosinLightChainKinase
  citronKinaseClosed : P.citronKinase
  auroraBCoordinationClosed : P.auroraBCoordination

def CytokinesisSignalingNetworkClosed (P : CytokinesisSignalingNetworkPackage) : Prop :=
  P.rhoActivation ∧ P.forminMediatedActin ∧ P.myosinLightChainKinase ∧ P.citronKinase ∧ P.auroraBCoordination

theorem cytokinesis_signaling_network_closed_from_evidence (P : CytokinesisSignalingNetworkPackage) (E : CytokinesisSignalingNetworkEvidence P) :
    CytokinesisSignalingNetworkClosed P := by
  exact And.intro E.rhoActivationClosed (And.intro E.forminMediatedActinClosed (And.intro E.myosinLightChainKinaseClosed (And.intro E.citronKinaseClosed E.auroraBCoordinationClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse