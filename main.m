v1 = State(1,1,1)
deltaT = 2;
maxDepth = 1;
count = 1;
v1.speed = v1.speed+2;
v1.longtitudePosition =v1.longtitudePosition+ v1.speed * deltaT;
v1.speed
v1.longtitudePosition
allActions= {'A','B','C'};
n1 = Node([],[],count,v1,allActions,0);
Nodes = n1;
count = count+1;
n1
for i=1:maxDepth
    for act=n1.actions
        %expadn
        new_Node=n1.expand(act,count,0)
        Nodes= [Nodes new_Node]
        count=count+1;
        
    end
end

count = count-1;
sourceNode = [Nodes.sourceNodeID];
targetNode = [Nodes.id];
g=digraph (sourceNode,targetNode(2:end));
p=plot(g);
p.EdgeLabel = [Nodes.sourceEdgName]