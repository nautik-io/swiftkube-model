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
/// flowcontrol.v1alpha1.LimitedPriorityLevelConfiguration
///

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
	///  * How are requests for this priority level limited?
	///  * What should be done with requests that exceed the limit?
	///
	struct LimitedPriorityLevelConfiguration: KubernetesResource {
		///
		/// `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
		///
		///             ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
		///
		/// bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
		///
		public var assuredConcurrencyShares: Int32?
		///
		/// `limitResponse` indicates what to do with requests that can not be executed right now
		///
		public var limitResponse: flowcontrol.v1alpha1.LimitResponse?
		///
		/// Default memberwise initializer
		///
		public init(
			assuredConcurrencyShares: Int32? = nil,
			limitResponse: flowcontrol.v1alpha1.LimitResponse? = nil
		) {
			self.assuredConcurrencyShares = assuredConcurrencyShares
			self.limitResponse = limitResponse
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1alpha1.LimitedPriorityLevelConfiguration {

	private enum CodingKeys: String, CodingKey {

		case assuredConcurrencyShares = "assuredConcurrencyShares"
		case limitResponse = "limitResponse"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.assuredConcurrencyShares = try container.decodeIfPresent(Int32.self, forKey: .assuredConcurrencyShares)
		self.limitResponse = try container.decodeIfPresent(flowcontrol.v1alpha1.LimitResponse.self, forKey: .limitResponse)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(assuredConcurrencyShares, forKey: .assuredConcurrencyShares)
		try container.encode(limitResponse, forKey: .limitResponse)
	}
}
