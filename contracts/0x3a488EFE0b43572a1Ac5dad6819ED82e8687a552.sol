contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = 0
    return code.data[41 len 831]
}



// =====================  Runtime code  =====================


array of struct stor0;
address owner;
uint256 count;

function count() payable {
    return count
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_5dfd7a57(?) payable {
    require msg.sender == owner
    stor0[arg1].field_512 = block.timestamp
}

function create(string arg1) payable {
    require owner == msg.sender
    stor0[stor2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor2].field_256 = block.timestamp
    count++
}

function get(uint256 arg1) payable {
    require msg.sender == owner
    mem[160] = stor0[arg1].field_0
    idx = 160
    s = 0
    while stor0[arg1].length + 160 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[160 len stor0[arg1].length]), stor0[arg1].field_256, stor0[arg1].field_512
}



}
