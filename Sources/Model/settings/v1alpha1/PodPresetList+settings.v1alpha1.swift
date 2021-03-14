//
// Copyright 2020 Swiftkube Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.19.8
/// settings.v1alpha1.PodPresetList
///

import Foundation

public extension settings.v1alpha1 {

	///
	/// PodPresetList is a list of PodPreset objects.
	///
	struct PodPresetList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = settings.v1alpha1.PodPreset
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "settings.k8s.io/v1alpha1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PodPresetList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of schema objects.
		///
		public var items: [settings.v1alpha1.PodPreset]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [settings.v1alpha1.PodPreset]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension settings.v1alpha1.PodPresetList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([settings.v1alpha1.PodPreset].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(apiVersion, forKey: .apiVersion)
		try container.encode(kind, forKey: .kind)
		try container.encode(metadata, forKey: .metadata)
		try container.encode(items, forKey: .items)
	}
}

// MARK: - settings.v1alpha1.PodPresetList + Sequence

///
/// Sequence iterator for KubernetesResourceList items
///
extension settings.v1alpha1.PodPresetList: Sequence {

	public typealias Element = settings.v1alpha1.PodPreset

	public func makeIterator() -> AnyIterator<settings.v1alpha1.PodPreset> {
		AnyIterator(items.makeIterator())
	}
}
