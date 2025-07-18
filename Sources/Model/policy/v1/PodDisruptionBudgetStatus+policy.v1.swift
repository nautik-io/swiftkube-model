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
/// Kubernetes v1.33.3
/// policy.v1.PodDisruptionBudgetStatus
///

import Foundation

// MARK: - policy.v1.PodDisruptionBudgetStatus

public extension policy.v1 {

	///
	/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
	///
	struct PodDisruptionBudgetStatus: KubernetesResource {
		///
		/// Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute
		///               the number of allowed disruptions. Therefore no disruptions are
		///               allowed and the status of the condition will be False.
		/// - InsufficientPods: The number of pods are either at or below the number
		///                     required by the PodDisruptionBudget. No disruptions are
		///                     allowed and the status of the condition will be False.
		/// - SufficientPods: There are more pods than required by the PodDisruptionBudget.
		///                   The condition will be True, and the number of allowed
		///                   disruptions are provided by the disruptionsAllowed property.
		///
		public var conditions: [meta.v1.Condition]?
		///
		/// current number of healthy pods
		///
		public var currentHealthy: Int32
		///
		/// minimum desired number of healthy pods
		///
		public var desiredHealthy: Int32
		///
		/// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
		///
		public var disruptedPods: [String: Date]?
		///
		/// Number of pod disruptions that are currently allowed.
		///
		public var disruptionsAllowed: Int32
		///
		/// total number of pods counted by this disruption budget
		///
		public var expectedPods: Int32
		///
		/// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
		///
		public var observedGeneration: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [meta.v1.Condition]? = nil,
			currentHealthy: Int32,
			desiredHealthy: Int32,
			disruptedPods: [String: Date]? = nil,
			disruptionsAllowed: Int32,
			expectedPods: Int32,
			observedGeneration: Int64? = nil
		) {
			self.conditions = conditions
			self.currentHealthy = currentHealthy
			self.desiredHealthy = desiredHealthy
			self.disruptedPods = disruptedPods
			self.disruptionsAllowed = disruptionsAllowed
			self.expectedPods = expectedPods
			self.observedGeneration = observedGeneration
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1.PodDisruptionBudgetStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
		case currentHealthy = "currentHealthy"
		case desiredHealthy = "desiredHealthy"
		case disruptedPods = "disruptedPods"
		case disruptionsAllowed = "disruptionsAllowed"
		case expectedPods = "expectedPods"
		case observedGeneration = "observedGeneration"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([meta.v1.Condition].self, forKey: .conditions)
		self.currentHealthy = try container.decode(Int32.self, forKey: .currentHealthy)
		self.desiredHealthy = try container.decode(Int32.self, forKey: .desiredHealthy)
		self.disruptedPods = try container.decodeIfPresent([String: Date].self, forKey: .disruptedPods)
		self.disruptionsAllowed = try container.decode(Int32.self, forKey: .disruptionsAllowed)
		self.expectedPods = try container.decode(Int32.self, forKey: .expectedPods)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(currentHealthy, forKey: .currentHealthy)
		try encodingContainer.encode(desiredHealthy, forKey: .desiredHealthy)
		try encodingContainer.encode(disruptedPods, forKey: .disruptedPods)
		try encodingContainer.encode(disruptionsAllowed, forKey: .disruptionsAllowed)
		try encodingContainer.encode(expectedPods, forKey: .expectedPods)
		try encodingContainer.encode(observedGeneration, forKey: .observedGeneration)
	}
}
