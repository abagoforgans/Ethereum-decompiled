contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    return code.data[61 len 1458]
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

function resetBeneficiaryList() {
    if stor0 == msg.sender:
        stor3.length = 0
        idx = 0
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
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
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor2[stor2.length].field_0 = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
}

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor2[stor2.length].field_0 = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
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
                if stor2[idx].field_0 <= stor1 + (24 * 3600):
                    require idx - 1 < stor2.length
                    require idx - 1 < stor2.length
                    mem[0] = 2
                    call stor2[idx].field_0 with:
                       value 20 * stor2[idx].field_0 / 1000 wei
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
               value 15 * eth.balance(this.address) / 1000 / stor3.length wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
        idx = stor2.length
        while idx > 0:
            require idx - 1 < stor2.length
            mem[0] = 2
            if stor2[idx].field_0 <= stor1 + (24 * 3600):
                require idx - 1 < stor2.length
                require idx - 1 < stor2.length
                mem[0] = 2
                call stor2[idx].field_0 with:
                   value 20 * stor2[idx].field_0 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            idx = idx - 1
            continue 
        stor1 += 24 * 3600
        s = 15 * eth.balance(this.address) / 1000 / stor3.length
        t = idx - 1
        t = 15 * eth.balance(this.address) / 1000
        u = u + 1
        continue 
    emit Payout(u, 0, t);
}



}
