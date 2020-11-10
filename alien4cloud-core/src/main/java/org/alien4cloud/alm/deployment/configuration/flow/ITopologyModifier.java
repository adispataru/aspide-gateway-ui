package org.alien4cloud.alm.deployment.configuration.flow;

import org.alien4cloud.tosca.model.templates.Topology;

/**
 * 
 */
public interface ITopologyModifier {
    /**
     * This meta property allows alien4cloud to know from which node in the original topology some modified topology nodes are comming from (replace, add etc.).
     */
    String A4C_META_ORIGINAL_NODES = "a4c_original_nodes";

    /**
     * A topology modifier process a topology before deployment to change it. Topology modifier MUST respect the contract of the original topology and while it
     * may add elements, replace elements with others that respect original element contract etc. it may not remove elements or change contract of existing
     * elements.
     *
     * Note that the execution of a topology modifier has a Topology Context opened with the dependencies of the topology.
     *
     * @param topology The topology to process.
     * @param context The object that stores warnings and errors (tasks) associated with the execution flow. Note that the flow will end-up if an error
     *            is generated by a topology modifier.
     */
    void process(Topology topology, FlowExecutionContext context);
}