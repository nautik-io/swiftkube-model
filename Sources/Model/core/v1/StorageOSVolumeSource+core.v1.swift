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
/// core.v1.StorageOSVolumeSource
///

import Foundation

// MARK: - core.v1.StorageOSVolumeSource

public extension core.v1 {

	///
	/// Represents a StorageOS persistent volume resource.
	///
	struct StorageOSVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
		///
		public var volumeName: String?
		///
		/// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
		///
		public var volumeNamespace: String?
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.LocalObjectReference? = nil,
			volumeName: String? = nil,
			volumeNamespace: String? = nil
		) {
			self.fsType = fsType
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.volumeName = volumeName
			self.volumeNamespace = volumeNamespace
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.StorageOSVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case volumeName = "volumeName"
		case volumeNamespace = "volumeNamespace"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretRef = try container.decodeIfPresent(core.v1.LocalObjectReference.self, forKey: .secretRef)
		self.volumeName = try container.decodeIfPresent(String.self, forKey: .volumeName)
		self.volumeNamespace = try container.decodeIfPresent(String.self, forKey: .volumeNamespace)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(secretRef, forKey: .secretRef)
		try encodingContainer.encode(volumeName, forKey: .volumeName)
		try encodingContainer.encode(volumeNamespace, forKey: .volumeNamespace)
	}
}
