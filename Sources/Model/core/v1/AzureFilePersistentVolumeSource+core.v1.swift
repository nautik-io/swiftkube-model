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
/// Kubernetes v1.24.10
/// core.v1.AzureFilePersistentVolumeSource
///

import Foundation

// MARK: - core.v1.AzureFilePersistentVolumeSource

public extension core.v1 {

	///
	/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
	///
	struct AzureFilePersistentVolumeSource: KubernetesResource {
		///
		/// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// secretName is the name of secret that contains Azure Storage Account Name and Key
		///
		public var secretName: String
		///
		/// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
		///
		public var secretNamespace: String?
		///
		/// shareName is the azure Share Name
		///
		public var shareName: String
		///
		/// Default memberwise initializer
		///
		public init(
			readOnly: Bool? = nil,
			secretName: String,
			secretNamespace: String? = nil,
			shareName: String
		) {
			self.readOnly = readOnly
			self.secretName = secretName
			self.secretNamespace = secretNamespace
			self.shareName = shareName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.AzureFilePersistentVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case readOnly = "readOnly"
		case secretName = "secretName"
		case secretNamespace = "secretNamespace"
		case shareName = "shareName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretName = try container.decode(String.self, forKey: .secretName)
		self.secretNamespace = try container.decodeIfPresent(String.self, forKey: .secretNamespace)
		self.shareName = try container.decode(String.self, forKey: .shareName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(secretName, forKey: .secretName)
		try encodingContainer.encode(secretNamespace, forKey: .secretNamespace)
		try encodingContainer.encode(shareName, forKey: .shareName)
	}
}
