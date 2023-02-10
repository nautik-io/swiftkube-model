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
/// autoscaling.v2beta1.ExternalMetricStatus
///

import Foundation

// MARK: - autoscaling.v2beta1.ExternalMetricStatus

public extension autoscaling.v2beta1 {

	///
	/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
	///
	struct ExternalMetricStatus: KubernetesResource {
		///
		/// currentAverageValue is the current value of metric averaged over autoscaled pods.
		///
		public var currentAverageValue: Quantity?
		///
		/// currentValue is the current value of the metric (as a quantity)
		///
		public var currentValue: Quantity
		///
		/// metricName is the name of a metric used for autoscaling in metric system.
		///
		public var metricName: String
		///
		/// metricSelector is used to identify a specific time series within a given metric.
		///
		public var metricSelector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			currentAverageValue: Quantity? = nil,
			currentValue: Quantity,
			metricName: String,
			metricSelector: meta.v1.LabelSelector? = nil
		) {
			self.currentAverageValue = currentAverageValue
			self.currentValue = currentValue
			self.metricName = metricName
			self.metricSelector = metricSelector
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta1.ExternalMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case currentAverageValue = "currentAverageValue"
		case currentValue = "currentValue"
		case metricName = "metricName"
		case metricSelector = "metricSelector"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.currentAverageValue = try container.decodeIfPresent(Quantity.self, forKey: .currentAverageValue)
		self.currentValue = try container.decode(Quantity.self, forKey: .currentValue)
		self.metricName = try container.decode(String.self, forKey: .metricName)
		self.metricSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .metricSelector)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(currentAverageValue, forKey: .currentAverageValue)
		try encodingContainer.encode(currentValue, forKey: .currentValue)
		try encodingContainer.encode(metricName, forKey: .metricName)
		try encodingContainer.encode(metricSelector, forKey: .metricSelector)
	}
}
