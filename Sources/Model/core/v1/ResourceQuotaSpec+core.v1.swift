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
/// core.v1.ResourceQuotaSpec
///

import Foundation

// MARK: - core.v1.ResourceQuotaSpec

public extension core.v1 {

	///
	/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
	///
	struct ResourceQuotaSpec: KubernetesResource {
		///
		/// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
		///
		public var hard: [String: Quantity]?
		///
		/// scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
		///
		public var scopeSelector: core.v1.ScopeSelector?
		///
		/// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
		///
		public var scopes: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			hard: [String: Quantity]? = nil,
			scopeSelector: core.v1.ScopeSelector? = nil,
			scopes: [String]? = nil
		) {
			self.hard = hard
			self.scopeSelector = scopeSelector
			self.scopes = scopes
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ResourceQuotaSpec {

	private enum CodingKeys: String, CodingKey {

		case hard = "hard"
		case scopeSelector = "scopeSelector"
		case scopes = "scopes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hard = try container.decodeIfPresent([String: Quantity].self, forKey: .hard)
		self.scopeSelector = try container.decodeIfPresent(core.v1.ScopeSelector.self, forKey: .scopeSelector)
		self.scopes = try container.decodeIfPresent([String].self, forKey: .scopes)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hard, forKey: .hard)
		try encodingContainer.encode(scopeSelector, forKey: .scopeSelector)
		try encodingContainer.encode(scopes, forKey: .scopes)
	}
}
