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

	/// Whether the resource is namespaced or not
	var namespaced: Bool {
		switch resource {

		case "bindings":
			return true
		case "componentstatuses":
			return false
		case "configmaps":
			return true
		case "endpoints":
			return true
		case "events":
			return true
		case "limitranges":
			return true
		case "namespaces":
			return false
		case "nodes":
			return false
		case "persistentvolumes":
			return false
		case "persistentvolumeclaims":
			return true
		case "pods":
			return true
		case "podtemplates":
			return true
		case "replicationcontrollers":
			return true
		case "resourcequotas":
			return true
		case "secrets":
			return true
		case "services":
			return true
		case "serviceaccounts":
			return true
		case "mutatingwebhookconfigurations":
			return false
		case "validatingadmissionpolicies":
			return false
		case "validatingadmissionpolicybindings":
			return false
		case "validatingwebhookconfigurations":
			return false
		case "mutatingadmissionpolicies":
			return false
		case "mutatingadmissionpolicybindings":
			return false
		case "customresourcedefinitions":
			return false
		case "apiservices":
			return false
		case "controllerrevisions":
			return true
		case "daemonsets":
			return true
		case "deployments":
			return true
		case "replicasets":
			return true
		case "statefulsets":
			return true
		case "selfsubjectreviews":
			return false
		case "tokenrequests":
			return true
		case "tokenreviews":
			return false
		case "localsubjectaccessreviews":
			return true
		case "selfsubjectaccessreviews":
			return false
		case "selfsubjectrulesreviews":
			return false
		case "subjectaccessreviews":
			return false
		case "horizontalpodautoscalers":
			return true
		case "cronjobs":
			return true
		case "jobs":
			return true
		case "certificatesigningrequests":
			return false
		case "clustertrustbundles":
			return false
		case "leases":
			return true
		case "leasecandidates":
			return true
		case "endpointslices":
			return true
		case "flowschemas":
			return false
		case "prioritylevelconfigurations":
			return false
		case "storageversions":
			return false
		case "ipaddresses":
			return false
		case "ingresses":
			return true
		case "ingressclasses":
			return false
		case "networkpolicies":
			return true
		case "servicecidrs":
			return false
		case "runtimeclasses":
			return false
		case "poddisruptionbudgets":
			return true
		case "clusterroles":
			return false
		case "clusterrolebindings":
			return false
		case "roles":
			return true
		case "rolebindings":
			return true
		case "deviceclasses":
			return false
		case "resourceclaims":
			return true
		case "resourceclaimtemplates":
			return true
		case "resourceslices":
			return false
		case "devicetaintrules":
			return false
		case "priorityclasses":
			return false
		case "csidrivers":
			return false
		case "csinodes":
			return false
		case "csistoragecapacities":
			return true
		case "storageclasses":
			return false
		case "volumeattachments":
			return false
		case "volumeattributesclasses":
			return false
		case "storageversionmigrations":
			return false
		default:
			return false
		}
	}
}
