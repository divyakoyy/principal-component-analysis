function p = variancePercentage(s)
    s = s.*s;
    sum_s = sum(s);
    s = 100*(s/sum_s);
    p = cumsum(s);
end