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
/// autoscaling.v2.ObjectMetricStatus
///

import Foundation

// MARK: - autoscaling.v2.ObjectMetricStatus

public extension autoscaling.v2 {

	///
	/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
	///
	struct ObjectMetricStatus: KubernetesResource {
		///
		/// current contains the current value for the given metric
		///
		public var current: autoscaling.v2.MetricValueStatus
		///
		/// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
		///
		public var describedObject: autoscaling.v2.CrossVersionObjectReference
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2.MetricIdentifier
		///
		/// Default memberwise initializer
		///
		public init(
			current: autoscaling.v2.MetricValueStatus,
			describedObject: autoscaling.v2.CrossVersionObjectReference,
			metric: autoscaling.v2.MetricIdentifier
		) {
			self.current = current
			self.describedObject = describedObject
			self.metric = metric
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.ObjectMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case current = "current"
		case describedObject = "describedObject"
		case metric = "metric"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.current = try container.decode(autoscaling.v2.MetricValueStatus.self, forKey: .current)
		self.describedObject = try container.decode(autoscaling.v2.CrossVersionObjectReference.self, forKey: .describedObject)
		self.metric = try container.decode(autoscaling.v2.MetricIdentifier.self, forKey: .metric)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(current, forKey: .current)
		try encodingContainer.encode(describedObject, forKey: .describedObject)
		try encodingContainer.encode(metric, forKey: .metric)
	}
}
