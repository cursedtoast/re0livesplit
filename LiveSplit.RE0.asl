state("re0hd")
{
    float time : "re0hd.exe", 0x009CEF28, 0x180, 0x104, 0x1c, 0x310, 0x18c;
}

start
{
    return current.time < old.time;
}


split
{
}

isLoading
{
    return current.time < old.time;
}

gameTime
{
    return TimeSpan.FromSeconds(current.time / 30);
}

