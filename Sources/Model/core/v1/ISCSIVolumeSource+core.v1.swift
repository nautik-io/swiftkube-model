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
/// core.v1.ISCSIVolumeSource
///

import Foundation

// MARK: - core.v1.ISCSIVolumeSource

public extension core.v1 {

	///
	/// Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
	///
	struct ISCSIVolumeSource: KubernetesResource {
		///
		/// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
		///
		public var chapAuthDiscovery: Bool?
		///
		/// chapAuthSession defines whether support iSCSI Session CHAP authentication
		///
		public var chapAuthSession: Bool?
		///
		/// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
		///
		public var fsType: String?
		///
		/// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
		///
		public var initiatorName: String?
		///
		/// iqn is the target iSCSI Qualified Name.
		///
		public var iqn: String
		///
		/// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
		///
		public var iscsiInterface: String?
		///
		/// lun represents iSCSI Target Lun number.
		///
		public var lun: Int32
		///
		/// portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var portals: [String]?
		///
		/// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
		///
		public var readOnly: Bool?
		///
		/// secretRef is the CHAP Secret for iSCSI target and initiator authentication
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var targetPortal: String
		///
		/// Default memberwise initializer
		///
		public init(
			chapAuthDiscovery: Bool? = nil,
			chapAuthSession: Bool? = nil,
			fsType: String? = nil,
			initiatorName: String? = nil,
			iqn: String,
			iscsiInterface: String? = nil,
			lun: Int32,
			portals: [String]? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.LocalObjectReference? = nil,
			targetPortal: String
		) {
			self.chapAuthDiscovery = chapAuthDiscovery
			self.chapAuthSession = chapAuthSession
			self.fsType = fsType
			self.initiatorName = initiatorName
			self.iqn = iqn
			self.iscsiInterface = iscsiInterface
			self.lun = lun
			self.portals = portals
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.targetPortal = targetPortal
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ISCSIVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case chapAuthDiscovery = "chapAuthDiscovery"
		case chapAuthSession = "chapAuthSession"
		case fsType = "fsType"
		case initiatorName = "initiatorName"
		case iqn = "iqn"
		case iscsiInterface = "iscsiInterface"
		case lun = "lun"
		case portals = "portals"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case targetPortal = "targetPortal"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.chapAuthDiscovery = try container.decodeIfPresent(Bool.self, forKey: .chapAuthDiscovery)
		self.chapAuthSession = try container.decodeIfPresent(Bool.self, forKey: .chapAuthSession)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.initiatorName = try container.decodeIfPresent(String.self, forKey: .initiatorName)
		self.iqn = try container.decode(String.self, forKey: .iqn)
		self.iscsiInterface = try container.decodeIfPresent(String.self, forKey: .iscsiInterface)
		self.lun = try container.decode(Int32.self, forKey: .lun)
		self.portals = try container.decodeIfPresent([String].self, forKey: .portals)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretRef = try container.decodeIfPresent(core.v1.LocalObjectReference.self, forKey: .secretRef)
		self.targetPortal = try container.decode(String.self, forKey: .targetPortal)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(chapAuthDiscovery, forKey: .chapAuthDiscovery)
		try encodingContainer.encode(chapAuthSession, forKey: .chapAuthSession)
		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(initiatorName, forKey: .initiatorName)
		try encodingContainer.encode(iqn, forKey: .iqn)
		try encodingContainer.encode(iscsiInterface, forKey: .iscsiInterface)
		try encodingContainer.encode(lun, forKey: .lun)
		try encodingContainer.encode(portals, forKey: .portals)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(secretRef, forKey: .secretRef)
		try encodingContainer.encode(targetPortal, forKey: .targetPortal)
	}
}
