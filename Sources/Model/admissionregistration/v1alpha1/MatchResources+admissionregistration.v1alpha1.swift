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
/// admissionregistration.v1alpha1.MatchResources
///

import Foundation

// MARK: - admissionregistration.v1alpha1.MatchResources

public extension admissionregistration.v1alpha1 {

	///
	/// MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
	///
	struct MatchResources: KubernetesResource {
		///
		/// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
		///
		public var excludeResourceRules: [admissionregistration.v1alpha1.NamedRuleWithOperations]?
		///
		/// matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
		///
		/// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.
		///
		/// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.
		///
		/// Defaults to "Equivalent"
		///
		public var matchPolicy: String?
		///
		/// NamespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
		///
		/// For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
		///   "matchExpressions": [
		///     {
		///       "key": "runlevel",
		///       "operator": "NotIn",
		///       "values": [
		///         "0",
		///         "1"
		///       ]
		///     }
		///   ]
		/// }
		///
		/// If instead you want to only run the policy on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
		///   "matchExpressions": [
		///     {
		///       "key": "environment",
		///       "operator": "In",
		///       "values": [
		///         "prod",
		///         "staging"
		///       ]
		///     }
		///   ]
		/// }
		///
		/// See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.
		///
		/// Default to the empty LabelSelector, which matches everything.
		///
		public var namespaceSelector: meta.v1.LabelSelector?
		///
		/// ObjectSelector decides whether to run the validation based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the cel validation, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
		///
		public var objectSelector: meta.v1.LabelSelector?
		///
		/// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
		///
		public var resourceRules: [admissionregistration.v1alpha1.NamedRuleWithOperations]?
		///
		/// Default memberwise initializer
		///
		public init(
			excludeResourceRules: [admissionregistration.v1alpha1.NamedRuleWithOperations]? = nil,
			matchPolicy: String? = nil,
			namespaceSelector: meta.v1.LabelSelector? = nil,
			objectSelector: meta.v1.LabelSelector? = nil,
			resourceRules: [admissionregistration.v1alpha1.NamedRuleWithOperations]? = nil
		) {
			self.excludeResourceRules = excludeResourceRules
			self.matchPolicy = matchPolicy
			self.namespaceSelector = namespaceSelector
			self.objectSelector = objectSelector
			self.resourceRules = resourceRules
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1alpha1.MatchResources {

	private enum CodingKeys: String, CodingKey {

		case excludeResourceRules = "excludeResourceRules"
		case matchPolicy = "matchPolicy"
		case namespaceSelector = "namespaceSelector"
		case objectSelector = "objectSelector"
		case resourceRules = "resourceRules"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.excludeResourceRules = try container.decodeIfPresent([admissionregistration.v1alpha1.NamedRuleWithOperations].self, forKey: .excludeResourceRules)
		self.matchPolicy = try container.decodeIfPresent(String.self, forKey: .matchPolicy)
		self.namespaceSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .namespaceSelector)
		self.objectSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .objectSelector)
		self.resourceRules = try container.decodeIfPresent([admissionregistration.v1alpha1.NamedRuleWithOperations].self, forKey: .resourceRules)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(excludeResourceRules, forKey: .excludeResourceRules)
		try encodingContainer.encode(matchPolicy, forKey: .matchPolicy)
		try encodingContainer.encode(namespaceSelector, forKey: .namespaceSelector)
		try encodingContainer.encode(objectSelector, forKey: .objectSelector)
		try encodingContainer.encode(resourceRules, forKey: .resourceRules)
	}
}
