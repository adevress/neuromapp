include_directories(${PROJECT_BINARY_DIR})
include_directories(${PROJECT_SOURCE_DIR})

#Add spike to the mini-app library
add_library (spike main.cpp)

install (TARGETS spike DESTINATION lib)
install (FILES spike.h DESTINATION include)

#Add mpispike to the mini-app library
add_library (spike_exchange environment.cpp)

install (TARGETS spike_exchange DESTINATION lib)
install (FILES environment.h algos.hpp DESTINATION include)
target_link_libraries (spike_exchange coreneuron10_queueing)

#Add an MPI executable
add_executable(MPI_Exec mpiexec.cpp)
target_link_libraries (MPI_Exec spike_exchange ${MPI_C_LIBRARIES} ${MPI_CXX_LIBRARIES})

install (TARGETS MPI_Exec DESTINATION bin)
