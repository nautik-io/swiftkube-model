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
/// Kubernetes v1.28.0
/// core.v1.SecurityContext
///

import Foundation

// MARK: - core.v1.SecurityContext

public extension core.v1 {

	///
	/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
	///
	struct SecurityContext: KubernetesResource {
		///
		/// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
		///
		public var allowPrivilegeEscalation: Bool?
		///
		/// The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.
		///
		public var capabilities: core.v1.Capabilities?
		///
		/// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
		///
		public var privileged: Bool?
		///
		/// procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
		///
		public var procMount: String?
		///
		/// Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
		///
		public var readOnlyRootFilesystem: Bool?
		///
		/// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
		///
		public var runAsGroup: Int64?
		///
		/// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsNonRoot: Bool?
		///
		/// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
		///
		public var runAsUser: Int64?
		///
		/// The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
		///
		public var seLinuxOptions: core.v1.SELinuxOptions?
		///
		/// The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows.
		///
		public var seccompProfile: core.v1.SeccompProfile?
		///
		/// The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
		///
		public var windowsOptions: core.v1.WindowsSecurityContextOptions?
		///
		/// Default memberwise initializer
		///
		public init(
			allowPrivilegeEscalation: Bool? = nil,
			capabilities: core.v1.Capabilities? = nil,
			privileged: Bool? = nil,
			procMount: String? = nil,
			readOnlyRootFilesystem: Bool? = nil,
			runAsGroup: Int64? = nil,
			runAsNonRoot: Bool? = nil,
			runAsUser: Int64? = nil,
			seLinuxOptions: core.v1.SELinuxOptions? = nil,
			seccompProfile: core.v1.SeccompProfile? = nil,
			windowsOptions: core.v1.WindowsSecurityContextOptions? = nil
		) {
			self.allowPrivilegeEscalation = allowPrivilegeEscalation
			self.capabilities = capabilities
			self.privileged = privileged
			self.procMount = procMount
			self.readOnlyRootFilesystem = readOnlyRootFilesystem
			self.runAsGroup = runAsGroup
			self.runAsNonRoot = runAsNonRoot
			self.runAsUser = runAsUser
			self.seLinuxOptions = seLinuxOptions
			self.seccompProfile = seccompProfile
			self.windowsOptions = windowsOptions
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SecurityContext {

	private enum CodingKeys: String, CodingKey {

		case allowPrivilegeEscalation = "allowPrivilegeEscalation"
		case capabilities = "capabilities"
		case privileged = "privileged"
		case procMount = "procMount"
		case readOnlyRootFilesystem = "readOnlyRootFilesystem"
		case runAsGroup = "runAsGroup"
		case runAsNonRoot = "runAsNonRoot"
		case runAsUser = "runAsUser"
		case seLinuxOptions = "seLinuxOptions"
		case seccompProfile = "seccompProfile"
		case windowsOptions = "windowsOptions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allowPrivilegeEscalation = try container.decodeIfPresent(Bool.self, forKey: .allowPrivilegeEscalation)
		self.capabilities = try container.decodeIfPresent(core.v1.Capabilities.self, forKey: .capabilities)
		self.privileged = try container.decodeIfPresent(Bool.self, forKey: .privileged)
		self.procMount = try container.decodeIfPresent(String.self, forKey: .procMount)
		self.readOnlyRootFilesystem = try container.decodeIfPresent(Bool.self, forKey: .readOnlyRootFilesystem)
		self.runAsGroup = try container.decodeIfPresent(Int64.self, forKey: .runAsGroup)
		self.runAsNonRoot = try container.decodeIfPresent(Bool.self, forKey: .runAsNonRoot)
		self.runAsUser = try container.decodeIfPresent(Int64.self, forKey: .runAsUser)
		self.seLinuxOptions = try container.decodeIfPresent(core.v1.SELinuxOptions.self, forKey: .seLinuxOptions)
		self.seccompProfile = try container.decodeIfPresent(core.v1.SeccompProfile.self, forKey: .seccompProfile)
		self.windowsOptions = try container.decodeIfPresent(core.v1.WindowsSecurityContextOptions.self, forKey: .windowsOptions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allowPrivilegeEscalation, forKey: .allowPrivilegeEscalation)
		try encodingContainer.encode(capabilities, forKey: .capabilities)
		try encodingContainer.encode(privileged, forKey: .privileged)
		try encodingContainer.encode(procMount, forKey: .procMount)
		try encodingContainer.encode(readOnlyRootFilesystem, forKey: .readOnlyRootFilesystem)
		try encodingContainer.encode(runAsGroup, forKey: .runAsGroup)
		try encodingContainer.encode(runAsNonRoot, forKey: .runAsNonRoot)
		try encodingContainer.encode(runAsUser, forKey: .runAsUser)
		try encodingContainer.encode(seLinuxOptions, forKey: .seLinuxOptions)
		try encodingContainer.encode(seccompProfile, forKey: .seccompProfile)
		try encodingContainer.encode(windowsOptions, forKey: .windowsOptions)
	}
}
