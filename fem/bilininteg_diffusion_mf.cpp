// Copyright (c) 2010-2020, Lawrence Livermore National Security, LLC. Produced
// at the Lawrence Livermore National Laboratory. All Rights reserved. See files
// LICENSE and NOTICE for details. LLNL-CODE-806117.
//
// This file is part of the MFEM library. For more information and source code
// availability visit https://mfem.org.
//
// MFEM is free software; you can redistribute it and/or modify it under the
// terms of the BSD-3 license. We welcome feedback and contributions, see file
// CONTRIBUTING.md for details.

#include "../general/forall.hpp"
#include "bilininteg.hpp"
#include "gridfunc.hpp"
#include "libceed/diffusion.hpp"

using namespace std;

namespace mfem
{

void DiffusionIntegrator::AssembleMF(const FiniteElementSpace &fes)
{
#ifdef MFEM_USE_CEED
   // Assuming the same element type
   fespace = &fes;
   Mesh *mesh = fes.GetMesh();
   if (mesh->GetNE() == 0) { return; }
   const FiniteElement &el = *fes.GetFE(0);
   const IntegrationRule *ir = IntRule ? IntRule : &GetRule(el, el);
   if (DeviceCanUseCeed())
   {
      delete ceedDataPtr;
      ceedDataPtr = new CeedData;
      InitCeedCoeff(Q, *mesh, *ir, ceedDataPtr);
      return CeedMFDiffusionAssemble(fes, *ir, *ceedDataPtr);
   }
#endif
   mfem_error("Error: DiffusionIntegrator::AssembleMF only implemented with libCEED");
}

void DiffusionIntegrator::AssembleDiagonalMF(Vector &diag)
{
#ifdef MFEM_USE_CEED
   if (DeviceCanUseCeed())
   {
      CeedAssembleDiagonal(ceedDataPtr, diag);
   }
   else
#endif
   {
      mfem_error("Error: DiffusionIntegrator::AssembleDiagonalMF only implemented with libCEED");
   }
}

void DiffusionIntegrator::AddMultMF(const Vector &x, Vector &y) const
{
#ifdef MFEM_USE_CEED
   if (DeviceCanUseCeed())
   {
      CeedAddMult(ceedDataPtr, x, y);
   }
   else
#endif
   {
      mfem_error("Error: DiffusionIntegrator::AddMultMF only implemented with libCEED");
   }
}

}
