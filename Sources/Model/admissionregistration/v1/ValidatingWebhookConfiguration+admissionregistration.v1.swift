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
/// admissionregistration.v1.ValidatingWebhookConfiguration
///

import Foundation

// MARK: - admissionregistration.v1.ValidatingWebhookConfiguration

public extension admissionregistration.v1 {

	///
	/// ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it.
	///
	struct ValidatingWebhookConfiguration: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = admissionregistration.v1.ValidatingWebhookConfigurationList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "admissionregistration.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ValidatingWebhookConfiguration"
		///
		/// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Webhooks is a list of webhooks and the affected resources and operations.
		///
		public var webhooks: [admissionregistration.v1.ValidatingWebhook]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			webhooks: [admissionregistration.v1.ValidatingWebhook]? = nil
		) {
			self.metadata = metadata
			self.webhooks = webhooks
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1.ValidatingWebhookConfiguration {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case webhooks = "webhooks"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.webhooks = try container.decodeIfPresent([admissionregistration.v1.ValidatingWebhook].self, forKey: .webhooks)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(webhooks, forKey: .webhooks)
	}
}
