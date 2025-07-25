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
/// flowcontrol.v1.ExemptPriorityLevelConfiguration
///

import Foundation

// MARK: - flowcontrol.v1.ExemptPriorityLevelConfiguration

public extension flowcontrol.v1 {

	///
	/// ExemptPriorityLevelConfiguration describes the configurable aspects of the handling of exempt requests. In the mandatory exempt configuration object the values in the fields here can be modified by authorized users, unlike the rest of the `spec`.
	///
	struct ExemptPriorityLevelConfiguration: KubernetesResource {
		///
		/// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels.  This value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
		///
		/// LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
		///
		public var lendablePercent: Int32?
		///
		/// `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats nominally reserved for this priority level. This DOES NOT limit the dispatching from this priority level but affects the other priority levels through the borrowing mechanism. The server's concurrency limit (ServerCL) is divided among all the priority levels in proportion to their NCS values:
		///
		/// NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k] NCS(k)
		///
		/// Bigger numbers mean a larger nominal concurrency limit, at the expense of every other priority level. This field has a default value of zero.
		///
		public var nominalConcurrencyShares: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			lendablePercent: Int32? = nil,
			nominalConcurrencyShares: Int32? = nil
		) {
			self.lendablePercent = lendablePercent
			self.nominalConcurrencyShares = nominalConcurrencyShares
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1.ExemptPriorityLevelConfiguration {

	private enum CodingKeys: String, CodingKey {

		case lendablePercent = "lendablePercent"
		case nominalConcurrencyShares = "nominalConcurrencyShares"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lendablePercent = try container.decodeIfPresent(Int32.self, forKey: .lendablePercent)
		self.nominalConcurrencyShares = try container.decodeIfPresent(Int32.self, forKey: .nominalConcurrencyShares)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(lendablePercent, forKey: .lendablePercent)
		try encodingContainer.encode(nominalConcurrencyShares, forKey: .nominalConcurrencyShares)
	}
}
