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
/// Kubernetes v1.24.10
/// core.v1.NodeConfigStatus
///

import Foundation

// MARK: - core.v1.NodeConfigStatus

public extension core.v1 {

	///
	/// NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
	///
	struct NodeConfigStatus: KubernetesResource {
		///
		/// Active reports the checkpointed config the node is actively using. Active will represent either the current version of the Assigned config, or the current LastKnownGood config, depending on whether attempting to use the Assigned config results in an error.
		///
		public var active: core.v1.NodeConfigSource?
		///
		/// Assigned reports the checkpointed config the node will try to use. When Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to local disk, along with a record indicating intended config. The node refers to this record to choose its config checkpoint, and reports this record in Assigned. Assigned only updates in the status after the record has been checkpointed to disk. When the Kubelet is restarted, it tries to make the Assigned config the Active config by loading and validating the checkpointed payload identified by Assigned.
		///
		public var assigned: core.v1.NodeConfigSource?
		///
		/// Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
		///
		public var error: String?
		///
		/// LastKnownGood reports the checkpointed config the node will fall back to when it encounters an error attempting to use the Assigned config. The Assigned config becomes the LastKnownGood config when the node determines that the Assigned config is stable and correct. This is currently implemented as a 10-minute soak period starting when the local record of Assigned config is updated. If the Assigned config is Active at the end of this period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use local defaults), the LastKnownGood is also immediately reset to nil, because the local default config is always assumed good. You should not make assumptions about the node's method of determining config stability and correctness, as this may change or become configurable in the future.
		///
		public var lastKnownGood: core.v1.NodeConfigSource?
		///
		/// Default memberwise initializer
		///
		public init(
			active: core.v1.NodeConfigSource? = nil,
			assigned: core.v1.NodeConfigSource? = nil,
			error: String? = nil,
			lastKnownGood: core.v1.NodeConfigSource? = nil
		) {
			self.active = active
			self.assigned = assigned
			self.error = error
			self.lastKnownGood = lastKnownGood
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeConfigStatus {

	private enum CodingKeys: String, CodingKey {

		case active = "active"
		case assigned = "assigned"
		case error = "error"
		case lastKnownGood = "lastKnownGood"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.active = try container.decodeIfPresent(core.v1.NodeConfigSource.self, forKey: .active)
		self.assigned = try container.decodeIfPresent(core.v1.NodeConfigSource.self, forKey: .assigned)
		self.error = try container.decodeIfPresent(String.self, forKey: .error)
		self.lastKnownGood = try container.decodeIfPresent(core.v1.NodeConfigSource.self, forKey: .lastKnownGood)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(active, forKey: .active)
		try encodingContainer.encode(assigned, forKey: .assigned)
		try encodingContainer.encode(error, forKey: .error)
		try encodingContainer.encode(lastKnownGood, forKey: .lastKnownGood)
	}
}
