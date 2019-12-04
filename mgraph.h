#ifndef MGRAPH_H
#define MGRAPH_H

#include <string>
using namespace std;

static const int MAX_LENGTH = 10000;

const int MaxSize=105;
class MGraph
{
public:
    //n 顶点 e 边
    MGraph(int n,int e);
    ~MGraph();
    int search_coodinate_x(int num);
    int search_coodinate_y(int num);
    void DFS(int v);
//private:
    int vertexNum;
    int arcNum;
    int vertex[MaxSize];
    int arc[MaxSize][MaxSize];
    int coodinate[20][2];
    int visited[MaxSize]={0};
    string shortest_road="";
};

#endif // MGRAPH_H
