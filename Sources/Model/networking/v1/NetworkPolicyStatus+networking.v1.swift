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
/// networking.v1.NetworkPolicyStatus
///

import Foundation

// MARK: - networking.v1.NetworkPolicyStatus

public extension networking.v1 {

	///
	/// NetworkPolicyStatus describe the current state of the NetworkPolicy.
	///
	struct NetworkPolicyStatus: KubernetesResource {
		///
		/// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
		///
		public var conditions: [meta.v1.Condition]?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [meta.v1.Condition]? = nil
		) {
			self.conditions = conditions
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicyStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([meta.v1.Condition].self, forKey: .conditions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
	}
}
