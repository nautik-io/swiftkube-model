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
/// autoscaling.v2.ExternalMetricStatus
///

import Foundation

// MARK: - autoscaling.v2.ExternalMetricStatus

public extension autoscaling.v2 {

	///
	/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
	///
	struct ExternalMetricStatus: KubernetesResource {
		///
		/// current contains the current value for the given metric
		///
		public var current: autoscaling.v2.MetricValueStatus
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2.MetricIdentifier
		///
		/// Default memberwise initializer
		///
		public init(
			current: autoscaling.v2.MetricValueStatus,
			metric: autoscaling.v2.MetricIdentifier
		) {
			self.current = current
			self.metric = metric
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.ExternalMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case current = "current"
		case metric = "metric"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.current = try container.decode(autoscaling.v2.MetricValueStatus.self, forKey: .current)
		self.metric = try container.decode(autoscaling.v2.MetricIdentifier.self, forKey: .metric)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(current, forKey: .current)
		try encodingContainer.encode(metric, forKey: .metric)
	}
}
