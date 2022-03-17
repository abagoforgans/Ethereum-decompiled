contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[88 len 2436]
}



// =====================  Runtime code  =====================


uint8 stor0;
mapping of struct getUserRank;
mapping of uint8 sub_19990092;
address stor3;

function sub_19990092(?) payable {
    return sub_19990092[address(arg1)]
}

function GetUserRank(uint8 arg1, address arg2) payable {
    return getUserRank[arg1 << 248][2][address(arg2)].field_0
}

function sub_8a4c4527(?) payable {
    return getUserRank[arg3 << 248][3][address(arg1)][address(arg2)].field_0
}

function sub_e91f2ac1(?) payable {
    return getUserRank[arg1 << 248].field_256
}

function _fallback() payable {
  stop
}

function sub_97dd6d3b(?) payable {
    if tx.origin == stor3:
        if not sub_19990092[address(arg1)]:
            sub_19990092[address(arg1)] = 1
}

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == stor3:
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function sub_3a1d49c1(?) payable {
    idx = 0
    while uint8(idx) < stor0:
        mem[0] = uint8(idx)
        mem[32] = 1
        if getUserRank[idx << 248].field_0 != arg1:
            idx = idx + 1
            continue 
        return uint8(idx)
    return 255
}

function sub_71256345(?) payable {
    if tx.origin == stor3:
        idx = 0
        while uint8(idx) < stor0:
            mem[0] = uint8(idx)
            mem[32] = 1
            if getUserRank[idx << 248].field_0 != arg1:
                idx = idx + 1
                continue 
            if uint8(idx) == 255:
                getUserRank[stor0].field_0 = uint32(arg1)
                getUserRank[stor0].field_256 = 0
        getUserRank[stor0].field_0 = uint32(arg1)
        getUserRank[stor0].field_256 = 0
}

function sub_797fdd7b(?) payable {
    if tx.origin == stor3:
        idx = 0
        while uint8(idx) < stor0:
            mem[0] = uint8(idx)
            mem[32] = 1
            if getUserRank[idx << 248].field_0 != arg2:
                idx = idx + 1
                continue 
            if uint8(idx) != 255:
                if sub_19990092[address(msg.sender)]:
                    if sub_19990092[address(arg1)]:
                        getUserRank[idx << 248].field_256 += msg.value
                        if not getUserRank[idx << 248][2][address(msg.sender)].field_0:
                            getUserRank[idx << 248][2][address(msg.sender)].field_0 = 1000
                        if not getUserRank[idx << 248][2][address(arg1)].field_0:
                            getUserRank[idx << 248][2][address(arg1)].field_0 = 1000
                        getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 = getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 + 1 or Mask(240, 16, getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0)
}



}
