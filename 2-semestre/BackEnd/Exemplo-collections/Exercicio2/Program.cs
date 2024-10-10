int option = 0;
StockManager stockManager = new StockManager();

do
{
    Console.WriteLine("---------------------------------");
    Console.WriteLine("Escolha uma opção:");
    Console.WriteLine("1 - Cadastrar novo produto.");
    Console.WriteLine("2 - Remover produto.");
    Console.WriteLine("3 - Pesquisar um produto.");
    Console.WriteLine("4 - Listar produtos.");
    Console.WriteLine("0 - Sair.");

    option = Convert.ToInt32(Console.ReadLine());

    switch(option)
    {
        case 0: 
            Console.WriteLine("Saindo do programa.");
            break;

        case 1: 
            Console.WriteLine("---------------------------------");
            Console.WriteLine("Informe o nome do produto:");
		    string name = Console.ReadLine();
		    Console.WriteLine("Informe o preço do produto:");
            double price = Convert.ToDouble(Console.ReadLine());
            stockManager.AddProduct(name, price);
            break; // Corrigido - adicionado o break

        case 2: 
            Console.WriteLine("---------------------------------");
            Console.WriteLine("Informe o nome do produto:");
            name = Console.ReadLine();
            if(stockManager.Remove(name)) {
                Console.WriteLine($"Produto {name} removido com sucesso!");
            } else {
                Console.WriteLine("O produto não existe.");
            }
            break; // Corrigido - adicionado o break corretamente

        case 3: 
            Console.WriteLine("---------------------------------");
            Console.WriteLine("Informe o nome do produto:");
            name = Console.ReadLine();
		    Console.WriteLine(stockManager.SearchProduct(name));
		    break;

        case 4: 
            Console.WriteLine("---------------------------------");
            stockManager.ListAllProduct();
            break;

        default:
            Console.WriteLine("---------------------------------");
            Console.WriteLine("Opção Inválida!");
            break;
    }
    
} while(option != 0);
