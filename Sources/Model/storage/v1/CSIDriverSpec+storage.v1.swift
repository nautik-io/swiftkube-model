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
/// storage.v1.CSIDriverSpec
///

import Foundation

public extension storage.v1 {

	///
	/// CSIDriverSpec is the specification of a CSIDriver.
	///
	struct CSIDriverSpec: KubernetesResource {
		///
		/// attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.
		///
		public var attachRequired: Bool?
		///
		/// Defines if the underlying volume supports changing ownership and permission of the volume before being mounted. Refer to the specific FSGroupPolicy values for additional details. This field is alpha-level, and is only honored by servers that enable the CSIVolumeFSGroupPolicy feature gate.
		///
		public var fsGroupPolicy: String?
		///
		/// If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. "csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" iff the volume is an ephemeral inline volume
		///                                 defined by a CSIVolumeSource, otherwise "false"
		///
		/// "csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.
		///
		public var podInfoOnMount: Bool?
		///
		/// If set to true, storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the storage capacity that the driver deployment will report by creating CSIStorageCapacity objects with capacity information.
		///
		/// The check can be enabled immediately when deploying a driver. In that case, provisioning new volumes with late binding will pause until the driver deployment has published some suitable CSIStorageCapacity object.
		///
		/// Alternatively, the driver can be deployed with the field unset or false and it can be flipped later when storage capacity information has been published.
		///
		/// This is an alpha field and only available when the CSIStorageCapacity feature is enabled. The default is false.
		///
		public var storageCapacity: Bool?
		///
		/// volumeLifecycleModes defines what kind of volumes this CSI volume driver supports. The default if the list is empty is "Persistent", which is the usage defined by the CSI specification and implemented in Kubernetes via the usual PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.
		///
		public var volumeLifecycleModes: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			attachRequired: Bool? = nil,
			fsGroupPolicy: String? = nil,
			podInfoOnMount: Bool? = nil,
			storageCapacity: Bool? = nil,
			volumeLifecycleModes: [String]? = nil
		) {
			self.attachRequired = attachRequired
			self.fsGroupPolicy = fsGroupPolicy
			self.podInfoOnMount = podInfoOnMount
			self.storageCapacity = storageCapacity
			self.volumeLifecycleModes = volumeLifecycleModes
		}
	}
}

///
/// Codable conformance
///
public extension storage.v1.CSIDriverSpec {

	private enum CodingKeys: String, CodingKey {

		case attachRequired = "attachRequired"
		case fsGroupPolicy = "fsGroupPolicy"
		case podInfoOnMount = "podInfoOnMount"
		case storageCapacity = "storageCapacity"
		case volumeLifecycleModes = "volumeLifecycleModes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.attachRequired = try container.decodeIfPresent(Bool.self, forKey: .attachRequired)
		self.fsGroupPolicy = try container.decodeIfPresent(String.self, forKey: .fsGroupPolicy)
		self.podInfoOnMount = try container.decodeIfPresent(Bool.self, forKey: .podInfoOnMount)
		self.storageCapacity = try container.decodeIfPresent(Bool.self, forKey: .storageCapacity)
		self.volumeLifecycleModes = try container.decodeIfPresent([String].self, forKey: .volumeLifecycleModes)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(attachRequired, forKey: .attachRequired)
		try container.encode(fsGroupPolicy, forKey: .fsGroupPolicy)
		try container.encode(podInfoOnMount, forKey: .podInfoOnMount)
		try container.encode(storageCapacity, forKey: .storageCapacity)
		try container.encode(volumeLifecycleModes, forKey: .volumeLifecycleModes)
	}
}
