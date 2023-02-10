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
/// Kubernetes v1.24.10
/// core.v1.HTTPHeader
///

import Foundation

// MARK: - core.v1.HTTPHeader

public extension core.v1 {

	///
	/// HTTPHeader describes a custom header to be used in HTTP probes
	///
	struct HTTPHeader: KubernetesResource {
		///
		/// The header field name
		///
		public var name: String
		///
		/// The header field value
		///
		public var value: String
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			value: String
		) {
			self.name = name
			self.value = value
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.HTTPHeader {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.value = try container.decode(String.self, forKey: .value)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(value, forKey: .value)
	}
}
