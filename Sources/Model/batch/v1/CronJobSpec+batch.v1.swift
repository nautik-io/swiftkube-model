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
/// batch.v1.CronJobSpec
///

import Foundation

// MARK: - batch.v1.CronJobSpec

public extension batch.v1 {

	///
	/// CronJobSpec describes how the job execution will look like and when it will actually run.
	///
	struct CronJobSpec: KubernetesResource {
		///
		/// Specifies how to treat concurrent executions of a Job. Valid values are:
		///
		/// - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
		///
		public var concurrencyPolicy: String?
		///
		/// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
		///
		public var failedJobsHistoryLimit: Int32?
		///
		/// Specifies the job that will be created when executing a CronJob.
		///
		public var jobTemplate: batch.v1.JobTemplateSpec
		///
		/// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
		///
		public var schedule: String
		///
		/// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
		///
		public var startingDeadlineSeconds: Int64?
		///
		/// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
		///
		public var successfulJobsHistoryLimit: Int32?
		///
		/// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
		///
		public var suspend: Bool?
		///
		/// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
		///
		public var timeZone: String?
		///
		/// Default memberwise initializer
		///
		public init(
			concurrencyPolicy: String? = nil,
			failedJobsHistoryLimit: Int32? = nil,
			jobTemplate: batch.v1.JobTemplateSpec,
			schedule: String,
			startingDeadlineSeconds: Int64? = nil,
			successfulJobsHistoryLimit: Int32? = nil,
			suspend: Bool? = nil,
			timeZone: String? = nil
		) {
			self.concurrencyPolicy = concurrencyPolicy
			self.failedJobsHistoryLimit = failedJobsHistoryLimit
			self.jobTemplate = jobTemplate
			self.schedule = schedule
			self.startingDeadlineSeconds = startingDeadlineSeconds
			self.successfulJobsHistoryLimit = successfulJobsHistoryLimit
			self.suspend = suspend
			self.timeZone = timeZone
		}
	}
}

///
/// Codable conformance
///
public extension batch.v1.CronJobSpec {

	private enum CodingKeys: String, CodingKey {

		case concurrencyPolicy = "concurrencyPolicy"
		case failedJobsHistoryLimit = "failedJobsHistoryLimit"
		case jobTemplate = "jobTemplate"
		case schedule = "schedule"
		case startingDeadlineSeconds = "startingDeadlineSeconds"
		case successfulJobsHistoryLimit = "successfulJobsHistoryLimit"
		case suspend = "suspend"
		case timeZone = "timeZone"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.concurrencyPolicy = try container.decodeIfPresent(String.self, forKey: .concurrencyPolicy)
		self.failedJobsHistoryLimit = try container.decodeIfPresent(Int32.self, forKey: .failedJobsHistoryLimit)
		self.jobTemplate = try container.decode(batch.v1.JobTemplateSpec.self, forKey: .jobTemplate)
		self.schedule = try container.decode(String.self, forKey: .schedule)
		self.startingDeadlineSeconds = try container.decodeIfPresent(Int64.self, forKey: .startingDeadlineSeconds)
		self.successfulJobsHistoryLimit = try container.decodeIfPresent(Int32.self, forKey: .successfulJobsHistoryLimit)
		self.suspend = try container.decodeIfPresent(Bool.self, forKey: .suspend)
		self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(concurrencyPolicy, forKey: .concurrencyPolicy)
		try encodingContainer.encode(failedJobsHistoryLimit, forKey: .failedJobsHistoryLimit)
		try encodingContainer.encode(jobTemplate, forKey: .jobTemplate)
		try encodingContainer.encode(schedule, forKey: .schedule)
		try encodingContainer.encode(startingDeadlineSeconds, forKey: .startingDeadlineSeconds)
		try encodingContainer.encode(successfulJobsHistoryLimit, forKey: .successfulJobsHistoryLimit)
		try encodingContainer.encode(suspend, forKey: .suspend)
		try encodingContainer.encode(timeZone, forKey: .timeZone)
	}
}
