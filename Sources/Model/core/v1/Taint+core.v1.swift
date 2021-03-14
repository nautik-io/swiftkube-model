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
/// core.v1.Taint
///

import Foundation

public extension core.v1 {

	///
	/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
	///
	struct Taint: KubernetesResource {
		///
		/// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
		///
		public var effect: String
		///
		/// Required. The taint key to be applied to a node.
		///
		public var key: String
		///
		/// TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
		///
		public var timeAdded: Date?
		///
		/// The taint value corresponding to the taint key.
		///
		public var value: String?
		///
		/// Default memberwise initializer
		///
		public init(
			effect: String,
			key: String,
			timeAdded: Date? = nil,
			value: String? = nil
		) {
			self.effect = effect
			self.key = key
			self.timeAdded = timeAdded
			self.value = value
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.Taint {

	private enum CodingKeys: String, CodingKey {

		case effect = "effect"
		case key = "key"
		case timeAdded = "timeAdded"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.effect = try container.decode(String.self, forKey: .effect)
		self.key = try container.decode(String.self, forKey: .key)
		self.timeAdded = try container.decodeIfPresent(Date.self, forKey: .timeAdded)
		self.value = try container.decodeIfPresent(String.self, forKey: .value)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(effect, forKey: .effect)
		try container.encode(key, forKey: .key)
		try container.encode(timeAdded, forKey: .timeAdded)
		try container.encode(value, forKey: .value)
	}
}
