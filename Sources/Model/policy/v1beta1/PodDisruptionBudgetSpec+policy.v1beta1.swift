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
/// policy.v1beta1.PodDisruptionBudgetSpec
///

import Foundation

// MARK: - policy.v1beta1.PodDisruptionBudgetSpec

public extension policy.v1beta1 {

	///
	/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
	///
	struct PodDisruptionBudgetSpec: KubernetesResource {
		///
		/// An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
		///
		public var maxUnavailable: IntOrString?
		///
		/// An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
		///
		public var minAvailable: IntOrString?
		///
		/// Label query over pods whose evictions are managed by the disruption budget. A null selector selects no pods. An empty selector ({}) also selects no pods, which differs from standard behavior of selecting all pods. In policy/v1, an empty selector will select all pods in the namespace.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			maxUnavailable: IntOrString? = nil,
			minAvailable: IntOrString? = nil,
			selector: meta.v1.LabelSelector? = nil
		) {
			self.maxUnavailable = maxUnavailable
			self.minAvailable = minAvailable
			self.selector = selector
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.PodDisruptionBudgetSpec {

	private enum CodingKeys: String, CodingKey {

		case maxUnavailable = "maxUnavailable"
		case minAvailable = "minAvailable"
		case selector = "selector"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.maxUnavailable = try container.decodeIfPresent(IntOrString.self, forKey: .maxUnavailable)
		self.minAvailable = try container.decodeIfPresent(IntOrString.self, forKey: .minAvailable)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(maxUnavailable, forKey: .maxUnavailable)
		try encodingContainer.encode(minAvailable, forKey: .minAvailable)
		try encodingContainer.encode(selector, forKey: .selector)
	}
}
