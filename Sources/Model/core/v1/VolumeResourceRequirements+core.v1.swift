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
/// core.v1.VolumeResourceRequirements
///

import Foundation

// MARK: - core.v1.VolumeResourceRequirements

public extension core.v1 {

	///
	/// VolumeResourceRequirements describes the storage resource requirements for a volume.
	///
	struct VolumeResourceRequirements: KubernetesResource {
		///
		/// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
		///
		public var limits: [String: Quantity]?
		///
		/// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
		///
		public var requests: [String: Quantity]?
		///
		/// Default memberwise initializer
		///
		public init(
			limits: [String: Quantity]? = nil,
			requests: [String: Quantity]? = nil
		) {
			self.limits = limits
			self.requests = requests
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.VolumeResourceRequirements {

	private enum CodingKeys: String, CodingKey {

		case limits = "limits"
		case requests = "requests"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.limits = try container.decodeIfPresent([String: Quantity].self, forKey: .limits)
		self.requests = try container.decodeIfPresent([String: Quantity].self, forKey: .requests)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(limits, forKey: .limits)
		try encodingContainer.encode(requests, forKey: .requests)
	}
}
