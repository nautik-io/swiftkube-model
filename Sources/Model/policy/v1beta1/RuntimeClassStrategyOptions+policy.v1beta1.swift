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
/// policy.v1beta1.RuntimeClassStrategyOptions
///

import Foundation

// MARK: - policy.v1beta1.RuntimeClassStrategyOptions

public extension policy.v1beta1 {

	///
	/// RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
	///
	struct RuntimeClassStrategyOptions: KubernetesResource {
		///
		/// allowedRuntimeClassNames is an allowlist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
		///
		public var allowedRuntimeClassNames: [String]
		///
		/// defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
		///
		public var defaultRuntimeClassName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			allowedRuntimeClassNames: [String],
			defaultRuntimeClassName: String? = nil
		) {
			self.allowedRuntimeClassNames = allowedRuntimeClassNames
			self.defaultRuntimeClassName = defaultRuntimeClassName
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.RuntimeClassStrategyOptions {

	private enum CodingKeys: String, CodingKey {

		case allowedRuntimeClassNames = "allowedRuntimeClassNames"
		case defaultRuntimeClassName = "defaultRuntimeClassName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allowedRuntimeClassNames = try container.decode([String].self, forKey: .allowedRuntimeClassNames)
		self.defaultRuntimeClassName = try container.decodeIfPresent(String.self, forKey: .defaultRuntimeClassName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allowedRuntimeClassNames, forKey: .allowedRuntimeClassNames)
		try encodingContainer.encode(defaultRuntimeClassName, forKey: .defaultRuntimeClassName)
	}
}
