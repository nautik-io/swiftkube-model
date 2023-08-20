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
/// Kubernetes v1.28.0
/// flowcontrol.v1beta2.PolicyRulesWithSubjects
///

import Foundation

// MARK: - flowcontrol.v1beta2.PolicyRulesWithSubjects

public extension flowcontrol.v1beta2 {

	///
	/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
	///
	struct PolicyRulesWithSubjects: KubernetesResource {
		///
		/// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
		///
		public var nonResourceRules: [flowcontrol.v1beta2.NonResourcePolicyRule]?
		///
		/// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
		///
		public var resourceRules: [flowcontrol.v1beta2.ResourcePolicyRule]?
		///
		/// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
		///
		public var subjects: [flowcontrol.v1beta2.Subject]
		///
		/// Default memberwise initializer
		///
		public init(
			nonResourceRules: [flowcontrol.v1beta2.NonResourcePolicyRule]? = nil,
			resourceRules: [flowcontrol.v1beta2.ResourcePolicyRule]? = nil,
			subjects: [flowcontrol.v1beta2.Subject]
		) {
			self.nonResourceRules = nonResourceRules
			self.resourceRules = resourceRules
			self.subjects = subjects
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1beta2.PolicyRulesWithSubjects {

	private enum CodingKeys: String, CodingKey {

		case nonResourceRules = "nonResourceRules"
		case resourceRules = "resourceRules"
		case subjects = "subjects"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.nonResourceRules = try container.decodeIfPresent([flowcontrol.v1beta2.NonResourcePolicyRule].self, forKey: .nonResourceRules)
		self.resourceRules = try container.decodeIfPresent([flowcontrol.v1beta2.ResourcePolicyRule].self, forKey: .resourceRules)
		self.subjects = try container.decode([flowcontrol.v1beta2.Subject].self, forKey: .subjects)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(nonResourceRules, forKey: .nonResourceRules)
		try encodingContainer.encode(resourceRules, forKey: .resourceRules)
		try encodingContainer.encode(subjects, forKey: .subjects)
	}
}
