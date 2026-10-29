# Hope
### Transplant donor documentation for iOS

Hope is an iOS application I independently designed and developed during my nephrology fellowship in 2016 to support documentation and review of deceased-donor kidney offers.

## Clinical problem

Donor offers were documented on paper, a time-consuming process that made previous offers difficult to retrieve and track. Hope provided structured electronic records that could be saved, revisited, and updated on the device.

## Implemented functionality

- Create, review, edit, and delete donor records.
- Capture donor characteristics, medical and social history, cause of death, and clinical status.
- Document kidney function, urine output, infectious serology, imaging, and biopsy findings.
- Record other organs, estimated retrieval timing, perfusion type, and additional comments.
- Retain records locally using Core Data with a SQLite persistent store.

## My contribution and use

I designed the clinical data structure and user interface and implemented the application in Swift using UIKit and Core Data.

The application was used by nephrology fellows and attending physicians during my fellowship.

## Repository guide

- `AddDonorVC.swift` — donor data entry and saving.
- `ViewController.swift` — donor list, record selection, and deletion.
- `DetailTableViewController.swift` — clinical record display.
- `EditTableVC.swift` — updates to existing records.
- `Hope.xcdatamodeld` — donor data model.
- `AppDelegate.swift` — Core Data persistence setup.

## Historical project

This repository preserves the original 2016 implementation as a clinical software portfolio project. It uses Swift and iOS APIs from that period and has not been updated for current development environments.

Clinical values and narratives embedded in the interface storyboard are fictional development examples. The repository is presented for historical review, rather than current clinical deployment.
