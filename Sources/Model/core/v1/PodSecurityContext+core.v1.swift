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
/// core.v1.PodSecurityContext
///

import Foundation

// MARK: - core.v1.PodSecurityContext

public extension core.v1 {

	///
	/// PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
	///
	struct PodSecurityContext: KubernetesResource {
		///
		/// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
		///
		/// 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
		///
		/// If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
		///
		public var fsGroup: Int64?
		///
		/// fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used. Note that this field cannot be set when spec.os.name is windows.
		///
		public var fsGroupChangePolicy: String?
		///
		/// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
		///
		public var runAsGroup: Int64?
		///
		/// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsNonRoot: Bool?
		///
		/// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
		///
		public var runAsUser: Int64?
		///
		/// The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
		///
		public var seLinuxOptions: core.v1.SELinuxOptions?
		///
		/// The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows.
		///
		public var seccompProfile: core.v1.SeccompProfile?
		///
		/// A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container. Note that this field cannot be set when spec.os.name is windows.
		///
		public var supplementalGroups: [Int64]?
		///
		/// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
		///
		public var sysctls: [core.v1.Sysctl]?
		///
		/// The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
		///
		public var windowsOptions: core.v1.WindowsSecurityContextOptions?
		///
		/// Default memberwise initializer
		///
		public init(
			fsGroup: Int64? = nil,
			fsGroupChangePolicy: String? = nil,
			runAsGroup: Int64? = nil,
			runAsNonRoot: Bool? = nil,
			runAsUser: Int64? = nil,
			seLinuxOptions: core.v1.SELinuxOptions? = nil,
			seccompProfile: core.v1.SeccompProfile? = nil,
			supplementalGroups: [Int64]? = nil,
			sysctls: [core.v1.Sysctl]? = nil,
			windowsOptions: core.v1.WindowsSecurityContextOptions? = nil
		) {
			self.fsGroup = fsGroup
			self.fsGroupChangePolicy = fsGroupChangePolicy
			self.runAsGroup = runAsGroup
			self.runAsNonRoot = runAsNonRoot
			self.runAsUser = runAsUser
			self.seLinuxOptions = seLinuxOptions
			self.seccompProfile = seccompProfile
			self.supplementalGroups = supplementalGroups
			self.sysctls = sysctls
			self.windowsOptions = windowsOptions
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodSecurityContext {

	private enum CodingKeys: String, CodingKey {

		case fsGroup = "fsGroup"
		case fsGroupChangePolicy = "fsGroupChangePolicy"
		case runAsGroup = "runAsGroup"
		case runAsNonRoot = "runAsNonRoot"
		case runAsUser = "runAsUser"
		case seLinuxOptions = "seLinuxOptions"
		case seccompProfile = "seccompProfile"
		case supplementalGroups = "supplementalGroups"
		case sysctls = "sysctls"
		case windowsOptions = "windowsOptions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsGroup = try container.decodeIfPresent(Int64.self, forKey: .fsGroup)
		self.fsGroupChangePolicy = try container.decodeIfPresent(String.self, forKey: .fsGroupChangePolicy)
		self.runAsGroup = try container.decodeIfPresent(Int64.self, forKey: .runAsGroup)
		self.runAsNonRoot = try container.decodeIfPresent(Bool.self, forKey: .runAsNonRoot)
		self.runAsUser = try container.decodeIfPresent(Int64.self, forKey: .runAsUser)
		self.seLinuxOptions = try container.decodeIfPresent(core.v1.SELinuxOptions.self, forKey: .seLinuxOptions)
		self.seccompProfile = try container.decodeIfPresent(core.v1.SeccompProfile.self, forKey: .seccompProfile)
		self.supplementalGroups = try container.decodeIfPresent([Int64].self, forKey: .supplementalGroups)
		self.sysctls = try container.decodeIfPresent([core.v1.Sysctl].self, forKey: .sysctls)
		self.windowsOptions = try container.decodeIfPresent(core.v1.WindowsSecurityContextOptions.self, forKey: .windowsOptions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsGroup, forKey: .fsGroup)
		try encodingContainer.encode(fsGroupChangePolicy, forKey: .fsGroupChangePolicy)
		try encodingContainer.encode(runAsGroup, forKey: .runAsGroup)
		try encodingContainer.encode(runAsNonRoot, forKey: .runAsNonRoot)
		try encodingContainer.encode(runAsUser, forKey: .runAsUser)
		try encodingContainer.encode(seLinuxOptions, forKey: .seLinuxOptions)
		try encodingContainer.encode(seccompProfile, forKey: .seccompProfile)
		try encodingContainer.encode(supplementalGroups, forKey: .supplementalGroups)
		try encodingContainer.encode(sysctls, forKey: .sysctls)
		try encodingContainer.encode(windowsOptions, forKey: .windowsOptions)
	}
}
