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
/// Kubernetes v1.19.8
/// networking.v1.IPBlock
///

import Foundation

public extension networking.v1 {

	///
	/// IPBlock describes a particular CIDR (Ex. "192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
	///
	struct IPBlock: KubernetesResource {
		///
		/// CIDR is a string representing the IP Block Valid examples are "192.168.1.1/24" or "2001:db9::/64"
		///
		public var cidr: String
		///
		/// Except is a slice of CIDRs that should not be included within an IP Block Valid examples are "192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range
		///
		public var except: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			cidr: String,
			except: [String]? = nil
		) {
			self.cidr = cidr
			self.except = except
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IPBlock {

	private enum CodingKeys: String, CodingKey {

		case cidr = "cidr"
		case except = "except"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.cidr = try container.decode(String.self, forKey: .cidr)
		self.except = try container.decodeIfPresent([String].self, forKey: .except)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(cidr, forKey: .cidr)
		try container.encode(except, forKey: .except)
	}
}
