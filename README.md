# R API client for icar1

## Installation

```R
install.packages("remotes")
remotes::install_github("umccr-illumina/icar1")
```

## Usage

### Setup Auth

```r
require(icar1)
token <- Sys.getenv("ICA_ACCESS_TOKEN")
headers <- c(
  "Accept" = "application/vnd.illumina.v3+json",
  "Authorization" = paste0("Bearer ", token)
  )
```

## Documentation for API Endpoints

All URIs are relative to *http://aps2.platform.illumina.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FilesApi* | [**ArchiveFile**](docs/FilesApi.md#ArchiveFile) | **POST** /v1/files/{fileId}:archive | Archive a file
*FilesApi* | [**BulkFileUpdate**](docs/FilesApi.md#BulkFileUpdate) | **PATCH** /v1/files | Updates list of files with metadata
*FilesApi* | [**CompleteFileUpload**](docs/FilesApi.md#CompleteFileUpload) | **POST** /v1/files/{fileId}:completeUpload | Complete a file Upload
*FilesApi* | [**CopyFiles**](docs/FilesApi.md#CopyFiles) | **POST** /v1/files/copy | Copy list of files
*FilesApi* | [**CreateFile**](docs/FilesApi.md#CreateFile) | **POST** /v1/files | Create a file entry in GDS and get temporary credentials for upload
*FilesApi* | [**DeleteFile**](docs/FilesApi.md#DeleteFile) | **DELETE** /v1/files/{fileId} | Permanently delete a file
*FilesApi* | [**GetFile**](docs/FilesApi.md#GetFile) | **GET** /v1/files/{fileId} | Get details about a file, including a pre-signed URL for download
*FilesApi* | [**ListFiles**](docs/FilesApi.md#ListFiles) | **GET** /v1/files | Get a list of files
*FilesApi* | [**ListVolumeFiles**](docs/FilesApi.md#ListVolumeFiles) | **POST** /v1/files/list | Get a list of volume files
*FilesApi* | [**UnarchiveFile**](docs/FilesApi.md#UnarchiveFile) | **POST** /v1/files/{fileId}:unarchive | Unarchive a file
*FilesApi* | [**UpdateFile**](docs/FilesApi.md#UpdateFile) | **PATCH** /v1/files/{fileId} | Update a file entry in GDS and get temporary credentials for upload
*FoldersApi* | [**ArchiveFolder**](docs/FoldersApi.md#ArchiveFolder) | **POST** /v1/folders/{folderId}:archive | Archive a folder
*FoldersApi* | [**BulkFolderUpdate**](docs/FoldersApi.md#BulkFolderUpdate) | **PATCH** /v1/folders | Updates list of folders with metadata
*FoldersApi* | [**BulkMetadataFolderUpdate**](docs/FoldersApi.md#BulkMetadataFolderUpdate) | **PATCH** /v1/folders/bulkMetadataFolderUpdate | Updates list of folders with metadata
*FoldersApi* | [**CompleteFolderSession**](docs/FoldersApi.md#CompleteFolderSession) | **POST** /v1/folders/{folderId}/sessions/{sessionId}:complete | Complete a folder upload in GDS
*FoldersApi* | [**CopyFolder**](docs/FoldersApi.md#CopyFolder) | **POST** /v1/folders/{folderId}:copy | Copy a folder
*FoldersApi* | [**CreateFolder**](docs/FoldersApi.md#CreateFolder) | **POST** /v1/folders | Create a folder in GDS and receive credentials for upload
*FoldersApi* | [**CreateFolderSession**](docs/FoldersApi.md#CreateFolderSession) | **POST** /v1/folders/{folderId}/sessions | Create a session
*FoldersApi* | [**DeleteFolder**](docs/FoldersApi.md#DeleteFolder) | **DELETE** /v1/folders/{folderId} | Deletes a folder by id
*FoldersApi* | [**GetFolder**](docs/FoldersApi.md#GetFolder) | **GET** /v1/folders/{folderId} | Get information about a folder in GDS.
*FoldersApi* | [**GetFolderJob**](docs/FoldersApi.md#GetFolderJob) | **GET** /v1/folders/{folderId}/jobs/{jobId} | Get status of a folder job in GDS
*FoldersApi* | [**GetFolderSession**](docs/FoldersApi.md#GetFolderSession) | **GET** /v1/folders/{folderId}/sessions/{sessionId} | Get status of a folder upload in GDS
*FoldersApi* | [**ListFolders**](docs/FoldersApi.md#ListFolders) | **GET** /v1/folders | Get a list of folders
*FoldersApi* | [**UnarchiveFolder**](docs/FoldersApi.md#UnarchiveFolder) | **POST** /v1/folders/{folderId}:unarchive | Unarchive a folder
*FoldersApi* | [**UpdateFolder**](docs/FoldersApi.md#UpdateFolder) | **PATCH** /v1/folders/{folderId} | Update a folder content or acl
*JobsApi* | [**AbortJob**](docs/JobsApi.md#AbortJob) | **POST** /v1/jobs/{jobId}:abort | Abort a job in GDS.
*JobsApi* | [**GetJob**](docs/JobsApi.md#GetJob) | **GET** /v1/jobs/{jobId} | Get information about a job in GDS.
*JobsApi* | [**ListJobs**](docs/JobsApi.md#ListJobs) | **GET** /v1/jobs | Get a list of jobs for a given folder
*SubscriptionsApi* | [**CreateSubscription**](docs/SubscriptionsApi.md#CreateSubscription) | **POST** /v1/subscriptions | Creates a subscription to an event type and defines how those events get delivered.
*SubscriptionsApi* | [**DisableSubscription**](docs/SubscriptionsApi.md#DisableSubscription) | **DELETE** /v1/subscriptions/{subscriptionId} | Given a subscription id, disables the specified subscription.
*SubscriptionsApi* | [**GetSubscription**](docs/SubscriptionsApi.md#GetSubscription) | **GET** /v1/subscriptions/{subscriptionId} | Given a subscription id, returns information about that subscription.
*SubscriptionsApi* | [**ListSubscriptions**](docs/SubscriptionsApi.md#ListSubscriptions) | **GET** /v1/subscriptions | Get a list of subscriptions.
*TaskRunsApi* | [**AbortTaskRun**](docs/TaskRunsApi.md#AbortTaskRun) | **PUT** /v1/tasks/runs/{runId}:abort | Abort a task run
*TaskRunsApi* | [**CreateTaskRun**](docs/TaskRunsApi.md#CreateTaskRun) | **POST** /v1/tasks/runs | Create and launch a task run
*TaskRunsApi* | [**GetTaskRun**](docs/TaskRunsApi.md#GetTaskRun) | **GET** /v1/tasks/runs/{runId} | Get the status of a task run
*TaskRunsApi* | [**HeartbeatTaskRun**](docs/TaskRunsApi.md#HeartbeatTaskRun) | **POST** /v1/tasks/runs/{runId}:heartbeat | Heartbeat for a task run
*TaskRunsApi* | [**ListTaskRuns**](docs/TaskRunsApi.md#ListTaskRuns) | **GET** /v1/tasks/runs | Get a list of task runs
*TaskVersionsApi* | [**CreateTaskVersion**](docs/TaskVersionsApi.md#CreateTaskVersion) | **POST** /v1/tasks/{taskId}/versions | Create a task version
*TaskVersionsApi* | [**GetTaskVersion**](docs/TaskVersionsApi.md#GetTaskVersion) | **GET** /v1/tasks/{taskId}/versions/{versionId} | Get the details of a task version
*TaskVersionsApi* | [**LaunchTaskRun**](docs/TaskVersionsApi.md#LaunchTaskRun) | **POST** /v1/tasks/{taskId}/versions/{versionId}:launch | Launch a task version
*TaskVersionsApi* | [**ListTaskVersions**](docs/TaskVersionsApi.md#ListTaskVersions) | **GET** /v1/tasks/{taskId}/versions | Get a list of versions
*TaskVersionsApi* | [**UpdateTaskVersion**](docs/TaskVersionsApi.md#UpdateTaskVersion) | **PATCH** /v1/tasks/{taskId}/versions/{versionId} | Update task version properties
*TasksApi* | [**CreateTask**](docs/TasksApi.md#CreateTask) | **POST** /v1/tasks | Create a Task
*TasksApi* | [**GetTask**](docs/TasksApi.md#GetTask) | **GET** /v1/tasks/{taskId} | Get the details of a Task
*TasksApi* | [**ListTasks**](docs/TasksApi.md#ListTasks) | **GET** /v1/tasks | Get a list of tasks
*TasksApi* | [**UpdateTask**](docs/TasksApi.md#UpdateTask) | **PATCH** /v1/tasks/{taskId} | Update an existing task.
*VolumeConfigurationsApi* | [**CreateVolumeConfiguration**](docs/VolumeConfigurationsApi.md#CreateVolumeConfiguration) | **POST** /v1/volumeconfigurations | Create a volume configuration in GDS.
*VolumeConfigurationsApi* | [**DeleteVolumeConfiguration**](docs/VolumeConfigurationsApi.md#DeleteVolumeConfiguration) | **DELETE** /v1/volumeconfigurations/{volumeConfigurationName} | Deletes a volume configuration by Id or name
*VolumeConfigurationsApi* | [**GetVolumeConfiguration**](docs/VolumeConfigurationsApi.md#GetVolumeConfiguration) | **GET** /v1/volumeconfigurations/{volumeConfigurationName} | Get information for the specified volume configuration name or Id
*VolumeConfigurationsApi* | [**ListVolumeConfigurations**](docs/VolumeConfigurationsApi.md#ListVolumeConfigurations) | **GET** /v1/volumeconfigurations | Get a list of volumes
*VolumeConfigurationsApi* | [**ValidateVolumeConfiguration**](docs/VolumeConfigurationsApi.md#ValidateVolumeConfiguration) | **POST** /v1/volumeconfigurations/{volumeConfigurationName}:validate | Validate a volume configuration
*VolumesApi* | [**CreateVolume**](docs/VolumesApi.md#CreateVolume) | **POST** /v1/volumes | Create a volume in GDS and receive temporary credentials for upload
*VolumesApi* | [**DeleteVolume**](docs/VolumesApi.md#DeleteVolume) | **DELETE** /v1/volumes/{volumeId} | Deletes a volume by Id
*VolumesApi* | [**GetVolume**](docs/VolumesApi.md#GetVolume) | **GET** /v1/volumes/{volumeId} | Get information for the specified volume ID or volume name
*VolumesApi* | [**ListVolumes**](docs/VolumesApi.md#ListVolumes) | **GET** /v1/volumes | Get a list of volumes
*VolumesApi* | [**UpdateVolume**](docs/VolumesApi.md#UpdateVolume) | **PATCH** /v1/volumes/{volumeId} | Update a volume content
*WorkflowRunsApi* | [**AbortWorkflowRun**](docs/WorkflowRunsApi.md#AbortWorkflowRun) | **PUT** /v1/workflows/runs/{runId}:abort | Abort a workflow run
*WorkflowRunsApi* | [**GetWorkflowRun**](docs/WorkflowRunsApi.md#GetWorkflowRun) | **GET** /v1/workflows/runs/{runId} | Get the details of a workflow run
*WorkflowRunsApi* | [**ListWorkflowRunHistory**](docs/WorkflowRunsApi.md#ListWorkflowRunHistory) | **GET** /v1/workflows/runs/{runId}/history | Get a list of workflow run history events
*WorkflowRunsApi* | [**ListWorkflowRuns**](docs/WorkflowRunsApi.md#ListWorkflowRuns) | **GET** /v1/workflows/runs | Get a list of workflow runs
*WorkflowSignalsApi* | [**FailSignal**](docs/WorkflowSignalsApi.md#FailSignal) | **PATCH** /v1/workflows/signals/{signalId}:fail | Fail a workflow signal
*WorkflowSignalsApi* | [**GetSignal**](docs/WorkflowSignalsApi.md#GetSignal) | **GET** /v1/workflows/signals/{signalId} | Get the details of a workflow signal
*WorkflowSignalsApi* | [**ListSignals**](docs/WorkflowSignalsApi.md#ListSignals) | **GET** /v1/workflows/signals | Get a list of workflow signals
*WorkflowSignalsApi* | [**SucceedSignal**](docs/WorkflowSignalsApi.md#SucceedSignal) | **PATCH** /v1/workflows/signals/{signalId}:succeed | Succeed a workflow signal
*WorkflowVersionsApi* | [**CreateWorkflowVersion**](docs/WorkflowVersionsApi.md#CreateWorkflowVersion) | **POST** /v1/workflows/{workflowId}/versions | Create a new workflow version
*WorkflowVersionsApi* | [**GetWorkflowVersion**](docs/WorkflowVersionsApi.md#GetWorkflowVersion) | **GET** /v1/workflows/{workflowId}/versions/{versionName} | Get the details of a workflow version
*WorkflowVersionsApi* | [**LaunchWorkflowVersion**](docs/WorkflowVersionsApi.md#LaunchWorkflowVersion) | **POST** /v1/workflows/{workflowId}/versions/{versionName}:launch | Launch a workflow version
*WorkflowVersionsApi* | [**ListAllWorkflowVersions**](docs/WorkflowVersionsApi.md#ListAllWorkflowVersions) | **GET** /v1/workflows/versions | Get a list of all workflow versions
*WorkflowVersionsApi* | [**ListWorkflowVersions**](docs/WorkflowVersionsApi.md#ListWorkflowVersions) | **GET** /v1/workflows/{workflowId}/versions | Get a list of workflow versions
*WorkflowVersionsApi* | [**UpdateWorkflowVersion**](docs/WorkflowVersionsApi.md#UpdateWorkflowVersion) | **PATCH** /v1/workflows/{workflowId}/versions/{versionName} | Update an existing workflow version
*WorkflowsApi* | [**CreateWorkflow**](docs/WorkflowsApi.md#CreateWorkflow) | **POST** /v1/workflows | Create a workflow
*WorkflowsApi* | [**GetWorkflow**](docs/WorkflowsApi.md#GetWorkflow) | **GET** /v1/workflows/{workflowId} | Get the details of a workflow
*WorkflowsApi* | [**ListWorkflows**](docs/WorkflowsApi.md#ListWorkflows) | **GET** /v1/workflows | Get a list of workflows
*WorkflowsApi* | [**UpdateWorkflow**](docs/WorkflowsApi.md#UpdateWorkflow) | **PATCH** /v1/workflows/{workflowId} | Update an existing workflow


## Documentation for Models

 - [AWSS3ObjectStoreSetting](docs/AWSS3ObjectStoreSetting.md)
 - [AbortWorkflowRunRequest](docs/AbortWorkflowRunRequest.md)
 - [AgentTaskRun](docs/AgentTaskRun.md)
 - [ArchiveStatuses](docs/ArchiveStatuses.md)
 - [AwsS3PresignedUrlForUpload](docs/AwsS3PresignedUrlForUpload.md)
 - [AwsS3TemporaryReadOnlyCredentials](docs/AwsS3TemporaryReadOnlyCredentials.md)
 - [AwsS3TemporaryUploadCredentials](docs/AwsS3TemporaryUploadCredentials.md)
 - [BulkFailedItem](docs/BulkFailedItem.md)
 - [BulkFileUpdateItem](docs/BulkFileUpdateItem.md)
 - [BulkFileUpdateRequest](docs/BulkFileUpdateRequest.md)
 - [BulkFileUpdateResponse](docs/BulkFileUpdateResponse.md)
 - [BulkFolderMetadataUpdateRequest](docs/BulkFolderMetadataUpdateRequest.md)
 - [BulkFolderUpdateItem](docs/BulkFolderUpdateItem.md)
 - [BulkFolderUpdateRequest](docs/BulkFolderUpdateRequest.md)
 - [BulkFolderUpdateResponse](docs/BulkFolderUpdateResponse.md)
 - [BulkMetadataUpdateOperationParameters](docs/BulkMetadataUpdateOperationParameters.md)
 - [BulkUpdateFailedItem](docs/BulkUpdateFailedItem.md)
 - [CheckOutQueuedTaskRunRequest](docs/CheckOutQueuedTaskRunRequest.md)
 - [Cluster](docs/Cluster.md)
 - [ClusterSummary](docs/ClusterSummary.md)
 - [ClusterSummaryPagedItems](docs/ClusterSummaryPagedItems.md)
 - [CompleteSessionRequest](docs/CompleteSessionRequest.md)
 - [ContainerState](docs/ContainerState.md)
 - [ContainerStateRunning](docs/ContainerStateRunning.md)
 - [ContainerStateTerminated](docs/ContainerStateTerminated.md)
 - [ContainerStateWaiting](docs/ContainerStateWaiting.md)
 - [ContainerStatus](docs/ContainerStatus.md)
 - [CreateClusterRequest](docs/CreateClusterRequest.md)
 - [CreateFileRequest](docs/CreateFileRequest.md)
 - [CreateFolderRequest](docs/CreateFolderRequest.md)
 - [CreateSessionRequest](docs/CreateSessionRequest.md)
 - [CreateSessionResponse](docs/CreateSessionResponse.md)
 - [CreateSubscriptionRequest](docs/CreateSubscriptionRequest.md)
 - [CreateTaskRequest](docs/CreateTaskRequest.md)
 - [CreateTaskRunRequest](docs/CreateTaskRunRequest.md)
 - [CreateTaskVersionRequest](docs/CreateTaskVersionRequest.md)
 - [CreateVolumeConfigurationRequest](docs/CreateVolumeConfigurationRequest.md)
 - [CreateVolumeRequest](docs/CreateVolumeRequest.md)
 - [CreateVolumeResponse](docs/CreateVolumeResponse.md)
 - [CreateWorkflowRequest](docs/CreateWorkflowRequest.md)
 - [CreateWorkflowVersionRequest](docs/CreateWorkflowVersionRequest.md)
 - [Credentials](docs/Credentials.md)
 - [DeliveryTarget](docs/DeliveryTarget.md)
 - [DeliveryTargetAwsSnsTopic](docs/DeliveryTargetAwsSnsTopic.md)
 - [DeliveryTargetAwsSqsQueue](docs/DeliveryTargetAwsSqsQueue.md)
 - [DeliveryTargetWorkflowRunLaunch](docs/DeliveryTargetWorkflowRunLaunch.md)
 - [Environment](docs/Environment.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [ErrorResponse1](docs/ErrorResponse1.md)
 - [ErrorResponse2](docs/ErrorResponse2.md)
 - [ErrorResponse3](docs/ErrorResponse3.md)
 - [Execution](docs/Execution.md)
 - [FailWorkflowSignalRequest](docs/FailWorkflowSignalRequest.md)
 - [FileArchiveRequest](docs/FileArchiveRequest.md)
 - [FileArchiveStorageTier](docs/FileArchiveStorageTier.md)
 - [FileCopyOperationParameters](docs/FileCopyOperationParameters.md)
 - [FileCopyOutput](docs/FileCopyOutput.md)
 - [FileLifeCycleSettings](docs/FileLifeCycleSettings.md)
 - [FileListCopyRequest](docs/FileListCopyRequest.md)
 - [FileListResponse](docs/FileListResponse.md)
 - [FileResponse](docs/FileResponse.md)
 - [FileStatus](docs/FileStatus.md)
 - [FileUnarchiveRequest](docs/FileUnarchiveRequest.md)
 - [FileUploadCompleteRequest](docs/FileUploadCompleteRequest.md)
 - [FileWriteableResponse](docs/FileWriteableResponse.md)
 - [FolderArchiveRequest](docs/FolderArchiveRequest.md)
 - [FolderArchiveStorageTier](docs/FolderArchiveStorageTier.md)
 - [FolderCopyOperationParameters](docs/FolderCopyOperationParameters.md)
 - [FolderCopyRequest](docs/FolderCopyRequest.md)
 - [FolderDeleteOperationParameters](docs/FolderDeleteOperationParameters.md)
 - [FolderListResponse](docs/FolderListResponse.md)
 - [FolderResponse](docs/FolderResponse.md)
 - [FolderUnarchiveRequest](docs/FolderUnarchiveRequest.md)
 - [FolderUpdateRequest](docs/FolderUpdateRequest.md)
 - [FolderWriteableResponse](docs/FolderWriteableResponse.md)
 - [GracePeriodEndAction](docs/GracePeriodEndAction.md)
 - [HeartbeatTaskRunRequest](docs/HeartbeatTaskRunRequest.md)
 - [Image](docs/Image.md)
 - [InputMountMappingWithCreds](docs/InputMountMappingWithCreds.md)
 - [InputStreamSettings](docs/InputStreamSettings.md)
 - [JobListResponse](docs/JobListResponse.md)
 - [JobOperationParameters](docs/JobOperationParameters.md)
 - [JobOperationType](docs/JobOperationType.md)
 - [JobOutput](docs/JobOutput.md)
 - [JobProgressStatus](docs/JobProgressStatus.md)
 - [JobResponse](docs/JobResponse.md)
 - [JobStatus](docs/JobStatus.md)
 - [LaunchTaskRequest](docs/LaunchTaskRequest.md)
 - [LaunchWorkflowVersionRequest](docs/LaunchWorkflowVersionRequest.md)
 - [MetadataUpdateOutput](docs/MetadataUpdateOutput.md)
 - [MetadataUpdateRequest](docs/MetadataUpdateRequest.md)
 - [MountMappingWithCreds](docs/MountMappingWithCreds.md)
 - [ObjectStoreAccess](docs/ObjectStoreAccess.md)
 - [ObjectStoreSettings](docs/ObjectStoreSettings.md)
 - [PartEtag](docs/PartEtag.md)
 - [PartInfo](docs/PartInfo.md)
 - [Resources](docs/Resources.md)
 - [RestoreType](docs/RestoreType.md)
 - [SessionResponse](docs/SessionResponse.md)
 - [SessionStatus](docs/SessionStatus.md)
 - [SortDirection](docs/SortDirection.md)
 - [StorageTier](docs/StorageTier.md)
 - [Subscription](docs/Subscription.md)
 - [SubscriptionList](docs/SubscriptionList.md)
 - [SubscriptionListSortFields](docs/SubscriptionListSortFields.md)
 - [SucceedWorkflowSignalRequest](docs/SucceedWorkflowSignalRequest.md)
 - [SystemFiles](docs/SystemFiles.md)
 - [Task](docs/Task.md)
 - [TaskRun](docs/TaskRun.md)
 - [TaskRunHeartbeat](docs/TaskRunHeartbeat.md)
 - [TaskRunLogs](docs/TaskRunLogs.md)
 - [TaskRunSummary](docs/TaskRunSummary.md)
 - [TaskRunSummaryPagedItems](docs/TaskRunSummaryPagedItems.md)
 - [TaskSummary](docs/TaskSummary.md)
 - [TaskSummaryPagedItems](docs/TaskSummaryPagedItems.md)
 - [TaskVersion](docs/TaskVersion.md)
 - [TaskVersionSummary](docs/TaskVersionSummary.md)
 - [TaskVersionSummaryPagedItems](docs/TaskVersionSummaryPagedItems.md)
 - [UpdateClusterRequest](docs/UpdateClusterRequest.md)
 - [UpdateFileRequest](docs/UpdateFileRequest.md)
 - [UpdateTaskRequest](docs/UpdateTaskRequest.md)
 - [UpdateTaskRunStateRequest](docs/UpdateTaskRunStateRequest.md)
 - [UpdateTaskVersionRequest](docs/UpdateTaskVersionRequest.md)
 - [UpdateVolumeRequest](docs/UpdateVolumeRequest.md)
 - [UpdateWorkflowRequest](docs/UpdateWorkflowRequest.md)
 - [UpdateWorkflowVersionRequest](docs/UpdateWorkflowVersionRequest.md)
 - [VolumeConfigurationListResponse](docs/VolumeConfigurationListResponse.md)
 - [VolumeConfigurationOnlineStatus](docs/VolumeConfigurationOnlineStatus.md)
 - [VolumeConfigurationResponse](docs/VolumeConfigurationResponse.md)
 - [VolumeFileListRequest](docs/VolumeFileListRequest.md)
 - [VolumeFileListResponse](docs/VolumeFileListResponse.md)
 - [VolumeLifeCycleSettings](docs/VolumeLifeCycleSettings.md)
 - [VolumeListResponse](docs/VolumeListResponse.md)
 - [VolumeMigrationOperationParameters](docs/VolumeMigrationOperationParameters.md)
 - [VolumeResponse](docs/VolumeResponse.md)
 - [Workflow](docs/Workflow.md)
 - [WorkflowArgument](docs/WorkflowArgument.md)
 - [WorkflowCompact](docs/WorkflowCompact.md)
 - [WorkflowConnection](docs/WorkflowConnection.md)
 - [WorkflowLanguage](docs/WorkflowLanguage.md)
 - [WorkflowList](docs/WorkflowList.md)
 - [WorkflowRun](docs/WorkflowRun.md)
 - [WorkflowRunCompact](docs/WorkflowRunCompact.md)
 - [WorkflowRunHistoryEvent](docs/WorkflowRunHistoryEvent.md)
 - [WorkflowRunHistoryEventList](docs/WorkflowRunHistoryEventList.md)
 - [WorkflowRunList](docs/WorkflowRunList.md)
 - [WorkflowSignal](docs/WorkflowSignal.md)
 - [WorkflowSignalCompact](docs/WorkflowSignalCompact.md)
 - [WorkflowSignalList](docs/WorkflowSignalList.md)
 - [WorkflowVersion](docs/WorkflowVersion.md)
 - [WorkflowVersionCompact](docs/WorkflowVersionCompact.md)
 - [WorkflowVersionList](docs/WorkflowVersionList.md)


## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


