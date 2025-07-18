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
/// core.v1.NodeDaemonEndpoints
///

import Foundation

// MARK: - core.v1.NodeDaemonEndpoints

public extension core.v1 {

	///
	/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
	///
	struct NodeDaemonEndpoints: KubernetesResource {
		///
		/// Endpoint on which Kubelet is listening.
		///
		public var kubeletEndpoint: core.v1.DaemonEndpoint?
		///
		/// Default memberwise initializer
		///
		public init(
			kubeletEndpoint: core.v1.DaemonEndpoint? = nil
		) {
			self.kubeletEndpoint = kubeletEndpoint
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeDaemonEndpoints {

	private enum CodingKeys: String, CodingKey {

		case kubeletEndpoint = "kubeletEndpoint"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kubeletEndpoint = try container.decodeIfPresent(core.v1.DaemonEndpoint.self, forKey: .kubeletEndpoint)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kubeletEndpoint, forKey: .kubeletEndpoint)
	}
}
