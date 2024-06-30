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
/// networking.v1.IngressLoadBalancerStatus
///

import Foundation

// MARK: - networking.v1.IngressLoadBalancerStatus

public extension networking.v1 {

	///
	/// IngressLoadBalancerStatus represents the status of a load-balancer.
	///
	struct IngressLoadBalancerStatus: KubernetesResource {
		///
		/// ingress is a list containing ingress points for the load-balancer.
		///
		public var ingress: [networking.v1.IngressLoadBalancerIngress]?
		///
		/// Default memberwise initializer
		///
		public init(
			ingress: [networking.v1.IngressLoadBalancerIngress]? = nil
		) {
			self.ingress = ingress
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressLoadBalancerStatus {

	private enum CodingKeys: String, CodingKey {

		case ingress = "ingress"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ingress = try container.decodeIfPresent([networking.v1.IngressLoadBalancerIngress].self, forKey: .ingress)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(ingress, forKey: .ingress)
	}
}
