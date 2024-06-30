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
/// core.v1.LocalVolumeSource
///

import Foundation

// MARK: - core.v1.LocalVolumeSource

public extension core.v1 {

	///
	/// Local represents directly-attached storage with node affinity (Beta feature)
	///
	struct LocalVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
		///
		public var fsType: String?
		///
		/// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
		///
		public var path: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			path: String
		) {
			self.fsType = fsType
			self.path = path
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.LocalVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case path = "path"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.path = try container.decode(String.self, forKey: .path)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(path, forKey: .path)
	}
}
