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
/// apps.v1.StatefulSetPersistentVolumeClaimRetentionPolicy
///

import Foundation

// MARK: - apps.v1.StatefulSetPersistentVolumeClaimRetentionPolicy

public extension apps.v1 {

	///
	/// StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
	///
	struct StatefulSetPersistentVolumeClaimRetentionPolicy: KubernetesResource {
		///
		/// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
		///
		public var whenDeleted: String?
		///
		/// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
		///
		public var whenScaled: String?
		///
		/// Default memberwise initializer
		///
		public init(
			whenDeleted: String? = nil,
			whenScaled: String? = nil
		) {
			self.whenDeleted = whenDeleted
			self.whenScaled = whenScaled
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.StatefulSetPersistentVolumeClaimRetentionPolicy {

	private enum CodingKeys: String, CodingKey {

		case whenDeleted = "whenDeleted"
		case whenScaled = "whenScaled"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.whenDeleted = try container.decodeIfPresent(String.self, forKey: .whenDeleted)
		self.whenScaled = try container.decodeIfPresent(String.self, forKey: .whenScaled)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(whenDeleted, forKey: .whenDeleted)
		try encodingContainer.encode(whenScaled, forKey: .whenScaled)
	}
}
