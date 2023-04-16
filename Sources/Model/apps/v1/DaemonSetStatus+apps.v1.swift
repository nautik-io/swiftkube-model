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
/// apps.v1.DaemonSetStatus
///

import Foundation

// MARK: - apps.v1.DaemonSetStatus

public extension apps.v1 {

	///
	/// DaemonSetStatus represents the current status of a daemon set.
	///
	struct DaemonSetStatus: KubernetesResource {
		///
		/// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
		///
		public var collisionCount: Int32?
		///
		/// Represents the latest available observations of a DaemonSet's current state.
		///
		public var conditions: [apps.v1.DaemonSetCondition]?
		///
		/// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var currentNumberScheduled: Int32
		///
		/// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var desiredNumberScheduled: Int32
		///
		/// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		public var numberAvailable: Int32?
		///
		/// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var numberMisscheduled: Int32
		///
		/// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
		///
		public var numberReady: Int32
		///
		/// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		public var numberUnavailable: Int32?
		///
		/// The most recent generation observed by the daemon set controller.
		///
		public var observedGeneration: Int64?
		///
		/// The total number of nodes that are running updated daemon pod
		///
		public var updatedNumberScheduled: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			collisionCount: Int32? = nil,
			conditions: [apps.v1.DaemonSetCondition]? = nil,
			currentNumberScheduled: Int32,
			desiredNumberScheduled: Int32,
			numberAvailable: Int32? = nil,
			numberMisscheduled: Int32,
			numberReady: Int32,
			numberUnavailable: Int32? = nil,
			observedGeneration: Int64? = nil,
			updatedNumberScheduled: Int32? = nil
		) {
			self.collisionCount = collisionCount
			self.conditions = conditions
			self.currentNumberScheduled = currentNumberScheduled
			self.desiredNumberScheduled = desiredNumberScheduled
			self.numberAvailable = numberAvailable
			self.numberMisscheduled = numberMisscheduled
			self.numberReady = numberReady
			self.numberUnavailable = numberUnavailable
			self.observedGeneration = observedGeneration
			self.updatedNumberScheduled = updatedNumberScheduled
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.DaemonSetStatus {

	private enum CodingKeys: String, CodingKey {

		case collisionCount = "collisionCount"
		case conditions = "conditions"
		case currentNumberScheduled = "currentNumberScheduled"
		case desiredNumberScheduled = "desiredNumberScheduled"
		case numberAvailable = "numberAvailable"
		case numberMisscheduled = "numberMisscheduled"
		case numberReady = "numberReady"
		case numberUnavailable = "numberUnavailable"
		case observedGeneration = "observedGeneration"
		case updatedNumberScheduled = "updatedNumberScheduled"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.collisionCount = try container.decodeIfPresent(Int32.self, forKey: .collisionCount)
		self.conditions = try container.decodeIfPresent([apps.v1.DaemonSetCondition].self, forKey: .conditions)
		self.currentNumberScheduled = try container.decode(Int32.self, forKey: .currentNumberScheduled)
		self.desiredNumberScheduled = try container.decode(Int32.self, forKey: .desiredNumberScheduled)
		self.numberAvailable = try container.decodeIfPresent(Int32.self, forKey: .numberAvailable)
		self.numberMisscheduled = try container.decode(Int32.self, forKey: .numberMisscheduled)
		self.numberReady = try container.decode(Int32.self, forKey: .numberReady)
		self.numberUnavailable = try container.decodeIfPresent(Int32.self, forKey: .numberUnavailable)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
		self.updatedNumberScheduled = try container.decodeIfPresent(Int32.self, forKey: .updatedNumberScheduled)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(collisionCount, forKey: .collisionCount)
		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(currentNumberScheduled, forKey: .currentNumberScheduled)
		try encodingContainer.encode(desiredNumberScheduled, forKey: .desiredNumberScheduled)
		try encodingContainer.encode(numberAvailable, forKey: .numberAvailable)
		try encodingContainer.encode(numberMisscheduled, forKey: .numberMisscheduled)
		try encodingContainer.encode(numberReady, forKey: .numberReady)
		try encodingContainer.encode(numberUnavailable, forKey: .numberUnavailable)
		try encodingContainer.encode(observedGeneration, forKey: .observedGeneration)
		try encodingContainer.encode(updatedNumberScheduled, forKey: .updatedNumberScheduled)
	}
}
