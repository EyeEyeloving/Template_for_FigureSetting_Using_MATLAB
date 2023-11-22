% 案例数据
x = linspace(0,2*pi,100);
y = sin(x);

%% 创建图窗
figure('Units', 'centimeters', 'Position', [1, 1, 10.5, 9.5]);

%% 定义背景颜色表
CMap = {"#F8E16C", "#FFC2B4"};

%% 绘制子图
x_dist = 0.13;
y_top = 0.78;
y_bot = 0.12;
axes_width = 0.8;
axes_height = 0.18;

% 子图1
f1_ax = subplot(4,1,1); hold(f1_ax, "on");
xregion(f1_ax, x(1), x(25), 'FaceColor', CMap{1}, 'FaceAlpha', 0.6);
xregion(f1_ax, x(25), x(50), 'FaceColor', CMap{2}, 'FaceAlpha', 0.6);
xregion(f1_ax, x(50), x(75), 'FaceColor', CMap{1}, 'FaceAlpha', 0.6);
xregion(f1_ax, x(75), x(100), 'FaceColor', CMap{2}, 'FaceAlpha', 0.6);
plot(f1_ax, x, y, 'LineWidth', 1, 'Color', 'black');

% 设置子图属性1
% xlabel(f1_ax, 'Time (s)', 'FontName', 'Cambria', 'FontSize', 10);
ylabel(f1_ax, 'Magnitude', 'FontName', 'Cambria', 'FontSize', 10);
xlim(f1_ax, [0, 2*pi]);
set(f1_ax, 'box', 'on', 'LineWidth', 1, ...
    'XTick', [], ...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [x_dist, y_top, axes_width, axes_height]);


% 子图2
f2_ax = subplot(4,1,2); 
plot(x, y, 'LineWidth', 1, 'Color', 'black');
% 设置子图属性2
ylabel(f2_ax, 'Magnitude', 'FontName', 'Cambria', 'FontSize', 10);
xlim(f2_ax, [0, 2*pi]);
set(f2_ax, 'box', 'on', 'LineWidth', 1,...
    'XTick', [], ...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [x_dist, (y_top-y_bot)/3*2+y_bot, axes_width, axes_height]);


% 子图3
f3_ax = subplot(4,1,3); plot(x, y, 'LineWidth', 1, 'Color', 'black');
% 设置子图属性3
ylabel(f3_ax, 'Magnitude', 'FontName', 'Cambria', 'FontSize', 10);
xlim(f3_ax, [0, 2*pi]);
set(f3_ax, 'box', 'on', 'LineWidth', 1,...
    'XTick', [], ...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [x_dist, (y_top-y_bot)/3+y_bot, axes_width, axes_height]);


% 子图4
f4_ax = subplot(4,1,4); plot(x, y, 'LineWidth', 1, 'Color', 'black');
% 设置子图属性4
xlabel(f4_ax, 'Time (s)', 'FontName', 'Cambria', 'FontSize', 10);
ylabel(f4_ax, 'Magnitude', 'FontName', 'Cambria', 'FontSize', 10);
xlim(f4_ax, [0, 2*pi]);
set(f4_ax, 'box', 'on', 'LineWidth', 1,...
    'FontName', 'Cambria', 'FontSize', 10, ...
    'Position', [x_dist, y_bot, axes_width, axes_height]);
