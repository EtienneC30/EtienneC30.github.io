// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Etienne Marion",
  title: "Etienne Marion - CV",
  footer: context { [#emph[Etienne Marion -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in June 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(100, 100, 100),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Fontin",
  typography-font-family-name: "Fontin",
  typography-font-family-headline: "Fontin",
  typography-font-family-connections: "Fontin",
  typography-font-family-section-titles: "Fontin",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: left,
  header-photo-width: 4.15cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "moderncv",
  section-titles-line-thickness: 0.15cm,
  section-titles-space-above: 0.55cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.3cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.1cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.15cm,
  entries-highlights-space-between-items: 0.1cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 6,
    day: 26,
  ),
)


= Etienne Marion

#connections(
  [#connection-with-icon("location-dot")[Office 725 C1, 45 rue des Saints-Pères, 75006 Paris]],
  [#link("mailto:etienne.marion@ens-lyon.fr", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[etienne.marion\@ens-lyon.fr]]],
  [#link("https://etiennec30.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[etiennec30.github.io]]],
)


== Summary

I am studying Mathematics at École Normale Supérieure de Lyon. I completed my M.Sc. in probability and statistics and am now doing research internships before starting my PhD next year. I am mainly interested in probability theory applied to population genetics and formalization of Mathematics using the proof assistant Lean.

== Education

#education-entry(
  [
    #strong[École Normale Supérieure de Lyon], MS in probability and statistics -- Lyon, France

  ],
  [
    2023 – 2025

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[École Normale Supérieure de Lyon], BS in mathematics -- Lyon, France

  ],
  [
    2022 – 2023

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[Lycée Georges Clemenceau], Classe préparatoire in mathematics and physics -- Reims, France

  ],
  [
    2020 – 2022

  ],
  main-column-second-row: [
  ],
)

== Experience

#regular-entry(
  [
    #strong[Research intern], MAP5, Université Paris-Cité -- Paris, France

  ],
  [
    Feb 2026 – July 2026

  ],
  main-column-second-row: [
    #summary[Supervised by Félix Foutel-Rodier: #emph[Impact of demographic fluctuations on structured populations genealogies.]]

  ],
)

#regular-entry(
  [
    #strong[Research intern], University of Vienna -- Vienna, Austria

  ],
  [
    Sept 2025 – Jan 2026

  ],
  main-column-second-row: [
    #summary[Supervised by Emmanuel Schertzer: #emph[Diffusive neutral fractions inside a genetic population.]]

  ],
)

#regular-entry(
  [
    #strong[Research intern], École Normale Supérieure de Lyon -- Lyon, France

  ],
  [
    Mar 2025 – July 2025

  ],
  main-column-second-row: [
    #summary[Supervised by Jean-Christophe Mourrat: #emph[Study of functions learnable by neural networks using mean-fields approximation.]]

  ],
)

#regular-entry(
  [
    #strong[Research intern], Institut de recherche mathématique de Rennes -- Rennes, France

  ],
  [
    May 2024 – July 2024

  ],
  main-column-second-row: [
    #summary[Supervised by Sébastien Gouëzel: #emph[Formalization of the Ionescu-Tulca theorem and construction of infinite products of porobability measures with Lean.]]

  ],
)

#regular-entry(
  [
    #strong[Research intern], Laboratoire Jean Kuntzmann -- Grenoble, France

  ],
  [
    May 2023 – June 2023

  ],
  main-column-second-row: [
    #summary[Supervised by Sana Louhichi: #emph[Tight sequences of random variables: definition, examples and application.]]

  ],
)

== Preprints

#regular-entry(
  [
    #strong[Formalization of Brownian motion in Lean]

  ],
  [
    2025+

  ],
  main-column-second-row: [
    Rémy Degenne, David Ledvinka, Etienne Marion, Peter Pfaffelhuber

    #link("https://arxiv.org/abs/2511.20118")[arxiv.org\/abs\/2511.20118]

  ],
)

#regular-entry(
  [
    #strong[A Formalization of the Ionescu-Tulcea Theorem in Mathlib]

  ],
  [
    2025+

  ],
  main-column-second-row: [
    Etienne Marion

    #link("https://arxiv.org/abs/2506.18616")[arxiv.org\/abs\/2506.18616]

  ],
)

== Talk

#regular-entry(
  [
    #strong[A Formalization of the Ionescu-Tulcea Theorem in Mathlib]

  ],
  [
    Jan 2026

  ],
  main-column-second-row: [
    #link("https://leanprover-community.github.io/lt2026/")[Lean Together 2026]

    #link("https://www.youtube.com/watch?v=_TrTKnWU-to")[www.youtube.com\/watch?v=\_TrTKnWU-to]

  ],
)

== Participation to conferences

#strong[Apr 2026:] I was present at the #link("https://arbre3.sciencesconf.org/?lang=en")[3rd annual meeting of the GdR Branchement] in Avignon.

#strong[Sept 2025:] I was present at the workshop #link("https://boku.ac.at/nwnr/math/newsitem/84254")[Ancestral lines in population models with interaction] at BOKU University, in Vienne.

#strong[June 2025:] I was present at the summer school #link("https://fondation-hadamard.fr/fr/evenements/les-ecoles-dete/ecole-d-ete-avec-slmath/")[Local Limits of Random Graphs] at Institut de Mathématique d’Orsay.

#strong[Mar 2024:] I was present at the conference #link("https://conferences.cirm-math.fr/2970.html")[Lean for the curious mathematician] at CIRM.

== Other activities

I am part of the Mathlib #link("https://leanprover-community.github.io/teams/reviewers.html")[reviewer team]. I am assessing the mathematical relevance and the quality of the code that contributors wish to add to the library, especially in the probability section.

#strong[Sept - Dec 2023:] With three fellow students we gave an introductory course to category theory, shaped as a weekly seminar.
