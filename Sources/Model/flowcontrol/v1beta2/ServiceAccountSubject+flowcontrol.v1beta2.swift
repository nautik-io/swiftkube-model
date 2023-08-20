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
/// flowcontrol.v1beta2.ServiceAccountSubject
///

import Foundation

// MARK: - flowcontrol.v1beta2.ServiceAccountSubject

public extension flowcontrol.v1beta2 {

	///
	/// ServiceAccountSubject holds detailed information for service-account-kind subject.
	///
	struct ServiceAccountSubject: KubernetesResource {
		///
		/// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
		///
		public var name: String
		///
		/// `namespace` is the namespace of matching ServiceAccount objects. Required.
		///
		public var namespace: String
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			namespace: String
		) {
			self.name = name
			self.namespace = namespace
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1beta2.ServiceAccountSubject {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case namespace = "namespace"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespace = try container.decode(String.self, forKey: .namespace)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
	}
}
