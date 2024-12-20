void main(){
BankAccount account1 = BankAccount('012', 20000);

BankAccount account2 = BankAccount.init('345');

account1.displayAccountInfo();

print('=================================');

account2.displayAccountInfo();

account2.balance = 5000;

print('=================================');
account2.displayAccountInfo();
account2.withdraw(-500);
print('=================================');
account1.deposit(100000);
print('=================================');
account1.withdraw(3000000);
print('=================================');
account1.displayAccountInfo();
print('=================================');
account2.displayAccountInfo();



}

class BankAccount{
  // attributes
  String accountID;
 late double balance ;

  BankAccount(this.accountID,this.balance);
  //named constructor
  BankAccount.init(this.accountID){
    balance = 0;
  }

   // withdraw
 void withdraw(double amount){
    if(amount >0 ){
     if(balance>=amount){
       balance -= amount ;
       print('Transaction done successfully ');
     }else{
       print('Error,The Balance is not sufficient ');
     }
    }else{
      print('Error,please enter a positive amount ');
    }
  }

  // deposit
  void deposit(double amount){
    balance = balance + amount;
    print('Transaction done successfully');
  }

  // displayAccountInfo
  void displayAccountInfo(){
  print('AccountId :$accountID\n'
      'Balance : $balance');
}

}