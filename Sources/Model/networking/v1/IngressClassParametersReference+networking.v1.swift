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
/// networking.v1.IngressClassParametersReference
///

import Foundation

// MARK: - networking.v1.IngressClassParametersReference

public extension networking.v1 {

	///
	/// IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
	///
	struct IngressClassParametersReference: KubernetesResource {
		///
		/// kind is the type of resource being referenced.
		///
		public var kind: String
		///
		/// apiGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
		///
		public var apiGroup: String?
		///
		/// name is the name of resource being referenced.
		///
		public var name: String
		///
		/// namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
		///
		public var namespace: String?
		///
		/// scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace".
		///
		public var scope: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			apiGroup: String? = nil,
			name: String,
			namespace: String? = nil,
			scope: String? = nil
		) {
			self.kind = kind
			self.apiGroup = apiGroup
			self.name = name
			self.namespace = namespace
			self.scope = scope
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressClassParametersReference {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case apiGroup = "apiGroup"
		case name = "name"
		case namespace = "namespace"
		case scope = "scope"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.apiGroup = try container.decodeIfPresent(String.self, forKey: .apiGroup)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
		self.scope = try container.decodeIfPresent(String.self, forKey: .scope)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(apiGroup, forKey: .apiGroup)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
		try encodingContainer.encode(scope, forKey: .scope)
	}
}
