#include "mgraph.h"
#include <iostream>
#include <fstream>
#include <QUrl>
#include <QDebug>
using namespace std;

MGraph::MGraph(int n,int e)
{
    vertexNum=n;
    arcNum=e;
    fstream input;
    input.open("../homework/Data/input.txt",ios_base::in);
    string s;

    fstream ordinate;
    ordinate.open("../homework/Data/coordinate.txt",ios_base::in);
    string ss;


    for(int i=0;i<vertexNum;i++){
        for(int j=0;j<vertexNum;j++){
            arc[i][j]=MAX_LENGTH;
        }
    }

        //x为起始点 y为终点 l为长度
        int x=0;int y=0;int l=0;

        //此处从txt读入
        arc[0][5]=150;
        arc[5][0]=150;
        while(getline(input,s))
        {
            input>>x>>y>>l;

            arc[x][y]=l;
            arc[y][x]=l;
        }

        //初始化vertex数组
        for(int i=0;i<vertexNum;i++)
            vertex[i]=i;

        //初始化坐标
        for(int i=0;i<20;i++)
            for(int j=0;j<2;j++)
                coodinate[i][j]=0;

        coodinate[0][0]=215;
        coodinate[0][1]=366;
        //从文件中读取坐标
        while(getline(ordinate,ss)){
            int num,x,y;
            ordinate>>num>>x>>y;
//            qDebug()<<x<<y<<num<<endl;
            coodinate[num][0]=x;
            coodinate[num][1]=y;
        }

}

MGraph::~MGraph(){

}

int MGraph::search_coodinate_x(int num){
    return coodinate[num][0];
}

int MGraph::search_coodinate_y(int num){
    return coodinate[num][1];
}

void MGraph::DFS(int v){
    char x[2];
    x[0] = char(vertex[v]);
    string tool(x,1);
    shortest_road = shortest_road + tool;
    qDebug()<<vertex<<vertex[v];
    visited[v]=1;
    for(int i=0;i<vertexNum;i++){
        if(arc[v][i]<MAX_LENGTH && visited[i]==0){
            DFS(i);
        }
    }
}
