program hello
    use VSOP87A_Full

    real*8 :: t
    t=0.0
    ! This is a comment line; it is ignored by the compiler
    print *, 'Hello, World!'
    t=earth_x(t)
    print *, t
  end program hello