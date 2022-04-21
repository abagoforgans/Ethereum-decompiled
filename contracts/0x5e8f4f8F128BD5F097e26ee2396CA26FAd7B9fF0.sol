contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;

function _fallback() {
    stor0 = 0x6db11eed5efa50e27de0db13be61a32708eccd3e
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = 0x1422e50c643364e5d1325d22b939d7c3489f52af
        stor1.length++
        address(stor1[stor1.length]) = 0xd8a71f92ca9cf3ec4a17044365f3212ba003b297
        stor1.length++
        address(stor1[stor1.length]) = 0x59b9128e7387d2db806e41cef5ac9d365946b03a
        stor1.length++
    else:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
        address(stor1[stor1.length]) = 0x1422e50c643364e5d1325d22b939d7c3489f52af
        stor1.length++
        if not stor1.length > stor1.length + 1:
            address(stor1[stor1.length]) = 0xd8a71f92ca9cf3ec4a17044365f3212ba003b297
            stor1.length++
            address(stor1[stor1.length]) = 0x59b9128e7387d2db806e41cef5ac9d365946b03a
            stor1.length++
        else:
            idx = stor1.length + 1
            while stor1.length > idx:
                uint256(stor1[idx]) = 0
                idx = idx + 1
                continue 
            address(stor1[stor1.length]) = 0xd8a71f92ca9cf3ec4a17044365f3212ba003b297
            stor1.length++
            if not stor1.length > stor1.length + 1:
                address(stor1[stor1.length]) = 0x59b9128e7387d2db806e41cef5ac9d365946b03a
                stor1.length++
            else:
                idx = stor1.length + 1
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
                address(stor1[stor1.length]) = 0x59b9128e7387d2db806e41cef5ac9d365946b03a
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    idx = stor1.length + 1
                    while stor1.length > idx:
                        uint256(stor1[idx]) = 0
                        idx = idx + 1
                        continue 
    address(stor1[stor1.length]) = 0x8a5e9bda6f00454683a7dfd80c56cb1aaae66f0a
    return code.data[676 len 1145]
}



// =====================  Runtime code  =====================


const deposit = 1


address stor0;
array of address stor1;

function _fallback() payable {
    emit LogDeposit(msg.sender, msg.value);
}

function withdrawal() payable {
    mem[64] = 96
    require not msg.value
    require eth.balance(this.address) > 100
    idx = 0
    while idx < 4:
        require idx < stor1.length
        call stor1[idx] with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor1.length
        mem[0] = 1
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = stor1[idx]
        mem[mem[64] + 64] = eth.balance(this.address) / 5
        emit LogWithdrawal(msg.sender, stor1[idx], eth.balance(this.address) / 5);
        idx = idx + 1
        continue 
    emit LogWithdrawal(msg.sender, stor0, eth.balance(this.address));
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
