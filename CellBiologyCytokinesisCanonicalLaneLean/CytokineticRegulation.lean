import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure CytokineticRegulationPackage where
  rhoAGTPaseActivation : Prop
  forminAndProfilinActivity : Prop
  myosinLightChainPhosphorylation : Prop
  anillinScaffoldFunction : Prop

structure CytokineticRegulationEvidence (R : CytokineticRegulationPackage) where
  rhoAGTPaseActivationClosed : R.rhoAGTPaseActivation
  forminAndProfilinActivityClosed : R.forminAndProfilinActivity
  myosinLightChainPhosphorylationClosed : R.myosinLightChainPhosphorylation
  anillinScaffoldFunctionClosed : R.anillinScaffoldFunction

def CytokineticRegulationClosed (R : CytokineticRegulationPackage) : Prop :=
  R.rhoAGTPaseActivation ∧ R.forminAndProfilinActivity ∧ R.myosinLightChainPhosphorylation ∧ R.anillinScaffoldFunction

theorem cytokinetic_regulation_closed_from_evidence (R : CytokineticRegulationPackage) (E : CytokineticRegulationEvidence R) :
    CytokineticRegulationClosed R := by
  exact And.intro E.rhoAGTPaseActivationClosed
    (And.intro E.forminAndProfilinActivityClosed
      (And.intro E.myosinLightChainPhosphorylationClosed
        E.anillinScaffoldFunctionClosed))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
