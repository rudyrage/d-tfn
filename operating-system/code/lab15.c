#include <stdio.h>

#define MAX_FRAMES 3
#define MAX_PAGES 10

int frames[MAX_FRAMES], pages[MAX_PAGES];
int page_age[MAX_FRAMES];
int num_pages;

void initialize_frames() {
  for (int i = 0; i < MAX_FRAMES; i++) {
    frames[i] = -1;
    page_age[i] = 0;
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

int find_lru_index() {
  int min_age = page_age[0];
  int lru_index = 0;

  for (int i = 1; i < MAX_FRAMES; i++) {
    if (page_age[i] < min_age) {
      min_age = page_age[i];
      lru_index = i;
    }
  }
  return lru_index;
}

void lru_page_replacement() {
  int time = 0;

  for (int i = 0; i < num_pages; i++) {
    int page = pages[i];
    int found = 0;

    for (int j = 0; j < MAX_FRAMES; j++) {
      if (frames[j] == page) {
        page_age[j] = time++;
        found = 1;
        break;
      }
    }

    if (!found) {
      int lru_index = find_lru_index();
      frames[lru_index] = page;
      page_age[lru_index] = time++;
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
  lru_page_replacement();

  return 0;
}
