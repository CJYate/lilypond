/*
  plet.hh -- declare Plet

  source file of the GNU LilyPond music typesetter

  (c)  1997--1999 Han-Wen Nienhuys <hanwen@cs.uu.nl>
*/


#ifndef PLET_HH
#define PLET_HH
#include "rational.hh"

/** 
  The type and replacement value of a  plet (triplet, quintuplet.) Conceptually the same as a rational, but 4/6 != 2/3.
  
  (plet)
 */
struct Plet {
  Plet ();
  Rational mom () const;
  bool unit_b () const;
};

#endif // PLET_HH
