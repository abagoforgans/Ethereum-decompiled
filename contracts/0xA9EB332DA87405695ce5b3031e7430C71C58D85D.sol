contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 462]




// =====================  Runtime code  =====================


uint256 numRef;
mapping of struct customers;

function customers(address arg1) payable {
    return customers[arg1].field_0, customers[arg1].field_256
}

function numRef() payable {
    return numRef
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) payable {
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    emit withdrawFlag(msg.sender, arg1, customers[address(msg.sender)].field_256);
    return 1
}

function deposit(address arg1) payable {
    customers[address(arg1)].field_256 += msg.value
    numRef++
    customers[address(arg1)].field_0 = numRef
    if 0 == msg.value:
        return 0
    emit depositFlag(msg.sender, customers[address(arg1)].field_256, customers[address(arg1)].field_0);
    return 1
}



}
