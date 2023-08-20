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
/// Kubernetes v1.28.0
/// autoscaling.v2.MetricIdentifier
///

import Foundation

// MARK: - autoscaling.v2.MetricIdentifier

public extension autoscaling.v2 {

	///
	/// MetricIdentifier defines the name and optionally selector for a metric
	///
	struct MetricIdentifier: KubernetesResource {
		///
		/// name is the name of the given metric
		///
		public var name: String
		///
		/// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			selector: meta.v1.LabelSelector? = nil
		) {
			self.name = name
			self.selector = selector
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.MetricIdentifier {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case selector = "selector"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(selector, forKey: .selector)
	}
}
