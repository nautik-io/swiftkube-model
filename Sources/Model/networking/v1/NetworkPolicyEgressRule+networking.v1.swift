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
/// Kubernetes v1.19.8
/// networking.v1.NetworkPolicyEgressRule
///

import Foundation

public extension networking.v1 {

	///
	/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8
	///
	struct NetworkPolicyEgressRule: KubernetesResource {
		///
		/// List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
		///
		public var ports: [networking.v1.NetworkPolicyPort]?
		///
		/// List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
		///
		public var to: [networking.v1.NetworkPolicyPeer]?
		///
		/// Default memberwise initializer
		///
		public init(
			ports: [networking.v1.NetworkPolicyPort]? = nil,
			to: [networking.v1.NetworkPolicyPeer]? = nil
		) {
			self.ports = ports
			self.to = to
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicyEgressRule {

	private enum CodingKeys: String, CodingKey {

		case ports = "ports"
		case to = "to"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ports = try container.decodeIfPresent([networking.v1.NetworkPolicyPort].self, forKey: .ports)
		self.to = try container.decodeIfPresent([networking.v1.NetworkPolicyPeer].self, forKey: .to)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(ports, forKey: .ports)
		try container.encode(to, forKey: .to)
	}
}
