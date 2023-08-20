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
/// autoscaling.v2.MetricTarget
///

import Foundation

// MARK: - autoscaling.v2.MetricTarget

public extension autoscaling.v2 {

	///
	/// MetricTarget defines the target value, average value, or average utilization of a specific metric
	///
	struct MetricTarget: KubernetesResource {
		///
		/// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
		///
		public var averageUtilization: Int32?
		///
		/// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
		///
		public var averageValue: Quantity?
		///
		/// type represents whether the metric type is Utilization, Value, or AverageValue
		///
		public var type: String
		///
		/// value is the target value of the metric (as a quantity).
		///
		public var value: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			averageUtilization: Int32? = nil,
			averageValue: Quantity? = nil,
			type: String,
			value: Quantity? = nil
		) {
			self.averageUtilization = averageUtilization
			self.averageValue = averageValue
			self.type = type
			self.value = value
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.MetricTarget {

	private enum CodingKeys: String, CodingKey {

		case averageUtilization = "averageUtilization"
		case averageValue = "averageValue"
		case type = "type"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.averageUtilization = try container.decodeIfPresent(Int32.self, forKey: .averageUtilization)
		self.averageValue = try container.decodeIfPresent(Quantity.self, forKey: .averageValue)
		self.type = try container.decode(String.self, forKey: .type)
		self.value = try container.decodeIfPresent(Quantity.self, forKey: .value)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(averageUtilization, forKey: .averageUtilization)
		try encodingContainer.encode(averageValue, forKey: .averageValue)
		try encodingContainer.encode(type, forKey: .type)
		try encodingContainer.encode(value, forKey: .value)
	}
}
