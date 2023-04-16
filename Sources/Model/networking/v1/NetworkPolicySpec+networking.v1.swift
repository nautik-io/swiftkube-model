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
/// networking.v1.NetworkPolicySpec
///

import Foundation

// MARK: - networking.v1.NetworkPolicySpec

public extension networking.v1 {

	///
	/// NetworkPolicySpec provides the specification of a NetworkPolicy
	///
	struct NetworkPolicySpec: KubernetesResource {
		///
		/// List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
		///
		public var egress: [networking.v1.NetworkPolicyEgressRule]?
		///
		/// List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
		///
		public var ingress: [networking.v1.NetworkPolicyIngressRule]?
		///
		/// Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
		///
		public var podSelector: meta.v1.LabelSelector
		///
		/// List of rule types that the NetworkPolicy relates to. Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"]. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an Egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
		///
		public var policyTypes: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			egress: [networking.v1.NetworkPolicyEgressRule]? = nil,
			ingress: [networking.v1.NetworkPolicyIngressRule]? = nil,
			podSelector: meta.v1.LabelSelector,
			policyTypes: [String]? = nil
		) {
			self.egress = egress
			self.ingress = ingress
			self.podSelector = podSelector
			self.policyTypes = policyTypes
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicySpec {

	private enum CodingKeys: String, CodingKey {

		case egress = "egress"
		case ingress = "ingress"
		case podSelector = "podSelector"
		case policyTypes = "policyTypes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.egress = try container.decodeIfPresent([networking.v1.NetworkPolicyEgressRule].self, forKey: .egress)
		self.ingress = try container.decodeIfPresent([networking.v1.NetworkPolicyIngressRule].self, forKey: .ingress)
		self.podSelector = try container.decode(meta.v1.LabelSelector.self, forKey: .podSelector)
		self.policyTypes = try container.decodeIfPresent([String].self, forKey: .policyTypes)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(egress, forKey: .egress)
		try encodingContainer.encode(ingress, forKey: .ingress)
		try encodingContainer.encode(podSelector, forKey: .podSelector)
		try encodingContainer.encode(policyTypes, forKey: .policyTypes)
	}
}
