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
/// Kubernetes v1.29.6
/// core.v1.PortStatus
///

import Foundation

// MARK: - core.v1.PortStatus

public extension core.v1 {

	///
	/// No description
	///
	struct PortStatus: KubernetesResource {
		///
		/// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
		///   CamelCase names
		/// - cloud provider specific error values must have names that comply with the
		///   format foo.example.com/CamelCase.
		///
		public var error: String?
		///
		/// Port is the port number of the service port of which status is recorded here
		///
		public var port: Int32
		///
		/// Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
		///
		public var `protocol`: String
		///
		/// Default memberwise initializer
		///
		public init(
			error: String? = nil,
			port: Int32,
			`protocol`: String
		) {
			self.error = error
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PortStatus {

	private enum CodingKeys: String, CodingKey {

		case error = "error"
		case port = "port"
		case `protocol` = "protocol"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.error = try container.decodeIfPresent(String.self, forKey: .error)
		self.port = try container.decode(Int32.self, forKey: .port)
		self.`protocol` = try container.decode(String.self, forKey: .`protocol`)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(error, forKey: .error)
		try encodingContainer.encode(port, forKey: .port)
		try encodingContainer.encode(`protocol`, forKey: .`protocol`)
	}
}
