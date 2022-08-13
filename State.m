classdef State
    %STATE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        longtitudePosition
        lateralPosition
        speed
    end
    
    methods
        function obj = State(longtitudePosition,lateralPosition,speed)
            %STATE Construct an instance of this class
            %   Detailed explanation goes here
            obj.longtitudePosition = longtitudePosition;
            obj.lateralPosition = lateralPosition;
            obj.speed = speed;
        end
        
    end
end

