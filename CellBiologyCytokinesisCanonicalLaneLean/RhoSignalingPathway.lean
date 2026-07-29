import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure RhoSignalingPathwayPackage where
  rhoActivation : Prop
  rhoKinaseTarget : Prop
  actinPolymerizationRegulation : Prop
  myosinLightChainPhosphorylation : Prop
  contractileRingAssemblySignaling : Prop

structure RhoSignalingPathwayEvidence (S : RhoSignalingPathwayPackage) where
  rhoActivationClosed : S.rhoActivation
  rhoKinaseTargetClosed : S.rhoKinaseTarget
  actinPolymerizationRegulationClosed : S.actinPolymerizationRegulation
  myosinLightChainPhosphorylationClosed : S.myosinLightChainPhosphorylation
  contractileRingAssemblySignalingClosed : S.contractileRingAssemblySignaling

def RhoSignalingPathwayClosed (S : RhoSignalingPathwayPackage) : Prop :=
  S.rhoActivation ∧ S.rhoKinaseTarget ∧ S.actinPolymerizationRegulation ∧
  S.myosinLightChainPhosphorylation ∧ S.contractileRingAssemblySignaling

theorem rho_signaling_pathway_closed_from_evidence (S : RhoSignalingPathwayPackage)
    (E : RhoSignalingPathwayEvidence S) : RhoSignalingPathwayClosed S := by
  exact And.intro E.rhoActivationClosed
    (And.intro E.rhoKinaseTargetClosed
      (And.intro E.actinPolymerizationRegulationClosed
        (And.intro E.myosinLightChainPhosphorylationClosed E.contractileRingAssemblySignalingClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
