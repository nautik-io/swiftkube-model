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
/// policy.v1beta1.IDRange
///

import Foundation

public extension policy.v1beta1 {

	///
	/// IDRange provides a min/max of an allowed range of IDs.
	///
	struct IDRange: KubernetesResource {
		///
		/// max is the end of the range, inclusive.
		///
		public var max: Int64
		///
		/// min is the start of the range, inclusive.
		///
		public var min: Int64
		///
		/// Default memberwise initializer
		///
		public init(
			max: Int64,
			min: Int64
		) {
			self.max = max
			self.min = min
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.IDRange {

	private enum CodingKeys: String, CodingKey {

		case max = "max"
		case min = "min"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.max = try container.decode(Int64.self, forKey: .max)
		self.min = try container.decode(Int64.self, forKey: .min)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(max, forKey: .max)
		try container.encode(min, forKey: .min)
	}
}
