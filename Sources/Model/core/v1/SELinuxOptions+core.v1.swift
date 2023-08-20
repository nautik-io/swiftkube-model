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
/// core.v1.SELinuxOptions
///

import Foundation

// MARK: - core.v1.SELinuxOptions

public extension core.v1 {

	///
	/// SELinuxOptions are the labels to be applied to the container
	///
	struct SELinuxOptions: KubernetesResource {
		///
		/// Level is SELinux level label that applies to the container.
		///
		public var level: String?
		///
		/// Role is a SELinux role label that applies to the container.
		///
		public var role: String?
		///
		/// Type is a SELinux type label that applies to the container.
		///
		public var type: String?
		///
		/// User is a SELinux user label that applies to the container.
		///
		public var user: String?
		///
		/// Default memberwise initializer
		///
		public init(
			level: String? = nil,
			role: String? = nil,
			type: String? = nil,
			user: String? = nil
		) {
			self.level = level
			self.role = role
			self.type = type
			self.user = user
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SELinuxOptions {

	private enum CodingKeys: String, CodingKey {

		case level = "level"
		case role = "role"
		case type = "type"
		case user = "user"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.level = try container.decodeIfPresent(String.self, forKey: .level)
		self.role = try container.decodeIfPresent(String.self, forKey: .role)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
		self.user = try container.decodeIfPresent(String.self, forKey: .user)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(level, forKey: .level)
		try encodingContainer.encode(role, forKey: .role)
		try encodingContainer.encode(type, forKey: .type)
		try encodingContainer.encode(user, forKey: .user)
	}
}
