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
/// resource.v1beta1.DeviceAllocationResult
///

import Foundation

// MARK: - resource.v1beta1.DeviceAllocationResult

public extension resource.v1beta1 {

	///
	/// DeviceAllocationResult is the result of allocating devices.
	///
	struct DeviceAllocationResult: KubernetesResource {
		///
		/// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
		///
		/// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
		///
		public var config: [resource.v1beta1.DeviceAllocationConfiguration]?
		///
		/// Results lists all allocated devices.
		///
		public var results: [resource.v1beta1.DeviceRequestAllocationResult]?
		///
		/// Default memberwise initializer
		///
		public init(
			config: [resource.v1beta1.DeviceAllocationConfiguration]? = nil,
			results: [resource.v1beta1.DeviceRequestAllocationResult]? = nil
		) {
			self.config = config
			self.results = results
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1beta1.DeviceAllocationResult {

	private enum CodingKeys: String, CodingKey {

		case config = "config"
		case results = "results"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.config = try container.decodeIfPresent([resource.v1beta1.DeviceAllocationConfiguration].self, forKey: .config)
		self.results = try container.decodeIfPresent([resource.v1beta1.DeviceRequestAllocationResult].self, forKey: .results)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(config, forKey: .config)
		try encodingContainer.encode(results, forKey: .results)
	}
}
