contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x7be89db09b0c1023fd0407b24b98810ae97f61c1
    return code.data[65 len 1275]
}



// =====================  Runtime code  =====================


address icoAddress;
array of address investors;
mapping of uint256 balanceOf;

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function ico() {
    return icoAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function getNumInvestors() {
    return investors.length
}

function withdraw() {
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function isInvestor(address arg1) {
    idx = 0
    while idx < investors.length:
        mem[0] = 1
        if address(investors[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function _fallback() payable {
    idx = 0
    while idx < investors.length:
        mem[0] = 1
        if address(investors[idx]) != msg.sender:
            idx = idx + 1
            continue 
        balanceOf[address(msg.sender)] += msg.value
    investors.length++
    if not investors.length <= investors.length + 1:
        idx = investors.length + 1
        while investors.length > idx:
            uint256(investors[idx]) = 0
            idx = idx + 1
            continue 
    address(investors[investors.length]) = msg.sender
    balanceOf[address(msg.sender)] += msg.value
}

function buyTokens(uint256 arg1, uint256 arg2) {
    if arg2 <= investors.length:
        idx = arg1
        s = 0
        while idx < arg2:
            require idx < investors.length
            mem[0] = address(investors[idx])
            mem[32] = 2
            if balanceOf[address(stor1[idx])] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < investors.length
            mem[32] = 2
            balanceOf[address(stor1[idx])] = 0
            mem[0] = 1
            mem[96] = 0x3f9c79300000000000000000000000000000000000000000000000000000000
            mem[100] = address(investors[idx])
            require ext_code.size(icoAddress)
            call icoAddress.invest(address rg1) with:
               value balanceOf[address(stor1[idx])] wei
                 gas gas_remaining - 9050 wei
                args address(investors[idx])
            require ext_call.success
            idx = idx + 1
            s = balanceOf[address(stor1[idx])]
            continue 
    else:
        idx = arg1
        s = 0
        while idx < investors.length:
            mem[0] = address(investors[idx])
            mem[32] = 2
            if balanceOf[address(stor1[idx])] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < investors.length
            mem[32] = 2
            balanceOf[address(stor1[idx])] = 0
            mem[0] = 1
            mem[96] = 0x3f9c79300000000000000000000000000000000000000000000000000000000
            mem[100] = address(investors[idx])
            require ext_code.size(icoAddress)
            call icoAddress.invest(address rg1) with:
               value balanceOf[address(stor1[idx])] wei
                 gas gas_remaining - 9050 wei
                args address(investors[idx])
            require ext_call.success
            idx = idx + 1
            s = balanceOf[address(stor1[idx])]
            continue 
}



}
