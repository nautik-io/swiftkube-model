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

import Foundation

// MARK: - UnstructuredResource

///
/// UnstructuredResourceList is a collection of UnstructuredResources.
///
public struct UnstructuredResourceList: KubernetesResourceList {

	private enum CodingKeys: String, CodingKey {
		case apiVersion
		case kind
		case metadata
		case items
	}

	/// This resource list's `apiVersion`.
	public let apiVersion: String

	/// This resource list's `kind`.
	public let kind: String

	/// This resource list's `meta.v1.ListMeta` object.
	public var metadata: meta.v1.ListMeta?

	/// A list of `UnstructuredResource` instances.
	public var items: [UnstructuredResource]

	/// Creates a new type-erased `UnstructuredResourceList` instance wrapping the given resources.
	///
	/// The passed items must be of the same type as the provided `apiVersion` and `kind` arguments.
	/// This initializer doesn't ensure/enforce this requirement which may lead to unexpected behaviour if not fulfilled.
	///
	/// - Parameters:
	///    - apiVersion: The `apiVersion` of the type-erased list.
	///    - kind: The `kind` of the type-erased list.
	///    - metadata: The `metadata` of the type-erased list.
	///    - items: A list of type-erased resources.
	public init(
		apiVersion: String,
		kind: String,
		metadata: meta.v1.ListMeta?,
		items: [UnstructuredResource]
	) {
		self.apiVersion = apiVersion
		self.kind = kind
		self.metadata = metadata
		self.items = items
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let apiVersion = try container.decode(String.self, forKey: .apiVersion)
		let kind = try container.decode(String.self, forKey: .kind)
		let metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		let items = try container.decode([UnstructuredResource].self, forKey: CodingKeys.items)

		self.init(apiVersion: apiVersion, kind: kind, metadata: metadata, items: items)
	}

	public func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encodeIfPresent(metadata, forKey: .metadata)
		try encodingContainer.encode(items, forKey: .items)
	}
}
