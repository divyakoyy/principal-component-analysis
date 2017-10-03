function p = variancePercentage(s)
    v = s.*s;
    tot = sum(v);
    v = v/tot;
    p = 100*cumsum(v);
end