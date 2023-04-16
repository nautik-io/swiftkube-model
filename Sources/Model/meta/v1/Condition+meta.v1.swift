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
/// Kubernetes v1.25.9
/// meta.v1.Condition
///

import Foundation

// MARK: - meta.v1.Condition

public extension meta.v1 {

	///
	/// Condition contains details for one aspect of the current state of this API Resource.
	///
	struct Condition: KubernetesResource {
		///
		/// lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
		///
		public var lastTransitionTime: Date
		///
		/// message is a human readable message indicating details about the transition. This may be an empty string.
		///
		public var message: String
		///
		/// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
		///
		public var observedGeneration: Int64?
		///
		/// reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
		///
		public var reason: String
		///
		/// status of the condition, one of True, False, Unknown.
		///
		public var status: String
		///
		/// type of condition in CamelCase or in foo.example.com/CamelCase.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: Date,
			message: String,
			observedGeneration: Int64? = nil,
			reason: String,
			status: String,
			type: String
		) {
			self.lastTransitionTime = lastTransitionTime
			self.message = message
			self.observedGeneration = observedGeneration
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.Condition {

	private enum CodingKeys: String, CodingKey {

		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case observedGeneration = "observedGeneration"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastTransitionTime = try container.decode(Date.self, forKey: .lastTransitionTime)
		self.message = try container.decode(String.self, forKey: .message)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
		self.reason = try container.decode(String.self, forKey: .reason)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(lastTransitionTime, forKey: .lastTransitionTime)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(observedGeneration, forKey: .observedGeneration)
		try encodingContainer.encode(reason, forKey: .reason)
		try encodingContainer.encode(status, forKey: .status)
		try encodingContainer.encode(type, forKey: .type)
	}
}
