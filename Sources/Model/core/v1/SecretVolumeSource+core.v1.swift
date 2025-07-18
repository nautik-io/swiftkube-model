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
/// Kubernetes v1.33.3
/// core.v1.SecretVolumeSource
///

import Foundation

// MARK: - core.v1.SecretVolumeSource

public extension core.v1 {

	///
	/// Adapts a Secret into a volume.
	///
	/// The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
	///
	struct SecretVolumeSource: KubernetesResource {
		///
		/// defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
		///
		public var defaultMode: Int32?
		///
		/// items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
		///
		public var items: [core.v1.KeyToPath]?
		///
		/// optional field specify whether the Secret or its keys must be defined
		///
		public var optional: Bool?
		///
		/// secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
		///
		public var secretName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			defaultMode: Int32? = nil,
			items: [core.v1.KeyToPath]? = nil,
			optional: Bool? = nil,
			secretName: String? = nil
		) {
			self.defaultMode = defaultMode
			self.items = items
			self.optional = optional
			self.secretName = secretName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SecretVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case defaultMode = "defaultMode"
		case items = "items"
		case optional = "optional"
		case secretName = "secretName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.defaultMode = try container.decodeIfPresent(Int32.self, forKey: .defaultMode)
		self.items = try container.decodeIfPresent([core.v1.KeyToPath].self, forKey: .items)
		self.optional = try container.decodeIfPresent(Bool.self, forKey: .optional)
		self.secretName = try container.decodeIfPresent(String.self, forKey: .secretName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(defaultMode, forKey: .defaultMode)
		try encodingContainer.encode(items, forKey: .items)
		try encodingContainer.encode(optional, forKey: .optional)
		try encodingContainer.encode(secretName, forKey: .secretName)
	}
}
