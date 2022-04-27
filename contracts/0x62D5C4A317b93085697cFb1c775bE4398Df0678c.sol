contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 1092]
}



// =====================  Runtime code  =====================


address owner;
address dataBaseAddress;
uint256 limit;

function Limit() {
    return limit
}

function DataBase() {
    return dataBaseAddress
}

function Owner() {
    return owner
}

function _fallback() payable {
  stop
}

function Set(address arg1, uint256 arg2) {
    require msg.sender == owner
    limit = arg2
    dataBaseAddress = arg1
}

function transfer(address arg1) payable {
    if msg.value > limit:
        delegate dataBaseAddress with:
           funct (Mask(32, 224, sha3('AddToDB(address)')) >> 224)
             gas gas_remaining - 25710 wei
            args msg.sender
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
