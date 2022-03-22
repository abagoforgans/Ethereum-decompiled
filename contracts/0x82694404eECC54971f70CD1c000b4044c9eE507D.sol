contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor1 = block.timestamp + 1800
    stor2 = block.timestamp
    stor3 = 0
    stor4 = 0
    stor5 = 0
    return code.data[53 len 1263]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 deadline;
uint256 stor2;
uint256 sub_740c0c44;
uint256 stor4;
uint8 isExpired;
uint256 stor5;
mapping of struct stor6;
mapping of struct stor7;

function isExpired() payable {
    return uint8(isExpired)
}

function getDeadline() payable {
    return deadline
}

function sub_740c0c44(?) payable {
    return sub_740c0c44
}

function kill() payable {
    if not uint8(isExpired):
    if address(stor0) != msg.sender:
    if block.timestamp <= deadline:
    idx = 0
    s = 0
    while idx < sub_740c0c44:
        if stor6[idx].field_0 < eth.balance(this.address):
            stor6[idx].field_512 = stor6[idx].field_0 - eth.balance(this.address)
        else:
            stor6[idx].field_512 = eth.balance(this.address) - stor6[idx].field_0
        mem[0] = idx
        mem[32] = 6
        if not idx:
        else:
            if s >= stor6[idx].field_512:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
        idx = idx + 1
        s = stor6[idx].field_512
        continue 
    idx = 0
    while idx < sub_740c0c44:
        mem[0] = idx
        mem[32] = 6
        if s == stor6[idx].field_512:
            mem[0] = stor4
            mem[32] = 7
            stor7[stor4] = stor6[idx].field_256
            stor4++
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor4:
        call stor7[idx] with:
           value eth.balance(this.address) / stor4 wei
             gas 0 wei
        mem[0] = idx
        mem[32] = 7
        mem[96] = eth.balance(this.address) / stor4
        mem[128] = block.timestamp
        emit 0x16a74b52: eth.balance(this.address) / stor4, block.timestamp, stor7[idx]
        idx = idx + 1
        continue 
    sub_740c0c44 = 0
    stor4 = 0
    stor2 = block.timestamp
    selfdestruct(address(stor0))
}

function _fallback() payable {
    revert 
}

function getBalance() payable {
    return eth.balance(this.address)
}

function sub_aeb7d9cc(?) payable {
    if msg.sender == address(stor0):
        uint256(stor5) = arg1 or Mask(248, 8, uint256(stor5))
}

function sub_10b1f5af(?) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    sub_740c0c44 = 0
    stor4 = 0
}

function sub_79ff433d(?) payable {
    if msg.sender == address(stor0):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_3f4bd063(?) payable {
    if block.timestamp > deadline:
        idx = 0
        s = 0
        while idx < sub_740c0c44:
            if stor6[idx].field_0 < eth.balance(this.address):
                stor6[idx].field_512 = stor6[idx].field_0 - eth.balance(this.address)
            else:
                stor6[idx].field_512 = eth.balance(this.address) - stor6[idx].field_0
            mem[0] = idx
            mem[32] = 6
            if not idx:
            else:
                if s >= stor6[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
            idx = idx + 1
            s = stor6[idx].field_512
            continue 
        idx = 0
        while idx < sub_740c0c44:
            mem[0] = idx
            mem[32] = 6
            if s == stor6[idx].field_512:
                mem[0] = stor4
                mem[32] = 7
                stor7[stor4] = stor6[idx].field_256
                stor4++
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor4:
            call stor7[idx] with:
               value eth.balance(this.address) / stor4 wei
                 gas 0 wei
            mem[0] = idx
            mem[32] = 7
            mem[96] = eth.balance(this.address) / stor4
            mem[128] = block.timestamp
            emit 0x16a74b52: eth.balance(this.address) / stor4, block.timestamp, stor7[idx]
            idx = idx + 1
            continue 
        sub_740c0c44 = 0
        stor4 = 0
        stor2 = block.timestamp
}

function sub_d2d6a872(?) payable {
    if block.timestamp > deadline:
        idx = 0
        s = 0
        while idx < sub_740c0c44:
            if stor6[idx].field_0 < eth.balance(this.address):
                stor6[idx].field_512 = stor6[idx].field_0 - eth.balance(this.address)
            else:
                stor6[idx].field_512 = eth.balance(this.address) - stor6[idx].field_0
            mem[0] = idx
            mem[32] = 6
            if not idx:
            else:
                if s >= stor6[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
            idx = idx + 1
            s = stor6[idx].field_512
            continue 
        idx = 0
        while idx < sub_740c0c44:
            mem[0] = idx
            mem[32] = 6
            if s == stor6[idx].field_512:
                mem[0] = stor4
                mem[32] = 7
                stor7[stor4] = stor6[idx].field_256
                stor4++
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor4:
            call stor7[idx] with:
               value eth.balance(this.address) / stor4 wei
                 gas 0 wei
            mem[0] = idx
            mem[32] = 7
            mem[96] = eth.balance(this.address) / stor4
            mem[128] = block.timestamp
            emit 0x16a74b52: eth.balance(this.address) / stor4, block.timestamp, stor7[idx]
            idx = idx + 1
            continue 
        sub_740c0c44 = 0
        stor4 = 0
        stor2 = block.timestamp
    require msg.value == 5 * 10^16
    require uint8(isExpired) != 1
    stor6[stor3].field_0 = arg1
    stor6[stor3].field_256 = msg.sender or Mask(96, 160, stor6[stor3].field_256)
    sub_740c0c44++
    deadline = block.timestamp + 1800
    call address(stor0) with:
       value 10 * msg.value / 100 wei
         gas 0 wei
    emit NewBet(arg1, eth.balance(this.address), block.timestamp, msg.sender);
}



}
