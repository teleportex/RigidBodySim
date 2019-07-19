module atom_m
      use vector2_m
      use constants_m
      implicit none
      type atom_t
              type(vector2_t) :: pos, vel
              real(kind=dp) :: q, m
      end type atom_t

      public :: get_i_v2, get_j_v2, set_v2

      contains
              subroutine set_atom( a, pi, pj, vi, vj, q, m )
                      implicit none
                      type(atom_t) :: a
                      real(kind=dp) :: vi, vj, pi, pj, q, m

                      call set_v2(a%pos, pi, pj)
                      call set_v2(a%vel, vi, vj) 
                      a%q = q
                      a%m = m

              end subroutine set_atom

              subroutine get_atom( a, pi, pj, vi, vj, q, m )
                      implicit none
                      type(atom_t) :: a
                      real(kind=dp) :: vi, vj, pi, pj, q, m

                      call get_i_v2(a%vel, vi)
                      call get_j_v2(a%vel, vj)
                      call get_i_v2(a%pos, pi)
                      call get_j_v2(a%pos, pj)
                      q = a%q
                      m = a%m

              end subroutine get_atom

              subroutine get_vel_atom(a, v)
                      implicit none
                      type(atom_t) :: a
                      type(vector2_t) :: v
                      v = a%vel
              end subroutine get_vel_atom

              subroutine get_pos_atom(a, p)
                      implicit none
                      type(atom_t) :: a
                      type(vector2_t) :: p
                      p = a%pos
              end subroutine get_pos_atom

end module atom_m

