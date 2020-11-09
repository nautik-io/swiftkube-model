//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import XCTest
@testable import SwiftkubeModel

final class GroupVersionKindTests: XCTestCase {

	func testInitByResourceType() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment.self)

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	func testInitByResourceInstance() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment())

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	func testInitByString() {
		let apiVersion = "v1"
		let kind = "Pod"

		let gvk = try? GroupVersionKind(string: "\(apiVersion)/\(kind)")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")
		XCTAssertEqual(gvk?.pluralName, "pods")
	}

	func testInitByRawValue() {
		var gvk = GroupVersionKind(rawValue: "v1/Pod")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")
		XCTAssertEqual(gvk?.pluralName, "pods")

		gvk = try? GroupVersionKind(string: "secret")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Secret")
	}

	func testInitByPluralName() {
		var gvk = try? GroupVersionKind(string: "pods")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")
		XCTAssertEqual(gvk?.pluralName, "pods")

		gvk = try? GroupVersionKind(string: "clusterrolebindings")

		XCTAssertEqual(gvk?.group, "rbac.authorization.k8s.io")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "ClusterRoleBinding")
		XCTAssertEqual(gvk?.pluralName, "clusterrolebindings")
	}

	func testInitByShortName() {
		var gvk = try? GroupVersionKind(string: "sa")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "ServiceAccount")
		XCTAssertEqual(gvk?.pluralName, "serviceaccounts")

		gvk = try? GroupVersionKind(string: "psp")

		XCTAssertEqual(gvk?.group, "policy")
		XCTAssertEqual(gvk?.version, "v1beta1")
		XCTAssertEqual(gvk?.kind, "PodSecurityPolicy")
		XCTAssertEqual(gvk?.pluralName, "podsecuritypolicies")
	}
}
