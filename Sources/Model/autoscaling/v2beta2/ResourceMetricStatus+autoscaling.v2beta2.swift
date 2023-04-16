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
/// Kubernetes v1.25.9
/// autoscaling.v2beta2.ResourceMetricStatus
///

import Foundation

// MARK: - autoscaling.v2beta2.ResourceMetricStatus

public extension autoscaling.v2beta2 {

	///
	/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
	///
	struct ResourceMetricStatus: KubernetesResource {
		///
		/// current contains the current value for the given metric
		///
		public var current: autoscaling.v2beta2.MetricValueStatus
		///
		/// Name is the name of the resource in question.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			current: autoscaling.v2beta2.MetricValueStatus,
			name: String
		) {
			self.current = current
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta2.ResourceMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case current = "current"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.current = try container.decode(autoscaling.v2beta2.MetricValueStatus.self, forKey: .current)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(current, forKey: .current)
		try encodingContainer.encode(name, forKey: .name)
	}
}
