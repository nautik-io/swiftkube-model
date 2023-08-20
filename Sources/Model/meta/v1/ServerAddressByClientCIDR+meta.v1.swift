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
/// meta.v1.ServerAddressByClientCIDR
///

import Foundation

// MARK: - meta.v1.ServerAddressByClientCIDR

public extension meta.v1 {

	///
	/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
	///
	struct ServerAddressByClientCIDR: KubernetesResource {
		///
		/// The CIDR with which clients can match their IP to figure out the server address that they should use.
		///
		public var clientCIDR: String
		///
		/// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
		///
		public var serverAddress: String
		///
		/// Default memberwise initializer
		///
		public init(
			clientCIDR: String,
			serverAddress: String
		) {
			self.clientCIDR = clientCIDR
			self.serverAddress = serverAddress
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.ServerAddressByClientCIDR {

	private enum CodingKeys: String, CodingKey {

		case clientCIDR = "clientCIDR"
		case serverAddress = "serverAddress"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.clientCIDR = try container.decode(String.self, forKey: .clientCIDR)
		self.serverAddress = try container.decode(String.self, forKey: .serverAddress)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(clientCIDR, forKey: .clientCIDR)
		try encodingContainer.encode(serverAddress, forKey: .serverAddress)
	}
}
