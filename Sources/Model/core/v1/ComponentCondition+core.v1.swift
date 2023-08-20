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
/// core.v1.ComponentCondition
///

import Foundation

// MARK: - core.v1.ComponentCondition

public extension core.v1 {

	///
	/// Information about the condition of a component.
	///
	struct ComponentCondition: KubernetesResource {
		///
		/// Condition error code for a component. For example, a health check error code.
		///
		public var error: String?
		///
		/// Message about the condition for a component. For example, information about a health check.
		///
		public var message: String?
		///
		/// Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
		///
		public var status: String
		///
		/// Type of condition for a component. Valid value: "Healthy"
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			error: String? = nil,
			message: String? = nil,
			status: String,
			type: String
		) {
			self.error = error
			self.message = message
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ComponentCondition {

	private enum CodingKeys: String, CodingKey {

		case error = "error"
		case message = "message"
		case status = "status"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.error = try container.decodeIfPresent(String.self, forKey: .error)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(error, forKey: .error)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(status, forKey: .status)
		try encodingContainer.encode(type, forKey: .type)
	}
}
