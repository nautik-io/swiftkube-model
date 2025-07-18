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
/// Kubernetes v1.33.3
/// networking.v1.IngressStatus
///

import Foundation

// MARK: - networking.v1.IngressStatus

public extension networking.v1 {

	///
	/// IngressStatus describe the current state of the Ingress.
	///
	struct IngressStatus: KubernetesResource {
		///
		/// loadBalancer contains the current status of the load-balancer.
		///
		public var loadBalancer: networking.v1.IngressLoadBalancerStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			loadBalancer: networking.v1.IngressLoadBalancerStatus? = nil
		) {
			self.loadBalancer = loadBalancer
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressStatus {

	private enum CodingKeys: String, CodingKey {

		case loadBalancer = "loadBalancer"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.loadBalancer = try container.decodeIfPresent(networking.v1.IngressLoadBalancerStatus.self, forKey: .loadBalancer)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(loadBalancer, forKey: .loadBalancer)
	}
}
