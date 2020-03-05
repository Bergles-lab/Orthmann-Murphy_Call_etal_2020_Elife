function plotVolumes(name,index,xmlstruct,fldr)
[c1,c2] = getFigColors;
if contains(fldr,'ctrl')
    color = c1;
elseif contains(fldr,'cupr')
    color = c2;
elseif contains(fldr,{'bzaS','bsln'})
    color = [0.5 0.5 0.5];
end
q=[]; 
for i = 1:length(index)
    q = [q; xmlstruct.paths(index(i)).points.smoothed];
end
% q(:,3) = q(:,3).*-1;
c = getCenter(name);
q = q-c;
% figure
% subplot(1,2,1)
% shp = alphaShape(q);
% shp.Alpha = 35;
% plot(shp,'FaceColor',color,'FaceAlpha',0.1,'EdgeAlpha',0.1,'FaceLighting','gouraud')
% hold on
% plot3(q(:,1),q(:,2),q(:,3),[color '.'])
% subplot(1,2,2)
plot3(q(:,1),q(:,2),q(:,3),'.','Color',color)
% hold off
end