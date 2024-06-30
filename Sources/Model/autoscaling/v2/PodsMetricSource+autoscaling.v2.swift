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
/// autoscaling.v2.PodsMetricSource
///

import Foundation

// MARK: - autoscaling.v2.PodsMetricSource

public extension autoscaling.v2 {

	///
	/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
	///
	struct PodsMetricSource: KubernetesResource {
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2.MetricIdentifier
		///
		/// target specifies the target value for the given metric
		///
		public var target: autoscaling.v2.MetricTarget
		///
		/// Default memberwise initializer
		///
		public init(
			metric: autoscaling.v2.MetricIdentifier,
			target: autoscaling.v2.MetricTarget
		) {
			self.metric = metric
			self.target = target
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.PodsMetricSource {

	private enum CodingKeys: String, CodingKey {

		case metric = "metric"
		case target = "target"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metric = try container.decode(autoscaling.v2.MetricIdentifier.self, forKey: .metric)
		self.target = try container.decode(autoscaling.v2.MetricTarget.self, forKey: .target)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(metric, forKey: .metric)
		try encodingContainer.encode(target, forKey: .target)
	}
}
