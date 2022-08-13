classdef Node
    %NODE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        sourceNodeID
        sourceEdgName
        id
        state
        actions
        targetNodeID
        unseftyValue
    end
    
    methods
        function obj = Node(sourceNodeID,sourceEdgName,id,state,actions,unseftyValue)
            %NODE Construct an instance of this class
            %   Detailed explanation goes here
            obj.sourceNodeID =sourceNodeID;
            obj.sourceEdgName = sourceEdgName;
            obj.id=id;
            obj.state=state;
            obj.actions=actions;
            obj.targetNodeID=[];
            obj.unseftyValue = unseftyValue;
        end
        function newNode = expand(obj,action,count,unseftyValue)
            
            newNode=Node(obj.id,action,count,obj.state,obj.actions,unseftyValue)
        end
    
        
      
    end
end

