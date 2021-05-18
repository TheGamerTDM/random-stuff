using System;

namespace e_atmhehe
{
    class Program
    {
        static void Main(string[] args)
        {
            int atm = 1000, amountwith, pin = 2244, pin1;
            while (true)
            {
                Console.Write("Enter pin: ");
                pin1 = int.Parse(Console.ReadLine());
                bool brakewhile = true;
                while (brakewhile == true)
                {
                    if (pin1 == pin)
                    {
                        Console.WriteLine("Wellcome to your bank");
                        Console.WriteLine("1: To chech balance");
                        Console.WriteLine("2: To Withdraw");
                        Console.WriteLine("3: To deposit");
                        Console.WriteLine("4: Chang pin");
                        Console.Write("Chose: ");
                        int choice = int.Parse(Console.ReadLine());

                        switch (choice)
                        {
                            case 1:
                                Console.WriteLine("Your current balance is: " + atm);

                                break;
                            case 2:
                                Console.Write("How much to withdraw: ");
                                amountwith = int.Parse(Console.ReadLine());
                                if (atm >= amountwith)
                                {
                                    if (amountwith % 25 == 0)
                                    {
                                        Console.WriteLine("Please collect the cash " + amountwith);
                                        atm = atm - amountwith;
                                        Console.WriteLine("Your current balance is now: " + atm);
                                    }
                                    else
                                    {
                                        Console.WriteLine("Please enter the amount to withdraw in the multiples of 25.");
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("Youre account doesnt have enough money.");
                                }

                                break;
                            case 3:
                                Console.Write("Insert your deposit: ");
                                amountwith = int.Parse(Console.ReadLine());
                                atm = atm + amountwith;
                                Console.WriteLine("This is how much you have in your bank: " + atm);

                                break;
                            case 4:
                                Console.Write("Enter your previous pin: ");
                                int prepin = int.Parse(Console.ReadLine());
                                if (prepin == pin)
                                {
                                    Console.Write("Enter your new pin: ");
                                    pin = int.Parse(Console.ReadLine());
                                    
                                    Console.WriteLine("Your pin has change");
                                    brakewhile = false;
                                }
                                else
                                {
                                    Console.WriteLine("Wrong wpin.");
                                }

                                break;
                            default:
                                Console.WriteLine("Please select correct option");
                                break;
                        }
                    }
                    else
                    {
                        Console.WriteLine("Wrong pin");
                        brakewhile = false;
                    }
                }
            }

        }
    }
}
