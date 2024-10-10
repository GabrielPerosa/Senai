Product [] products = new Product[5];

products[0]=new Product("Camiseta", 30.50);
products[1]=new Product("Calça", 140.90);
products[2]=new Product("Blusa", 99.99);
products[3]=new Product("Sapato", 250);
products[4]=new Product("Meia", 20);

Product maior = products[0];

for (int i=0; i<products.Length;i++)
{
    if (products[i].Price > maior.Price)
    maior=products[i];
}

Product segundoMaior = products[0];
for (int i=0; i<products.Length;i++)
{
    if (products[i].Price>segundoMaior.Price && !products[i].Name.Equals(maior.Name))
    segundoMaior = products[i];
}

Console.WriteLine($"Produto mais caro : {maior}");
Console.WriteLine($"Segundo produto mais caro : {segundoMaior}");
