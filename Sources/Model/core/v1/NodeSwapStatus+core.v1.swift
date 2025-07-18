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
/// core.v1.NodeSwapStatus
///

import Foundation

// MARK: - core.v1.NodeSwapStatus

public extension core.v1 {

	///
	/// NodeSwapStatus represents swap memory information.
	///
	struct NodeSwapStatus: KubernetesResource {
		///
		/// Total amount of swap memory in bytes.
		///
		public var capacity: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			capacity: Int64? = nil
		) {
			self.capacity = capacity
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeSwapStatus {

	private enum CodingKeys: String, CodingKey {

		case capacity = "capacity"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.capacity = try container.decodeIfPresent(Int64.self, forKey: .capacity)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(capacity, forKey: .capacity)
	}
}
