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
/// admissionregistration.v1alpha1.AuditAnnotation
///

import Foundation

// MARK: - admissionregistration.v1alpha1.AuditAnnotation

public extension admissionregistration.v1alpha1 {

	///
	/// AuditAnnotation describes how to produce an audit annotation for an API request.
	///
	struct AuditAnnotation: KubernetesResource {
		///
		/// key specifies the audit annotation key. The audit annotation keys of a ValidatingAdmissionPolicy must be unique. The key must be a qualified name ([A-Za-z0-9][-A-Za-z0-9_.]*) no more than 63 bytes in length.
		///
		/// The key is combined with the resource name of the ValidatingAdmissionPolicy to construct an audit annotation key: "{ValidatingAdmissionPolicy name}/{key}".
		///
		/// If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy and the same audit annotation key, the annotation key will be identical. In this case, the first annotation written with the key will be included in the audit event and all subsequent annotations with the same key will be discarded.
		///
		/// Required.
		///
		public var key: String
		///
		/// valueExpression represents the expression which is evaluated by CEL to produce an audit annotation value. The expression must evaluate to either a string or null value. If the expression evaluates to a string, the audit annotation is included with the string value. If the expression evaluates to null or empty string the audit annotation will be omitted. The valueExpression may be no longer than 5kb in length. If the result of the valueExpression is more than 10kb in length, it will be truncated to 10kb.
		///
		/// If multiple ValidatingAdmissionPolicyBinding resources match an API request, then the valueExpression will be evaluated for each binding. All unique values produced by the valueExpressions will be joined together in a comma-separated list.
		///
		/// Required.
		///
		public var valueExpression: String
		///
		/// Default memberwise initializer
		///
		public init(
			key: String,
			valueExpression: String
		) {
			self.key = key
			self.valueExpression = valueExpression
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1alpha1.AuditAnnotation {

	private enum CodingKeys: String, CodingKey {

		case key = "key"
		case valueExpression = "valueExpression"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.key = try container.decode(String.self, forKey: .key)
		self.valueExpression = try container.decode(String.self, forKey: .valueExpression)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(key, forKey: .key)
		try encodingContainer.encode(valueExpression, forKey: .valueExpression)
	}
}
