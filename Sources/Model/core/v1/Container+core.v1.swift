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
/// Kubernetes v1.19.8
/// core.v1.Container
///

import Foundation

public extension core.v1 {

	///
	/// A single application container that you want to run within a pod.
	///
	struct Container: KubernetesResource {
		///
		/// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		///
		public var args: [String]?
		///
		/// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		///
		public var command: [String]?
		///
		/// List of environment variables to set in the container. Cannot be updated.
		///
		public var env: [core.v1.EnvVar]?
		///
		/// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
		///
		public var envFrom: [core.v1.EnvFromSource]?
		///
		/// Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
		///
		public var image: String?
		///
		/// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
		///
		public var imagePullPolicy: String?
		///
		/// Actions that the management system should take in response to container lifecycle events. Cannot be updated.
		///
		public var lifecycle: core.v1.Lifecycle?
		///
		/// Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var livenessProbe: core.v1.Probe?
		///
		/// Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
		///
		public var name: String
		///
		/// List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.
		///
		public var ports: [core.v1.ContainerPort]?
		///
		/// Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var readinessProbe: core.v1.Probe?
		///
		/// Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
		///
		public var resources: core.v1.ResourceRequirements?
		///
		/// Security options the pod should run with. More info: https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
		///
		public var securityContext: core.v1.SecurityContext?
		///
		/// StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is a beta feature enabled by the StartupProbe feature flag. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var startupProbe: core.v1.Probe?
		///
		/// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
		///
		public var stdin: Bool?
		///
		/// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
		///
		public var stdinOnce: Bool?
		///
		/// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
		///
		public var terminationMessagePath: String?
		///
		/// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
		///
		public var terminationMessagePolicy: String?
		///
		/// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
		///
		public var tty: Bool?
		///
		/// volumeDevices is the list of block devices to be used by the container.
		///
		public var volumeDevices: [core.v1.VolumeDevice]?
		///
		/// Pod volumes to mount into the container's filesystem. Cannot be updated.
		///
		public var volumeMounts: [core.v1.VolumeMount]?
		///
		/// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
		///
		public var workingDir: String?
		///
		/// Default memberwise initializer
		///
		public init(
			args: [String]? = nil,
			command: [String]? = nil,
			env: [core.v1.EnvVar]? = nil,
			envFrom: [core.v1.EnvFromSource]? = nil,
			image: String? = nil,
			imagePullPolicy: String? = nil,
			lifecycle: core.v1.Lifecycle? = nil,
			livenessProbe: core.v1.Probe? = nil,
			name: String,
			ports: [core.v1.ContainerPort]? = nil,
			readinessProbe: core.v1.Probe? = nil,
			resources: core.v1.ResourceRequirements? = nil,
			securityContext: core.v1.SecurityContext? = nil,
			startupProbe: core.v1.Probe? = nil,
			stdin: Bool? = nil,
			stdinOnce: Bool? = nil,
			terminationMessagePath: String? = nil,
			terminationMessagePolicy: String? = nil,
			tty: Bool? = nil,
			volumeDevices: [core.v1.VolumeDevice]? = nil,
			volumeMounts: [core.v1.VolumeMount]? = nil,
			workingDir: String? = nil
		) {
			self.args = args
			self.command = command
			self.env = env
			self.envFrom = envFrom
			self.image = image
			self.imagePullPolicy = imagePullPolicy
			self.lifecycle = lifecycle
			self.livenessProbe = livenessProbe
			self.name = name
			self.ports = ports
			self.readinessProbe = readinessProbe
			self.resources = resources
			self.securityContext = securityContext
			self.startupProbe = startupProbe
			self.stdin = stdin
			self.stdinOnce = stdinOnce
			self.terminationMessagePath = terminationMessagePath
			self.terminationMessagePolicy = terminationMessagePolicy
			self.tty = tty
			self.volumeDevices = volumeDevices
			self.volumeMounts = volumeMounts
			self.workingDir = workingDir
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.Container {

	private enum CodingKeys: String, CodingKey {

		case args = "args"
		case command = "command"
		case env = "env"
		case envFrom = "envFrom"
		case image = "image"
		case imagePullPolicy = "imagePullPolicy"
		case lifecycle = "lifecycle"
		case livenessProbe = "livenessProbe"
		case name = "name"
		case ports = "ports"
		case readinessProbe = "readinessProbe"
		case resources = "resources"
		case securityContext = "securityContext"
		case startupProbe = "startupProbe"
		case stdin = "stdin"
		case stdinOnce = "stdinOnce"
		case terminationMessagePath = "terminationMessagePath"
		case terminationMessagePolicy = "terminationMessagePolicy"
		case tty = "tty"
		case volumeDevices = "volumeDevices"
		case volumeMounts = "volumeMounts"
		case workingDir = "workingDir"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.args = try container.decodeIfPresent([String].self, forKey: .args)
		self.command = try container.decodeIfPresent([String].self, forKey: .command)
		self.env = try container.decodeIfPresent([core.v1.EnvVar].self, forKey: .env)
		self.envFrom = try container.decodeIfPresent([core.v1.EnvFromSource].self, forKey: .envFrom)
		self.image = try container.decodeIfPresent(String.self, forKey: .image)
		self.imagePullPolicy = try container.decodeIfPresent(String.self, forKey: .imagePullPolicy)
		self.lifecycle = try container.decodeIfPresent(core.v1.Lifecycle.self, forKey: .lifecycle)
		self.livenessProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .livenessProbe)
		self.name = try container.decode(String.self, forKey: .name)
		self.ports = try container.decodeIfPresent([core.v1.ContainerPort].self, forKey: .ports)
		self.readinessProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .readinessProbe)
		self.resources = try container.decodeIfPresent(core.v1.ResourceRequirements.self, forKey: .resources)
		self.securityContext = try container.decodeIfPresent(core.v1.SecurityContext.self, forKey: .securityContext)
		self.startupProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .startupProbe)
		self.stdin = try container.decodeIfPresent(Bool.self, forKey: .stdin)
		self.stdinOnce = try container.decodeIfPresent(Bool.self, forKey: .stdinOnce)
		self.terminationMessagePath = try container.decodeIfPresent(String.self, forKey: .terminationMessagePath)
		self.terminationMessagePolicy = try container.decodeIfPresent(String.self, forKey: .terminationMessagePolicy)
		self.tty = try container.decodeIfPresent(Bool.self, forKey: .tty)
		self.volumeDevices = try container.decodeIfPresent([core.v1.VolumeDevice].self, forKey: .volumeDevices)
		self.volumeMounts = try container.decodeIfPresent([core.v1.VolumeMount].self, forKey: .volumeMounts)
		self.workingDir = try container.decodeIfPresent(String.self, forKey: .workingDir)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(args, forKey: .args)
		try container.encode(command, forKey: .command)
		try container.encode(env, forKey: .env)
		try container.encode(envFrom, forKey: .envFrom)
		try container.encode(image, forKey: .image)
		try container.encode(imagePullPolicy, forKey: .imagePullPolicy)
		try container.encode(lifecycle, forKey: .lifecycle)
		try container.encode(livenessProbe, forKey: .livenessProbe)
		try container.encode(name, forKey: .name)
		try container.encode(ports, forKey: .ports)
		try container.encode(readinessProbe, forKey: .readinessProbe)
		try container.encode(resources, forKey: .resources)
		try container.encode(securityContext, forKey: .securityContext)
		try container.encode(startupProbe, forKey: .startupProbe)
		try container.encode(stdin, forKey: .stdin)
		try container.encode(stdinOnce, forKey: .stdinOnce)
		try container.encode(terminationMessagePath, forKey: .terminationMessagePath)
		try container.encode(terminationMessagePolicy, forKey: .terminationMessagePolicy)
		try container.encode(tty, forKey: .tty)
		try container.encode(volumeDevices, forKey: .volumeDevices)
		try container.encode(volumeMounts, forKey: .volumeMounts)
		try container.encode(workingDir, forKey: .workingDir)
	}
}
