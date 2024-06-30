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
/// flowcontrol.v1.Subject
///

import Foundation

// MARK: - flowcontrol.v1.Subject

public extension flowcontrol.v1 {

	///
	/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
	///
	struct Subject: KubernetesResource {
		///
		/// `kind` indicates which one of the other fields is non-empty. Required
		///
		public var kind: String
		///
		/// `group` matches based on user group name.
		///
		public var group: flowcontrol.v1.GroupSubject?
		///
		/// `serviceAccount` matches ServiceAccounts.
		///
		public var serviceAccount: flowcontrol.v1.ServiceAccountSubject?
		///
		/// `user` matches based on username.
		///
		public var user: flowcontrol.v1.UserSubject?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			group: flowcontrol.v1.GroupSubject? = nil,
			serviceAccount: flowcontrol.v1.ServiceAccountSubject? = nil,
			user: flowcontrol.v1.UserSubject? = nil
		) {
			self.kind = kind
			self.group = group
			self.serviceAccount = serviceAccount
			self.user = user
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1.Subject {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case group = "group"
		case serviceAccount = "serviceAccount"
		case user = "user"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.group = try container.decodeIfPresent(flowcontrol.v1.GroupSubject.self, forKey: .group)
		self.serviceAccount = try container.decodeIfPresent(flowcontrol.v1.ServiceAccountSubject.self, forKey: .serviceAccount)
		self.user = try container.decodeIfPresent(flowcontrol.v1.UserSubject.self, forKey: .user)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(group, forKey: .group)
		try encodingContainer.encode(serviceAccount, forKey: .serviceAccount)
		try encodingContainer.encode(user, forKey: .user)
	}
}