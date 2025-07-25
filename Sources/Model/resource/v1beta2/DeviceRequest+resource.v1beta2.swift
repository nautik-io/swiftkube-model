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
/// resource.v1beta2.DeviceRequest
///

import Foundation

// MARK: - resource.v1beta2.DeviceRequest

public extension resource.v1beta2 {

	///
	/// DeviceRequest is a request for devices required for a claim. This is typically a request for a single resource like a device, but can also ask for several identical devices. With FirstAvailable it is also possible to provide a prioritized list of requests.
	///
	struct DeviceRequest: KubernetesResource {
		///
		/// Exactly specifies the details for a single request that must be met exactly for the request to be satisfied.
		///
		/// One of Exactly or FirstAvailable must be set.
		///
		public var exactly: resource.v1beta2.ExactDeviceRequest?
		///
		/// FirstAvailable contains subrequests, of which exactly one will be selected by the scheduler. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one can not be used.
		///
		/// DRA does not yet implement scoring, so the scheduler will select the first set of devices that satisfies all the requests in the claim. And if the requirements can be satisfied on more than one node, other scheduling features will determine which node is chosen. This means that the set of devices allocated to a claim might not be the optimal set available to the cluster. Scoring will be implemented later.
		///
		public var firstAvailable: [resource.v1beta2.DeviceSubRequest]?
		///
		/// Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
		///
		/// References using the name in the DeviceRequest will uniquely identify a request when the Exactly field is set. When the FirstAvailable field is set, a reference to the name of the DeviceRequest will match whatever subrequest is chosen by the scheduler.
		///
		/// Must be a DNS label.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			exactly: resource.v1beta2.ExactDeviceRequest? = nil,
			firstAvailable: [resource.v1beta2.DeviceSubRequest]? = nil,
			name: String
		) {
			self.exactly = exactly
			self.firstAvailable = firstAvailable
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1beta2.DeviceRequest {

	private enum CodingKeys: String, CodingKey {

		case exactly = "exactly"
		case firstAvailable = "firstAvailable"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.exactly = try container.decodeIfPresent(resource.v1beta2.ExactDeviceRequest.self, forKey: .exactly)
		self.firstAvailable = try container.decodeIfPresent([resource.v1beta2.DeviceSubRequest].self, forKey: .firstAvailable)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(exactly, forKey: .exactly)
		try encodingContainer.encode(firstAvailable, forKey: .firstAvailable)
		try encodingContainer.encode(name, forKey: .name)
	}
}
