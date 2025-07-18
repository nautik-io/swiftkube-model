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
/// core.v1.ObjectReference
///

import Foundation

// MARK: - core.v1.ObjectReference

public extension core.v1 {

	///
	/// ObjectReference contains enough information to let you inspect or modify the referred object.
	///
	struct ObjectReference: KubernetesResource {
		///
		/// API version of the referent.
		///
		public var apiVersion: String?
		///
		/// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var kind: String?
		///
		/// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
		///
		public var fieldPath: String?
		///
		/// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		public var name: String?
		///
		/// Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
		///
		public var namespace: String?
		///
		/// Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
		///
		public var resourceVersion: String?
		///
		/// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String? = nil,
			fieldPath: String? = nil,
			name: String? = nil,
			namespace: String? = nil,
			resourceVersion: String? = nil,
			uid: String? = nil
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.fieldPath = fieldPath
			self.name = name
			self.namespace = namespace
			self.resourceVersion = resourceVersion
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ObjectReference {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case fieldPath = "fieldPath"
		case name = "name"
		case namespace = "namespace"
		case resourceVersion = "resourceVersion"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.kind = try container.decodeIfPresent(String.self, forKey: .kind)
		self.fieldPath = try container.decodeIfPresent(String.self, forKey: .fieldPath)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
		self.resourceVersion = try container.decodeIfPresent(String.self, forKey: .resourceVersion)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(fieldPath, forKey: .fieldPath)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
		try encodingContainer.encode(resourceVersion, forKey: .resourceVersion)
		try encodingContainer.encode(uid, forKey: .uid)
	}
}
