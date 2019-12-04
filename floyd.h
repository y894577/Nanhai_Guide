#ifndef FLOYD_H
#define FLOYD_H

#include "mgraph.h"
#include <string>
using namespace std;

class Floyd
{
public:
    Floyd(MGraph G);
    ~Floyd();
    string search_shortest(int start,int end);
    int shortest_road_length(int start,int end);

private:
    int dist[MaxSize][MaxSize];
    string path[MaxSize][MaxSize];
};

#endif // FLOYD_H
