v1 = State(1,1,1)
deltaT = 2;
maxDepth = 3;
count = 1;
v1.speed = v1.speed+2;
v1.longtitudePosition =v1.longtitudePosition+ v1.speed * deltaT;
allActions= {'A','B','C'};
RooteNodes=[]
n1 = Node([],[],count,v1,allActions,0);

count = count+1;
leafNodes = n1;
for i=1:maxDepth
  for leafNode=leafNodes
      newleafNodes=[];
    for act=allActions
        %expadn
        newleafNode=leafNode.expand(act,count,0);
        newleafNodes= [newleafNodes newleafNode];
        count=count+1;
        
    end
    RooteNodes = [RooteNodes leafNode];
    leafNodes = [leafNodes newleafNodes];
    leafNodes(1)=[];
   end
end

count = count-1;
allNodes = [RooteNodes leafNodes];
sourceNode = [allNodes.sourceNodeID];
targetNode = [allNodes.id]
targetNode(1)=[]

g=digraph (sourceNode,targetNode);
p=plot(g);
p.EdgeLabel = [allNodes.sourceEdgName];