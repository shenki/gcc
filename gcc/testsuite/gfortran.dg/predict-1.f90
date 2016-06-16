! { dg-do compile }
! { dg-options "-O2 -fdump-tree-profile_estimate" }

subroutine test(block, array)
integer :: i, block(9), array(2)

do i = array(1), array(2)
    block(i) = i
end do
end subroutine test

! { dg-final { scan-tree-dump-times "Fortran loop preheader heuristics of edge\[^:\]*: 99.0%" 1 "profile_estimate" } }
