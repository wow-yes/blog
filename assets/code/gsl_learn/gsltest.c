#include <stdio.h>
#include <gsl/gsl_cdf.h>
#include <gsl/gsl_matrix.h>

int main (void)
{
  double x = 0.5;
  double y = gsl_cdf_gaussian_P(x, 1);


  double a[] = { 0.11, 0.12, 0.13,
      0.21, 0.22, 0.23 };
  double b[] = { 1011, 1012,
      1021, 1022,
      1031, 1032 };
  double c[] = { 0.00, 0.00,
      0.00, 0.00 };
  gsl_matrix_view A = gsl_matrix_view_array(a, 2, 3);
  gsl_matrix_view B = gsl_matrix_view_array(b, 3, 2);
  gsl_matrix_view C = gsl_matrix_view_array(c, 2, 2);

  printf (" %0.5f\n", A.matrix.data[0]);

  return 0;
}
