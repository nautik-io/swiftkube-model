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
/// core.v1.CSIPersistentVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// Represents storage that is managed by an external CSI volume driver (Beta feature)
	///
	struct CSIPersistentVolumeSource: KubernetesResource {
		///
		/// ControllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This is an alpha field and requires enabling ExpandCSIVolumes feature gate. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var controllerExpandSecretRef: core.v1.SecretReference?
		///
		/// ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var controllerPublishSecretRef: core.v1.SecretReference?
		///
		/// Driver is the name of the driver to use for this volume. Required.
		///
		public var driver: String
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
		///
		public var fsType: String?
		///
		/// NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var nodePublishSecretRef: core.v1.SecretReference?
		///
		/// NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var nodeStageSecretRef: core.v1.SecretReference?
		///
		/// Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
		///
		public var readOnly: Bool?
		///
		/// Attributes of the volume to publish.
		///
		public var volumeAttributes: [String: String]?
		///
		/// VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
		///
		public var volumeHandle: String
		///
		/// Default memberwise initializer
		///
		public init(
			controllerExpandSecretRef: core.v1.SecretReference? = nil,
			controllerPublishSecretRef: core.v1.SecretReference? = nil,
			driver: String,
			fsType: String? = nil,
			nodePublishSecretRef: core.v1.SecretReference? = nil,
			nodeStageSecretRef: core.v1.SecretReference? = nil,
			readOnly: Bool? = nil,
			volumeAttributes: [String: String]? = nil,
			volumeHandle: String
		) {
			self.controllerExpandSecretRef = controllerExpandSecretRef
			self.controllerPublishSecretRef = controllerPublishSecretRef
			self.driver = driver
			self.fsType = fsType
			self.nodePublishSecretRef = nodePublishSecretRef
			self.nodeStageSecretRef = nodeStageSecretRef
			self.readOnly = readOnly
			self.volumeAttributes = volumeAttributes
			self.volumeHandle = volumeHandle
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.CSIPersistentVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case controllerExpandSecretRef = "controllerExpandSecretRef"
		case controllerPublishSecretRef = "controllerPublishSecretRef"
		case driver = "driver"
		case fsType = "fsType"
		case nodePublishSecretRef = "nodePublishSecretRef"
		case nodeStageSecretRef = "nodeStageSecretRef"
		case readOnly = "readOnly"
		case volumeAttributes = "volumeAttributes"
		case volumeHandle = "volumeHandle"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.controllerExpandSecretRef = try container.decodeIfPresent(core.v1.SecretReference.self, forKey: .controllerExpandSecretRef)
		self.controllerPublishSecretRef = try container.decodeIfPresent(core.v1.SecretReference.self, forKey: .controllerPublishSecretRef)
		self.driver = try container.decode(String.self, forKey: .driver)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.nodePublishSecretRef = try container.decodeIfPresent(core.v1.SecretReference.self, forKey: .nodePublishSecretRef)
		self.nodeStageSecretRef = try container.decodeIfPresent(core.v1.SecretReference.self, forKey: .nodeStageSecretRef)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.volumeAttributes = try container.decodeIfPresent([String: String].self, forKey: .volumeAttributes)
		self.volumeHandle = try container.decode(String.self, forKey: .volumeHandle)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(controllerExpandSecretRef, forKey: .controllerExpandSecretRef)
		try container.encode(controllerPublishSecretRef, forKey: .controllerPublishSecretRef)
		try container.encode(driver, forKey: .driver)
		try container.encode(fsType, forKey: .fsType)
		try container.encode(nodePublishSecretRef, forKey: .nodePublishSecretRef)
		try container.encode(nodeStageSecretRef, forKey: .nodeStageSecretRef)
		try container.encode(readOnly, forKey: .readOnly)
		try container.encode(volumeAttributes, forKey: .volumeAttributes)
		try container.encode(volumeHandle, forKey: .volumeHandle)
	}
}
