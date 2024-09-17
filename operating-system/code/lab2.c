#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void *thread_function(void *arg) {
  printf("Thread: Running in thread\n");
  return NULL;
}

void create_thread() {
  pthread_t thread;
  if (pthread_create(&thread, NULL, thread_function, NULL)) {
    printf("Error creating thread\n");
    return;
  }
  pthread_join(thread, NULL);
  printf("Thread: Finished execution\n");
}

void create_process() {
  pid_t pid = fork();

  if (pid == 0) {
    printf("Process: This is the child process\n");
  } else if (pid > 0) {
    printf("Process: This is the parent process\n");
  } else {
    printf("Process: Fork failed\n");
  }
}

int main() {
  printf("Main: Starting thread and process examples\n");
  create_thread();
  create_thread();
  create_process();
  return 0;
}
