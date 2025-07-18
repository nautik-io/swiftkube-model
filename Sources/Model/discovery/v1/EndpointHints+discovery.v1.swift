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
/// discovery.v1.EndpointHints
///

import Foundation

// MARK: - discovery.v1.EndpointHints

public extension discovery.v1 {

	///
	/// EndpointHints provides hints describing how an endpoint should be consumed.
	///
	struct EndpointHints: KubernetesResource {
		///
		/// forNodes indicates the node(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries. This is an Alpha feature and is only used when the PreferSameTrafficDistribution feature gate is enabled.
		///
		public var forNodes: [discovery.v1.ForNode]?
		///
		/// forZones indicates the zone(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
		///
		public var forZones: [discovery.v1.ForZone]?
		///
		/// Default memberwise initializer
		///
		public init(
			forNodes: [discovery.v1.ForNode]? = nil,
			forZones: [discovery.v1.ForZone]? = nil
		) {
			self.forNodes = forNodes
			self.forZones = forZones
		}
	}
}

///
/// Codable conformance
///
public extension discovery.v1.EndpointHints {

	private enum CodingKeys: String, CodingKey {

		case forNodes = "forNodes"
		case forZones = "forZones"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.forNodes = try container.decodeIfPresent([discovery.v1.ForNode].self, forKey: .forNodes)
		self.forZones = try container.decodeIfPresent([discovery.v1.ForZone].self, forKey: .forZones)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(forNodes, forKey: .forNodes)
		try encodingContainer.encode(forZones, forKey: .forZones)
	}
}
