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
/// authorization.v1.ResourceAttributes
///

import Foundation

// MARK: - authorization.v1.ResourceAttributes

public extension authorization.v1 {

	///
	/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
	///
	struct ResourceAttributes: KubernetesResource {
		///
		/// fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
		///
		/// This field  is alpha-level. To use this field, you must enable the `AuthorizeWithSelectors` feature gate (disabled by default).
		///
		public var fieldSelector: authorization.v1.FieldSelectorAttributes?
		///
		/// Group is the API Group of the Resource.  "*" means all.
		///
		public var group: String?
		///
		/// labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
		///
		/// This field  is alpha-level. To use this field, you must enable the `AuthorizeWithSelectors` feature gate (disabled by default).
		///
		public var labelSelector: authorization.v1.LabelSelectorAttributes?
		///
		/// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
		///
		public var name: String?
		///
		/// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
		///
		public var namespace: String?
		///
		/// Resource is one of the existing resource types.  "*" means all.
		///
		public var resource: String?
		///
		/// Subresource is one of the existing resource types.  "" means none.
		///
		public var subresource: String?
		///
		/// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
		///
		public var verb: String?
		///
		/// Version is the API Version of the Resource.  "*" means all.
		///
		public var version: String?
		///
		/// Default memberwise initializer
		///
		public init(
			fieldSelector: authorization.v1.FieldSelectorAttributes? = nil,
			group: String? = nil,
			labelSelector: authorization.v1.LabelSelectorAttributes? = nil,
			name: String? = nil,
			namespace: String? = nil,
			resource: String? = nil,
			subresource: String? = nil,
			verb: String? = nil,
			version: String? = nil
		) {
			self.fieldSelector = fieldSelector
			self.group = group
			self.labelSelector = labelSelector
			self.name = name
			self.namespace = namespace
			self.resource = resource
			self.subresource = subresource
			self.verb = verb
			self.version = version
		}
	}
}

///
/// Codable conformance
///
public extension authorization.v1.ResourceAttributes {

	private enum CodingKeys: String, CodingKey {

		case fieldSelector = "fieldSelector"
		case group = "group"
		case labelSelector = "labelSelector"
		case name = "name"
		case namespace = "namespace"
		case resource = "resource"
		case subresource = "subresource"
		case verb = "verb"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fieldSelector = try container.decodeIfPresent(authorization.v1.FieldSelectorAttributes.self, forKey: .fieldSelector)
		self.group = try container.decodeIfPresent(String.self, forKey: .group)
		self.labelSelector = try container.decodeIfPresent(authorization.v1.LabelSelectorAttributes.self, forKey: .labelSelector)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
		self.resource = try container.decodeIfPresent(String.self, forKey: .resource)
		self.subresource = try container.decodeIfPresent(String.self, forKey: .subresource)
		self.verb = try container.decodeIfPresent(String.self, forKey: .verb)
		self.version = try container.decodeIfPresent(String.self, forKey: .version)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fieldSelector, forKey: .fieldSelector)
		try encodingContainer.encode(group, forKey: .group)
		try encodingContainer.encode(labelSelector, forKey: .labelSelector)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
		try encodingContainer.encode(resource, forKey: .resource)
		try encodingContainer.encode(subresource, forKey: .subresource)
		try encodingContainer.encode(verb, forKey: .verb)
		try encodingContainer.encode(version, forKey: .version)
	}
}
