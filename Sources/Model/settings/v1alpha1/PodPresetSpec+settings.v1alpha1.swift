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
/// Kubernetes v1.19.8
/// settings.v1alpha1.PodPresetSpec
///

import Foundation

public extension settings.v1alpha1 {

	///
	/// PodPresetSpec is a description of a pod preset.
	///
	struct PodPresetSpec: KubernetesResource {
		///
		/// Env defines the collection of EnvVar to inject into containers.
		///
		public var env: [core.v1.EnvVar]?
		///
		/// EnvFrom defines the collection of EnvFromSource to inject into containers.
		///
		public var envFrom: [core.v1.EnvFromSource]?
		///
		/// Selector is a label query over a set of resources, in this case pods. Required.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// VolumeMounts defines the collection of VolumeMount to inject into containers.
		///
		public var volumeMounts: [core.v1.VolumeMount]?
		///
		/// Volumes defines the collection of Volume to inject into the pod.
		///
		public var volumes: [core.v1.Volume]?
		///
		/// Default memberwise initializer
		///
		public init(
			env: [core.v1.EnvVar]? = nil,
			envFrom: [core.v1.EnvFromSource]? = nil,
			selector: meta.v1.LabelSelector? = nil,
			volumeMounts: [core.v1.VolumeMount]? = nil,
			volumes: [core.v1.Volume]? = nil
		) {
			self.env = env
			self.envFrom = envFrom
			self.selector = selector
			self.volumeMounts = volumeMounts
			self.volumes = volumes
		}
	}
}

///
/// Codable conformance
///
public extension settings.v1alpha1.PodPresetSpec {

	private enum CodingKeys: String, CodingKey {

		case env = "env"
		case envFrom = "envFrom"
		case selector = "selector"
		case volumeMounts = "volumeMounts"
		case volumes = "volumes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.env = try container.decodeIfPresent([core.v1.EnvVar].self, forKey: .env)
		self.envFrom = try container.decodeIfPresent([core.v1.EnvFromSource].self, forKey: .envFrom)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
		self.volumeMounts = try container.decodeIfPresent([core.v1.VolumeMount].self, forKey: .volumeMounts)
		self.volumes = try container.decodeIfPresent([core.v1.Volume].self, forKey: .volumes)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(env, forKey: .env)
		try container.encode(envFrom, forKey: .envFrom)
		try container.encode(selector, forKey: .selector)
		try container.encode(volumeMounts, forKey: .volumeMounts)
		try container.encode(volumes, forKey: .volumes)
	}
}
