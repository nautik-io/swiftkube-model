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
/// Kubernetes v1.25.9
/// networking.v1alpha1.ClusterCIDRSpec
///

import Foundation

// MARK: - networking.v1alpha1.ClusterCIDRSpec

public extension networking.v1alpha1 {

	///
	/// ClusterCIDRSpec defines the desired state of ClusterCIDR.
	///
	struct ClusterCIDRSpec: KubernetesResource {
		///
		/// IPv4 defines an IPv4 IP block in CIDR notation(e.g. "10.0.0.0/8"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
		///
		public var ipv4: String?
		///
		/// IPv6 defines an IPv6 IP block in CIDR notation(e.g. "fd12:3456:789a:1::/64"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
		///
		public var ipv6: String?
		///
		/// NodeSelector defines which nodes the config is applicable to. An empty or nil NodeSelector selects all nodes. This field is immutable.
		///
		public var nodeSelector: core.v1.NodeSelector?
		///
		/// PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
		///
		public var perNodeHostBits: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			ipv4: String? = nil,
			ipv6: String? = nil,
			nodeSelector: core.v1.NodeSelector? = nil,
			perNodeHostBits: Int32
		) {
			self.ipv4 = ipv4
			self.ipv6 = ipv6
			self.nodeSelector = nodeSelector
			self.perNodeHostBits = perNodeHostBits
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1alpha1.ClusterCIDRSpec {

	private enum CodingKeys: String, CodingKey {

		case ipv4 = "ipv4"
		case ipv6 = "ipv6"
		case nodeSelector = "nodeSelector"
		case perNodeHostBits = "perNodeHostBits"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ipv4 = try container.decodeIfPresent(String.self, forKey: .ipv4)
		self.ipv6 = try container.decodeIfPresent(String.self, forKey: .ipv6)
		self.nodeSelector = try container.decodeIfPresent(core.v1.NodeSelector.self, forKey: .nodeSelector)
		self.perNodeHostBits = try container.decode(Int32.self, forKey: .perNodeHostBits)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(ipv4, forKey: .ipv4)
		try encodingContainer.encode(ipv6, forKey: .ipv6)
		try encodingContainer.encode(nodeSelector, forKey: .nodeSelector)
		try encodingContainer.encode(perNodeHostBits, forKey: .perNodeHostBits)
	}
}
