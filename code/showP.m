function showP(pAll, p)

kMax = 100;
clf
hold on

if nargin >= 2
    ord = 15;
    [~, order] = sort(p(ord, :), 'descend');
    ps = p(:, order);
    digit = 0:9;
    nd = length(digit);
    leg = cell(nd, 1);
    for d = 1:nd
        leg{d} = sprintf('%d', digit(order(d)));
    end
    leg{end+1} = 'all';
    plot(ps(1:kMax, :))
    style = ':k';
else
    style = '-';
end


hold on
plot(pAll(1:kMax), style, 'LineWidth', 2)

if nargin >= 2
    legend(leg, 'Location', 'southeast')
end

xlabel('k')
ylabel('preserved variance (percent)')
set(gca, 'FontSize', 18)
set(gcf, 'Color', [1 1 1])