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
/// core.v1.EndpointAddress
///

import Foundation

// MARK: - core.v1.EndpointAddress

public extension core.v1 {

	///
	/// EndpointAddress is a tuple that describes single IP address.
	///
	struct EndpointAddress: KubernetesResource {
		///
		/// The Hostname of this endpoint
		///
		public var hostname: String?
		///
		/// The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
		///
		public var ip: String
		///
		/// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
		///
		public var nodeName: String?
		///
		/// Reference to object providing the endpoint.
		///
		public var targetRef: core.v1.ObjectReference?
		///
		/// Default memberwise initializer
		///
		public init(
			hostname: String? = nil,
			ip: String,
			nodeName: String? = nil,
			targetRef: core.v1.ObjectReference? = nil
		) {
			self.hostname = hostname
			self.ip = ip
			self.nodeName = nodeName
			self.targetRef = targetRef
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EndpointAddress {

	private enum CodingKeys: String, CodingKey {

		case hostname = "hostname"
		case ip = "ip"
		case nodeName = "nodeName"
		case targetRef = "targetRef"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hostname = try container.decodeIfPresent(String.self, forKey: .hostname)
		self.ip = try container.decode(String.self, forKey: .ip)
		self.nodeName = try container.decodeIfPresent(String.self, forKey: .nodeName)
		self.targetRef = try container.decodeIfPresent(core.v1.ObjectReference.self, forKey: .targetRef)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hostname, forKey: .hostname)
		try encodingContainer.encode(ip, forKey: .ip)
		try encodingContainer.encode(nodeName, forKey: .nodeName)
		try encodingContainer.encode(targetRef, forKey: .targetRef)
	}
}
