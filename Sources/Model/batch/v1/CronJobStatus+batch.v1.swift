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
/// batch.v1.CronJobStatus
///

import Foundation

// MARK: - batch.v1.CronJobStatus

public extension batch.v1 {

	///
	/// CronJobStatus represents the current state of a cron job.
	///
	struct CronJobStatus: KubernetesResource {
		///
		/// A list of pointers to currently running jobs.
		///
		public var active: [core.v1.ObjectReference]?
		///
		/// Information when was the last time the job was successfully scheduled.
		///
		public var lastScheduleTime: Date?
		///
		/// Information when was the last time the job successfully completed.
		///
		public var lastSuccessfulTime: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			active: [core.v1.ObjectReference]? = nil,
			lastScheduleTime: Date? = nil,
			lastSuccessfulTime: Date? = nil
		) {
			self.active = active
			self.lastScheduleTime = lastScheduleTime
			self.lastSuccessfulTime = lastSuccessfulTime
		}
	}
}

///
/// Codable conformance
///
public extension batch.v1.CronJobStatus {

	private enum CodingKeys: String, CodingKey {

		case active = "active"
		case lastScheduleTime = "lastScheduleTime"
		case lastSuccessfulTime = "lastSuccessfulTime"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.active = try container.decodeIfPresent([core.v1.ObjectReference].self, forKey: .active)
		self.lastScheduleTime = try container.decodeIfPresent(Date.self, forKey: .lastScheduleTime)
		self.lastSuccessfulTime = try container.decodeIfPresent(Date.self, forKey: .lastSuccessfulTime)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(active, forKey: .active)
		try encodingContainer.encode(lastScheduleTime, forKey: .lastScheduleTime)
		try encodingContainer.encode(lastSuccessfulTime, forKey: .lastSuccessfulTime)
	}
}
