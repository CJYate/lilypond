/*
  duration.cc -- implement Duration, Plet, 

  source file of the LilyPond music typesetter

  (c)  1997--1999 Jan Nieuwenhuizen <janneke@gnu.org>
           Han-Wen Nienhuys <hanwen@cs.uu.nl>

*/

#include <assert.h>

#include "lily-proto.hh"
#include "string.hh"
#include "moment.hh"
#include "duration.hh"

Duration::Duration ()
{
  durlog_i_ = 0;
  dots_i_ = 0;
  tuplet_iso_i_ = 1;
  tuplet_type_i_ = 1;
}

void
Duration::compress (Rational m)
{
  tuplet_type_i_ *= m.num_i ();
 tuplet_iso_i_ *= m.den_i (); 
}

Rational
Duration::length_mom () const
{
  Rational mom (1 << abs (durlog_i_));

  if (durlog_i_> 0)
    mom = Moment (1)/mom;

  Rational delta = mom;

  for (int d = dots_i_; d; d--)
    {
      delta /= 2.0;
      mom += delta;
    }

  return mom * Moment (tuplet_iso_i_, tuplet_type_i_);
}

void
Duration::set_plet (int i, int t)
{
  tuplet_iso_i_ = i; 
  tuplet_type_i_ = t;
}


String
Duration::str () const
{
  return to_str (durlog_i_) + to_str ('.', dots_i_);
}


bool
Duration::plet_b ()
{
  return tuplet_iso_i_ != 1 || tuplet_type_i_ != 1;
}


