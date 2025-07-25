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
/// Kubernetes v1.33.3
/// scheduling.v1.PriorityClass
///

import Foundation

// MARK: - scheduling.v1.PriorityClass

public extension scheduling.v1 {

	///
	/// PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
	///
	struct PriorityClass: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = scheduling.v1.PriorityClassList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "scheduling.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PriorityClass"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
		///
		public var description: String?
		///
		/// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
		///
		public var globalDefault: Bool?
		///
		/// preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
		///
		public var preemptionPolicy: String?
		///
		/// value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
		///
		public var value: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			description: String? = nil,
			globalDefault: Bool? = nil,
			preemptionPolicy: String? = nil,
			value: Int32
		) {
			self.metadata = metadata
			self.description = description
			self.globalDefault = globalDefault
			self.preemptionPolicy = preemptionPolicy
			self.value = value
		}
	}
}

///
/// Codable conformance
///
public extension scheduling.v1.PriorityClass {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case description = "description"
		case globalDefault = "globalDefault"
		case preemptionPolicy = "preemptionPolicy"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.description = try container.decodeIfPresent(String.self, forKey: .description)
		self.globalDefault = try container.decodeIfPresent(Bool.self, forKey: .globalDefault)
		self.preemptionPolicy = try container.decodeIfPresent(String.self, forKey: .preemptionPolicy)
		self.value = try container.decode(Int32.self, forKey: .value)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(description, forKey: .description)
		try encodingContainer.encode(globalDefault, forKey: .globalDefault)
		try encodingContainer.encode(preemptionPolicy, forKey: .preemptionPolicy)
		try encodingContainer.encode(value, forKey: .value)
	}
}
