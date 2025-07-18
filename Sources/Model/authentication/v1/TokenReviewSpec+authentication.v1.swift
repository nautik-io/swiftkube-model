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
/// Kubernetes v1.33.3
/// authentication.v1.TokenReviewSpec
///

import Foundation

// MARK: - authentication.v1.TokenReviewSpec

public extension authentication.v1 {

	///
	/// TokenReviewSpec is a description of the token authentication request.
	///
	struct TokenReviewSpec: KubernetesResource {
		///
		/// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
		///
		public var audiences: [String]?
		///
		/// Token is the opaque bearer token.
		///
		public var token: String?
		///
		/// Default memberwise initializer
		///
		public init(
			audiences: [String]? = nil,
			token: String? = nil
		) {
			self.audiences = audiences
			self.token = token
		}
	}
}

///
/// Codable conformance
///
public extension authentication.v1.TokenReviewSpec {

	private enum CodingKeys: String, CodingKey {

		case audiences = "audiences"
		case token = "token"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.audiences = try container.decodeIfPresent([String].self, forKey: .audiences)
		self.token = try container.decodeIfPresent(String.self, forKey: .token)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(audiences, forKey: .audiences)
		try encodingContainer.encode(token, forKey: .token)
	}
}
