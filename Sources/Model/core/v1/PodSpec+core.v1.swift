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
/// core.v1.PodSpec
///

import Foundation

// MARK: - core.v1.PodSpec

public extension core.v1 {

	///
	/// PodSpec is a description of a pod.
	///
	struct PodSpec: KubernetesResource {
		///
		/// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
		///
		public var activeDeadlineSeconds: Int64?
		///
		/// If specified, the pod's scheduling constraints
		///
		public var affinity: core.v1.Affinity?
		///
		/// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
		///
		public var automountServiceAccountToken: Bool?
		///
		/// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
		///
		public var containers: [core.v1.Container]
		///
		/// Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
		///
		public var dnsConfig: core.v1.PodDNSConfig?
		///
		/// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
		///
		public var dnsPolicy: String?
		///
		/// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
		///
		public var enableServiceLinks: Bool?
		///
		/// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
		///
		public var ephemeralContainers: [core.v1.EphemeralContainer]?
		///
		/// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
		///
		public var hostAliases: [core.v1.HostAlias]?
		///
		/// Use the host's ipc namespace. Optional: Default to false.
		///
		public var hostIPC: Bool?
		///
		/// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
		///
		public var hostNetwork: Bool?
		///
		/// Use the host's pid namespace. Optional: Default to false.
		///
		public var hostPID: Bool?
		///
		/// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
		///
		public var hostUsers: Bool?
		///
		/// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
		///
		public var hostname: String?
		///
		/// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
		///
		public var imagePullSecrets: [core.v1.LocalObjectReference]?
		///
		/// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
		///
		public var initContainers: [core.v1.Container]?
		///
		/// NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
		///
		public var nodeName: String?
		///
		/// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
		///
		public var nodeSelector: [String: String]?
		///
		/// Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
		///
		/// If the OS field is set to linux, the following fields must be unset: -securityContext.windowsOptions
		///
		/// If the OS field is set to windows, following fields must be unset: - spec.hostPID - spec.hostIPC - spec.hostUsers - spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile - spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy - spec.securityContext.sysctls - spec.shareProcessNamespace - spec.securityContext.runAsUser - spec.securityContext.runAsGroup - spec.securityContext.supplementalGroups - spec.containers[*].securityContext.seLinuxOptions - spec.containers[*].securityContext.seccompProfile - spec.containers[*].securityContext.capabilities - spec.containers[*].securityContext.readOnlyRootFilesystem - spec.containers[*].securityContext.privileged - spec.containers[*].securityContext.allowPrivilegeEscalation - spec.containers[*].securityContext.procMount - spec.containers[*].securityContext.runAsUser - spec.containers[*].securityContext.runAsGroup
		///
		public var os: core.v1.PodOS?
		///
		/// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
		///
		public var overhead: [String: Quantity]?
		///
		/// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
		///
		public var preemptionPolicy: String?
		///
		/// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
		///
		public var priority: Int32?
		///
		/// If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
		///
		public var priorityClassName: String?
		///
		/// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
		///
		public var readinessGates: [core.v1.PodReadinessGate]?
		///
		/// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
		///
		/// This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
		///
		/// This field is immutable.
		///
		public var resourceClaims: [core.v1.PodResourceClaim]?
		///
		/// Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
		///
		public var restartPolicy: String?
		///
		/// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
		///
		public var runtimeClassName: String?
		///
		/// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
		///
		public var schedulerName: String?
		///
		/// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
		///
		/// SchedulingGates can only be set at pod creation time, and be removed only afterwards.
		///
		/// This is a beta feature enabled by the PodSchedulingReadiness feature gate.
		///
		public var schedulingGates: [core.v1.PodSchedulingGate]?
		///
		/// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
		///
		public var securityContext: core.v1.PodSecurityContext?
		///
		/// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
		///
		public var serviceAccount: String?
		///
		/// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
		///
		public var serviceAccountName: String?
		///
		/// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
		///
		public var setHostnameAsFQDN: Bool?
		///
		/// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
		///
		public var shareProcessNamespace: Bool?
		///
		/// If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
		///
		public var subdomain: String?
		///
		/// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
		///
		public var terminationGracePeriodSeconds: Int64?
		///
		/// If specified, the pod's tolerations.
		///
		public var tolerations: [core.v1.Toleration]?
		///
		/// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
		///
		public var topologySpreadConstraints: [core.v1.TopologySpreadConstraint]?
		///
		/// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
		///
		public var volumes: [core.v1.Volume]?
		///
		/// Default memberwise initializer
		///
		public init(
			activeDeadlineSeconds: Int64? = nil,
			affinity: core.v1.Affinity? = nil,
			automountServiceAccountToken: Bool? = nil,
			containers: [core.v1.Container],
			dnsConfig: core.v1.PodDNSConfig? = nil,
			dnsPolicy: String? = nil,
			enableServiceLinks: Bool? = nil,
			ephemeralContainers: [core.v1.EphemeralContainer]? = nil,
			hostAliases: [core.v1.HostAlias]? = nil,
			hostIPC: Bool? = nil,
			hostNetwork: Bool? = nil,
			hostPID: Bool? = nil,
			hostUsers: Bool? = nil,
			hostname: String? = nil,
			imagePullSecrets: [core.v1.LocalObjectReference]? = nil,
			initContainers: [core.v1.Container]? = nil,
			nodeName: String? = nil,
			nodeSelector: [String: String]? = nil,
			os: core.v1.PodOS? = nil,
			overhead: [String: Quantity]? = nil,
			preemptionPolicy: String? = nil,
			priority: Int32? = nil,
			priorityClassName: String? = nil,
			readinessGates: [core.v1.PodReadinessGate]? = nil,
			resourceClaims: [core.v1.PodResourceClaim]? = nil,
			restartPolicy: String? = nil,
			runtimeClassName: String? = nil,
			schedulerName: String? = nil,
			schedulingGates: [core.v1.PodSchedulingGate]? = nil,
			securityContext: core.v1.PodSecurityContext? = nil,
			serviceAccount: String? = nil,
			serviceAccountName: String? = nil,
			setHostnameAsFQDN: Bool? = nil,
			shareProcessNamespace: Bool? = nil,
			subdomain: String? = nil,
			terminationGracePeriodSeconds: Int64? = nil,
			tolerations: [core.v1.Toleration]? = nil,
			topologySpreadConstraints: [core.v1.TopologySpreadConstraint]? = nil,
			volumes: [core.v1.Volume]? = nil
		) {
			self.activeDeadlineSeconds = activeDeadlineSeconds
			self.affinity = affinity
			self.automountServiceAccountToken = automountServiceAccountToken
			self.containers = containers
			self.dnsConfig = dnsConfig
			self.dnsPolicy = dnsPolicy
			self.enableServiceLinks = enableServiceLinks
			self.ephemeralContainers = ephemeralContainers
			self.hostAliases = hostAliases
			self.hostIPC = hostIPC
			self.hostNetwork = hostNetwork
			self.hostPID = hostPID
			self.hostUsers = hostUsers
			self.hostname = hostname
			self.imagePullSecrets = imagePullSecrets
			self.initContainers = initContainers
			self.nodeName = nodeName
			self.nodeSelector = nodeSelector
			self.os = os
			self.overhead = overhead
			self.preemptionPolicy = preemptionPolicy
			self.priority = priority
			self.priorityClassName = priorityClassName
			self.readinessGates = readinessGates
			self.resourceClaims = resourceClaims
			self.restartPolicy = restartPolicy
			self.runtimeClassName = runtimeClassName
			self.schedulerName = schedulerName
			self.schedulingGates = schedulingGates
			self.securityContext = securityContext
			self.serviceAccount = serviceAccount
			self.serviceAccountName = serviceAccountName
			self.setHostnameAsFQDN = setHostnameAsFQDN
			self.shareProcessNamespace = shareProcessNamespace
			self.subdomain = subdomain
			self.terminationGracePeriodSeconds = terminationGracePeriodSeconds
			self.tolerations = tolerations
			self.topologySpreadConstraints = topologySpreadConstraints
			self.volumes = volumes
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodSpec {

	private enum CodingKeys: String, CodingKey {

		case activeDeadlineSeconds = "activeDeadlineSeconds"
		case affinity = "affinity"
		case automountServiceAccountToken = "automountServiceAccountToken"
		case containers = "containers"
		case dnsConfig = "dnsConfig"
		case dnsPolicy = "dnsPolicy"
		case enableServiceLinks = "enableServiceLinks"
		case ephemeralContainers = "ephemeralContainers"
		case hostAliases = "hostAliases"
		case hostIPC = "hostIPC"
		case hostNetwork = "hostNetwork"
		case hostPID = "hostPID"
		case hostUsers = "hostUsers"
		case hostname = "hostname"
		case imagePullSecrets = "imagePullSecrets"
		case initContainers = "initContainers"
		case nodeName = "nodeName"
		case nodeSelector = "nodeSelector"
		case os = "os"
		case overhead = "overhead"
		case preemptionPolicy = "preemptionPolicy"
		case priority = "priority"
		case priorityClassName = "priorityClassName"
		case readinessGates = "readinessGates"
		case resourceClaims = "resourceClaims"
		case restartPolicy = "restartPolicy"
		case runtimeClassName = "runtimeClassName"
		case schedulerName = "schedulerName"
		case schedulingGates = "schedulingGates"
		case securityContext = "securityContext"
		case serviceAccount = "serviceAccount"
		case serviceAccountName = "serviceAccountName"
		case setHostnameAsFQDN = "setHostnameAsFQDN"
		case shareProcessNamespace = "shareProcessNamespace"
		case subdomain = "subdomain"
		case terminationGracePeriodSeconds = "terminationGracePeriodSeconds"
		case tolerations = "tolerations"
		case topologySpreadConstraints = "topologySpreadConstraints"
		case volumes = "volumes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.activeDeadlineSeconds = try container.decodeIfPresent(Int64.self, forKey: .activeDeadlineSeconds)
		self.affinity = try container.decodeIfPresent(core.v1.Affinity.self, forKey: .affinity)
		self.automountServiceAccountToken = try container.decodeIfPresent(Bool.self, forKey: .automountServiceAccountToken)
		self.containers = try container.decode([core.v1.Container].self, forKey: .containers)
		self.dnsConfig = try container.decodeIfPresent(core.v1.PodDNSConfig.self, forKey: .dnsConfig)
		self.dnsPolicy = try container.decodeIfPresent(String.self, forKey: .dnsPolicy)
		self.enableServiceLinks = try container.decodeIfPresent(Bool.self, forKey: .enableServiceLinks)
		self.ephemeralContainers = try container.decodeIfPresent([core.v1.EphemeralContainer].self, forKey: .ephemeralContainers)
		self.hostAliases = try container.decodeIfPresent([core.v1.HostAlias].self, forKey: .hostAliases)
		self.hostIPC = try container.decodeIfPresent(Bool.self, forKey: .hostIPC)
		self.hostNetwork = try container.decodeIfPresent(Bool.self, forKey: .hostNetwork)
		self.hostPID = try container.decodeIfPresent(Bool.self, forKey: .hostPID)
		self.hostUsers = try container.decodeIfPresent(Bool.self, forKey: .hostUsers)
		self.hostname = try container.decodeIfPresent(String.self, forKey: .hostname)
		self.imagePullSecrets = try container.decodeIfPresent([core.v1.LocalObjectReference].self, forKey: .imagePullSecrets)
		self.initContainers = try container.decodeIfPresent([core.v1.Container].self, forKey: .initContainers)
		self.nodeName = try container.decodeIfPresent(String.self, forKey: .nodeName)
		self.nodeSelector = try container.decodeIfPresent([String: String].self, forKey: .nodeSelector)
		self.os = try container.decodeIfPresent(core.v1.PodOS.self, forKey: .os)
		self.overhead = try container.decodeIfPresent([String: Quantity].self, forKey: .overhead)
		self.preemptionPolicy = try container.decodeIfPresent(String.self, forKey: .preemptionPolicy)
		self.priority = try container.decodeIfPresent(Int32.self, forKey: .priority)
		self.priorityClassName = try container.decodeIfPresent(String.self, forKey: .priorityClassName)
		self.readinessGates = try container.decodeIfPresent([core.v1.PodReadinessGate].self, forKey: .readinessGates)
		self.resourceClaims = try container.decodeIfPresent([core.v1.PodResourceClaim].self, forKey: .resourceClaims)
		self.restartPolicy = try container.decodeIfPresent(String.self, forKey: .restartPolicy)
		self.runtimeClassName = try container.decodeIfPresent(String.self, forKey: .runtimeClassName)
		self.schedulerName = try container.decodeIfPresent(String.self, forKey: .schedulerName)
		self.schedulingGates = try container.decodeIfPresent([core.v1.PodSchedulingGate].self, forKey: .schedulingGates)
		self.securityContext = try container.decodeIfPresent(core.v1.PodSecurityContext.self, forKey: .securityContext)
		self.serviceAccount = try container.decodeIfPresent(String.self, forKey: .serviceAccount)
		self.serviceAccountName = try container.decodeIfPresent(String.self, forKey: .serviceAccountName)
		self.setHostnameAsFQDN = try container.decodeIfPresent(Bool.self, forKey: .setHostnameAsFQDN)
		self.shareProcessNamespace = try container.decodeIfPresent(Bool.self, forKey: .shareProcessNamespace)
		self.subdomain = try container.decodeIfPresent(String.self, forKey: .subdomain)
		self.terminationGracePeriodSeconds = try container.decodeIfPresent(Int64.self, forKey: .terminationGracePeriodSeconds)
		self.tolerations = try container.decodeIfPresent([core.v1.Toleration].self, forKey: .tolerations)
		self.topologySpreadConstraints = try container.decodeIfPresent([core.v1.TopologySpreadConstraint].self, forKey: .topologySpreadConstraints)
		self.volumes = try container.decodeIfPresent([core.v1.Volume].self, forKey: .volumes)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(activeDeadlineSeconds, forKey: .activeDeadlineSeconds)
		try encodingContainer.encode(affinity, forKey: .affinity)
		try encodingContainer.encode(automountServiceAccountToken, forKey: .automountServiceAccountToken)
		try encodingContainer.encode(containers, forKey: .containers)
		try encodingContainer.encode(dnsConfig, forKey: .dnsConfig)
		try encodingContainer.encode(dnsPolicy, forKey: .dnsPolicy)
		try encodingContainer.encode(enableServiceLinks, forKey: .enableServiceLinks)
		try encodingContainer.encode(ephemeralContainers, forKey: .ephemeralContainers)
		try encodingContainer.encode(hostAliases, forKey: .hostAliases)
		try encodingContainer.encode(hostIPC, forKey: .hostIPC)
		try encodingContainer.encode(hostNetwork, forKey: .hostNetwork)
		try encodingContainer.encode(hostPID, forKey: .hostPID)
		try encodingContainer.encode(hostUsers, forKey: .hostUsers)
		try encodingContainer.encode(hostname, forKey: .hostname)
		try encodingContainer.encode(imagePullSecrets, forKey: .imagePullSecrets)
		try encodingContainer.encode(initContainers, forKey: .initContainers)
		try encodingContainer.encode(nodeName, forKey: .nodeName)
		try encodingContainer.encode(nodeSelector, forKey: .nodeSelector)
		try encodingContainer.encode(os, forKey: .os)
		try encodingContainer.encode(overhead, forKey: .overhead)
		try encodingContainer.encode(preemptionPolicy, forKey: .preemptionPolicy)
		try encodingContainer.encode(priority, forKey: .priority)
		try encodingContainer.encode(priorityClassName, forKey: .priorityClassName)
		try encodingContainer.encode(readinessGates, forKey: .readinessGates)
		try encodingContainer.encode(resourceClaims, forKey: .resourceClaims)
		try encodingContainer.encode(restartPolicy, forKey: .restartPolicy)
		try encodingContainer.encode(runtimeClassName, forKey: .runtimeClassName)
		try encodingContainer.encode(schedulerName, forKey: .schedulerName)
		try encodingContainer.encode(schedulingGates, forKey: .schedulingGates)
		try encodingContainer.encode(securityContext, forKey: .securityContext)
		try encodingContainer.encode(serviceAccount, forKey: .serviceAccount)
		try encodingContainer.encode(serviceAccountName, forKey: .serviceAccountName)
		try encodingContainer.encode(setHostnameAsFQDN, forKey: .setHostnameAsFQDN)
		try encodingContainer.encode(shareProcessNamespace, forKey: .shareProcessNamespace)
		try encodingContainer.encode(subdomain, forKey: .subdomain)
		try encodingContainer.encode(terminationGracePeriodSeconds, forKey: .terminationGracePeriodSeconds)
		try encodingContainer.encode(tolerations, forKey: .tolerations)
		try encodingContainer.encode(topologySpreadConstraints, forKey: .topologySpreadConstraints)
		try encodingContainer.encode(volumes, forKey: .volumes)
	}
}
