// Copyright (c) 2010, Lawrence Livermore National Security, LLC. Produced at
// the Lawrence Livermore National Laboratory. LLNL-CODE-443211. All Rights
// reserved. See file COPYRIGHT for details.
//
// This file is part of the MFEM library. For more information and source code
// availability see http://mfem.org.
//
// MFEM is free software; you can redistribute it and/or modify it under the
// terms of the GNU Lesser General Public License (as published by the Free
// Software Foundation) version 2.1 dated February 1999.
//
// Defines the general object for the abstraction of bilinear and
// nonlinear forms.

#ifndef MFEM_BILINEARFORMOPER
#define MFEM_BILINEARFORMOPER

#include "../config/config.hpp"
#include "../linalg/linalg.hpp"
#include "fespace.hpp"
#include "nonlininteg.hpp"

namespace mfem
{

// Forward declare bilinear form here for the constructor below
class BilinearForm;
class MixedBilinearForm;

class BilinearFormOperator : public Operator
{
protected:
   FiniteElementSpace *test_fes;  // Do not own
   FiniteElementSpace *trial_fes;  // Do not own

   bool trial_gs, test_gs;
   mutable Vector *X;
   mutable Vector *Y;

   mutable Vector y_add;

   Array<LinearFESpaceIntegrator*> lfesi;
   Array<NonlinearFESpaceIntegrator*> nlfesi;

   void Init(FiniteElementSpace *_trial_fes, FiniteElementSpace *_test_fes);

   void DoMult(bool transpose, bool add, const Vector &x, Vector &y) const;

public:
   // Create an empty object or assemble what is needed by the
   // bilinear form integrators to later compute the action.
   BilinearFormOperator(BilinearForm *bf);
   BilinearFormOperator(MixedBilinearForm *mbf);
   ~BilinearFormOperator();

   void Assemble();

   /// Perform the action of the bilinear form on a vector and set y.
   virtual void Mult(const Vector &x, Vector &y) const;

   /// Perform the (transposed) action of the bilinear form on a vector and set y.
   virtual void MultTranspose(const Vector &x, Vector &y) const;

   virtual const Operator *GetProlongation() const
   { return trial_fes->GetProlongationMatrix(); }

   virtual const Operator *GetRestriction() const
   { return trial_fes->GetRestrictionMatrix(); }

   /// Perform the action of the bilinear form on a vector and add to y.
   void AddMult(const Vector &x, Vector &y) const;

   /// Perform the (transposed) action of the bilinear form on a vector and add to y.
   void AddMultTranspose(const Vector &x, Vector &y) const;
};

}

#endif
