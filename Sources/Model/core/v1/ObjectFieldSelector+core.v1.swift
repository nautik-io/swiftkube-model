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
/// core.v1.ObjectFieldSelector
///

import Foundation

// MARK: - core.v1.ObjectFieldSelector

public extension core.v1 {

	///
	/// ObjectFieldSelector selects an APIVersioned field of an object.
	///
	struct ObjectFieldSelector: KubernetesResource {
		///
		/// Version of the schema the FieldPath is written in terms of, defaults to "v1".
		///
		public var apiVersion: String?
		///
		/// Path of the field to select in the specified API version.
		///
		public var fieldPath: String
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			fieldPath: String
		) {
			self.apiVersion = apiVersion
			self.fieldPath = fieldPath
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ObjectFieldSelector {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case fieldPath = "fieldPath"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.fieldPath = try container.decode(String.self, forKey: .fieldPath)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(fieldPath, forKey: .fieldPath)
	}
}
