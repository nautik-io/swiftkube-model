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
/// storage.v1.VolumeError
///

import Foundation

// MARK: - storage.v1.VolumeError

public extension storage.v1 {

	///
	/// VolumeError captures an error encountered during a volume operation.
	///
	struct VolumeError: KubernetesResource {
		///
		/// String detailing the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
		///
		public var message: String?
		///
		/// Time the error was encountered.
		///
		public var time: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			message: String? = nil,
			time: Date? = nil
		) {
			self.message = message
			self.time = time
		}
	}
}

///
/// Codable conformance
///
public extension storage.v1.VolumeError {

	private enum CodingKeys: String, CodingKey {

		case message = "message"
		case time = "time"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.time = try container.decodeIfPresent(Date.self, forKey: .time)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(time, forKey: .time)
	}
}
