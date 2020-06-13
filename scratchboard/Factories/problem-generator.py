#! /usr/bin/env python3

import argparse
import random


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("outputfile", type=str)
    parser.add_argument("--num_factories", default=2, type=int)
    parser.add_argument("--num_dependencies", default=1, type=int)
    parser.add_argument("--num_trucks", default=1, type=int)
    return parser.parse_args()


def main():
    args = parse_args()

    problem = """
; Factories domain by Malte Sönnichsen 2020
; Automatically generated instance with {} factories, {} dependencies, and {} trucks

(define
    (problem generated)
    (:domain factories)
    (:objects
        last_factory - factory
        factory_0 - factory
        resource_0 - resource
{}
    )
    (:htn
        :tasks (construct_factory last_factory location_{})
        :ordering ()
        :constraints ()
    )
    (:init
        (factory-at factory_0 location_0)
        (factory-constructed factory_0)
        (factory-without-demands factory_0)
        (produces factory_0 resource_0)
        (demands last_factory resource_{})
{}
    )
)
    """
    objects = []
    init = []
    
    # Construct graph of locations
    nodes = 2 * (args.num_factories + args.num_trucks) + 1
    graph = [(i, i+1) for i in range(nodes-1)] + [(0, nodes-1)]
    for i in range(nodes):
        n1,n2 = (random.randrange(nodes), random.randrange(nodes))
        n1,n2 = (min(n1,n2), max(n1,n2))
        if n1 < n2 and (n1,n2) not in graph:
            graph += [(n1,n2)]
    
    # Nodes
    for i in range(nodes):
        objects.extend(
            [
                f"        location_{i} - location",
            ]
        )
        if i > 0:
            init.extend(
                [
                    f"        (location-free location_{i})",
                ]
            )
    
    # Edges
    for i in range(len(graph)):
        n1,n2 = graph[i]
        init.extend(
            [
                f"        (connected location_{n1} location_{n2})",
                f"        (connected location_{n2} location_{n1})",
            ]
        )
    
    # Properties per factory
    for i in range(1, args.num_factories + 1):
        objects.extend(
            [
                f"        factory_{i} - factory",
                f"        resource_{i} - resource",
            ]
        )
        init.extend(
            [
                f"        (produces factory_{i} resource_{i})",
            ]
        )
        dependencies = random.sample(range(i), min(args.num_dependencies, i))
        if len(dependencies) == 1:
            init.append(f"        (demands factory_{i} resource_{dependencies[0]})")
        else:
            num_dependencies = len(dependencies) - 1
            init.append(f"        (demands factory_{i} resource_f_{i}_{num_dependencies})")
        for j, dependency in enumerate(dependencies):
            objects.append(f"        resource_f_{i}_{j} - resource")
            if j == 0:
                init.append(
                    f"        (fuses resource_f_{i}_{j} resource_0 resource_{dependency})"
                )
            else:
                init.append(
                    f"        (fuses resource_f_{i}_{j} resource_f_{i}_{j-1} resource_{dependency})"
                )
    
    for i in range(1, args.num_trucks+1):
        loc = random.randrange(nodes)
        objects.extend(
            [
                f"        truck_{i} - truck",
            ]
        )
        init.extend(
            [
                f"        (truck-at truck_{i} location_{loc})",
                f"        (empty truck_{i})",
            ]
        )

    with open(args.outputfile, "w+") as f:
        f.write(problem.format(args.num_factories, args.num_dependencies, args.num_trucks, "\n".join(objects), nodes-1, args.num_factories, "\n".join(init)))


if __name__ == "__main__":
    main()
