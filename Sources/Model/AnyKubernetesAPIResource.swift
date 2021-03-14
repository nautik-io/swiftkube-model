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
///

import Foundation

///
/// A type-erased `KubernetesAPIResource` that wraps the actual resource instance.
///
public struct AnyKubernetesAPIResource: KubernetesAPIResource {

	private enum CodingKeys: String, CodingKey {
		case apiVersion
		case kind
	}

	/// The concrete wrapped resource instance.
	private let resource: KubernetesAPIResource

	/// This resource's `apiVersion`.
	public var apiVersion: String

	/// This resource's `kind`.
	public var kind: String

	/// This resource's `meta.v1.ObjectMeta` object.
	public var metadata: meta.v1.ObjectMeta?

	/// Creates a new type-erased `AnyKubernetesAPIResource` instance wrapping the given resource.
	///
	/// - Parameter resource: The resource to wrap/type-erase
	public init(_ resource: KubernetesAPIResource) {
		self.resource = resource
		self.apiVersion = resource.apiVersion
		self.kind = resource.kind
		self.metadata = resource.metadata
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		let decodedAPIVersion: String?
		if container.contains(.apiVersion) {
			decodedAPIVersion = try container.decode(String.self, forKey: .apiVersion)
		} else {
			decodedAPIVersion = decoder.userInfo[CodingUserInfoKey.apiVersion] as? String
		}

		let decodedKind: String?
		if container.contains(.kind) {
			decodedKind = try container.decode(String.self, forKey: .kind)
		} else {
			decodedKind = decoder.userInfo[CodingUserInfoKey.kind] as? String
		}

		guard let apiVersionString = decodedAPIVersion, let kindString = decodedKind else {
			throw SwiftkubeModelError.decodingError("Couldn't decode apiVersion and/or kind at: \(container.codingPath)")
		}

		let gvk = GroupVersionKind(rawValue: "\(apiVersionString)/\(kindString)")

		let decoded: KubernetesAPIResource
		switch gvk {

		case .coreV1Binding:
			decoded = try core.v1.Binding(from: decoder)
		case .coreV1ComponentStatus:
			decoded = try core.v1.ComponentStatus(from: decoder)
		case .coreV1ConfigMap:
			decoded = try core.v1.ConfigMap(from: decoder)
		case .coreV1Endpoints:
			decoded = try core.v1.Endpoints(from: decoder)
		case .coreV1Event:
			decoded = try core.v1.Event(from: decoder)
		case .coreV1LimitRange:
			decoded = try core.v1.LimitRange(from: decoder)
		case .coreV1Namespace:
			decoded = try core.v1.Namespace(from: decoder)
		case .coreV1Node:
			decoded = try core.v1.Node(from: decoder)
		case .coreV1PersistentVolume:
			decoded = try core.v1.PersistentVolume(from: decoder)
		case .coreV1PersistentVolumeClaim:
			decoded = try core.v1.PersistentVolumeClaim(from: decoder)
		case .coreV1Pod:
			decoded = try core.v1.Pod(from: decoder)
		case .coreV1PodTemplate:
			decoded = try core.v1.PodTemplate(from: decoder)
		case .coreV1ReplicationController:
			decoded = try core.v1.ReplicationController(from: decoder)
		case .coreV1ResourceQuota:
			decoded = try core.v1.ResourceQuota(from: decoder)
		case .coreV1Secret:
			decoded = try core.v1.Secret(from: decoder)
		case .coreV1Service:
			decoded = try core.v1.Service(from: decoder)
		case .coreV1ServiceAccount:
			decoded = try core.v1.ServiceAccount(from: decoder)
		case .admissionregistrationV1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1.MutatingWebhookConfiguration(from: decoder)
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1.ValidatingWebhookConfiguration(from: decoder)
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1beta1.MutatingWebhookConfiguration(from: decoder)
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1beta1.ValidatingWebhookConfiguration(from: decoder)
		case .apiextensionsV1CustomResourceDefinition:
			decoded = try apiextensions.v1.CustomResourceDefinition(from: decoder)
		case .apiextensionsV1Beta1CustomResourceDefinition:
			decoded = try apiextensions.v1beta1.CustomResourceDefinition(from: decoder)
		case .apiregistrationV1APIService:
			decoded = try apiregistration.v1.APIService(from: decoder)
		case .apiregistrationV1Beta1APIService:
			decoded = try apiregistration.v1beta1.APIService(from: decoder)
		case .appsV1ControllerRevision:
			decoded = try apps.v1.ControllerRevision(from: decoder)
		case .appsV1DaemonSet:
			decoded = try apps.v1.DaemonSet(from: decoder)
		case .appsV1Deployment:
			decoded = try apps.v1.Deployment(from: decoder)
		case .appsV1ReplicaSet:
			decoded = try apps.v1.ReplicaSet(from: decoder)
		case .appsV1StatefulSet:
			decoded = try apps.v1.StatefulSet(from: decoder)
		case .authenticationV1TokenRequest:
			decoded = try authentication.v1.TokenRequest(from: decoder)
		case .authenticationV1TokenReview:
			decoded = try authentication.v1.TokenReview(from: decoder)
		case .authenticationV1Beta1TokenReview:
			decoded = try authentication.v1beta1.TokenReview(from: decoder)
		case .authorizationV1LocalSubjectAccessReview:
			decoded = try authorization.v1.LocalSubjectAccessReview(from: decoder)
		case .authorizationV1SelfSubjectAccessReview:
			decoded = try authorization.v1.SelfSubjectAccessReview(from: decoder)
		case .authorizationV1SelfSubjectRulesReview:
			decoded = try authorization.v1.SelfSubjectRulesReview(from: decoder)
		case .authorizationV1SubjectAccessReview:
			decoded = try authorization.v1.SubjectAccessReview(from: decoder)
		case .authorizationV1Beta1LocalSubjectAccessReview:
			decoded = try authorization.v1beta1.LocalSubjectAccessReview(from: decoder)
		case .authorizationV1Beta1SelfSubjectAccessReview:
			decoded = try authorization.v1beta1.SelfSubjectAccessReview(from: decoder)
		case .authorizationV1Beta1SelfSubjectRulesReview:
			decoded = try authorization.v1beta1.SelfSubjectRulesReview(from: decoder)
		case .authorizationV1Beta1SubjectAccessReview:
			decoded = try authorization.v1beta1.SubjectAccessReview(from: decoder)
		case .autoscalingV1HorizontalPodAutoscaler:
			decoded = try autoscaling.v1.HorizontalPodAutoscaler(from: decoder)
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta2.HorizontalPodAutoscaler(from: decoder)
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta1.HorizontalPodAutoscaler(from: decoder)
		case .batchV1Job:
			decoded = try batch.v1.Job(from: decoder)
		case .batchV1Beta1CronJob:
			decoded = try batch.v1beta1.CronJob(from: decoder)
		case .batchV2Alpha1CronJob:
			decoded = try batch.v2alpha1.CronJob(from: decoder)
		case .certificatesV1CertificateSigningRequest:
			decoded = try certificates.v1.CertificateSigningRequest(from: decoder)
		case .certificatesV1Beta1CertificateSigningRequest:
			decoded = try certificates.v1beta1.CertificateSigningRequest(from: decoder)
		case .coordinationV1Lease:
			decoded = try coordination.v1.Lease(from: decoder)
		case .coordinationV1Beta1Lease:
			decoded = try coordination.v1beta1.Lease(from: decoder)
		case .discoveryV1Beta1EndpointSlice:
			decoded = try discovery.v1beta1.EndpointSlice(from: decoder)
		case .eventsV1Event:
			decoded = try events.v1.Event(from: decoder)
		case .eventsV1Beta1Event:
			decoded = try events.v1beta1.Event(from: decoder)
		case .extensionsV1Beta1Ingress:
			decoded = try extensions.v1beta1.Ingress(from: decoder)
		case .flowcontrolV1Alpha1FlowSchema:
			decoded = try flowcontrol.v1alpha1.FlowSchema(from: decoder)
		case .flowcontrolV1Alpha1PriorityLevelConfiguration:
			decoded = try flowcontrol.v1alpha1.PriorityLevelConfiguration(from: decoder)
		case .networkingV1Ingress:
			decoded = try networking.v1.Ingress(from: decoder)
		case .networkingV1IngressClass:
			decoded = try networking.v1.IngressClass(from: decoder)
		case .networkingV1NetworkPolicy:
			decoded = try networking.v1.NetworkPolicy(from: decoder)
		case .networkingV1Beta1Ingress:
			decoded = try networking.v1beta1.Ingress(from: decoder)
		case .networkingV1Beta1IngressClass:
			decoded = try networking.v1beta1.IngressClass(from: decoder)
		case .nodeV1Beta1RuntimeClass:
			decoded = try node.v1beta1.RuntimeClass(from: decoder)
		case .nodeV1Alpha1RuntimeClass:
			decoded = try node.v1alpha1.RuntimeClass(from: decoder)
		case .policyV1Beta1PodDisruptionBudget:
			decoded = try policy.v1beta1.PodDisruptionBudget(from: decoder)
		case .policyV1Beta1PodSecurityPolicy:
			decoded = try policy.v1beta1.PodSecurityPolicy(from: decoder)
		case .rbacV1ClusterRole:
			decoded = try rbac.v1.ClusterRole(from: decoder)
		case .rbacV1ClusterRoleBinding:
			decoded = try rbac.v1.ClusterRoleBinding(from: decoder)
		case .rbacV1Role:
			decoded = try rbac.v1.Role(from: decoder)
		case .rbacV1RoleBinding:
			decoded = try rbac.v1.RoleBinding(from: decoder)
		case .rbacV1Beta1ClusterRole:
			decoded = try rbac.v1beta1.ClusterRole(from: decoder)
		case .rbacV1Beta1ClusterRoleBinding:
			decoded = try rbac.v1beta1.ClusterRoleBinding(from: decoder)
		case .rbacV1Beta1Role:
			decoded = try rbac.v1beta1.Role(from: decoder)
		case .rbacV1Beta1RoleBinding:
			decoded = try rbac.v1beta1.RoleBinding(from: decoder)
		case .rbacV1Alpha1ClusterRole:
			decoded = try rbac.v1alpha1.ClusterRole(from: decoder)
		case .rbacV1Alpha1ClusterRoleBinding:
			decoded = try rbac.v1alpha1.ClusterRoleBinding(from: decoder)
		case .rbacV1Alpha1Role:
			decoded = try rbac.v1alpha1.Role(from: decoder)
		case .rbacV1Alpha1RoleBinding:
			decoded = try rbac.v1alpha1.RoleBinding(from: decoder)
		case .schedulingV1PriorityClass:
			decoded = try scheduling.v1.PriorityClass(from: decoder)
		case .schedulingV1Beta1PriorityClass:
			decoded = try scheduling.v1beta1.PriorityClass(from: decoder)
		case .schedulingV1Alpha1PriorityClass:
			decoded = try scheduling.v1alpha1.PriorityClass(from: decoder)
		case .settingsV1Alpha1PodPreset:
			decoded = try settings.v1alpha1.PodPreset(from: decoder)
		case .storageV1CSIDriver:
			decoded = try storage.v1.CSIDriver(from: decoder)
		case .storageV1CSINode:
			decoded = try storage.v1.CSINode(from: decoder)
		case .storageV1StorageClass:
			decoded = try storage.v1.StorageClass(from: decoder)
		case .storageV1VolumeAttachment:
			decoded = try storage.v1.VolumeAttachment(from: decoder)
		case .storageV1Beta1CSIDriver:
			decoded = try storage.v1beta1.CSIDriver(from: decoder)
		case .storageV1Beta1CSINode:
			decoded = try storage.v1beta1.CSINode(from: decoder)
		case .storageV1Beta1StorageClass:
			decoded = try storage.v1beta1.StorageClass(from: decoder)
		case .storageV1Beta1VolumeAttachment:
			decoded = try storage.v1beta1.VolumeAttachment(from: decoder)
		case .storageV1Alpha1VolumeAttachment:
			decoded = try storage.v1alpha1.VolumeAttachment(from: decoder)
		default:
			let context = DecodingError.Context(
				codingPath: [CodingKeys.apiVersion, CodingKeys.kind],
				debugDescription: "Unknown Kubernetes object gvk: \(String(describing: gvk))"
			)
			throw DecodingError.dataCorrupted(context)
		}

		self.init(decoded)
	}

	public func encode(to encoder: Encoder) throws {
		try resource.encode(to: encoder)
	}
}
