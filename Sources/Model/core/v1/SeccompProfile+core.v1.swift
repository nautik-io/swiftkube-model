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
/// core.v1.SeccompProfile
///

import Foundation

// MARK: - core.v1.SeccompProfile

public extension core.v1 {

	///
	/// SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.
	///
	struct SeccompProfile: KubernetesResource {
		///
		/// localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must be set if type is "Localhost". Must NOT be set for any other type.
		///
		public var localhostProfile: String?
		///
		/// type indicates which kind of seccomp profile will be applied. Valid options are:
		///
		/// Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			localhostProfile: String? = nil,
			type: String
		) {
			self.localhostProfile = localhostProfile
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SeccompProfile {

	private enum CodingKeys: String, CodingKey {

		case localhostProfile = "localhostProfile"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.localhostProfile = try container.decodeIfPresent(String.self, forKey: .localhostProfile)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(localhostProfile, forKey: .localhostProfile)
		try encodingContainer.encode(type, forKey: .type)
	}
}
