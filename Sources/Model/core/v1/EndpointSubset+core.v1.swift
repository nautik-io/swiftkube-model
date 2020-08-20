//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import Foundation

public extension core.v1 {

	///
	/// EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
	///   {
	///     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
	///     Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
	///   }
	/// The resulting set of endpoints can be viewed as:
	///     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
	///     b: [ 10.10.1.1:309, 10.10.2.2:309 ]
	///
	struct EndpointSubset: KubernetesResource {
		///
		/// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
		///
		public var addresses: [core.v1.EndpointAddress]?
		///
		/// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
		///
		public var notReadyAddresses: [core.v1.EndpointAddress]?
		///
		/// Port numbers available on the related IP addresses.
		///
		public var ports: [core.v1.EndpointPort]?
		///
		/// Default memberwise initializer
		///
		public init(
			addresses: [core.v1.EndpointAddress]? = nil,
			notReadyAddresses: [core.v1.EndpointAddress]? = nil,
			ports: [core.v1.EndpointPort]? = nil
		) {
			self.addresses = addresses
			self.notReadyAddresses = notReadyAddresses
			self.ports = ports
		}
	}
}
