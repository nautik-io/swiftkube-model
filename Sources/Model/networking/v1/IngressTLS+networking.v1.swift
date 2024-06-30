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
/// networking.v1.IngressTLS
///

import Foundation

// MARK: - networking.v1.IngressTLS

public extension networking.v1 {

	///
	/// IngressTLS describes the transport layer security associated with an ingress.
	///
	struct IngressTLS: KubernetesResource {
		///
		/// hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
		///
		public var hosts: [String]?
		///
		/// secretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the "Host" header is used for routing.
		///
		public var secretName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			hosts: [String]? = nil,
			secretName: String? = nil
		) {
			self.hosts = hosts
			self.secretName = secretName
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressTLS {

	private enum CodingKeys: String, CodingKey {

		case hosts = "hosts"
		case secretName = "secretName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hosts = try container.decodeIfPresent([String].self, forKey: .hosts)
		self.secretName = try container.decodeIfPresent(String.self, forKey: .secretName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hosts, forKey: .hosts)
		try encodingContainer.encode(secretName, forKey: .secretName)
	}
}
