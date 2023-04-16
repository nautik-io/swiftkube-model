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
/// Kubernetes v1.25.9
/// node.v1.RuntimeClass
///

import Foundation

// MARK: - node.v1.RuntimeClass

public extension node.v1 {

	///
	/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/
	///
	struct RuntimeClass: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = node.v1.RuntimeClassList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "node.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "RuntimeClass"
		///
		/// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
		///
		public var handler: String
		///
		/// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
		///  https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/
		///
		public var overhead: node.v1.Overhead?
		///
		/// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
		///
		public var scheduling: node.v1.Scheduling?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			handler: String,
			overhead: node.v1.Overhead? = nil,
			scheduling: node.v1.Scheduling? = nil
		) {
			self.metadata = metadata
			self.handler = handler
			self.overhead = overhead
			self.scheduling = scheduling
		}
	}
}

///
/// Codable conformance
///
public extension node.v1.RuntimeClass {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case handler = "handler"
		case overhead = "overhead"
		case scheduling = "scheduling"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.handler = try container.decode(String.self, forKey: .handler)
		self.overhead = try container.decodeIfPresent(node.v1.Overhead.self, forKey: .overhead)
		self.scheduling = try container.decodeIfPresent(node.v1.Scheduling.self, forKey: .scheduling)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(handler, forKey: .handler)
		try encodingContainer.encode(overhead, forKey: .overhead)
		try encodingContainer.encode(scheduling, forKey: .scheduling)
	}
}
