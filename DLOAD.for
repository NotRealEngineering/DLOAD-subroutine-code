      subroutine DLOAD(F,KSTEP,KINC,TIME,NOEL,NPT,LAYER,KSPT,
     &                 COORDS,JLTYP,SNAME)
C
      include 'ABA_PARAM.INC'
C
      dimension TIME(2), COORDS(3)
      CHARACTER*80 SNAME

      X=COORDS(1)
	  Y=COORDS(2)
	  Z=COORDS(3)
	  
	  Velocity = 1000.0
	  X_position = Velocity*TIME(2)

	  if (X.le.(X_position+20).and.X.ge.(X_position-20).and.Y.le.120 .and.Y.ge.80)then
	     F = 10.0
	  else
	     F = 0.0
	  endif
 
      RETURN
      END