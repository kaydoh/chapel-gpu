#ifndef _GPU_API_H
#define _GPU_API_H

void GetDeviceCount(int*);
void GetDevice(int*);
void SetDevice(int);
void ProfilerStart();
void ProfilerStop();
void DeviceSynchronize();
void Malloc(void**, size_t);
void Memcpy(void*, void*, size_t, int);
void Free(void*);
#endif
