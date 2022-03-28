contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x362bb67f7fdbdd0dbba4bce16da6a284cf484ed6
    return code.data[65 len 1295]
}



// =====================  Runtime code  =====================


address icoAddress;
array of address investors;
mapping of uint256 balanceOf;
mapping of uint8 stor3;

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
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if msg.value > 0:
        if not stor3[address(msg.sender)]:
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = investors.length + 1
                while investors.length > idx:
                    uint256(investors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length]) = msg.sender
            stor3[address(msg.sender)] = 1
        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require msg.value + balanceOf[address(msg.sender)] >= msg.value
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
