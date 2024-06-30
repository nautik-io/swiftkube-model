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
/// networking.v1.IngressLoadBalancerIngress
///

import Foundation

// MARK: - networking.v1.IngressLoadBalancerIngress

public extension networking.v1 {

	///
	/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
	///
	struct IngressLoadBalancerIngress: KubernetesResource {
		///
		/// hostname is set for load-balancer ingress points that are DNS based.
		///
		public var hostname: String?
		///
		/// ip is set for load-balancer ingress points that are IP based.
		///
		public var ip: String?
		///
		/// ports provides information about the ports exposed by this LoadBalancer.
		///
		public var ports: [networking.v1.IngressPortStatus]?
		///
		/// Default memberwise initializer
		///
		public init(
			hostname: String? = nil,
			ip: String? = nil,
			ports: [networking.v1.IngressPortStatus]? = nil
		) {
			self.hostname = hostname
			self.ip = ip
			self.ports = ports
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressLoadBalancerIngress {

	private enum CodingKeys: String, CodingKey {

		case hostname = "hostname"
		case ip = "ip"
		case ports = "ports"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hostname = try container.decodeIfPresent(String.self, forKey: .hostname)
		self.ip = try container.decodeIfPresent(String.self, forKey: .ip)
		self.ports = try container.decodeIfPresent([networking.v1.IngressPortStatus].self, forKey: .ports)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hostname, forKey: .hostname)
		try encodingContainer.encode(ip, forKey: .ip)
		try encodingContainer.encode(ports, forKey: .ports)
	}
}
