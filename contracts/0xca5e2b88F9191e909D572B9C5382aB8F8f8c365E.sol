contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[2045 len 4767]
    require create.new_address
    stor2 = address(create.new_address)
    return code.data[229 len 1816]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address tokenAddress;
uint256 totalSupply;
uint256 totalAmount;
uint256 currentAmount;
uint256 transactionCounter;

function transactionCounter() {
    return transactionCounter
}

function totalSupply() {
    return totalSupply
}

function totalAmount() {
    return totalAmount
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function currentAmount() {
    return currentAmount
}

function token() {
    return tokenAddress
}

function confirmOwner() {
    require newOwner == msg.sender
    owner = newOwner
    newOwner = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function withdraw() {
    require owner == msg.sender
    call msg.sender with:
       value currentAmount wei
         gas 3 * 10^6 wei
    require ext_call.success
    currentAmount = 0
}

function _fallback() payable {
    require totalAmount + msg.value >= totalAmount
    totalAmount += msg.value
    require currentAmount + msg.value >= currentAmount
    currentAmount += msg.value
    require totalSupply + msg.value >= totalSupply
    totalSupply += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    transactionCounter++
}



}
