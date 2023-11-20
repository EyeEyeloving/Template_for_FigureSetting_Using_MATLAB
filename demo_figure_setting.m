% 案例数据
x = linspace(0,2*pi,100);
y = sin(x);

% 创建图窗
figure('Units', 'centimeters', 'Position', [1, 1, 10.5, 7.5]);
% 定义颜色表
CMap = {"#3A93FF", "#FF456D", "#3A93FF", "#FF456D"};

% 绘制子图
f1_ax = subplot(2,2,1); plot(x, y, 'LineWidth', 1, 'Color', CMap{1});
f2_ax = subplot(2,2,2); plot(x, y, 'LineWidth', 1, 'Color', CMap{2});
f3_ax = subplot(2,2,3); plot(x, y, 'LineWidth', 1, 'Color', CMap{3});
f4_ax = subplot(2,2,4); plot(x, y, 'LineWidth', 1, 'Color', CMap{4});

% 设置子图属性
set(f1_ax, 'box', 'on', 'LineWidth', 1, ...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [0.13, 0.58, 0.33, 0.34]);
set(f2_ax, 'box', 'on', 'LineWidth', 1,...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [0.57, 0.58, 0.33, 0.34]);
set(f3_ax, 'box', 'on', 'LineWidth', 1,...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [0.13, 0.11, 0.33, 0.34]);
set(f4_ax, 'box', 'on', 'LineWidth', 1,...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [0.57, 0.11, 0.33, 0.34]);
