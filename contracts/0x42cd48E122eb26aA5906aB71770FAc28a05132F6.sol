contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[88 len 2011]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
mapping of struct stor1;
mapping of uint8 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
  stop
}

function AddNewSmallContract(address arg1) payable {
    if msg.sender == stor3:
        if not stor2[address(arg1)]:
            stor2[address(arg1)] = 1
}

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == stor3:
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function sub_3a1d49c1(?) payable {
    idx = 0
    while uint8(idx) < uint8(stor0):
        mem[0] = uint8(idx)
        mem[32] = 1
        if stor1[idx << 248].field_0 != arg1:
            idx = idx + 1
            continue 
        return uint8(idx)
    return 255
}

function sub_71256345(?) payable {
    if msg.sender == stor3:
        idx = 0
        while uint8(idx) < uint8(stor0):
            mem[0] = uint8(idx)
            mem[32] = 1
            if stor1[idx << 248].field_0 != arg1:
                idx = idx + 1
                continue 
            if uint8(idx) == 255:
                stor1[uint8(stor0)].field_0 = uint32(arg1)
                stor1[uint8(stor0)].field_256 = 0
                uint256(stor0) = uint8(stor0) + 1 or Mask(248, 8, uint256(stor0))
        stor1[uint8(stor0)].field_0 = uint32(arg1)
        stor1[uint8(stor0)].field_256 = 0
        uint256(stor0) = uint8(stor0) + 1 or Mask(248, 8, uint256(stor0))
}

function sub_797fdd7b(?) payable {
    stor4 = 7
    stor5 = tx.origin or Mask(96, 160, stor5)
    stor6 = msg.sender or Mask(96, 160, stor6)
    if tx.origin == stor3:
        stor4 = 8
        idx = 0
        while uint8(idx) < uint8(stor0):
            mem[0] = uint8(idx)
            mem[32] = 1
            if stor1[idx << 248].field_0 != arg2:
                idx = idx + 1
                continue 
            stor4 = 11
            if uint8(idx) != 255:
                stor4 = 12
                if stor2[address(msg.sender)]:
                    stor4 = 13
                    if stor2[address(arg1)]:
                        stor4 = 9
                        stor4 = 10
                        stor1[idx << 248].field_256 += msg.value
                        if not stor1[idx << 248][2][address(msg.sender)].field_0:
                            stor1[idx << 248][2][address(msg.sender)].field_0 = 1000
                        if not stor1[idx << 248][2][address(arg1)].field_0:
                            stor1[idx << 248][2][address(arg1)].field_0 = 1000
                        stor1[idx << 248][3][address(arg1)][address(msg.sender)].field_0 = stor1[idx << 248][3][address(arg1)][address(msg.sender)].field_0 + 1 or Mask(240, 16, stor1[idx << 248][3][address(arg1)][address(msg.sender)].field_0)
        stor4 = 11
}



}
