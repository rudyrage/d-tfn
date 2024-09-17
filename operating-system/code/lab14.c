#include <stdio.h>

#define MAX_FRAMES 3
#define MAX_PAGES 10

int frames[MAX_FRAMES], pages[MAX_PAGES];
int front = 0, rear = 0, num_frames_filled = 0;

int is_page_in_frames(int page) {
  for (int i = 0; i < MAX_FRAMES; i++) {
    if (frames[i] == page) {
      return 1;
    }
  }
  return 0;
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

void fifo_page_replacement(int num_pages) {
  for (int i = 0; i < num_pages; i++) {
    if (!is_page_in_frames(pages[i])) {
      if (num_frames_filled < MAX_FRAMES) {
        frames[rear] = pages[i];
        rear = (rear + 1) % MAX_FRAMES;
        num_frames_filled++;
      } else {
        frames[front] = pages[i];
        front = (front + 1) % MAX_FRAMES;
        rear = (rear + 1) % MAX_FRAMES;
      }
      print_frames();
    }
  }
}

int main() {
  int num_pages;

  printf("Enter number of pages: ");
  scanf("%d", &num_pages);

  printf("Enter the page sequence: ");
  for (int i = 0; i < num_pages; i++) {
    scanf("%d", &pages[i]);
  }

  for (int i = 0; i < MAX_FRAMES; i++) {
    frames[i] = -1;
  }

  fifo_page_replacement(num_pages);

  return 0;
}
