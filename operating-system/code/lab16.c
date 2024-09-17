#include <limits.h>
#include <stdio.h>

#define MAX_FRAMES 3
#define MAX_PAGES 10

int frames[MAX_FRAMES], pages[MAX_PAGES];
int page_frequency[MAX_FRAMES];
int num_pages;

void initialize_frames() {
  for (int i = 0; i < MAX_FRAMES; i++) {
    frames[i] = -1;
    page_frequency[i] = 0;
  }
}

void print_frames() {
  for (int i = 0; i < MAX_FRAMES; i++) {
    if (frames[i] == -1) {
      printf("- ");
    } else {
      printf("%d ", frames[i]);
    }
  }
  printf("\n");
}

int find_lfu_index() {
  int min_freq = INT_MAX;
  int lfu_index = 0;

  for (int i = 0; i < MAX_FRAMES; i++) {
    if (page_frequency[i] < min_freq) {
      min_freq = page_frequency[i];
      lfu_index = i;
    }
  }
  return lfu_index;
}

void lfu_page_replacement() {
  for (int i = 0; i < num_pages; i++) {
    int page = pages[i];
    int found = 0;

    for (int j = 0; j < MAX_FRAMES; j++) {
      if (frames[j] == page) {
        page_frequency[j]++;
        found = 1;
        break;
      }
    }

    if (!found) {
      int lfu_index = find_lfu_index();
      frames[lfu_index] = page;
      page_frequency[lfu_index] = 1;
    }

    print_frames();
  }
}

int main() {
  printf("Enter number of pages: ");
  scanf("%d", &num_pages);

  printf("Enter the page sequence: ");
  for (int i = 0; i < num_pages; i++) {
    scanf("%d", &pages[i]);
  }

  initialize_frames();
  lfu_page_replacement();

  return 0;
}
