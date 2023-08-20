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
/// Kubernetes v1.28.0
/// core.v1.NodeSelectorRequirement
///

import Foundation

// MARK: - core.v1.NodeSelectorRequirement

public extension core.v1 {

	///
	/// A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
	///
	struct NodeSelectorRequirement: KubernetesResource {
		///
		/// The label key that the selector applies to.
		///
		public var key: String
		///
		/// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
		///
		public var `operator`: String
		///
		/// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
		///
		public var values: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			key: String,
			`operator`: String,
			values: [String]? = nil
		) {
			self.key = key
			self.`operator` = `operator`
			self.values = values
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeSelectorRequirement {

	private enum CodingKeys: String, CodingKey {

		case key = "key"
		case `operator` = "operator"
		case values = "values"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.key = try container.decode(String.self, forKey: .key)
		self.`operator` = try container.decode(String.self, forKey: .`operator`)
		self.values = try container.decodeIfPresent([String].self, forKey: .values)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(key, forKey: .key)
		try encodingContainer.encode(`operator`, forKey: .`operator`)
		try encodingContainer.encode(values, forKey: .values)
	}
}
