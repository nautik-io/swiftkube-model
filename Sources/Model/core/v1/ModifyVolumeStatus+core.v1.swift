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
/// Kubernetes v1.29.6
/// core.v1.ModifyVolumeStatus
///

import Foundation

// MARK: - core.v1.ModifyVolumeStatus

public extension core.v1 {

	///
	/// ModifyVolumeStatus represents the status object of ControllerModifyVolume operation
	///
	struct ModifyVolumeStatus: KubernetesResource {
		///
		/// status is the status of the ControllerModifyVolume operation. It can be in any of following states:
		///  - Pending
		///    Pending indicates that the PersistentVolumeClaim cannot be modified due to unmet requirements, such as
		///    the specified VolumeAttributesClass not existing.
		///  - InProgress
		///    InProgress indicates that the volume is being modified.
		///  - Infeasible
		///   Infeasible indicates that the request has been rejected as invalid by the CSI driver. To
		/// 	  resolve the error, a valid VolumeAttributesClass needs to be specified.
		/// Note: New statuses can be added in the future. Consumers should check for unknown statuses and fail appropriately.
		///
		public var status: String
		///
		/// targetVolumeAttributesClassName is the name of the VolumeAttributesClass the PVC currently being reconciled
		///
		public var targetVolumeAttributesClassName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			status: String,
			targetVolumeAttributesClassName: String? = nil
		) {
			self.status = status
			self.targetVolumeAttributesClassName = targetVolumeAttributesClassName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ModifyVolumeStatus {

	private enum CodingKeys: String, CodingKey {

		case status = "status"
		case targetVolumeAttributesClassName = "targetVolumeAttributesClassName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.status = try container.decode(String.self, forKey: .status)
		self.targetVolumeAttributesClassName = try container.decodeIfPresent(String.self, forKey: .targetVolumeAttributesClassName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(status, forKey: .status)
		try encodingContainer.encode(targetVolumeAttributesClassName, forKey: .targetVolumeAttributesClassName)
	}
}
