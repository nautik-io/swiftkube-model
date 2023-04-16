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
/// batch.v1.UncountedTerminatedPods
///

import Foundation

// MARK: - batch.v1.UncountedTerminatedPods

public extension batch.v1 {

	///
	/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
	///
	struct UncountedTerminatedPods: KubernetesResource {
		///
		/// Failed holds UIDs of failed Pods.
		///
		public var failed: [String]?
		///
		/// Succeeded holds UIDs of succeeded Pods.
		///
		public var succeeded: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			failed: [String]? = nil,
			succeeded: [String]? = nil
		) {
			self.failed = failed
			self.succeeded = succeeded
		}
	}
}

///
/// Codable conformance
///
public extension batch.v1.UncountedTerminatedPods {

	private enum CodingKeys: String, CodingKey {

		case failed = "failed"
		case succeeded = "succeeded"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.failed = try container.decodeIfPresent([String].self, forKey: .failed)
		self.succeeded = try container.decodeIfPresent([String].self, forKey: .succeeded)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(failed, forKey: .failed)
		try encodingContainer.encode(succeeded, forKey: .succeeded)
	}
}
