import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure ActinMyosinFilament where
  actinBundles : Prop
  myosinIIMotors : Prop
  crosslinkingProteins : Prop
  filamentTurnover : Prop
  actinBundlesClosed : actinBundles
  myosinIIMotorsClosed : myosinIIMotors
  crosslinkingProteinsClosed : crosslinkingProteins
  filamentTurnoverClosed : filamentTurnover

structure RhoGTPaseSignaling where
  rhoActivation : Prop
  forminNucleation : Prop
  myosinLightChainPhosphorylation : Prop
  septinRecruitment : Prop
  rhoActivationClosed : rhoActivation
  forminNucleationClosed : forminNucleation
  myosinLightChainPhosphorylationClosed : myosinLightChainPhosphorylation
  septinRecruitmentClosed : septinRecruitment

structure ContractileRingAssembly (A : AdmissibleClass) where
  actinMyosin : ActinMyosinFilament
  rhoSignaling : RhoGTPaseSignaling
  ringFormation : Prop
  ringFormationClosed : ringFormation

def ContractileRingAssemblyClosed (A : AdmissibleClass) (C : ContractileRingAssembly A) : Prop :=
  C.actinMyosin.actinBundlesClosed ∧ C.actinMyosin.myosinIIMotorsClosed ∧
  C.actinMyosin.crosslinkingProteinsClosed ∧ C.actinMyosin.filamentTurnoverClosed ∧
  C.rhoSignaling.rhoActivationClosed ∧ C.rhoSignaling.forminNucleationClosed ∧
  C.rhoSignaling.myosinLightChainPhosphorylationClosed ∧ C.rhoSignaling.septinRecruitmentClosed ∧
  C.ringFormationClosed

theorem contractile_ring_assembly_closed (A : AdmissibleClass) (C : ContractileRingAssembly A) :
    ContractileRingAssemblyClosed A C := by
  exact And.intro C.actinMyosin.actinBundlesClosed (And.intro C.actinMyosin.myosinIIMotorsClosed
    (And.intro C.actinMyosin.crosslinkingProteinsClosed (And.intro C.actinMyosin.filamentTurnoverClosed
    (And.intro C.rhoSignaling.rhoActivationClosed (And.intro C.rhoSignaling.forminNucleationClosed
    (And.intro C.rhoSignaling.myosinLightChainPhosphorylationClosed (And.intro C.rhoSignaling.septinRecruitmentClosed
    C.ringFormationClosed)))))))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse