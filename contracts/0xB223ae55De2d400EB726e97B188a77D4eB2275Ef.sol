contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 1
    require not msg.value
    stor0 = msg.sender
    stor3 = code.data[9705 len 20]
    stor1 = code.data[9673 len 20]
    require ext_code.size(code.data[9673 len 20])
    call code.data[9673 len 20].0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    mem[8236] = code.data[9673 len 20]
    mem[8268] = code.data[9705 len 20]
    create contract with 0 wei
                    code: code.data[1585 len 8076], mem[8236 len 64]
    require create.new_address
    stor4 = address(create.new_address)
    return code.data[386 len 1199]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
address sub_6849844bAddress;
address sub_04940318Address;
address routerAddress;

function sub_04940318(?) {
    return sub_04940318Address
}

function routerAddress() {
    return routerAddress
}

function sub_6849844b(?) {
    return sub_6849844bAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_b84693f9(?) {
    require routerAddress == msg.sender
    selfdestruct(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    require msg.value >= 10^18
    if msg.value:
        require msg.value
        require stor2 * msg.value / msg.value == stor2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * stor2 * msg.value / 10^18
    require ext_call.success
}

function sub_55870233(?) {
    require tokenAddress == msg.sender
    require arg2 > 0
    if arg2:
        require arg2
        require 75 * arg2 / arg2 == 75
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return (75 * arg2 / 100)
}

function buyTokens(address arg1, uint256 arg2) {
    require arg2 >= 10^18
    if arg2:
        require arg2
        require stor2 * arg2 / arg2 == stor2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * stor2 * arg2 / 10^18
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 1
}



}
