contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae
    stor2 = 1
    stor3 = 20
    return code.data[78 len 992]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of struct stor7;

function _fallback() payable {
  stop
}

function sub_1522eba7(?) payable {
    if msg.sender == stor0:
        stor7[address(arg1)].field_0 += arg2
}

function sub_8bd94323(?) payable {
    if msg.sender == stor0:
        stor7[address(arg1)].field_1024 += arg2
}

function credit(address arg1, uint256 arg2, uint256 arg3) payable {
    if stor7[address(msg.sender)].field_1024 > arg2 * arg3:
        stor7[address(msg.sender)].field_1024 += -1 * arg2 * arg3
        stor7[arg1].field_256 += arg2
        stor7[arg1].field_768 = msg.sender or Mask(96, 160, stor7[arg1].field_768)
        stor7[arg1].field_512 = arg3 + block.number
        stor7[arg1].field_1280 = arg2 * arg3
        return 0
    else:
        return 0
}

function pay(address arg1, uint256 arg2) payable {
    if stor7[address(msg.sender)].field_256 <= 0:
        stor6 = stor7[address(msg.sender)].field_256
        stor4 = stor7[address(msg.sender)].field_0 + stor6
        stor5 = arg2
        if stor4 > stor5:
            stor7[address(msg.sender)].field_0 += stor5
            stor7[address(arg1)].field_0 += stor5
            stor7[address(arg1)].field_0 -= (100 * stor5) - (stor2 * stor5) / 100
            stor7[stor1].field_0 += stor5 * stor2 / 100
    else:
        if block.number <= stor7[address(msg.sender)].field_512:
            stor6 = stor7[address(msg.sender)].field_256
            stor4 = stor7[address(msg.sender)].field_0 + stor6
            stor5 = arg2
            if stor4 > stor5:
                stor7[address(msg.sender)].field_0 += stor5
                stor7[address(arg1)].field_0 += stor5
                stor7[address(arg1)].field_0 -= (100 * stor5) - (stor2 * stor5) / 100
                stor7[stor1].field_0 += stor5 * stor2 / 100
        else:
            if stor7[address(msg.sender)].field_0 < 0:
                stor7[stor7[address(msg.sender)].field_768].field_1024 -= stor3 * stor7[address(msg.sender)].field_1280 / 100
            else:
                stor7[stor7[address(msg.sender)].field_768].field_1024 += (100 * stor7[address(msg.sender)].field_1280) + (stor3 * stor7[address(msg.sender)].field_1280) / 100
                stor7[address(msg.sender)].field_256 = 0
                stor7[address(msg.sender)].field_512 = 0
            stor6 = stor7[address(msg.sender)].field_256
            stor4 = stor7[address(msg.sender)].field_0 + stor6
            stor5 = arg2
            if stor4 > stor5:
                stor7[address(msg.sender)].field_0 += stor5
                stor7[address(arg1)].field_0 += stor5
                stor7[address(arg1)].field_0 -= (100 * stor5) - (stor2 * stor5) / 100
                stor7[stor1].field_0 += stor5 * stor2 / 100
}



}
