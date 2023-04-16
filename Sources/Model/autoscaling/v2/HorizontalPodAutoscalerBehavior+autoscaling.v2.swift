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
/// autoscaling.v2.HorizontalPodAutoscalerBehavior
///

import Foundation

// MARK: - autoscaling.v2.HorizontalPodAutoscalerBehavior

public extension autoscaling.v2 {

	///
	/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
	///
	struct HorizontalPodAutoscalerBehavior: KubernetesResource {
		///
		/// scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
		///
		public var scaleDown: autoscaling.v2.HPAScalingRules?
		///
		/// scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
		///   * increase no more than 4 pods per 60 seconds
		///   * double the number of pods per 60 seconds
		/// No stabilization is used.
		///
		public var scaleUp: autoscaling.v2.HPAScalingRules?
		///
		/// Default memberwise initializer
		///
		public init(
			scaleDown: autoscaling.v2.HPAScalingRules? = nil,
			scaleUp: autoscaling.v2.HPAScalingRules? = nil
		) {
			self.scaleDown = scaleDown
			self.scaleUp = scaleUp
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.HorizontalPodAutoscalerBehavior {

	private enum CodingKeys: String, CodingKey {

		case scaleDown = "scaleDown"
		case scaleUp = "scaleUp"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.scaleDown = try container.decodeIfPresent(autoscaling.v2.HPAScalingRules.self, forKey: .scaleDown)
		self.scaleUp = try container.decodeIfPresent(autoscaling.v2.HPAScalingRules.self, forKey: .scaleUp)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(scaleDown, forKey: .scaleDown)
		try encodingContainer.encode(scaleUp, forKey: .scaleUp)
	}
}
