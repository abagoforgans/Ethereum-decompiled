contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 502]
}



// =====================  Runtime code  =====================


address stor0;
array of struct donations;

function donations(bytes32 arg1, uint256 arg2) payable {
    require arg2 < donations[arg1].field_0
    return donations[arg1][arg2].field_0
}

function destroy() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5b61adeb(?) payable {
    if donations[arg1].field_0:
        mem[160] = donations[arg1].field_0
        idx = 160
        s = 0
        while (32 * donations[arg1].field_0) + 128 > idx:
            mem[idx + 32] = donations[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=donations[arg1].field_0, data=mem[160 len 32 * donations[arg1].field_0])
}

function sub_616299e8(?) payable {
    if stor0 == msg.sender:
        donations[arg1].field_0++
        if not donations[arg1].field_0 <= donations[arg1].field_0 + 1:
            idx = donations[arg1].field_0 + 1
            while donations[arg1].field_0 > idx:
                donations[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        donations[arg1][donations[arg1].field_0].field_0 = arg2
}



}
