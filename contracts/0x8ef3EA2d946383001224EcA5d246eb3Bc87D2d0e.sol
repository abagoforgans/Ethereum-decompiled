contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor1 = block.timestamp + 1200
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 1175]
}



// =====================  Runtime code  =====================


address stor0;
uint256 deadline;
uint256 sub_740c0c44;
uint256 stor3;
uint8 isExpired;
mapping of struct stor5;
mapping of struct stor6;

function isExpired() payable {
    return isExpired
}

function getDeadline() payable {
    return deadline
}

function sub_740c0c44(?) payable {
    return sub_740c0c44
}

function kill() payable {
    if not isExpired:
    if stor0 != msg.sender:
    if block.timestamp <= deadline:
    idx = 0
    s = 0
    while idx < sub_740c0c44:
        if stor5[idx].field_0 < eth.balance(this.address):
            stor5[idx].field_512 = stor5[idx].field_0 - eth.balance(this.address)
        else:
            stor5[idx].field_512 = eth.balance(this.address) - stor5[idx].field_0
        mem[0] = idx
        mem[32] = 5
        if not idx:
        else:
            if s >= stor5[idx].field_512:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
        idx = idx + 1
        s = stor5[idx].field_512
        continue 
    idx = 0
    while idx < sub_740c0c44:
        mem[0] = idx
        mem[32] = 5
        if s == stor5[idx].field_512:
            mem[0] = stor3
            mem[32] = 6
            stor6[stor3] = stor5[idx].field_256
            stor3++
        idx = idx + 1
        continue 
    call stor0 with:
       value eth.balance(this.address) / 100 wei
         gas 0 wei
    idx = 0
    while idx < stor3:
        call stor6[idx] with:
           value eth.balance(this.address) / stor3 wei
             gas 0 wei
        mem[0] = idx
        mem[32] = 6
        mem[96] = eth.balance(this.address) / stor3
        emit 0x3d4f2954: (eth.balance(this.address) / stor3), stor6[idx]
        idx = idx + 1
        continue 
    sub_740c0c44 = 0
    stor3 = 0
    selfdestruct(stor0)
}

function sub_aeb7d9cc(?) payable {
  stop
}

function _fallback() payable {
    revert 
}

function getBalance() payable {
    return eth.balance(this.address)
}

function sub_3f4bd063(?) payable {
    if block.timestamp > deadline:
        idx = 0
        s = 0
        while idx < sub_740c0c44:
            if stor5[idx].field_0 < eth.balance(this.address):
                stor5[idx].field_512 = stor5[idx].field_0 - eth.balance(this.address)
            else:
                stor5[idx].field_512 = eth.balance(this.address) - stor5[idx].field_0
            mem[0] = idx
            mem[32] = 5
            if not idx:
            else:
                if s >= stor5[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
            idx = idx + 1
            s = stor5[idx].field_512
            continue 
        idx = 0
        while idx < sub_740c0c44:
            mem[0] = idx
            mem[32] = 5
            if s == stor5[idx].field_512:
                mem[0] = stor3
                mem[32] = 6
                stor6[stor3] = stor5[idx].field_256
                stor3++
            idx = idx + 1
            continue 
        call stor0 with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        idx = 0
        while idx < stor3:
            call stor6[idx] with:
               value eth.balance(this.address) / stor3 wei
                 gas 0 wei
            mem[0] = idx
            mem[32] = 6
            mem[96] = eth.balance(this.address) / stor3
            emit 0x3d4f2954: (eth.balance(this.address) / stor3), stor6[idx]
            idx = idx + 1
            continue 
        sub_740c0c44 = 0
        stor3 = 0
}

function sub_d2d6a872(?) payable {
    if block.timestamp > deadline:
        idx = 0
        s = 0
        while idx < sub_740c0c44:
            if stor5[idx].field_0 < eth.balance(this.address):
                stor5[idx].field_512 = stor5[idx].field_0 - eth.balance(this.address)
            else:
                stor5[idx].field_512 = eth.balance(this.address) - stor5[idx].field_0
            mem[0] = idx
            mem[32] = 5
            if not idx:
            else:
                if s >= stor5[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
            idx = idx + 1
            s = stor5[idx].field_512
            continue 
        idx = 0
        while idx < sub_740c0c44:
            mem[0] = idx
            mem[32] = 5
            if s == stor5[idx].field_512:
                mem[0] = stor3
                mem[32] = 6
                stor6[stor3] = stor5[idx].field_256
                stor3++
            idx = idx + 1
            continue 
        call stor0 with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        idx = 0
        while idx < stor3:
            call stor6[idx] with:
               value eth.balance(this.address) / stor3 wei
                 gas 0 wei
            mem[0] = idx
            mem[32] = 6
            mem[96] = eth.balance(this.address) / stor3
            emit 0x3d4f2954: (eth.balance(this.address) / stor3), stor6[idx]
            idx = idx + 1
            continue 
        sub_740c0c44 = 0
        stor3 = 0
    require msg.value == 10^15
    require isExpired != 1
    stor5[stor2].field_0 = arg1
    stor5[stor2].field_256 = msg.sender or Mask(96, 160, stor5[stor2].field_256)
    sub_740c0c44++
    deadline = block.timestamp + 1200
    emit 0xb16fad50: arg1, eth.balance(this.address), msg.sender
}



}
