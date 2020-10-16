 %% 
function J = getCost(xTrunk,xShoulder)
    w1=0.5;
    w2=1-w1;
    J = w1*abs(xTrunk).^2 + w2* abs(xShoulder);
end

