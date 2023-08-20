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
/// admissionregistration.v1alpha1.ParamRef
///

import Foundation

// MARK: - admissionregistration.v1alpha1.ParamRef

public extension admissionregistration.v1alpha1 {

	///
	/// ParamRef describes how to locate the params to be used as input to expressions of rules applied by a policy binding.
	///
	struct ParamRef: KubernetesResource {
		///
		/// `name` is the name of the resource being referenced.
		///
		/// `name` and `selector` are mutually exclusive properties. If one is set, the other must be unset.
		///
		public var name: String?
		///
		/// namespace is the namespace of the referenced resource. Allows limiting the search for params to a specific namespace. Applies to both `name` and `selector` fields.
		///
		/// A per-namespace parameter may be used by specifying a namespace-scoped `paramKind` in the policy and leaving this field empty.
		///
		/// - If `paramKind` is cluster-scoped, this field MUST be unset. Setting this field results in a configuration error.
		///
		/// - If `paramKind` is namespace-scoped, the namespace of the object being evaluated for admission will be used when this field is left unset. Take care that if this is left empty the binding must not match any cluster-scoped resources, which will result in an error.
		///
		public var namespace: String?
		///
		/// `parameterNotFoundAction` controls the behavior of the binding when the resource exists, and name or selector is valid, but there are no parameters matched by the binding. If the value is set to `Allow`, then no matched parameters will be treated as successful validation by the binding. If set to `Deny`, then no matched parameters will be subject to the `failurePolicy` of the policy.
		///
		/// Allowed values are `Allow` or `Deny` Default to `Deny`
		///
		public var parameterNotFoundAction: String?
		///
		/// selector can be used to match multiple param objects based on their labels. Supply selector: {} to match all resources of the ParamKind.
		///
		/// If multiple params are found, they are all evaluated with the policy expressions and the results are ANDed together.
		///
		/// One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive properties. If one is set, the other must be unset.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String? = nil,
			namespace: String? = nil,
			parameterNotFoundAction: String? = nil,
			selector: meta.v1.LabelSelector? = nil
		) {
			self.name = name
			self.namespace = namespace
			self.parameterNotFoundAction = parameterNotFoundAction
			self.selector = selector
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1alpha1.ParamRef {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case namespace = "namespace"
		case parameterNotFoundAction = "parameterNotFoundAction"
		case selector = "selector"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
		self.parameterNotFoundAction = try container.decodeIfPresent(String.self, forKey: .parameterNotFoundAction)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
		try encodingContainer.encode(parameterNotFoundAction, forKey: .parameterNotFoundAction)
		try encodingContainer.encode(selector, forKey: .selector)
	}
}
