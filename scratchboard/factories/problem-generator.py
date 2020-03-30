#! /usr/bin/env python3

import argparse
import random


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("outputfile", type=str)
    parser.add_argument("--num_factories", default=2, type=int)
    parser.add_argument("--num_dependencies", default=1, type=int)
    return parser.parse_args()


def main():
    args = parse_args()

    problem = """
(define
    (problem generated)
    (:domain factories)
    (:objects
        last_factory - factory
        factory0 - factory
        location0 - location
        resource0 - resource
        {}
    )
    (:htn
        :tasks (construct_factory last_factory)
        :ordering ()
        :constraints ()
    )
    (:init
        (truck-at location0)
        (constructed factory0)
        (factory-at factory0 location0)
        (produces factory0 resource0)
        (demands last_factory resource{})
        {}
    )
)
    """
    objects = []
    init = []

    for i in range(1, args.num_factories + 1):
        objects.extend(
            [
                f"factory{i} - factory",
                f"location{i} - location",
                f"resource{i} - resource",
            ]
        )
        dependencies = random.sample(range(i), min(args.num_dependencies, i))

        init.extend(
            [
                f"(connected location{i} location{i-1})",
                f"(connected location{i-1} location{i})",
                f"(produces factory{i} resource{i})",
            ]
            + [f"(demands factory{i} resource{j})" for j in dependencies]
        )

    objects.append("last_location - location")
    init.extend(
        [
            f"(connected location{args.num_factories} last_location)",
            f"(connected last_location location{args.num_factories})",
        ]
    )

    with open(args.outputfile, "w+") as f:
        f.write(
            problem.format(
                " ".join(objects), args.num_factories, " ".join(init)
            )
        )


if __name__ == "__main__":
    main()
