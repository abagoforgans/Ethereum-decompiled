contract main {


// =======================  Init code  ======================


array of uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    mem[96 len -9165] = code.data[9509 len -9165]
    mem[64] = -9069
    stor7[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor8 = mem[128]
    stor9 = msg.sender
    return code.data[344 len 9165]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - update()
#
address stor1;
uint256 price;
uint256 lastUpdate;
array of uint256 currency;
uint256 decimalUnits;
address stor9;

function decimalUnits() {
    return decimalUnits
}

function price() {
    return price
}

function lastUpdate() {
    return lastUpdate
}

function currency() {
    return currency[0 len currency.length]
}

function deactivate() {
    require msg.sender == stor9
    selfdestruct(stor9)
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function getPrice() {
    require ext_code.size(stor1)
    call stor1.getPrice(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=3, data='URL')
    require ext_call.success
    return ext_call.return_data[0]
}



}
