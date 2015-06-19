// Sylvain.Lefebvre@inria.fr  2012-04-10
// ------------------------------------------------------------------

#pragma once

#include "../common/base.h"

// ------------------------------------------------------------------

typedef struct {
  v2f   pos;
  int   pathId;
  int   life;
  float angle;
} t_Enemy;

// ------------------------------------------------------------------

#define MAX_ENEMIES 256

// ------------------------------------------------------------------

extern t_Enemy *g_Enemies[MAX_ENEMIES];

// ------------------------------------------------------------------

// Enemy related functions
// TODO

// ------------------------------------------------------------------