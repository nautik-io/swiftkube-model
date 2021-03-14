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
/// authorization.v1beta1.ResourceRule
///

import Foundation

public extension authorization.v1beta1 {

	///
	/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
	///
	struct ResourceRule: KubernetesResource {
		///
		/// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
		///
		public var apiGroups: [String]?
		///
		/// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
		///
		public var resourceNames: [String]?
		///
		/// Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
		///  "*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
		///
		public var resources: [String]?
		///
		/// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
		///
		public var verbs: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			apiGroups: [String]? = nil,
			resourceNames: [String]? = nil,
			resources: [String]? = nil,
			verbs: [String]
		) {
			self.apiGroups = apiGroups
			self.resourceNames = resourceNames
			self.resources = resources
			self.verbs = verbs
		}
	}
}

///
/// Codable conformance
///
public extension authorization.v1beta1.ResourceRule {

	private enum CodingKeys: String, CodingKey {

		case apiGroups = "apiGroups"
		case resourceNames = "resourceNames"
		case resources = "resources"
		case verbs = "verbs"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiGroups = try container.decodeIfPresent([String].self, forKey: .apiGroups)
		self.resourceNames = try container.decodeIfPresent([String].self, forKey: .resourceNames)
		self.resources = try container.decodeIfPresent([String].self, forKey: .resources)
		self.verbs = try container.decode([String].self, forKey: .verbs)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(apiGroups, forKey: .apiGroups)
		try container.encode(resourceNames, forKey: .resourceNames)
		try container.encode(resources, forKey: .resources)
		try container.encode(verbs, forKey: .verbs)
	}
}
