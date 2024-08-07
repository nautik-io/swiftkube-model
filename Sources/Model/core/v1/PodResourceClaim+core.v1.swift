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
/// core.v1.PodResourceClaim
///

import Foundation

// MARK: - core.v1.PodResourceClaim

public extension core.v1 {

	///
	/// PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that need access to the ResourceClaim reference it with this name.
	///
	struct PodResourceClaim: KubernetesResource {
		///
		/// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
		///
		public var name: String
		///
		/// Source describes where to find the ResourceClaim.
		///
		public var source: core.v1.ClaimSource?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			source: core.v1.ClaimSource? = nil
		) {
			self.name = name
			self.source = source
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodResourceClaim {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case source = "source"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.source = try container.decodeIfPresent(core.v1.ClaimSource.self, forKey: .source)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(source, forKey: .source)
	}
}
