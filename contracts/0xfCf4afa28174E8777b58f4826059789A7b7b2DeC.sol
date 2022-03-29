contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    require not msg.value
    stor4 = msg.sender
    return code.data[64 len 1280]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;

function owner() {
    return owner
}

function collectedFees() {
    return collectedFees
}

function payoutIdx() {
    return payoutIdx
}

function balance() {
    return balance
}

function setOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function participants(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function collectFees() {
    if owner != msg.sender:
    if not collectedFees:
    call owner with:
       value collectedFees wei
         gas 2300 * is_zero(value) wei
    revert 
}

function _fallback() {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value > 5 * 10^16:
        call msg.sender with:
           value msg.value - 5 * 10^16 wei
             gas 2300 * is_zero(value) wei
        revert 
    stor0.length++
    if not stor0.length > stor0.length + 1:
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender
        stor0[stor0.length].field_256 = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 50
            balance += msg.value
        require payoutIdx < stor0.length
        s = var29001
        while balance > 188 * stor0[stor1].field_256 / 100:
            require payoutIdx < stor0.length
            require payoutIdx < stor0.length
            call stor0[stor1].field_0 with:
               value 95 * stor0[stor1].field_256 / 50 wei
                 gas 2300 * is_zero(value) wei
            balance += -188 * stor0[stor1].field_256 / 100
            payoutIdx++
            require payoutIdx < stor0.length
            mem[0] = 0
            s = 95 * stor0[stor1].field_256 / 50
            continue 
    else:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender
        stor0[stor0.length].field_256 = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 50
            balance += msg.value
        require payoutIdx < stor0.length
        s = var33001
        while balance > 188 * stor0[stor1].field_256 / 100:
            require payoutIdx < stor0.length
            require payoutIdx < stor0.length
            call stor0[stor1].field_0 with:
               value 95 * stor0[stor1].field_256 / 50 wei
                 gas 2300 * is_zero(value) wei
            balance += -188 * stor0[stor1].field_256 / 100
            payoutIdx++
            require payoutIdx < stor0.length
            mem[0] = 0
            s = 95 * stor0[stor1].field_256 / 50
            continue 
}

function enter() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value > 5 * 10^16:
        call msg.sender with:
           value msg.value - 5 * 10^16 wei
             gas 2300 * is_zero(value) wei
        revert 
    stor0.length++
    if not stor0.length > stor0.length + 1:
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender
        stor0[stor0.length].field_256 = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 50
            balance += msg.value
        require payoutIdx < stor0.length
        s = var27001
        while balance > 188 * stor0[stor1].field_256 / 100:
            require payoutIdx < stor0.length
            require payoutIdx < stor0.length
            call stor0[stor1].field_0 with:
               value 95 * stor0[stor1].field_256 / 50 wei
                 gas 2300 * is_zero(value) wei
            balance += -188 * stor0[stor1].field_256 / 100
            payoutIdx++
            require payoutIdx < stor0.length
            mem[0] = 0
            s = 95 * stor0[stor1].field_256 / 50
            continue 
    else:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender
        stor0[stor0.length].field_256 = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 50
            balance += msg.value
        require payoutIdx < stor0.length
        s = var31001
        while balance > 188 * stor0[stor1].field_256 / 100:
            require payoutIdx < stor0.length
            require payoutIdx < stor0.length
            call stor0[stor1].field_0 with:
               value 95 * stor0[stor1].field_256 / 50 wei
                 gas 2300 * is_zero(value) wei
            balance += -188 * stor0[stor1].field_256 / 100
            payoutIdx++
            require payoutIdx < stor0.length
            mem[0] = 0
            s = 95 * stor0[stor1].field_256 / 50
            continue 
}



}
