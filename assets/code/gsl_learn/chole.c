/**
 * Multivariate gaussian random number generation using GSL
 * https://www.gnu.org/software/gsl/doc/html/randist.html#c.gsl_ran_multivariate_gaussian
 * Compile with:
 * g++ -lgsl -lgslcblas -lm `root-config --cflags` `root-config --libs` -Wall test_gsl.c 
 * For additional printing
 * g++ -D DEBUG -lgsl -lgslcblas -lm `root-config --cflags` `root-config --libs` -Wall test_gsl.c 
**/

#include <stdio.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_linalg.h>

int main() {
    const int dim = 3;
    double pars[3] = { 0, 0, 0 };
    double Q[9] = { 
        4.47600000000000, 0.333999999999992,0.229999999999999,
        0.33399999999999, 1.14600000000001  ,0.0820000000000012,
        0.22999999999999, 0.082000000000001, 0.626000000000000,
        
    };
    int i=0,j=0;

    // Gaussian Multivariate distribution
    gsl_matrix *L = gsl_matrix_calloc(dim, dim);
    gsl_vector *S = gsl_vector_calloc(dim);
    gsl_permutation * perm = gsl_permutation_calloc(dim);

    for(i=0;i<dim*dim;i++) L->data[i]=Q[i];

    //gsl_linalg_cholesky_decomp2(L,S);
    gsl_linalg_pcholesky_decomp2(L,perm,S);

    for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            printf("%.4f ", L->data[i*3+j]);
        }
        printf("\n");
    }

    printf("\n S=");
    for(i=0;i<3;i++)
        printf("%.4f ", S->data[i]);
    printf("\n");


}
