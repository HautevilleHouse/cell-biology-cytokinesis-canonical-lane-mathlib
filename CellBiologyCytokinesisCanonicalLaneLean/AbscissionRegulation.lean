import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisCanonicalLaneLean

structure AbscissionRegulationPackage where
  esrtMembraneScission : Prop
  midbodyRemnantRelease : Prop
  noCutAbscissionDelay : Prop
  vps4AtpaseActivity : Prop
  cargoRecyclingDuringAbscission : Prop

structure AbscissionRegulationEvidence (A : AbscissionRegulationPackage) where
  esrtMembraneScissionClosed : A.esrtMembraneScission
  midbodyRemnantReleaseClosed : A.midbodyRemnantRelease
  noCutAbscissionDelayClosed : A.noCutAbscissionDelay
  vps4AtpaseActivityClosed : A.vps4AtpaseActivity
  cargoRecyclingDuringAbscissionClosed : A.cargoRecyclingDuringAbscission

def AbscissionRegulationClosed (A : AbscissionRegulationPackage) : Prop :=
  A.esrtMembraneScission ∧ A.midbodyRemnantRelease ∧ A.noCutAbscissionDelay ∧
  A.vps4AtpaseActivity ∧ A.cargoRecyclingDuringAbscission

theorem abscission_regulation_closed_from_evidence (A : AbscissionRegulationPackage)
    (E : AbscissionRegulationEvidence A) : AbscissionRegulationClosed A := by
  exact And.intro E.esrtMembraneScissionClosed
    (And.intro E.midbodyRemnantReleaseClosed
      (And.intro E.noCutAbscissionDelayClosed
        (And.intro E.vps4AtpaseActivityClosed E.cargoRecyclingDuringAbscissionClosed)))

end CellBiologyCytokinesisCanonicalLaneLean
end HautevilleHouse
