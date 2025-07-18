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
/// core.v1.KeyToPath
///

import Foundation

// MARK: - core.v1.KeyToPath

public extension core.v1 {

	///
	/// Maps a string key to a path within a volume.
	///
	struct KeyToPath: KubernetesResource {
		///
		/// key is the key to project.
		///
		public var key: String
		///
		/// mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
		///
		public var mode: Int32?
		///
		/// path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
		///
		public var path: String
		///
		/// Default memberwise initializer
		///
		public init(
			key: String,
			mode: Int32? = nil,
			path: String
		) {
			self.key = key
			self.mode = mode
			self.path = path
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.KeyToPath {

	private enum CodingKeys: String, CodingKey {

		case key = "key"
		case mode = "mode"
		case path = "path"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.key = try container.decode(String.self, forKey: .key)
		self.mode = try container.decodeIfPresent(Int32.self, forKey: .mode)
		self.path = try container.decode(String.self, forKey: .path)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(key, forKey: .key)
		try encodingContainer.encode(mode, forKey: .mode)
		try encodingContainer.encode(path, forKey: .path)
	}
}
