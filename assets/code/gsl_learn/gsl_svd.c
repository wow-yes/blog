#include <stdio.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_linalg.h>


int main(){

    int n=1,m=3;
    int i=0,j=0;

    gsl_matrix *Uhat = gsl_matrix_alloc(m,n);

    gsl_vector *Sigmahat = gsl_vector_alloc(n);
    gsl_matrix *Vhat = gsl_matrix_alloc(n,n);
    gsl_vector *svd_work_vec = gsl_vector_alloc(n);

    double a[]={1,0,0};

    for(i=0;i<n;i++){
        for(j=0;j<m;j++){
            gsl_matrix_set(Uhat, j,i, a[i+j*(m-1)]);
        }
    }


    gsl_linalg_SV_decomp (Uhat, Vhat, Sigmahat, svd_work_vec);

    for(i=0;i<m;i++){
        printf("%f \n", Sigmahat->data[i]);
    }

    gsl_vector_free(Sigmahat);
    gsl_vector_free(svd_work_vec);
    gsl_matrix_free(Vhat);
    gsl_matrix_free(Uhat);

    return 0;
}

