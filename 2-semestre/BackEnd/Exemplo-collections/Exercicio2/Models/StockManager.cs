public class StockManager
{
    public List<Product> Products = new List<Product>();

    public void AddProduct(string name, double price)
    {
        Products.Add(new Product(name,price));
    }

    public bool RemoveProduct(string name)
    {
        foreach(Product product in Products)
        {
            if(product.Name.Equals(name))
            {
                Products.Remove(product);
                return true;
            }
        }
        return false;
    }

    public string SearchProduct(string name)
    {
        foreach(Product product in Products)
        {
            if(product.Name.Equals(name))
            return product.ToString();
        }
        return "Product not found!";
    }

    public void ListAllProduct()
    {
        foreach(Product product in Products)
            Console.WriteLine(product);
    }
}