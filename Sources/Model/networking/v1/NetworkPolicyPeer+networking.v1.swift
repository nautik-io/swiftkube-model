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
/// networking.v1.NetworkPolicyPeer
///

import Foundation

// MARK: - networking.v1.NetworkPolicyPeer

public extension networking.v1 {

	///
	/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed
	///
	struct NetworkPolicyPeer: KubernetesResource {
		///
		/// ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
		///
		public var ipBlock: networking.v1.IPBlock?
		///
		/// namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
		///
		/// If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector.
		///
		public var namespaceSelector: meta.v1.LabelSelector?
		///
		/// podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
		///
		/// If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace.
		///
		public var podSelector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			ipBlock: networking.v1.IPBlock? = nil,
			namespaceSelector: meta.v1.LabelSelector? = nil,
			podSelector: meta.v1.LabelSelector? = nil
		) {
			self.ipBlock = ipBlock
			self.namespaceSelector = namespaceSelector
			self.podSelector = podSelector
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicyPeer {

	private enum CodingKeys: String, CodingKey {

		case ipBlock = "ipBlock"
		case namespaceSelector = "namespaceSelector"
		case podSelector = "podSelector"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ipBlock = try container.decodeIfPresent(networking.v1.IPBlock.self, forKey: .ipBlock)
		self.namespaceSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .namespaceSelector)
		self.podSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .podSelector)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(ipBlock, forKey: .ipBlock)
		try encodingContainer.encode(namespaceSelector, forKey: .namespaceSelector)
		try encodingContainer.encode(podSelector, forKey: .podSelector)
	}
}
