To run test_validate.swift as a standalone application from the command line, install swiftc and run.  Rename test_validate.swift
to main.swift. Then run:

swiftc main.swift vsop87_full.swift vsop87a_full.swift vsop87b_full.swift vsop87c_full.swift vsop87d_full.swift vsop87e_full.swift vsop87_full_velocities.swift vsop87a_full_velocities.swift vsop87b_full_velocities.swift vsop87c_full_velocities.swift vsop87d_full_velocities.swift vsop87e_full_velocities.swift 

Since the swiftc compiler is very slow, you may want to just run the tests and compile only the specific version you intend to use.