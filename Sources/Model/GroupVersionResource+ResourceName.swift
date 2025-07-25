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
///

import Foundation

public extension GroupVersionResource {

	/// Creates a new instance of `GroupVersionResource` for the provided resource name.
	///
	/// A resource name can be:
	/// - Lower-cased singular resource kind
	/// - Lower-cased plural resource name
	/// - Lower-cased short resource name
	///
	/// ```swift
	/// let gvk = GroupVersionResource(for: "deployment")
	/// let gvk = GroupVersionResource(for: "deployments")
	/// let gvk = GroupVersionResource(for: "deploy")
	/// ```
	///
	/// - Parameter resourceName: The resource plural or singular name or its kind.
	init?(for resourceName: String) {
		if let gvk = GroupVersionResource.tryKind(resourceName) {
			self = gvk
		} else if let gvk = GroupVersionResource.tryPlural(resourceName) {
			self = gvk
		} else if let gvk = GroupVersionResource.tryShort(resourceName) {
			self = gvk
		} else {
			return nil
		}
	}

	private static func tryKind(_ kind: String) -> GroupVersionResource? {
		switch kind.lowercased() {

		case "binding":
			return GroupVersionResource(group: "core", version: "v1", resource: "bindings")
		case "componentstatus":
			return GroupVersionResource(group: "core", version: "v1", resource: "componentstatuses")
		case "configmap":
			return GroupVersionResource(group: "core", version: "v1", resource: "configmaps")
		case "endpoints":
			return GroupVersionResource(group: "core", version: "v1", resource: "endpoints")
		case "event":
			return GroupVersionResource(group: "core", version: "v1", resource: "events")
		case "limitrange":
			return GroupVersionResource(group: "core", version: "v1", resource: "limitranges")
		case "namespace":
			return GroupVersionResource(group: "core", version: "v1", resource: "namespaces")
		case "node":
			return GroupVersionResource(group: "core", version: "v1", resource: "nodes")
		case "persistentvolume":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumes")
		case "persistentvolumeclaim":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumeclaims")
		case "pod":
			return GroupVersionResource(group: "core", version: "v1", resource: "pods")
		case "podtemplate":
			return GroupVersionResource(group: "core", version: "v1", resource: "podtemplates")
		case "replicationcontroller":
			return GroupVersionResource(group: "core", version: "v1", resource: "replicationcontrollers")
		case "resourcequota":
			return GroupVersionResource(group: "core", version: "v1", resource: "resourcequotas")
		case "secret":
			return GroupVersionResource(group: "core", version: "v1", resource: "secrets")
		case "service":
			return GroupVersionResource(group: "core", version: "v1", resource: "services")
		case "serviceaccount":
			return GroupVersionResource(group: "core", version: "v1", resource: "serviceaccounts")
		case "mutatingwebhookconfiguration":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "mutatingwebhookconfigurations")
		case "validatingadmissionpolicy":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingadmissionpolicies")
		case "validatingadmissionpolicybinding":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingadmissionpolicybindings")
		case "validatingwebhookconfiguration":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingwebhookconfigurations")
		case "mutatingadmissionpolicy":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "mutatingadmissionpolicies")
		case "mutatingadmissionpolicybinding":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "mutatingadmissionpolicybindings")
		case "customresourcedefinition":
			return GroupVersionResource(group: "apiextensions.k8s.io", version: "v1", resource: "customresourcedefinitions")
		case "apiservice":
			return GroupVersionResource(group: "apiregistration.k8s.io", version: "v1", resource: "apiservices")
		case "controllerrevision":
			return GroupVersionResource(group: "apps", version: "v1", resource: "controllerrevisions")
		case "daemonset":
			return GroupVersionResource(group: "apps", version: "v1", resource: "daemonsets")
		case "deployment":
			return GroupVersionResource(group: "apps", version: "v1", resource: "deployments")
		case "replicaset":
			return GroupVersionResource(group: "apps", version: "v1", resource: "replicasets")
		case "statefulset":
			return GroupVersionResource(group: "apps", version: "v1", resource: "statefulsets")
		case "selfsubjectreview":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "selfsubjectreviews")
		case "tokenrequest":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenrequests")
		case "tokenreview":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenreviews")
		case "localsubjectaccessreview":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "localsubjectaccessreviews")
		case "selfsubjectaccessreview":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectaccessreviews")
		case "selfsubjectrulesreview":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectrulesreviews")
		case "subjectaccessreview":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "subjectaccessreviews")
		case "horizontalpodautoscaler":
			return GroupVersionResource(group: "autoscaling", version: "v1", resource: "horizontalpodautoscalers")
		case "cronjob":
			return GroupVersionResource(group: "batch", version: "v1", resource: "cronjobs")
		case "job":
			return GroupVersionResource(group: "batch", version: "v1", resource: "jobs")
		case "certificatesigningrequest":
			return GroupVersionResource(group: "certificates.k8s.io", version: "v1", resource: "certificatesigningrequests")
		case "clustertrustbundle":
			return GroupVersionResource(group: "certificates.k8s.io", version: "v1beta1", resource: "clustertrustbundles")
		case "lease":
			return GroupVersionResource(group: "coordination.k8s.io", version: "v1", resource: "leases")
		case "leasecandidate":
			return GroupVersionResource(group: "coordination.k8s.io", version: "v1beta1", resource: "leasecandidates")
		case "endpointslice":
			return GroupVersionResource(group: "discovery.k8s.io", version: "v1", resource: "endpointslices")
		case "flowschema":
			return GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1", resource: "flowschemas")
		case "prioritylevelconfiguration":
			return GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1", resource: "prioritylevelconfigurations")
		case "storageversion":
			return GroupVersionResource(group: "internal.apiserver.k8s.io", version: "v1alpha1", resource: "storageversions")
		case "ipaddress":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ipaddresses")
		case "ingress":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingresses")
		case "ingressclass":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingressclasses")
		case "networkpolicy":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "networkpolicies")
		case "servicecidr":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "servicecidrs")
		case "runtimeclass":
			return GroupVersionResource(group: "node.k8s.io", version: "v1", resource: "runtimeclasses")
		case "poddisruptionbudget":
			return GroupVersionResource(group: "policy", version: "v1", resource: "poddisruptionbudgets")
		case "clusterrole":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterroles")
		case "clusterrolebinding":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterrolebindings")
		case "role":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "roles")
		case "rolebinding":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "rolebindings")
		case "deviceclass":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "deviceclasses")
		case "resourceclaim":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceclaims")
		case "resourceclaimtemplate":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceclaimtemplates")
		case "resourceslice":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceslices")
		case "devicetaintrule":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1alpha3", resource: "devicetaintrules")
		case "priorityclass":
			return GroupVersionResource(group: "scheduling.k8s.io", version: "v1", resource: "priorityclasses")
		case "csidriver":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csidrivers")
		case "csinode":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csinodes")
		case "csistoragecapacity":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csistoragecapacities")
		case "storageclass":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "storageclasses")
		case "volumeattachment":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "volumeattachments")
		case "volumeattributesclass":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1beta1", resource: "volumeattributesclasses")
		case "storageversionmigration":
			return GroupVersionResource(group: "storagemigration.k8s.io", version: "v1alpha1", resource: "storageversionmigrations")
		default:
			return nil
		}
	}

	private static func tryPlural(_ plural: String) -> GroupVersionResource? {
		switch plural {

		case "bindings":
			return GroupVersionResource(group: "core", version: "v1", resource: "bindings")
		case "componentstatuses":
			return GroupVersionResource(group: "core", version: "v1", resource: "componentstatuses")
		case "configmaps":
			return GroupVersionResource(group: "core", version: "v1", resource: "configmaps")
		case "endpoints":
			return GroupVersionResource(group: "core", version: "v1", resource: "endpoints")
		case "events":
			return GroupVersionResource(group: "core", version: "v1", resource: "events")
		case "limitranges":
			return GroupVersionResource(group: "core", version: "v1", resource: "limitranges")
		case "namespaces":
			return GroupVersionResource(group: "core", version: "v1", resource: "namespaces")
		case "nodes":
			return GroupVersionResource(group: "core", version: "v1", resource: "nodes")
		case "persistentvolumes":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumes")
		case "persistentvolumeclaims":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumeclaims")
		case "pods":
			return GroupVersionResource(group: "core", version: "v1", resource: "pods")
		case "podtemplates":
			return GroupVersionResource(group: "core", version: "v1", resource: "podtemplates")
		case "replicationcontrollers":
			return GroupVersionResource(group: "core", version: "v1", resource: "replicationcontrollers")
		case "resourcequotas":
			return GroupVersionResource(group: "core", version: "v1", resource: "resourcequotas")
		case "secrets":
			return GroupVersionResource(group: "core", version: "v1", resource: "secrets")
		case "services":
			return GroupVersionResource(group: "core", version: "v1", resource: "services")
		case "serviceaccounts":
			return GroupVersionResource(group: "core", version: "v1", resource: "serviceaccounts")
		case "mutatingwebhookconfigurations":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "mutatingwebhookconfigurations")
		case "validatingadmissionpolicies":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingadmissionpolicies")
		case "validatingadmissionpolicybindings":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingadmissionpolicybindings")
		case "validatingwebhookconfigurations":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingwebhookconfigurations")
		case "mutatingadmissionpolicies":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "mutatingadmissionpolicies")
		case "mutatingadmissionpolicybindings":
			return GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "mutatingadmissionpolicybindings")
		case "customresourcedefinitions":
			return GroupVersionResource(group: "apiextensions.k8s.io", version: "v1", resource: "customresourcedefinitions")
		case "apiservices":
			return GroupVersionResource(group: "apiregistration.k8s.io", version: "v1", resource: "apiservices")
		case "controllerrevisions":
			return GroupVersionResource(group: "apps", version: "v1", resource: "controllerrevisions")
		case "daemonsets":
			return GroupVersionResource(group: "apps", version: "v1", resource: "daemonsets")
		case "deployments":
			return GroupVersionResource(group: "apps", version: "v1", resource: "deployments")
		case "replicasets":
			return GroupVersionResource(group: "apps", version: "v1", resource: "replicasets")
		case "statefulsets":
			return GroupVersionResource(group: "apps", version: "v1", resource: "statefulsets")
		case "selfsubjectreviews":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "selfsubjectreviews")
		case "tokenrequests":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenrequests")
		case "tokenreviews":
			return GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenreviews")
		case "localsubjectaccessreviews":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "localsubjectaccessreviews")
		case "selfsubjectaccessreviews":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectaccessreviews")
		case "selfsubjectrulesreviews":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectrulesreviews")
		case "subjectaccessreviews":
			return GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "subjectaccessreviews")
		case "horizontalpodautoscalers":
			return GroupVersionResource(group: "autoscaling", version: "v1", resource: "horizontalpodautoscalers")
		case "cronjobs":
			return GroupVersionResource(group: "batch", version: "v1", resource: "cronjobs")
		case "jobs":
			return GroupVersionResource(group: "batch", version: "v1", resource: "jobs")
		case "certificatesigningrequests":
			return GroupVersionResource(group: "certificates.k8s.io", version: "v1", resource: "certificatesigningrequests")
		case "clustertrustbundles":
			return GroupVersionResource(group: "certificates.k8s.io", version: "v1beta1", resource: "clustertrustbundles")
		case "leases":
			return GroupVersionResource(group: "coordination.k8s.io", version: "v1", resource: "leases")
		case "leasecandidates":
			return GroupVersionResource(group: "coordination.k8s.io", version: "v1beta1", resource: "leasecandidates")
		case "endpointslices":
			return GroupVersionResource(group: "discovery.k8s.io", version: "v1", resource: "endpointslices")
		case "flowschemas":
			return GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1", resource: "flowschemas")
		case "prioritylevelconfigurations":
			return GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1", resource: "prioritylevelconfigurations")
		case "storageversions":
			return GroupVersionResource(group: "internal.apiserver.k8s.io", version: "v1alpha1", resource: "storageversions")
		case "ipaddresses":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ipaddresses")
		case "ingresses":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingresses")
		case "ingressclasses":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingressclasses")
		case "networkpolicies":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "networkpolicies")
		case "servicecidrs":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "servicecidrs")
		case "runtimeclasses":
			return GroupVersionResource(group: "node.k8s.io", version: "v1", resource: "runtimeclasses")
		case "poddisruptionbudgets":
			return GroupVersionResource(group: "policy", version: "v1", resource: "poddisruptionbudgets")
		case "clusterroles":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterroles")
		case "clusterrolebindings":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterrolebindings")
		case "roles":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "roles")
		case "rolebindings":
			return GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "rolebindings")
		case "deviceclasses":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "deviceclasses")
		case "resourceclaims":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceclaims")
		case "resourceclaimtemplates":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceclaimtemplates")
		case "resourceslices":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1beta2", resource: "resourceslices")
		case "devicetaintrules":
			return GroupVersionResource(group: "resource.k8s.io", version: "v1alpha3", resource: "devicetaintrules")
		case "priorityclasses":
			return GroupVersionResource(group: "scheduling.k8s.io", version: "v1", resource: "priorityclasses")
		case "csidrivers":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csidrivers")
		case "csinodes":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csinodes")
		case "csistoragecapacities":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csistoragecapacities")
		case "storageclasses":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "storageclasses")
		case "volumeattachments":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "volumeattachments")
		case "volumeattributesclasses":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1beta1", resource: "volumeattributesclasses")
		case "storageversionmigrations":
			return GroupVersionResource(group: "storagemigration.k8s.io", version: "v1alpha1", resource: "storageversionmigrations")
		default:
			return nil
		}
	}

	private static func tryShort(_ short: String) -> GroupVersionResource? {
		switch short {

		case "cs":
			return GroupVersionResource(group: "core", version: "v1", resource: "componentstatuses")
		case "cm":
			return GroupVersionResource(group: "core", version: "v1", resource: "configmaps")
		case "ep":
			return GroupVersionResource(group: "core", version: "v1", resource: "endpoints")
		case "ev":
			return GroupVersionResource(group: "core", version: "v1", resource: "events")
		case "limits":
			return GroupVersionResource(group: "core", version: "v1", resource: "limitranges")
		case "ns":
			return GroupVersionResource(group: "core", version: "v1", resource: "namespaces")
		case "no":
			return GroupVersionResource(group: "core", version: "v1", resource: "nodes")
		case "pv":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumes")
		case "pvc":
			return GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumeclaims")
		case "po":
			return GroupVersionResource(group: "core", version: "v1", resource: "pods")
		case "rc":
			return GroupVersionResource(group: "core", version: "v1", resource: "replicationcontrollers")
		case "quota":
			return GroupVersionResource(group: "core", version: "v1", resource: "resourcequotas")
		case "svc":
			return GroupVersionResource(group: "core", version: "v1", resource: "services")
		case "sa":
			return GroupVersionResource(group: "core", version: "v1", resource: "serviceaccounts")
		case "crd":
			return GroupVersionResource(group: "apiextensions.k8s.io", version: "v1", resource: "customresourcedefinitions")
		case "ds":
			return GroupVersionResource(group: "apps", version: "v1", resource: "daemonsets")
		case "deploy":
			return GroupVersionResource(group: "apps", version: "v1", resource: "deployments")
		case "rs":
			return GroupVersionResource(group: "apps", version: "v1", resource: "replicasets")
		case "sts":
			return GroupVersionResource(group: "apps", version: "v1", resource: "statefulsets")
		case "hpa":
			return GroupVersionResource(group: "autoscaling", version: "v1", resource: "horizontalpodautoscalers")
		case "cj":
			return GroupVersionResource(group: "batch", version: "v1", resource: "cronjobs")
		case "csr":
			return GroupVersionResource(group: "certificates.k8s.io", version: "v1", resource: "certificatesigningrequests")
		case "ing":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingresses")
		case "netpol":
			return GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "networkpolicies")
		case "pdb":
			return GroupVersionResource(group: "policy", version: "v1", resource: "poddisruptionbudgets")
		case "pc":
			return GroupVersionResource(group: "scheduling.k8s.io", version: "v1", resource: "priorityclasses")
		case "sc":
			return GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "storageclasses")
		default:
			return nil
		}
	}
}
