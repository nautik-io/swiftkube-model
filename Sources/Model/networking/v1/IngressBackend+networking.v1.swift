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
/// networking.v1.IngressBackend
///

import Foundation

public extension networking.v1 {

	///
	/// IngressBackend describes all endpoints for a given service and port.
	///
	struct IngressBackend: KubernetesResource {
		///
		/// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
		///
		public var resource: core.v1.TypedLocalObjectReference?
		///
		/// Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
		///
		public var service: networking.v1.IngressServiceBackend?
		///
		/// Default memberwise initializer
		///
		public init(
			resource: core.v1.TypedLocalObjectReference? = nil,
			service: networking.v1.IngressServiceBackend? = nil
		) {
			self.resource = resource
			self.service = service
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressBackend {

	private enum CodingKeys: String, CodingKey {

		case resource = "resource"
		case service = "service"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.resource = try container.decodeIfPresent(core.v1.TypedLocalObjectReference.self, forKey: .resource)
		self.service = try container.decodeIfPresent(networking.v1.IngressServiceBackend.self, forKey: .service)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(resource, forKey: .resource)
		try container.encode(service, forKey: .service)
	}
}
