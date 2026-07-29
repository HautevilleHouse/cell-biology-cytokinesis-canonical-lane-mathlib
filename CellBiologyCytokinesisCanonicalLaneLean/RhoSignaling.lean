import HautevilleHouse.CellBiologyCytokinesisCanonicalLaneLean.CytokinesisContractileRing

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RhoSignalingPackage (P : CytokinesisContractileRingPackage) where
  rhoGTPaseActivation : Prop
  rhoKinaseActivation : Prop
  actinNucleation : Prop
  myosinLightChainPhosphorylation : Prop
  signalingTiming : Prop

structure RhoSignalingEvidence {P : CytokinesisContractileRingPackage}
    (S : RhoSignalingPackage P) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  rhoKinaseActivationClosed : S.rhoKinaseActivation
  actinNucleationClosed : S.actinNucleation
  myosinLightChainPhosphorylationClosed : S.myosinLightChainPhosphorylation
  signalingTimingClosed : S.signalingTiming

def RhoSignalingClosed {P : CytokinesisContractileRingPackage}
    (S : RhoSignalingPackage P) : Prop :=
  S.rhoGTPaseActivation ∧ S.rhoKinaseActivation ∧ S.actinNucleation ∧
  S.myosinLightChainPhosphorylation ∧ S.signalingTiming

theorem rho_signaling_closed_from_evidence
    {P : CytokinesisContractileRingPackage} (S : RhoSignalingPackage P)
    (E : RhoSignalingEvidence S) : RhoSignalingClosed S := by
  exact And.intro E.rhoGTPaseActivationClosed
    (And.intro E.rhoKinaseActivationClosed
      (And.intro E.actinNucleationClosed
        (And.intro E.myosinLightChainPhosphorylationClosed
          E.signalingTimingClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse