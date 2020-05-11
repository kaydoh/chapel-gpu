/*
 * Copyright (c) 2019, Rice University
 * Copyright (c) 2019, Georgia Institute of Technology
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module GPUAPI {
    use SysCTypes;

    extern proc GetDeviceCount(ref count: int(32));
    extern proc GetDevice(ref device: int(32));
    extern proc SetDevice(device: int(32));

    extern proc ProfilerStart();
    extern proc ProfilerStop();

    extern proc DeviceSynchronize();

    extern proc Malloc(ref devPtr: c_void_ptr, size: size_t);
    extern proc Memcpy(dst: c_void_ptr, src: c_void_ptr, count: size_t, kind: int);
    extern proc Free(devPtr: c_void_ptr);
}