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
/// core.v1.PersistentVolumeClaimCondition
///

import Foundation

public extension core.v1 {

	///
	/// PersistentVolumeClaimCondition contails details about state of pvc
	///
	struct PersistentVolumeClaimCondition: KubernetesResource {
		///
		/// Last time we probed the condition.
		///
		public var lastProbeTime: Date?
		///
		/// Last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: Date?
		///
		/// Human-readable message indicating details about last transition.
		///
		public var message: String?
		///
		/// Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
		///
		public var reason: String?
		///
		/// No description
		///
		public var status: String
		///
		/// No description
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastProbeTime: Date? = nil,
			lastTransitionTime: Date? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastProbeTime = lastProbeTime
			self.lastTransitionTime = lastTransitionTime
			self.message = message
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeClaimCondition {

	private enum CodingKeys: String, CodingKey {

		case lastProbeTime = "lastProbeTime"
		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastProbeTime = try container.decodeIfPresent(Date.self, forKey: .lastProbeTime)
		self.lastTransitionTime = try container.decodeIfPresent(Date.self, forKey: .lastTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(lastProbeTime, forKey: .lastProbeTime)
		try container.encode(lastTransitionTime, forKey: .lastTransitionTime)
		try container.encode(message, forKey: .message)
		try container.encode(reason, forKey: .reason)
		try container.encode(status, forKey: .status)
		try container.encode(type, forKey: .type)
	}
}
