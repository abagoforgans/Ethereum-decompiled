contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 18
    stor3 = 0
    stor4 = code.data[1562 len 32]
    stor5 = code.data[1530 len 32] * 10^stor2 / 1000
    stor6 = block.timestamp
    stor7 = 0
    return code.data[263 len 1267]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 sub_c6508938;
uint256 stor6;
uint256 stor7;
mapping of address stor8;

function owner() {
    return owner
}

function sub_c6508938(?) {
    return sub_c6508938
}

function _fallback() payable {
    require msg.value == sub_c6508938
    idx = 0
    while idx < stor3 + 1:
        mem[0] = idx
        mem[32] = 8
        require stor8[idx] != msg.sender
        idx = idx + 1
        continue 
    stor8[stor3] = msg.sender
    stor3++
    stor6 += block.timestamp
    stor7 += msg.value
    emit Transfer(msg.value, msg.sender, this.address);
    if stor3 >= stor4:
        require stor3
        stor6 = stor6 % stor3
        call stor8[stor6] with:
           value 97 * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor1 with:
           value stor7 - (97 * stor7 / 100) wei
             gas 2300 * is_zero(value) wei
        emit Transfer((97 * stor7 / 100), this.address, stor8[stor6]);
        idx = 0
        while idx < stor3 + 1:
            mem[0] = idx
            mem[32] = 8
            stor8[idx] = 0
            idx = idx + 1
            continue 
        stor3 = 0
        stor6 = block.timestamp
        stor7 = 0
}



}
