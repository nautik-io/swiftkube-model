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
/// meta.v1.APIResourceList
///

import Foundation

// MARK: - meta.v1.APIResourceList

public extension meta.v1 {

	///
	/// APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
	///
	struct APIResourceList: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "APIResourceList"
		///
		/// groupVersion is the group and version this APIResourceList is for.
		///
		public var groupVersion: String
		///
		/// resources contains the name of the resources and if they are namespaced.
		///
		public var resources: [meta.v1.APIResource]
		///
		/// Default memberwise initializer
		///
		public init(
			groupVersion: String,
			resources: [meta.v1.APIResource]
		) {
			self.groupVersion = groupVersion
			self.resources = resources
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.APIResourceList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case groupVersion = "groupVersion"
		case resources = "resources"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.groupVersion = try container.decode(String.self, forKey: .groupVersion)
		self.resources = try container.decode([meta.v1.APIResource].self, forKey: .resources)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(groupVersion, forKey: .groupVersion)
		try encodingContainer.encode(resources, forKey: .resources)
	}
}
