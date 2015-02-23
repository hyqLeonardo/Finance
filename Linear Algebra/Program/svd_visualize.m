% Source: http://neurochannels.blogspot.com/2008/02/visualizing-svd.html

function [U, S, V]=svd_visualize(A, data)
%[U, S, V]=svd_visualize(A, data)
%Function that takes in any 3x3 matrix A and any 3xN matrix 'data' and plots four
%figures:
%1. Original data in standard basis 
%2. Original data rotated into V-basis (columns of V)
%3. Rotated data transformed by singular matrix S, in U-basis (cols of U).
%4. Transformed data rotated back into the standard basis. A*data.
%
%Returns U, S, V, the matrices in the SVD of A (such that A=U*S*V';)
%
%
%Example
% A=[1  1  2;
%    1  0  1;
%    0 -1 -1]
%
%Application to stack of unit circles
% [x,y,z]=pol2cart([0:.2:2*pi],ones(1,32),zeros(1,32)); 
% dat_circle=[x;y;z];
% dat_cylinder=[[dat_circle(1:2,:);zeros(1, 32)], [dat_circle(1:2,:);.2*ones(1, 32)],...
%    [dat_circle(1:2,:);.4*ones(1, 32)] ];
% svd_visualize(A, dat_cylinder)
%
%
%To Do: 
%1. Improve handling of axes for negative numbers.
%2. Add plot of transformed V-basis vectors in U-basis for figure 3?
%
%Eric Thomson
%2/18/08

%1. Calculate the  SVD of A.
[U, S, V]=svd(A); %calculates the SVD
A_rank=rank(A); %picks out number of nonzero singular values (between 0-3)

%2. Getting various parameters for use in plotting
close all %close any open figures
if max(max(A))==0 && min(min(A))==0  %get axis limits for initial figures 
    all_max=1;
else
    all_max=max(max(abs(data)));
end 
E_basis=[1 0 0;0 1 0;0 0 1]; %standard basis
E_in_V=V'*E_basis; %Coordinates of standard basis in V space in R^n
E_in_U=U'*E_basis; %Coordinates of standard basis in U space in R^m

%3. Plot the standard basis, the V-basis, and the data in the standard
%basis coordinate system.
figure
points_E=data;
num_points=size(points_E,2);
%Plot span E bases
plot3([-all_max-all_max*.1 all_max+all_max*.1],[0 0],[0 0],'-', 'Linewidth',1, 'Color','k'); hold on
plot3([0 0],[-all_max-all_max*.1 all_max+all_max*.1],[0 0],'-', 'Linewidth',1, 'Color','k')
plot3([0 0],[0 0],[-all_max-all_max*.1 all_max+all_max*.1],'-', 'Linewidth',1, 'Color','k')
%Plot standard basis with thicker lines
plot3([0 1],[0 0],[0 0],'-', 'Linewidth',2.5, 'Color','k')
plot3([0 0],[0 1],[0 0],'-', 'Linewidth',2.5, 'Color','k')
plot3([0 0],[0 0],[0 1],'-', 'Linewidth',2.5, 'Color','k')
%Plot of V-basis in E-coordinates
for i=1:3
    if i<=A_rank %basis vector in row(A)
        plot3([0 V(1,i)], [0 V(2,i)], [0 V(3,i)],'g','LineWidth',2)
    else %basis vector in nul(A)
        plot3([0 V(1,i)], [0 V(2,i)], [0 V(3,i)],'r','LineWidth',2)
    end
end
%Plot points in E-basis
scatter3(points_E(1,:), points_E(2,:), points_E(3,:), '+');
%Pretty up
grid on;
set(gca, 'GridLineStyle','-','XColor',[.5 .5 .5], 'YColor',[.5 .5 .5],'ZColor',[.5 .5 .5])
xlabel('E1');ylabel('E2');zlabel('E3');
axis([-all_max-.2*all_max all_max+.2*all_max -all_max-.2*all_max all_max+.2*all_max -all_max-.2*all_max all_max+.2*all_max])
axis vis3d
title('Data in standard basis (black) w/V-basis in green and red')

%4. Plot of V'*data, V-basis, and the E-basis in the V-basis. 
figure
points_V=V'*points_E;
%V-spans in V-basis (row space green, null space red)
span_by_color(all_max, A_rank)
%E-basis in V-coordinates
plot3([0 E_in_V(1,1)], [0 E_in_V(2,1)],[0 E_in_V(3,1)],'k')
plot3([0 E_in_V(1,2)], [0 E_in_V(2,2)],[0 E_in_V(3,2)],'k')
plot3([0 E_in_V(1,3)], [0 E_in_V(2,3)],[0 E_in_V(3,3)],'k')
%Plot data in V-basis
scatter3(points_V(1,:), points_V(2,:), points_V(3,:), '+');
%Pretty up
grid on;
set(gca, 'GridLineStyle','-','XColor',[.5 .5 .5], 'YColor',[.5 .5 .5],'ZColor',[.5 .5 .5])
xlabel('V1');ylabel('V2');zlabel('V3');
axis([-all_max-.2*all_max all_max+.2*all_max -all_max-.2*all_max all_max+.2*all_max -all_max-.2*all_max all_max+.2*all_max])
axis vis3d
title('Data in V-basis (green and red) w/ standard basis in black')

%5. Plot action of singular value matrix on above points, in U basis:
%D Matrix produces a point in R^m given a point in R^n
%Plots standard basis (black), U-basis (green and red)
figure
SVX=S*points_V;
if max(max(SVX))==0 && min(min(SVX))==0
    max_val=1;
else
    max_val=max(max(abs(SVX)));
end
%Data points
scatter3(SVX(1,:),SVX(2,:),SVX(3,:), '+'); hold on
%Highlite U basis vectors in this space (col(A) green, nul(A') red
span_by_color(max_val, A_rank)
%Plot E-basis in this U-space.
plot3([0 E_in_U(1,1)], [0 E_in_U(2,1)],[0 E_in_U(3,1)],'k')
plot3([0 E_in_U(1,2)], [0 E_in_U(2,2)],[0 E_in_U(3,2)],'k')
plot3([0 E_in_U(1,3)], [0 E_in_U(2,3)],[0 E_in_U(3,3)],'k')
%Pretty up
grid on;
set(gca, 'GridLineStyle','-','XColor',[.5 .5 .5], 'YColor',[.5 .5 .5],'ZColor',[.5 .5 .5])
xlabel('U1');ylabel('U2');zlabel('U3');
axis([-max_val-.2*max_val max_val+.2*max_val -max_val-.2*max_val max_val+.2*max_val -max_val-.2*max_val max_val+.2*max_val])
axis vis3d
title('Transformed data in U-basis (green/red) w/ standard basis in black');

%6. Next express rotated data in standard basis, i.e., apply U to the data, to get the
%final value of Ax.
figure
U_out=U*SVX;
if max(max(U_out))==0 && min(min(U_out))==0
    max_val=1;
else 
    max_val=max(max(abs(U_out)));
end
%Plot the points
scatter3(U_out(1,:), U_out(2,:), U_out(3,:), '+'); hold on
%Plot standard basis and extension
plot3([-max_val-.2*max_val max_val+.2*max_val], [0 0], [0 0],'k', 'LineWidth',.5);plot3([0 1], [0 0], [0 0],'k','LineWidth',2.5);
plot3([0 0], [-max_val-.2*max_val max_val+.2*max_val], [0 0],'k', 'LineWidth',.5);plot3([0 0], [0 1], [0 0],'k','LineWidth',2.5);
plot3([0 0], [0 0], [-max_val-.2*max_val max_val+.2*max_val],'k', 'LineWidth',.5);plot3([0 0], [0 0], [0 1],'k','LineWidth',2.5);
%Plot U basis 
for i=1:3
    if i<=A_rank %basis vector in row(A)
        plot3([0 U(1,i)], [0 U(2,i)], [0 U(3,i)],'g')
    else %basis vector in nul(A)
        plot3([0 U(1,i)], [0 U(2,i)], [0 U(3,i)],'r')
    end
end
%Pretty up
grid on;
set(gca, 'GridLineStyle','-','XColor',[.5 .5 .5], 'YColor',[.5 .5 .5],'ZColor',[.5 .5 .5])
xlabel('E1');ylabel('E2');zlabel('E3');
axis([-max_val-.2*max_val max_val+.2*max_val -max_val-.2*max_val max_val+.2*max_val -max_val-.2*max_val max_val+.2*max_val])
axis vis3d
title('Final output in standard basis (black) w/ U-basis in green/red')

%####IN LINE FUNCTIONS

%SPAN_BY_COLOR
function span_by_color(all_max, mat_rank)
%In line function for svd_visualize.
%Takes in max value in matrix, and matrix rank, and plots lines along
%standard bases, and plots basis vectors with thick lines such that first mat_rank lines are green and remaining
%lines are red
if mat_rank==0
    plot3([-all_max-all_max*.1 all_max+all_max*.1],[0 0],[0 0],'-', 'Linewidth',1, 'Color','r'); hold on
    plot3([0 0],[-all_max-all_max*.1 all_max+all_max*.1],[0 0],'-', 'Linewidth',1, 'Color','r')
    plot3([0 0],[0 0],[-all_max-all_max*.1 all_max+all_max*.1],'-', 'Linewidth',1, 'Color','r');
    H=plot3([0 1], [0 0],[0 0], 'r', [0 0], [0 1], [0 0], 'r', ...
              [0 0],[0 0], [0 1], 'r'); set(H,'LineWidth',2.5); hold on
elseif mat_rank==1
    plot3([-all_max-all_max*.1 all_max+all_max*.1],[0 0],[0 0],'-', 'Linewidth',1, 'Color','g'); hold on
    plot3([0 0],[-all_max-all_max*.1 all_max+all_max*.1],[0 0],'-', 'Linewidth',1, 'Color','r')
    plot3([0 0],[0 0],[-all_max-all_max*.1 all_max+all_max*.1],'-', 'Linewidth',1, 'Color','r')  
    H=plot3([0 1], [0 0],[0 0], 'g', [0 0], [0 1], [0 0], 'r', ...
              [0 0],[0 0], [0 1], 'r');set(H,'LineWidth',2.5); hold on
elseif mat_rank==2
    plot3([-all_max-all_max*.1 all_max+all_max*.1],[0 0],[0 0],'-', 'Linewidth',1, 'Color','g'); hold on
    plot3([0 0],[-all_max-all_max*.1 all_max+all_max*.1],[0 0],'-', 'Linewidth',1, 'Color','g')
    plot3([0 0],[0 0],[-all_max-all_max*.1 all_max+all_max*.1],'-', 'Linewidth',1, 'Color','r')  
    H=plot3([0 1], [0 0],[0 0], 'g', [0 0], [0 1], [0 0], 'g', ...
              [0 0],[0 0], [0 1], 'r');set(H,'LineWidth',2.5); hold on
else
    plot3([-all_max-all_max*.1 all_max+all_max*.1],[0 0],[0 0],'-', 'Linewidth',1, 'Color','g'); hold on
    plot3([0 0],[-all_max-all_max*.1 all_max+all_max*.1],[0 0],'-', 'Linewidth',1, 'Color','g')
    plot3([0 0],[0 0],[-all_max-all_max*.1 all_max+all_max*.1],'-', 'Linewidth',1, 'Color','g')  
    H=plot3([0 1], [0 0],[0 0], 'g', [0 0], [0 1], [0 0], 'g', ...
              [0 0],[0 0], [0 1], 'g');set(H,'LineWidth',2.5); hold on
end
