![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Nauta OTA with digital trimming

This is a digitally-controllable Nauta's Operational Transconductance Amplifier (OTA). 


## Repository Structure

- **docs/**: Documentation and project reports.
- **gds/**: GDSII files for the design.
- **lef/**: Library Exchange Format files.
- **mag/**: Magic layout files.
- **src/**: Source files and design scripts.
- **xsch/**: Schematic files.

# How it works

Originally, Nauta OTA was proposed by Bram Nauta [1], featuring a structure consisting of six inverters. The main challenge is proper sizing of the inverteres to obtain a high-gain OTA is through output impedance cancellation (through some positive feedback inverters). Therefore the sizing needs to be precise.

The circuit implements a simple separate 8 pins digital control that can individually control the PFET and NFET of the cross-coupled inverters, as shown below. A more comprehensive sizing strategy was proposed by Nicholson et al. [2], and a tuning and maximum OTA gain detection strategy was proposed by Irfansyah [3] in the context of its use in a sigma-delta modulation ADC.

<img width="2661" height="1439" alt="image" src="https://github.com/user-attachments/assets/19d2c709-7ff5-4c1b-8e28-bb03ef77c3bd" />

**References:**

[1] Nauta, B., 2002. A CMOS transconductance-C filter technique for very high frequencies. IEEE Journal of Solid-State Circuits, 27(2), pp.142-153.

[2] Nicholson, Andrew Peter, Astria Nur Irfansyah, Julian Jenkins, Tara Julia Hamilton, and Torsten Lehmann. "A Statistical Design Approach Using Fixed and Variable Width Transconductors for Positive-Feedback Gain-Enhancement OTAs." IEEE Transactions on Very Large Scale Integration (VLSI) Systems 25, no. 6 (2017): 1966-1977.

[3] Irfansyah, Astria Nur, Andrew Peter Nicholson, Artemij Iberzanov, Julian Jenkins, Torsten Lehmann, and Tara Julia Hamilton. "Automatic tuning of digitally-controllable positive-feedback OTAs in continuous-time sigma–delta modulators." Analog Integrated Circuits and Signal Processing 89, no. 2 (2016): 469-483.


# Tiny Tapeout Analog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

Tiny Tapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
