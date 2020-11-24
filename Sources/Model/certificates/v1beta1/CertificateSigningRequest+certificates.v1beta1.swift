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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// certificates.v1beta1.CertificateSigningRequest
///

import Foundation

public extension certificates.v1beta1 {

	///
	/// Describes a certificate signing request
	///
	struct CertificateSigningRequest: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
				ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = certificates.v1beta1.CertificateSigningRequestList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "certificates.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "CertificateSigningRequest"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// The certificate request itself and any additional information.
		///
		public var spec: certificates.v1beta1.CertificateSigningRequestSpec?
		///
		/// Derived information about the request.
		///
		public var status: certificates.v1beta1.CertificateSigningRequestStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: certificates.v1beta1.CertificateSigningRequestSpec? = nil,
			status: certificates.v1beta1.CertificateSigningRequestStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
extension certificates.v1beta1.CertificateSigningRequest {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(certificates.v1beta1.CertificateSigningRequestSpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(certificates.v1beta1.CertificateSigningRequestStatus.self, forKey: .status)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.spec, forKey: .spec)
		try container.encode(self.status, forKey: .status)
	}

}

