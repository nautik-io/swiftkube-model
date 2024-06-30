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
/// autoscaling.v2.CrossVersionObjectReference
///

import Foundation

// MARK: - autoscaling.v2.CrossVersionObjectReference

public extension autoscaling.v2 {

	///
	/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
	///
	struct CrossVersionObjectReference: KubernetesResource {
		///
		/// apiVersion is the API version of the referent
		///
		public var apiVersion: String?
		///
		/// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var kind: String
		///
		/// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String,
			name: String
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.CrossVersionObjectReference {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(name, forKey: .name)
	}
}
