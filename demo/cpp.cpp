#include <iostream>
#include <iomanip>

using namespace std;

int **comb(int **a, int row, int col)
{
  int mid = col / 2;
  //clear matrix
  for (int i = 0; i < row; i++)
    for (int j = 0; j < col; j++)
      a[i][j] = 0;
  a[0][mid] = 1; //put 1 in the middle of first row
                 //build up Pascal's Triangle matrix
  for (int i = 1; i < row; i++)
  {
    for (int j = 1; j < col - 1; j++)
      a[i][j] = a[i - 1][j - 1] + a[i - 1][j + 1];
  }
  return a;
}
void disp(int **ptr, int row, int col)
{
  cout << endl
       << endl;
  for (int i = 0; i < row; i++)
  {
    for (int j = 0; j < col; j++)
    {
      if (ptr[i][j] == 0)
        cout << "   ";
      else
        cout << setw(4) << right << ptr[i][j];
    }
    cout << endl;
  }
  cout << endl
       << endl;
}
int main()
{
  int **ptr, m, n;
  cout << "\nEnter number of rows to draw Pascal's Triangle: ";
  cin >> m;
  n = 2 * m + 1; //column = 2 * row + 1

  ptr = new int *[m];
  for (int i = 0; i < m; i++)
    ptr[i] = new int[n];

  ptr = comb(ptr, m, n); //calling function for array creation

  disp(ptr, m, n); //calling function for array displaying.

  return 0;
}