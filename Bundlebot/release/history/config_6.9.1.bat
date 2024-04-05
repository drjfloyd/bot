@echo off
:: This scripts defines revisions and tags for a bundle.
:: It is run by other BUILD scripts to define the environment.
:: ----------------------------
:: repo environment variables

:: CAD-6.9.0-0-gc5fd24b
set BUNDLE_CAD_REVISION=c5fd24b
set BUNDLE_CAD_TAG=CAD-6.9.1

:: EXP-6.9.0-2-g3c0202a3c
set BUNDLE_EXP_REVISION=3c0202a3c
set BUNDLE_EXP_TAG=EXP-6.9.1

:: FDS-6.9.0-88-gfccda5376
set BUNDLE_FDS_REVISION=fccda5376
set BUNDLE_FDS_TAG=FDS-6.9.1

:: FIG-6.9.0-45-g5bdc65d
set BUNDLE_FIG_REVISION=5bdc65d
set BUNDLE_FIG_TAG=FIG-6.9.1

:: OUT-6.9.0-0-g6b7ac2e39
set BUNDLE_OUT_REVISION=6b7ac2e39
set BUNDLE_OUT_TAG=OUT-6.9.1

:: SMV-6.9.0-116-gf11dfead9
set BUNDLE_SMV_REVISION=f11dfead9
set BUNDLE_SMV_TAG=SMV-6.9.1

:: ----------------------------
:: github environment variables

set GH_REPO=test_bundles
set GH_FDS_TAG=BUNDLE_TEST
set GH_SMOKEVIEW_TAG=BUNDLE_TEST
