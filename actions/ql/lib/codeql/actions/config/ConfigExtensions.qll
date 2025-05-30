/**
 * This module provides extensible predicates for defining MaD models.
 */

/**
 * Holds if workflow data model exists for the given parameters.
 */
extensible predicate workflowDataModel(
  string path, string trigger, string job, string secrets_source, string permissions, string runner
);

/**
 * Holds if repository data model exists for the given parameters.
 */
extensible predicate repositoryDataModel(string visibility, string default_branch_name);

/**
 * Holds if a context expression starting with context_prefix is available for a given trigger.
 */
extensible predicate contextTriggerDataModel(string trigger, string context_prefix);

/**
 * Holds if a given trigger event can be fired by an external actor.
 */
extensible predicate externallyTriggerableEventsDataModel(string event);

/**
 * Holds for strings that match poisonable commands.
 */
extensible predicate poisonableCommandsDataModel(string regexp);

/**
 * Holds for strings that match poisonable local scripts.
 */
extensible predicate poisonableLocalScriptsDataModel(string regexp, int group);

/**
 * Holds for actions that can be poisoned through local files.
 */
extensible predicate poisonableActionsDataModel(string action);

/**
 * Holds for event properties that can be user-controlled.
 */
extensible predicate untrustedEventPropertiesDataModel(string property, string kind);

/**
 * Holds for arguments to commands that execute the given argument
 */
extensible predicate argumentInjectionSinksDataModel(
  string regexp, int command_group, int argument_group
);

/**
 * Holds for actions that are known to be vulnerable.
 */
extensible predicate vulnerableActionsDataModel(
  string action, string vulnerable_version, string vulnerable_sha, string fixed_version
);

/**
 * Holds for actions that are known to be immutable.
 */
extensible predicate immutableActionsDataModel(string action);

/**
 * Holds for trusted Actions owners.
 */
extensible predicate trustedActionsOwnerDataModel(string owner);

/**
 * Holds for git commands that may introduce untrusted data when called on an attacker controlled branch.
 */
extensible predicate untrustedGitCommandDataModel(string cmd_regex, string flag);

/**
 * Holds for gh commands that may introduce untrusted data
 */
extensible predicate untrustedGhCommandDataModel(string cmd_regex, string flag);

/**
 * Holds if `action` needs `permission` to run.
 * - 'action' is the name of the action without any version information.
 *   E.g. for the action selector `actions/checkout@v2`, `action` is `actions/checkout`.
 * - `permission` is of the form `scope-name: read|write`, for example `contents: read`.
 * - see https://github.com/actions/checkout?tab=readme-ov-file#recommended-permissions
 *   for an example of recommended permissions.
 * - see https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token for documentation of token permissions.
 */
extensible predicate actionsPermissionsDataModel(string action, string permission);
