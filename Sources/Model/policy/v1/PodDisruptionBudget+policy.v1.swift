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
/// Kubernetes v1.24.10
/// policy.v1.PodDisruptionBudget
///

import Foundation

// MARK: - policy.v1.PodDisruptionBudget

public extension policy.v1 {

	///
	/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
	///
	struct PodDisruptionBudget: KubernetesAPIResource, MetadataHavingResource, NamespacedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource,
		StatusHavingResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = policy.v1.PodDisruptionBudgetList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "policy/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PodDisruptionBudget"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Specification of the desired behavior of the PodDisruptionBudget.
		///
		public var spec: policy.v1.PodDisruptionBudgetSpec?
		///
		/// Most recently observed status of the PodDisruptionBudget.
		///
		public var status: policy.v1.PodDisruptionBudgetStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: policy.v1.PodDisruptionBudgetSpec? = nil,
			status: policy.v1.PodDisruptionBudgetStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1.PodDisruptionBudget {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(policy.v1.PodDisruptionBudgetSpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(policy.v1.PodDisruptionBudgetStatus.self, forKey: .status)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(spec, forKey: .spec)
		try encodingContainer.encode(status, forKey: .status)
	}
}
