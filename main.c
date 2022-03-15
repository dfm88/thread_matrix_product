#include <stdio.h>
#include <malloc.h>
#include <pthread.h>

/**
 MAT A
 3  2  2
 1  4  5

 MAT B
 1  3  4  1
 9  7  1  1
 2  5  2  1

 MAT C = MAT A * MAT B
 25 33 18 7
 47 56 18 7

**/

#define nrMatA 6
#define nrMatB 12

static int elMatA[nrMatA] = {3,2,2,1,4,5};
static int elMatB[nrMatB] = {1,3,4,1,9,7,1,1,2,5,2,1};
void mat_mul(int **A, int **B, int r, int x, int c, int **C);
static void mat_print (int **, int, int);
void freeMat(int **mat, int col);

typedef struct {
    int **A;
    int **B;
    int **C;
    int indexRowA;
    int indexColB;
    int x;
} tS;

void *threadFunc(void *par) {
    tS *tsPointer, tsObj;
    tsPointer = (tS *) par;
    tsObj = *tsPointer;
    int result = 0;

    for (int i = 0; i < tsObj.x; ++i) {
        result += tsObj.A[tsObj.indexRowA][i] * tsObj.B[i][tsObj.indexColB];
    }

    tsObj.C[tsObj.indexRowA][tsObj.indexColB] = result;

    pthread_exit(NULL);
}

int main(int argc, char **argv) {

    //TODO take matrix dimensions and values from arg
    int r = 2; //MAT A rows
    int x = 3; //MAT A columns - MAT B rows
    int c = 4; //MAT B columns

    //pointers to Matrix array rows
    int **A = malloc(sizeof(int *) * r);
    int **B = malloc(sizeof(int *) * c);
    int **C = malloc(sizeof(int *) * r);

    //pointers to Matrix rows values
    // Mat A
    for (int i = 0; i < r; ++i) {
        A[i] = malloc(sizeof(int) * x);
    }
    // Mat B
    for (int i = 0; i < x; ++i) {
        B[i] = malloc(sizeof(int) * c);
    }
    // Mat C
    for (int i = 0; i < r; ++i) {
        C[i] = malloc(sizeof(int) * c);
    }

    int numElMatA = 0;
    int numElMatB = 0;
    //Populate Matrix A
    for (int i = 0; i < r; ++i) {
        for (int j = 0; j < x; ++j) {
            A[i][j] = elMatA[numElMatA];
            numElMatA++;
        }
    }
    printf("\n\nRESULT MATRIX A\n");
    mat_print(A, r, x);

    //Populate Matrix B
    for (int i = 0; i < x; ++i) {
        for (int j = 0; j < c; ++j) {
            B[i][j] = elMatB[numElMatB];
            numElMatB++;
        }
    }
    printf("\n\nRESULT MATRIX B\n");
    mat_print(B, x, c);

    mat_mul(A, B, r, x, c, C);

    pthread_exit(NULL);
}

void mat_mul(int **A, int **B, int r, int x, int c, int **C) {
    int thNr = r * c;
    int thCount = 0;
    tS tsList[thNr];
    pthread_t thList[thNr];

    for (int i = 0; i < r; ++i) {
        for (int j = 0; j < c; ++j) {

            tsList[thCount].A = A;
            tsList[thCount].B = B;
            tsList[thCount].C = C;
            tsList[thCount].indexRowA = i;
            tsList[thCount].indexColB = j;
            tsList[thCount].x = x;
            printf("Launching thread %d\n", thCount+1);
            pthread_create(
                    &thList[thCount],
                    NULL,
                    threadFunc,
                    (void *) &tsList[thCount]
            );
            thCount++;
        }
    }

    for (int i = 0; i < thNr; ++i) {
        printf("Catching thread %d\n", i+1);
        pthread_join(thList[i], NULL);
    }

    printf("\n\nRESULT MATRIX c\n");
    mat_print(C, r, c);

    //FREE
    freeMat(A, x);
    freeMat(B, c);
    freeMat(C, c);



}

static void mat_print (int **m, int r, int c) {
    int i, j;

    for (i=0; i<r; i++){
        for (j=0; j<c; j++)
            fprintf (stdout, "%d ", m[i][j]);
        fprintf (stdout, "\n");
    }
}

void freeMat(int **mat, int col){

    for (int i = 0; i < col; i++)
    {
        free(mat[i]);
    }
    free(mat);

}

