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
/// certificates.v1.CertificateSigningRequestList
///

import Foundation

// MARK: - certificates.v1.CertificateSigningRequestList

public extension certificates.v1 {

	///
	/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects
	///
	struct CertificateSigningRequestList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = certificates.v1.CertificateSigningRequest
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "certificates.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "CertificateSigningRequestList"
		///
		/// No description
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// items is a collection of CertificateSigningRequest objects
		///
		public var items: [certificates.v1.CertificateSigningRequest]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [certificates.v1.CertificateSigningRequest]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension certificates.v1.CertificateSigningRequestList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([certificates.v1.CertificateSigningRequest].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(items, forKey: .items)
	}
}

// MARK: - certificates.v1.CertificateSigningRequestList + Sequence

///
/// Sequence iterator for KubernetesResourceList items
///
extension certificates.v1.CertificateSigningRequestList: Sequence {

	public typealias Element = certificates.v1.CertificateSigningRequest

	public func makeIterator() -> AnyIterator<certificates.v1.CertificateSigningRequest> {
		AnyIterator(items.makeIterator())
	}
}
