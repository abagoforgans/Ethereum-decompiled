contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    return code.data[58 len 1341]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
array of struct stor2;
array of address stor3;

function changeAdmin(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function status() {
    return eth.balance(this.address), stor2.length, stor3.length, block.timestamp - stor1, block.timestamp - stor1 / 24 * 3600
}

function addBeneficiary(address arg1) {
    if stor0 == msg.sender:
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        address(stor3[stor3.length]) = arg1
}

function Invest() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 3
        while 3 * stor2.length > idx:
            address(stor2[idx].field_0) = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    address(stor2[stor2.length].field_0) = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
}

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 3
        while 3 * stor2.length > idx:
            address(stor2[idx].field_0) = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    address(stor2[stor2.length].field_0) = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
}

function resetBeneficiaryList() {
    if stor0 == msg.sender:
        stor3.length = 0
        if stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b:
            uint256(stor3) = 0
            idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85c
            while stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function performPayouts() {
    s = 0
    t = 0
    t = 0
    u = 0
    while stor1 + (24 * 3600) < block.timestamp:
        if stor3.length <= 0:
            idx = stor2.length
            while idx > 0:
                require idx - 1 < stor2.length
                mem[0] = 2
                if stor2[idx].field_0 > stor1 + (24 * 3600):
                    idx = idx - 1
                    continue 
                require idx - 1 < stor2.length
                require idx - 1 < stor2.length
                mem[0] = 2
                call address(stor2[idx].field_0) with:
                   value 33 * stor2[idx].field_0 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                idx = idx - 1
                continue 
            stor1 += 24 * 3600
            s = s
            t = idx - 1
            t = t
            u = u + 1
            continue 
        require stor3.length
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            call address(stor3[idx]) with:
               value 37 * eth.balance(this.address) / 1000 / stor3.length wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
        idx = stor2.length
        while idx > 0:
            require idx - 1 < stor2.length
            mem[0] = 2
            if stor2[idx].field_0 > stor1 + (24 * 3600):
                idx = idx - 1
                continue 
            require idx - 1 < stor2.length
            require idx - 1 < stor2.length
            mem[0] = 2
            call address(stor2[idx].field_0) with:
               value 33 * stor2[idx].field_0 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx - 1
            continue 
        stor1 += 24 * 3600
        s = 37 * eth.balance(this.address) / 1000 / stor3.length
        t = idx - 1
        t = 37 * eth.balance(this.address) / 1000
        u = u + 1
        continue 
    emit Payout(u, 0, t);
}



}
