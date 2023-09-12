clear,clc
close all
%% generate 12 good views for wiki data
temp = dlmread('wiki_dw32.txt'); 
temp2 = temp(2:end, 2:end); 
id_1 = temp(2:end, 1); % node IDs
[~, id] = sort(id_1 , 'ascend');
View1 = temp2(id , :);% 2405 by 32, IDs are 0, 1, 2, 3, 4, 5,..., 2404

temp = dlmread('wiki_dw64.txt'); 
temp2 = temp(2:end, 2:end); 
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View2 = temp2(id , :);

temp = dlmread('wiki_dw128.txt'); 
temp2 = temp(2:end, 2:end); 
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View3 = temp2(id , :);

temp = dlmread('wiki_node32.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View4 = temp2(id , :);

temp = dlmread('wiki_node64.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View5 = temp2(id , :);

temp = dlmread('wiki_node128.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View6 = temp2(id , :);

temp = dlmread('wiki_grarep128.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View7 = temp2(id , :);

temp = dlmread('wiki_hope128.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View8 = temp2(id , :);

%% Median views

temp = dlmread('wiki_gf128.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View9 = temp2(id , :);

temp = dlmread('wiki_o2line32.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View10 = temp2(id , :);

temp = dlmread('wiki_o2line128.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View11 = temp2(id , :);

temp = dlmread('wiki_grarep32.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View12 = temp2(id , :);

temp = dlmread('wiki_hope32.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View13 = temp2(id , :);

temp = dlmread('wiki_gf32.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View14 = temp2(id , :);

% other views
temp = dlmread('wiki_dw200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View15 = temp2(id , :);

temp = dlmread('wiki_node200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View16 = temp2(id , :);

temp = dlmread('wiki_grarep200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View17 = temp2(id , :);

temp = dlmread('wiki_hope200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View18 = temp2(id , :);

temp = dlmread('wiki_gf200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View19 = temp2(id , :);

temp = dlmread('wiki_o2line200.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View20 = temp2(id , :);

temp = dlmread('wiki_dw16.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View21 = temp2(id , :);

temp = dlmread('wiki_node16.txt'); 
temp2 = temp(2:end, 2:end);
id_1 = temp(2:end, 1); 
[~, id] = sort(id_1 , 'ascend');
View22 = temp2(id , :);

temp = dlmread('Wiki_category.txt'); 
wiki_lab = temp(:,2);
temp = dlmread('Wiki_edgelist.txt'); 
wiki_edg = temp;

%% "--network", required=True,
% help='A .mat file containing the adjacency matrix and node labels of the input network.
% covert sparse double A to full storage matrix: full(A); the other way
% sparse(full(A))=A

save('wiki22view.mat', 'wiki_lab', 'View1','View2', 'View3', 'View4', 'View5', 'View6','View7', 'View8', 'View9', 'View10', 'View11', 'View12', 'View13', 'View14', 'View15', 'View16', 'View17', 'View18', 'View19', 'View20', 'View21', 'View22')

% generate network.mat and group.mat in the format of sparse double
% network.mat size is the number of nodes by the number of nodes
% graph.mat size is the number of nodes by the number of labels
group1 = zeros(length(wiki_lab) , max(wiki_lab)+1);
for j = 1 : length(wiki_lab)
    group1(j , wiki_lab(j)+1) = 1;
end
 group = sparse(group1);
network1 = zeros(length(wiki_lab) , length(wiki_lab));
for i = 1 : size(wiki_edg , 1)
    temp = wiki_edg(i , :);
    network1(temp(1)+1 , temp(2)+1) = 1;
    network1(temp(2)+1 , temp(1)+1) = 1;
end
 network = sparse(network1);

save('wikiGraph.mat', 'group', 'network');

