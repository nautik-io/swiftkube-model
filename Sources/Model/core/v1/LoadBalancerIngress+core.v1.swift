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
/// core.v1.LoadBalancerIngress
///

import Foundation

// MARK: - core.v1.LoadBalancerIngress

public extension core.v1 {

	///
	/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
	///
	struct LoadBalancerIngress: KubernetesResource {
		///
		/// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
		///
		public var hostname: String?
		///
		/// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
		///
		public var ip: String?
		///
		/// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
		///
		public var ports: [core.v1.PortStatus]?
		///
		/// Default memberwise initializer
		///
		public init(
			hostname: String? = nil,
			ip: String? = nil,
			ports: [core.v1.PortStatus]? = nil
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
public extension core.v1.LoadBalancerIngress {

	private enum CodingKeys: String, CodingKey {

		case hostname = "hostname"
		case ip = "ip"
		case ports = "ports"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hostname = try container.decodeIfPresent(String.self, forKey: .hostname)
		self.ip = try container.decodeIfPresent(String.self, forKey: .ip)
		self.ports = try container.decodeIfPresent([core.v1.PortStatus].self, forKey: .ports)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hostname, forKey: .hostname)
		try encodingContainer.encode(ip, forKey: .ip)
		try encodingContainer.encode(ports, forKey: .ports)
	}
}
