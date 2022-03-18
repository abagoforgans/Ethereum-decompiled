contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor3 = msg.sender or Mask(88, 168, stor3)
    return code.data[47 len 1343]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
mapping of struct getUserRank;
mapping of uint8 sub_19990092;
bool stor3; offset 256
uint8 stor3; offset 160
uint128 stor3; offset 168
address stor3;
uint256 stor4;
uint256 stor5;

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

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == address(stor3.field_0):
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function AddNewSmallContract(address arg1) payable {
    if msg.sender == address(stor3.field_0):
        if not sub_19990092[address(arg1)]:
            sub_19990092[address(arg1)] = 1
}

function sub_3a1d49c1(?) payable {
    idx = 0
    while uint8(idx) < uint8(stor0):
        mem[0] = uint8(idx)
        mem[32] = 1
        if arg1 != getUserRank[idx << 248].field_0:
            idx = idx + 1
            continue 
        return uint8(idx)
    return 255
}

function sub_71256345(?) payable {
    if msg.sender == address(stor3.field_0):
        idx = 0
        while uint8(idx) < uint8(stor0):
            mem[0] = uint8(idx)
            mem[32] = 1
            if arg1 != getUserRank[idx << 248].field_0:
                idx = idx + 1
                continue 
            if 255 == uint8(idx):
                getUserRank[uint8(stor0)].field_0 = uint32(arg1)
                getUserRank[uint8(stor0)].field_256 = 0
                uint256(stor0) = uint8(stor0) + 1 or Mask(248, 8, uint256(stor0))
        getUserRank[uint8(stor0)].field_0 = uint32(arg1)
        getUserRank[uint8(stor0)].field_256 = 0
        uint256(stor0) = uint8(stor0) + 1 or Mask(248, 8, uint256(stor0))
}

function sub_797fdd7b(?) payable {
    uint8(stor3.field_160) = 5
    stor4 = tx.origin or Mask(96, 160, stor4)
    stor5 = msg.sender or Mask(96, 160, stor5)
    if tx.origin == 0 or address(stor3.field_0):
        uint8(stor3.field_160) = 1
        idx = 0
        while uint8(idx) < uint8(stor0):
            mem[0] = uint8(idx)
            mem[32] = 1
            if arg2 != getUserRank[idx << 248].field_0:
                idx = idx + 1
                continue 
            if uint8(idx) != 255:
                if sub_19990092[address(msg.sender)]:
                    if sub_19990092[address(arg1)]:
                        uint8(stor3.field_160) = 3
                        Mask(88, 0, stor3.field_168) = 0
                        stor3.field_256 % 1 = 0
                        stor3.field_256 % 1 = 0
                        getUserRank[idx << 248].field_256 += msg.value
                        if not getUserRank[idx << 248][2][address(msg.sender)].field_0:
                            getUserRank[idx << 248][2][address(msg.sender)].field_0 = 1000
                        if not getUserRank[idx << 248][2][address(arg1)].field_0:
                            getUserRank[idx << 248][2][address(arg1)].field_0 = 1000
                        getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 = getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 + 1 or Mask(240, 16, getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0)
}



}
