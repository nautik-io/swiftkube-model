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
/// Kubernetes v1.29.6
/// autoscaling.v1.HorizontalPodAutoscalerList
///

import Foundation

// MARK: - autoscaling.v1.HorizontalPodAutoscalerList

public extension autoscaling.v1 {

	///
	/// list of horizontal pod autoscaler objects.
	///
	struct HorizontalPodAutoscalerList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = autoscaling.v1.HorizontalPodAutoscaler
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "autoscaling/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "HorizontalPodAutoscalerList"
		///
		/// Standard list metadata.
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// items is the list of horizontal pod autoscaler objects.
		///
		public var items: [autoscaling.v1.HorizontalPodAutoscaler]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [autoscaling.v1.HorizontalPodAutoscaler]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v1.HorizontalPodAutoscalerList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([autoscaling.v1.HorizontalPodAutoscaler].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(items, forKey: .items)
	}
}

// MARK: - autoscaling.v1.HorizontalPodAutoscalerList + Sequence

///
/// Sequence iterator for KubernetesResourceList items
///
extension autoscaling.v1.HorizontalPodAutoscalerList: Sequence {

	public typealias Element = autoscaling.v1.HorizontalPodAutoscaler

	public func makeIterator() -> AnyIterator<autoscaling.v1.HorizontalPodAutoscaler> {
		AnyIterator(items.makeIterator())
	}
}
