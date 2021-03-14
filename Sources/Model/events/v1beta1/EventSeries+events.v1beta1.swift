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
/// events.v1beta1.EventSeries
///

import Foundation

public extension events.v1beta1 {

	///
	/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
	///
	struct EventSeries: KubernetesResource {
		///
		/// count is the number of occurrences in this series up to the last heartbeat time.
		///
		public var count: Int32
		///
		/// lastObservedTime is the time when last Event from the series was seen before last heartbeat.
		///
		public var lastObservedTime: Date
		///
		/// Default memberwise initializer
		///
		public init(
			count: Int32,
			lastObservedTime: Date
		) {
			self.count = count
			self.lastObservedTime = lastObservedTime
		}
	}
}

///
/// Codable conformance
///
public extension events.v1beta1.EventSeries {

	private enum CodingKeys: String, CodingKey {

		case count = "count"
		case lastObservedTime = "lastObservedTime"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.count = try container.decode(Int32.self, forKey: .count)
		self.lastObservedTime = try container.decode(Date.self, forKey: .lastObservedTime)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(count, forKey: .count)
		try container.encode(lastObservedTime, forKey: .lastObservedTime)
	}
}
