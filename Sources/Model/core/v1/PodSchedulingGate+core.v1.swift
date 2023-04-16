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
/// Kubernetes v1.26.4
/// core.v1.PodSchedulingGate
///

import Foundation

// MARK: - core.v1.PodSchedulingGate

public extension core.v1 {

	///
	/// PodSchedulingGate is associated to a Pod to guard its scheduling.
	///
	struct PodSchedulingGate: KubernetesResource {
		///
		/// Name of the scheduling gate. Each scheduling gate must have a unique name field.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			name: String
		) {
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodSchedulingGate {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
	}
}