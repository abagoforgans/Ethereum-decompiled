contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 0
    address(stor0.field_0) = msg.sender
    return code.data[68 len 2421]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of address stor3;
mapping of uint8 stor4;
address mainSaleAddress;
address payTokenAddress;
uint256 stor6;

function mintingFinished() {
    return bool(stor0)
}

function totalSupply() {
    return totalSupply
}

function sub_5631534c(?) {
    return bool(stor4[arg1])
}

function mainSale() {
    return mainSaleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function payToken() {
    return address(payTokenAddress)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_332fd111(?) {
    require owner == msg.sender
    if arg1:
        mainSaleAddress = arg1
        require ext_code.size(arg1)
        call arg1.0xfc0c546a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
}

function sub_9dba4aab(?) {
    require not stor0
    require owner == msg.sender
    require mainSaleAddress
    require address(payTokenAddress)
    stor0 = 1
    emit SaleClosed()
    require ext_code.size(mainSaleAddress)
    call mainSaleAddress.authorizedCreateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), totalSupply
    require ext_call.success
}

function sub_9004d251(?) {
    require owner == msg.sender
    require not stor4[arg6]
    require not stor0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit 0x61fb2b94: address(arg1), arg2, arg3, arg4, arg5, arg6
    stor4[arg6] = 1
}

function disburseTokens() {
    require owner == msg.sender
    require stor0
    s = 0
    while gas_remaining > 100000:
        if stor3.length <= 0:
        require stor3.length - 1 < stor3.length
        require ext_code.size(address(payTokenAddress))
        call address(payTokenAddress).tradingStarted() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require stor0
        mem[132] = balanceOf[address(stor3[stor3.length])]
        require ext_code.size(address(payTokenAddress))
        call address(payTokenAddress).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(stor3[stor3.length]), balanceOf[address(stor3[stor3.length])]
        require ext_call.success
        require balanceOf[address(stor3[stor3.length])] <= totalSupply
        totalSupply -= balanceOf[address(stor3[stor3.length])]
        mem[0] = address(stor3[stor3.length])
        mem[32] = 2
        balanceOf[address(stor3[stor3.length])] = 0
        mem[96] = address(stor3[stor3.length])
        mem[128] = balanceOf[address(stor3[stor3.length])]
        emit 0x2d987294: address(stor3[stor3.length]), balanceOf[address(stor3[stor3.length])]
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            mem[0] = 3
            idx = stor3.length + sha3(3) - 1
            while sha3(3) + stor3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        s = address(stor3[stor3.length])
        continue 
}



}
