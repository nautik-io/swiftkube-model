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
/// core.v1.VolumeDevice
///

import Foundation

// MARK: - core.v1.VolumeDevice

public extension core.v1 {

	///
	/// volumeDevice describes a mapping of a raw block device within a container.
	///
	struct VolumeDevice: KubernetesResource {
		///
		/// devicePath is the path inside of the container that the device will be mapped to.
		///
		public var devicePath: String
		///
		/// name must match the name of a persistentVolumeClaim in the pod
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			devicePath: String,
			name: String
		) {
			self.devicePath = devicePath
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.VolumeDevice {

	private enum CodingKeys: String, CodingKey {

		case devicePath = "devicePath"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.devicePath = try container.decode(String.self, forKey: .devicePath)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(devicePath, forKey: .devicePath)
		try encodingContainer.encode(name, forKey: .name)
	}
}
