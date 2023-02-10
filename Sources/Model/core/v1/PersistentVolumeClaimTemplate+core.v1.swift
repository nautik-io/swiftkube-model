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
/// Kubernetes v1.24.10
/// core.v1.PersistentVolumeClaimTemplate
///

import Foundation

// MARK: - core.v1.PersistentVolumeClaimTemplate

public extension core.v1 {

	///
	/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
	///
	struct PersistentVolumeClaimTemplate: MetadataHavingResource {
		///
		/// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
		///
		public var spec: core.v1.PersistentVolumeClaimSpec
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: core.v1.PersistentVolumeClaimSpec
		) {
			self.metadata = metadata
			self.spec = spec
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeClaimTemplate {

	private enum CodingKeys: String, CodingKey {

		case metadata = "metadata"
		case spec = "spec"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decode(core.v1.PersistentVolumeClaimSpec.self, forKey: .spec)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(spec, forKey: .spec)
	}
}
