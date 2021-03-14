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
/// core.v1.HTTPGetAction
///

import Foundation

public extension core.v1 {

	///
	/// HTTPGetAction describes an action based on HTTP Get requests.
	///
	struct HTTPGetAction: KubernetesResource {
		///
		/// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
		///
		public var host: String?
		///
		/// Custom headers to set in the request. HTTP allows repeated headers.
		///
		public var httpHeaders: [core.v1.HTTPHeader]?
		///
		/// Path to access on the HTTP server.
		///
		public var path: String?
		///
		/// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
		///
		public var port: IntOrString
		///
		/// Scheme to use for connecting to the host. Defaults to HTTP.
		///
		public var scheme: String?
		///
		/// Default memberwise initializer
		///
		public init(
			host: String? = nil,
			httpHeaders: [core.v1.HTTPHeader]? = nil,
			path: String? = nil,
			port: IntOrString,
			scheme: String? = nil
		) {
			self.host = host
			self.httpHeaders = httpHeaders
			self.path = path
			self.port = port
			self.scheme = scheme
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.HTTPGetAction {

	private enum CodingKeys: String, CodingKey {

		case host = "host"
		case httpHeaders = "httpHeaders"
		case path = "path"
		case port = "port"
		case scheme = "scheme"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.host = try container.decodeIfPresent(String.self, forKey: .host)
		self.httpHeaders = try container.decodeIfPresent([core.v1.HTTPHeader].self, forKey: .httpHeaders)
		self.path = try container.decodeIfPresent(String.self, forKey: .path)
		self.port = try container.decode(IntOrString.self, forKey: .port)
		self.scheme = try container.decodeIfPresent(String.self, forKey: .scheme)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(host, forKey: .host)
		try container.encode(httpHeaders, forKey: .httpHeaders)
		try container.encode(path, forKey: .path)
		try container.encode(port, forKey: .port)
		try container.encode(scheme, forKey: .scheme)
	}
}
