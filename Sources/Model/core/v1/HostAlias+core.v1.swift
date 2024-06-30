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
/// core.v1.HostAlias
///

import Foundation

// MARK: - core.v1.HostAlias

public extension core.v1 {

	///
	/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
	///
	struct HostAlias: KubernetesResource {
		///
		/// Hostnames for the above IP address.
		///
		public var hostnames: [String]?
		///
		/// IP address of the host file entry.
		///
		public var ip: String?
		///
		/// Default memberwise initializer
		///
		public init(
			hostnames: [String]? = nil,
			ip: String? = nil
		) {
			self.hostnames = hostnames
			self.ip = ip
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.HostAlias {

	private enum CodingKeys: String, CodingKey {

		case hostnames = "hostnames"
		case ip = "ip"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hostnames = try container.decodeIfPresent([String].self, forKey: .hostnames)
		self.ip = try container.decodeIfPresent(String.self, forKey: .ip)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hostnames, forKey: .hostnames)
		try encodingContainer.encode(ip, forKey: .ip)
	}
}
