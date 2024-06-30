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
/// autoscaling.v2.ObjectMetricSource
///

import Foundation

// MARK: - autoscaling.v2.ObjectMetricSource

public extension autoscaling.v2 {

	///
	/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
	///
	struct ObjectMetricSource: KubernetesResource {
		///
		/// describedObject specifies the descriptions of a object,such as kind,name apiVersion
		///
		public var describedObject: autoscaling.v2.CrossVersionObjectReference
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
			describedObject: autoscaling.v2.CrossVersionObjectReference,
			metric: autoscaling.v2.MetricIdentifier,
			target: autoscaling.v2.MetricTarget
		) {
			self.describedObject = describedObject
			self.metric = metric
			self.target = target
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.ObjectMetricSource {

	private enum CodingKeys: String, CodingKey {

		case describedObject = "describedObject"
		case metric = "metric"
		case target = "target"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.describedObject = try container.decode(autoscaling.v2.CrossVersionObjectReference.self, forKey: .describedObject)
		self.metric = try container.decode(autoscaling.v2.MetricIdentifier.self, forKey: .metric)
		self.target = try container.decode(autoscaling.v2.MetricTarget.self, forKey: .target)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(describedObject, forKey: .describedObject)
		try encodingContainer.encode(metric, forKey: .metric)
		try encodingContainer.encode(target, forKey: .target)
	}
}
