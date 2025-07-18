# Changelog

## 0.18.0

- Update to Kubernetes v1.33.3

## 0.17.0

- Update to Kubernetes v1.32.2
- Make `Quantity.decimalValue` publicly readable (#13 by @ewilken)

## 0.16.0

- Make all resources `Sendable`

## 0.15.0

- Update to Kubernetes v1.32.0
- Support Swift 6

## 0.14.0

- Update to Kubernetes v1.29.6
- Include optional `ListMeta` metadata field on `KubernetesResourceList` (#10 by @ewilken)

## 0.13.0

- Update to Kubernetes v1.28.3
- Make `GroupVersionResource` conform to `Codable`  (#9 by @ewilken)

## 0.12.0

- Update to Kubernetes v1.28.0

## 0.11.0

- Drop support for Swift 5.5

## 0.10.0

- Update to Kubernetes v1.26.4

## 0.9.0

- Update to Kubernetes v1.25.9
- Add `CronJob/generateJob()` and `GenerateRandomHash`

## 0.8.0

- Update to Kubernetes 1.24.10
- Make all `KubernetesResources` `Hashable`
- Introduce a new `JSONObject` type to represent arbitrary JSON fields in the following resources:
  - `apiextensions.v1.CustomResourceValidation`
  - `apps.v1.ControllerRevision`
  - `meta.v1.ManagedFieldsEntry`
  - `meta.v1.WatchEvent`

## 0.7.2

- Make `GroupVersionResource` and its friends Hashable

## 0.7.1

- Fix UnstructuredResource's `metadata` encoding

## 0.7.0

- Drop `AnyKubernetesAPIResource` in favour of `UnstructuredResource`

`## 0.6.0

- Update to Kubernetes 1.24.8
- Update to Swift 5.5`

## 0.5.2

- Add GVK & GVR extensions for determining namespace scope

## 0.5.1

- Add GVR extension to construct instances given a string representation

## 0.5.0

- Update to Kubernetes v1.22.7
- Change `GroupVersionKind` to struct instead of an enum
- Introduce `GroupVersionResource` type
- Improve handling of `UnstructuredResource`

## 0.4.0

- Update to Kubernetes v1.20.9
- Add proper `Quantity` SerDe (#1 by @mustard-mh)

## 0.3.2

- Add supported platforms for Swift package
- Add CI for iOS build

## 0.3.1

### New

- New marker protocols for:
  - `ScalableResource`
  - `StatusHavingResorce`
  - `EvictableResource`

## 0.3.0

- Update to Kubernetes v1.19.8

## 0.2.2

- Change personal copyright to Swiftkube Project

## 0.2.1

- Update to Kubernetes v1.18.13
  - No model changes between 1.18.9 and 1.18.13. This release is to track the update explicitly via a version bump.

## 0.2.0

### New

- New marker protocols for the supported API actions
  - `ReadableResource`
  - `ListableResource`
  - `CreatableResource`
  - `ReplaceableResource`
  - `DeletableResource`
  - `CollectionDeletableResource`

### API Changes

- Renamed `GroupVersionKind` initializer argument from `init(forName:)` to `init(for:)`

## 0.1.0

Initial release
