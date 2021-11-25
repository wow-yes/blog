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
    const int dim = 4;
    double Q[16] = { 
        1.82722492, -0.14209532 ,0.36301469, -0.03571735,
       -0.14209532,  1.09132475 ,0.32389920, 0.92388663,
        0.36301469,  0.32389920 ,1.23646493, 0.04453199,
       -0.03571735,  0.92388663 ,0.04453199, 0.84498540
    };
    int i=0,j=0;

    // Gaussian Multivariate distribution
    gsl_matrix *L = gsl_matrix_calloc(dim, dim);
    gsl_vector *S = gsl_vector_calloc(dim);
    gsl_permutation * perm = gsl_permutation_calloc(dim);

    for(i=0;i<dim*dim;i++) L->data[i]=Q[i];

    //gsl_linalg_cholesky_decomp1(L);
    gsl_linalg_pcholesky_decomp(L,perm);

    for(i=0;i<dim;i++){
        for(j=0;j<dim;j++){
            printf("%.4f ", L->data[i*dim+j]);
        }
        printf("\n");
    }

    printf("\n S=");
    for(i=0;i<3;i++)
        printf("%.4f ", S->data[i]);
    printf("\n");


}
