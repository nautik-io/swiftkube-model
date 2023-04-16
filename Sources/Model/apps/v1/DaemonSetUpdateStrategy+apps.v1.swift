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
/// apps.v1.DaemonSetUpdateStrategy
///

import Foundation

// MARK: - apps.v1.DaemonSetUpdateStrategy

public extension apps.v1 {

	///
	/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
	///
	struct DaemonSetUpdateStrategy: KubernetesResource {
		///
		/// Rolling update config params. Present only if type = "RollingUpdate".
		///
		public var rollingUpdate: apps.v1.RollingUpdateDaemonSet?
		///
		/// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
		///
		///
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			rollingUpdate: apps.v1.RollingUpdateDaemonSet? = nil,
			type: String? = nil
		) {
			self.rollingUpdate = rollingUpdate
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.DaemonSetUpdateStrategy {

	private enum CodingKeys: String, CodingKey {

		case rollingUpdate = "rollingUpdate"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.rollingUpdate = try container.decodeIfPresent(apps.v1.RollingUpdateDaemonSet.self, forKey: .rollingUpdate)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(rollingUpdate, forKey: .rollingUpdate)
		try encodingContainer.encode(type, forKey: .type)
	}
}
