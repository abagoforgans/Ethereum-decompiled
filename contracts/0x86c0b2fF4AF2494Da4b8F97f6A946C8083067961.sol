contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[63 len 1190]
}



// =====================  Runtime code  =====================


uint256 sub_560a5635;
address tokenAddress;
uint256 stor1;
address owner;

function sub_560a5635(?) {
    return sub_560a5635
}

function owner() {
    return owner
}

function token() {
    return address(tokenAddress)
}

function _fallback() {
  stop
}

function sub_fe565c91(?) {
    require msg.sender == owner
    sub_560a5635 = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_df4e3460(?) {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() {
    require sub_560a5635
    if msg.value / sub_560a5635 > 0:
        call owner with:
           value sub_560a5635 * msg.value / sub_560a5635 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, msg.value / sub_560a5635
            require ext_call.success
}



}
