#include "floyd.h"
#include "mgraph.h"
#include <string>
#include <iostream>
#include <QDebug>

using namespace std;

Floyd::Floyd(MGraph G)
{
    //初始化
    for(int i=0;i<G.vertexNum;i++){
        for(int j=0;j<G.vertexNum;j++){
            dist[i][j]=G.arc[i][j];
            if(dist[i][j]!=MAX_LENGTH){
               char c[2];
               c[0] = char(G.vertex[i]);
               c[1] =  char(G.vertex[j]);
               string toolstring(c,2);
               path[i][j] = toolstring;
               //qDebug()<<"debug"<<G.vertex[i]<<G.vertex[j]<<(int)path[i][j][0]<<(int)path[i][j][1];
            }

            else
                path[i][j]="";

        }
    }
    for(int k=0;k<G.vertexNum;k++){
        for(int i=0;i<G.vertexNum;i++){
            for(int j=0;j<G.vertexNum;j++)
                if(dist[i][k]+dist[k][j]<dist[i][j]){
                    dist[i][j]=dist[i][k]+dist[k][j];
                    path[i][j]=path[i][k]+path[k][j];
                }
        }
    }
}

string Floyd::search_shortest(int start,int end){
    return path[start][end];
}

int Floyd::shortest_road_length(int start,int end){
    return dist[start][end];
}


