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
/// apps.v1.ReplicaSetSpec
///

import Foundation

// MARK: - apps.v1.ReplicaSetSpec

public extension apps.v1 {

	///
	/// ReplicaSetSpec is the specification of a ReplicaSet.
	///
	struct ReplicaSetSpec: KubernetesResource {
		///
		/// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
		///
		public var minReadySeconds: Int32?
		///
		/// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
		///
		public var replicas: Int32?
		///
		/// Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var selector: meta.v1.LabelSelector
		///
		/// Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
		///
		public var template: core.v1.PodTemplateSpec?
		///
		/// Default memberwise initializer
		///
		public init(
			minReadySeconds: Int32? = nil,
			replicas: Int32? = nil,
			selector: meta.v1.LabelSelector,
			template: core.v1.PodTemplateSpec? = nil
		) {
			self.minReadySeconds = minReadySeconds
			self.replicas = replicas
			self.selector = selector
			self.template = template
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.ReplicaSetSpec {

	private enum CodingKeys: String, CodingKey {

		case minReadySeconds = "minReadySeconds"
		case replicas = "replicas"
		case selector = "selector"
		case template = "template"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.minReadySeconds = try container.decodeIfPresent(Int32.self, forKey: .minReadySeconds)
		self.replicas = try container.decodeIfPresent(Int32.self, forKey: .replicas)
		self.selector = try container.decode(meta.v1.LabelSelector.self, forKey: .selector)
		self.template = try container.decodeIfPresent(core.v1.PodTemplateSpec.self, forKey: .template)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(minReadySeconds, forKey: .minReadySeconds)
		try encodingContainer.encode(replicas, forKey: .replicas)
		try encodingContainer.encode(selector, forKey: .selector)
		try encodingContainer.encode(template, forKey: .template)
	}
}
