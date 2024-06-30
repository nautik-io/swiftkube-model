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
/// flowcontrol.v1beta3.FlowSchemaSpec
///

import Foundation

// MARK: - flowcontrol.v1beta3.FlowSchemaSpec

public extension flowcontrol.v1beta3 {

	///
	/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
	///
	struct FlowSchemaSpec: KubernetesResource {
		///
		/// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
		///
		public var distinguisherMethod: flowcontrol.v1beta3.FlowDistinguisherMethod?
		///
		/// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
		///
		public var matchingPrecedence: Int32?
		///
		/// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
		///
		public var priorityLevelConfiguration: flowcontrol.v1beta3.PriorityLevelConfigurationReference
		///
		/// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
		///
		public var rules: [flowcontrol.v1beta3.PolicyRulesWithSubjects]?
		///
		/// Default memberwise initializer
		///
		public init(
			distinguisherMethod: flowcontrol.v1beta3.FlowDistinguisherMethod? = nil,
			matchingPrecedence: Int32? = nil,
			priorityLevelConfiguration: flowcontrol.v1beta3.PriorityLevelConfigurationReference,
			rules: [flowcontrol.v1beta3.PolicyRulesWithSubjects]? = nil
		) {
			self.distinguisherMethod = distinguisherMethod
			self.matchingPrecedence = matchingPrecedence
			self.priorityLevelConfiguration = priorityLevelConfiguration
			self.rules = rules
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1beta3.FlowSchemaSpec {

	private enum CodingKeys: String, CodingKey {

		case distinguisherMethod = "distinguisherMethod"
		case matchingPrecedence = "matchingPrecedence"
		case priorityLevelConfiguration = "priorityLevelConfiguration"
		case rules = "rules"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.distinguisherMethod = try container.decodeIfPresent(flowcontrol.v1beta3.FlowDistinguisherMethod.self, forKey: .distinguisherMethod)
		self.matchingPrecedence = try container.decodeIfPresent(Int32.self, forKey: .matchingPrecedence)
		self.priorityLevelConfiguration = try container.decode(flowcontrol.v1beta3.PriorityLevelConfigurationReference.self, forKey: .priorityLevelConfiguration)
		self.rules = try container.decodeIfPresent([flowcontrol.v1beta3.PolicyRulesWithSubjects].self, forKey: .rules)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(distinguisherMethod, forKey: .distinguisherMethod)
		try encodingContainer.encode(matchingPrecedence, forKey: .matchingPrecedence)
		try encodingContainer.encode(priorityLevelConfiguration, forKey: .priorityLevelConfiguration)
		try encodingContainer.encode(rules, forKey: .rules)
	}
}
