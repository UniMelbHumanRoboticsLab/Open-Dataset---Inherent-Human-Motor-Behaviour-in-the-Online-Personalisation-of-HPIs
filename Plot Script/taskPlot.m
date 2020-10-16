function taskPlot(x,y,titleStr,xlabelStr,ylabelStr,lineColor,faceColor)
    plot(x,y,'bo','MarkerSize',8,'MarkerFaceColor',faceColor,'Color',lineColor,'LineWidth',1.0);
    title(titleStr);
    xlabel(xlabelStr);
    ylabel(ylabelStr);
end
