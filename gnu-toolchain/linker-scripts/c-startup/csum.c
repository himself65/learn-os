static int arr[] = { 1, 10, 4, 5, 6, 7};
static int sum;
static const int n = sizeof(arr) / sizeof(int);

int main() {
    for(int i = 0; i < n; i++) {
        sum += i;
    }
}
