# TuistInspectImplicitImportsBug
Repository to showcase tuist inspect implicit-imports bug

## Description:
When using source and resources to define porjects instead of buildableFolders, `inspect implicit-imports` does not fail for Test targets.

Inspect the `ImplicitImportsFails/Project.swift` to see the two different defintions

## Prerequists
Tuist 4.104.6

## Reproduce Steps:

1) Run `tuist install`
2) Testing with buildableFolders and sources/resources API
- Run `TUIST_BUILDABLE_FOLDERS=true tuist inspect implicit-imports` ->  No implicit import failure is raised
- Run `TUIST_BUILDABLE_FOLDERS=false tuist inspect implicit-imports` -> No implicit import failure is raised

## Expectation:

The `Logging` external frameworks should have failed the implicit import checks.


### Notes:
It is interesting to note, that I had to add an additional external dependency to cause this to happen.
Removing Alamofire from the dependency graph would trigger the implicit import failure

