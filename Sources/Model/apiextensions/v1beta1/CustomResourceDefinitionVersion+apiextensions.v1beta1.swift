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
/// apiextensions.v1beta1.CustomResourceDefinitionVersion
///

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceDefinitionVersion describes a version for CRD.
	///
	struct CustomResourceDefinitionVersion: KubernetesResource {
		///
		/// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead). If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
		///
		public var additionalPrinterColumns: [apiextensions.v1beta1.CustomResourceColumnDefinition]?
		///
		/// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
		///
		public var deprecated: Bool?
		///
		/// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
		///
		public var deprecationWarning: String?
		///
		/// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
		///
		public var name: String
		///
		/// schema describes the schema used for validation and pruning of this version of the custom resource. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead).
		///
		public var schema: apiextensions.v1beta1.CustomResourceValidation?
		///
		/// served is a flag enabling/disabling this version from being served via REST APIs
		///
		public var served: Bool
		///
		/// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
		///
		public var storage: Bool
		///
		/// subresources specify what subresources this version of the defined custom resource have. Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead).
		///
		public var subresources: apiextensions.v1beta1.CustomResourceSubresources?
		///
		/// Default memberwise initializer
		///
		public init(
			additionalPrinterColumns: [apiextensions.v1beta1.CustomResourceColumnDefinition]? = nil,
			deprecated: Bool? = nil,
			deprecationWarning: String? = nil,
			name: String,
			schema: apiextensions.v1beta1.CustomResourceValidation? = nil,
			served: Bool,
			storage: Bool,
			subresources: apiextensions.v1beta1.CustomResourceSubresources? = nil
		) {
			self.additionalPrinterColumns = additionalPrinterColumns
			self.deprecated = deprecated
			self.deprecationWarning = deprecationWarning
			self.name = name
			self.schema = schema
			self.served = served
			self.storage = storage
			self.subresources = subresources
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1beta1.CustomResourceDefinitionVersion {

	private enum CodingKeys: String, CodingKey {

		case additionalPrinterColumns = "additionalPrinterColumns"
		case deprecated = "deprecated"
		case deprecationWarning = "deprecationWarning"
		case name = "name"
		case schema = "schema"
		case served = "served"
		case storage = "storage"
		case subresources = "subresources"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.additionalPrinterColumns = try container.decodeIfPresent([apiextensions.v1beta1.CustomResourceColumnDefinition].self, forKey: .additionalPrinterColumns)
		self.deprecated = try container.decodeIfPresent(Bool.self, forKey: .deprecated)
		self.deprecationWarning = try container.decodeIfPresent(String.self, forKey: .deprecationWarning)
		self.name = try container.decode(String.self, forKey: .name)
		self.schema = try container.decodeIfPresent(apiextensions.v1beta1.CustomResourceValidation.self, forKey: .schema)
		self.served = try container.decode(Bool.self, forKey: .served)
		self.storage = try container.decode(Bool.self, forKey: .storage)
		self.subresources = try container.decodeIfPresent(apiextensions.v1beta1.CustomResourceSubresources.self, forKey: .subresources)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(additionalPrinterColumns, forKey: .additionalPrinterColumns)
		try container.encode(deprecated, forKey: .deprecated)
		try container.encode(deprecationWarning, forKey: .deprecationWarning)
		try container.encode(name, forKey: .name)
		try container.encode(schema, forKey: .schema)
		try container.encode(served, forKey: .served)
		try container.encode(storage, forKey: .storage)
		try container.encode(subresources, forKey: .subresources)
	}
}
