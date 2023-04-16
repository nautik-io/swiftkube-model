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
/// core.v1.EmptyDirVolumeSource
///

import Foundation

// MARK: - core.v1.EmptyDirVolumeSource

public extension core.v1 {

	///
	/// Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
	///
	struct EmptyDirVolumeSource: KubernetesResource {
		///
		/// medium represents what type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
		///
		public var medium: String?
		///
		/// sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
		///
		public var sizeLimit: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			medium: String? = nil,
			sizeLimit: Quantity? = nil
		) {
			self.medium = medium
			self.sizeLimit = sizeLimit
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EmptyDirVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case medium = "medium"
		case sizeLimit = "sizeLimit"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.medium = try container.decodeIfPresent(String.self, forKey: .medium)
		self.sizeLimit = try container.decodeIfPresent(Quantity.self, forKey: .sizeLimit)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(medium, forKey: .medium)
		try encodingContainer.encode(sizeLimit, forKey: .sizeLimit)
	}
}
