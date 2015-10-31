function nabla = nabla(u,alpha,coefficient)

%% ---------calculate the nabla alpha for matrix u-------
%-------------------计算矩阵u的梯度算子程序------------------------
% coefficient = 0 代表矩阵u的x方向梯度算子
% coefficient = 1 代表矩阵u的y方向梯度算子
% alpha-----------代表矩阵u的y方向梯度算子
% u---------------代表矩阵u的y方向梯度算子
% nabla-----------代表计算u得到的x或y方向梯度算子

%% 阶次及梯度算子判断
if coefficient ~= 0 && coefficient ~= 1
    error('错误：请输入正确的梯度算子，0代表x梯度，1代表y梯度');
end

if alpha < 0
    error('错误：请输入正确的阶次');
end

%% 初始化变量
u=double(u);
[n1,n2] = size(u); % n1 and n2 :the heiht and weith of u
nabla= zeros(n1,n2);
n_max=max(n1,n2);

%% 计算ck_alpha矩阵
cka = zeros(1,n_max);
cka(1) = 1;
for k=2:n_max
    cka(k) = cka(k-1)*(1-(alpha+1)/(k-1));
end

%% nabla_x 计算矩阵u的x向梯度算子
if coefficient == 0
    for i=1:n1
        row = zeros(i,n2);
        for j=1:i
            row(j,:) = cka(j)*u(i-j+1,:);
        end 
        nabla(i,:) = sum(row,1); %% 求矩阵的各列之和       
    end
end

%% nabla_y 计算矩阵u的y向梯度算子
if coefficient == 1
    for i=1:n2
        line = zeros(n1,i);
        for j=1:i
            line(:,j) = cka(j)*u(:,i-j+1);     
        end
        nabla(:,i) = sum(line,2);
    end    
end

%% 输出计算得到的nabla算子
nabla = double(nabla);


abc

