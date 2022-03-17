contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 853]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
  stop
}

function sub_0139a221(?) payable {
    mem[160] = stor0[arg1][2].field_0
    idx = 160
    s = 0
    while stor0[arg1][2].length + 160 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, stor0[arg1].field_256, Array(len=stor0[arg1][2].length, data=mem[160 len stor0[arg1][2].length])
}

function sub_fc0c4f2e(?) payable {
    stor0[msg.sender][block.timestamp][arg1[all]].field_0 = block.timestamp
    stor0[msg.sender][block.timestamp][arg1[all]].field_256 = msg.sender or Mask(96, 160, stor0[msg.sender][block.timestamp][arg1[all]].field_256)
    stor0[msg.sender][block.timestamp][arg1[all]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    return sha3(msg.sender, block.timestamp, arg1[all])
}



}
