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
/// admissionregistration.v1beta1.MatchCondition
///

import Foundation

// MARK: - admissionregistration.v1beta1.MatchCondition

public extension admissionregistration.v1beta1 {

	///
	/// MatchCondition represents a condition which must be fulfilled for a request to be sent to a webhook.
	///
	struct MatchCondition: KubernetesResource {
		///
		/// Expression represents the expression which will be evaluated by CEL. Must evaluate to bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:
		///
		/// 'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest). 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.
		///   See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
		/// 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the
		///   request resource.
		/// Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
		///
		/// Required.
		///
		public var expression: String
		///
		/// Name is an identifier for this match condition, used for strategic merging of MatchConditions, as well as providing an identifier for logging purposes. A good name should be descriptive of the associated expression. Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain prefix and '/' (e.g. 'example.com/MyName')
		///
		/// Required.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			expression: String,
			name: String
		) {
			self.expression = expression
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1beta1.MatchCondition {

	private enum CodingKeys: String, CodingKey {

		case expression = "expression"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.expression = try container.decode(String.self, forKey: .expression)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(expression, forKey: .expression)
		try encodingContainer.encode(name, forKey: .name)
	}
}
