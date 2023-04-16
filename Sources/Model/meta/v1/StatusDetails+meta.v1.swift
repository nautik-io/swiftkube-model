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
/// meta.v1.StatusDetails
///

import Foundation

// MARK: - meta.v1.StatusDetails

public extension meta.v1 {

	///
	/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
	///
	struct StatusDetails: KubernetesResource {
		///
		/// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var kind: String?
		///
		/// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
		///
		public var causes: [meta.v1.StatusCause]?
		///
		/// The group attribute of the resource associated with the status StatusReason.
		///
		public var group: String?
		///
		/// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
		///
		public var name: String?
		///
		/// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
		///
		public var retryAfterSeconds: Int32?
		///
		/// UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String? = nil,
			causes: [meta.v1.StatusCause]? = nil,
			group: String? = nil,
			name: String? = nil,
			retryAfterSeconds: Int32? = nil,
			uid: String? = nil
		) {
			self.kind = kind
			self.causes = causes
			self.group = group
			self.name = name
			self.retryAfterSeconds = retryAfterSeconds
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.StatusDetails {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case causes = "causes"
		case group = "group"
		case name = "name"
		case retryAfterSeconds = "retryAfterSeconds"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decodeIfPresent(String.self, forKey: .kind)
		self.causes = try container.decodeIfPresent([meta.v1.StatusCause].self, forKey: .causes)
		self.group = try container.decodeIfPresent(String.self, forKey: .group)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.retryAfterSeconds = try container.decodeIfPresent(Int32.self, forKey: .retryAfterSeconds)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(causes, forKey: .causes)
		try encodingContainer.encode(group, forKey: .group)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(retryAfterSeconds, forKey: .retryAfterSeconds)
		try encodingContainer.encode(uid, forKey: .uid)
	}
}
