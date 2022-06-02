contract main {




// =====================  Runtime code  =====================


const sub_da267bc8(?) = 4

const PROMO_PERCENT = 6


mapping of uint256 sub_1c603964;
uint256 currentReceiverIndex;
uint256 totalInvested;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;

function sub_1c603964(?) {
    return sub_1c603964[arg1]
}

function currentReceiverIndex() {
    return currentReceiverIndex
}

function totalInvested() {
    return totalInvested
}

function getQueueLength() {
    return (stor0.length - currentReceiverIndex)
}

function queue(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function getDepositsCount(address arg1) {
    idx = currentReceiverIndex
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function _fallback() payable {
    require block.number >= 6649650
    if msg.value > 0:
        require gas_remaining >= 250000
        require msg.value >= 5 * 10^16
        require msg.value <= 10 * 10^18
        stor0.length++
        stor0[stor0.length].field_0 = msg.sender
        stor290D[stor0.length] = msg.value
        stor290D[stor0.length] = 0
        sub_1c603964[msg.sender] = stor0.length
        totalInvested += msg.value
        call 0xa3093fde89050b3eaf6a9705f343757b4dfdcc4d with:
           value 6 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        call 0x86c1185ce646e549b13a6675c7a1df073f3e3c0a with:
           value 4 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        s = 0
        t = 0
        t = 0
        t = 0
        idx = 0
        t = eth.balance(this.address)
        while idx < stor0.length:
            require currentReceiverIndex + idx < stor0.length
            if 150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100 <= stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512:
                if t < s:
                    call stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                    stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 += t
                else:
                    if s <= 0:
                        mem[32] = 1
                        sub_1c603964[stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0] = 0
                        require currentReceiverIndex + idx < stor0.length
                        mem[0] = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 = 0
                        if gas_remaining > 55000:
                            s = s
                            t = 150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100
                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(0)
                            t = currentReceiverIndex + idx
                            idx = idx + 1
                            t = t
                            continue 
                    else:
                        call stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 with:
                           value s wei
                             gas 2300 * is_zero(value) wei
                        mem[32] = 1
                        sub_1c603964[stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0] = 0
                        require currentReceiverIndex + idx < stor0.length
                        mem[0] = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 = 0
                        if gas_remaining > 55000:
                            s = s
                            t = 150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100
                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(0)
                            t = currentReceiverIndex + idx
                            idx = idx + 1
                            t = t - s
                            continue 
                    ('le', 'gas', 55000)
            else:
                if t < (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) - stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512:
                    call stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                    stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 += t
                else:
                    if (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) - stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 <= 0:
                        mem[32] = 1
                        sub_1c603964[stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0] = 0
                        require currentReceiverIndex + idx < stor0.length
                        mem[0] = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 = 0
                        if gas_remaining > 55000:
                            s = (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) - stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512
                            t = 150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100
                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(0)
                            t = currentReceiverIndex + idx
                            idx = idx + 1
                            t = t
                            continue 
                    else:
                        call stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 with:
                           value (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) - stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        mem[32] = 1
                        sub_1c603964[stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0] = 0
                        require currentReceiverIndex + idx < stor0.length
                        mem[0] = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_0 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 = 0
                        stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512 = 0
                        if gas_remaining > 55000:
                            s = (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) - stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512
                            t = 150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100
                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(0)
                            t = currentReceiverIndex + idx
                            idx = idx + 1
                            t = t - (150 * stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_256 / 100) + stor[(3 * stor2) + (3 * idx) + ('name', 'stor0', 0)].field_512
                            continue 
                    ('le', 'gas', 55000)
            currentReceiverIndex += idx
        currentReceiverIndex += idx
}



}
