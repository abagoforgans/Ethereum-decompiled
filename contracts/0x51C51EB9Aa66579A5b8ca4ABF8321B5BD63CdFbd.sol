contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor16;
uint256 stor17;
array of uint256 stor18;
uint8 stor19;

function _fallback() payable {
    mem[96 len -930] = code.data[1824 len -930]
    mem[64] = -834
    stor0 = mem[96]
    stor1 = mem[128]
    stor2 = mem[160]
    stor3 = mem[192]
    stor4 = mem[224]
    stor5 = mem[256]
    stor6 = msg.sender or Mask(96, 160, stor6)
    stor7 = mem[288]
    stor8[] = Array(len=mem[mem[320] + 96], data=mem[mem[320] + 128 len mem[mem[320] + 96]])
    stor9 = mem[352]
    stor10 = mem[384]
    stor11 = mem[416]
    stor12 = mem[448]
    stor13 = mem[480]
    stor15 = mem[512]
    stor16 = msg.value
    stor17 = mem[544]
    stor18[] = Array(len=mem[mem[576] + 96], data=mem[mem[576] + 128 len mem[mem[576] + 96]])
    stor19 = 0
    return code.data[894 len 930]
}



// =====================  Runtime code  =====================


address stor6;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor19;
uint256 stor20;
address stor21;
uint256 stor21;

function _fallback() payable {
  stop
}

function sub_4777a690(?) payable {
    stor20 = arg1
    uint256(stor21) = msg.sender or Mask(96, 160, uint256(stor21))
    stor14 = block.timestamp
    stor19 = 1
    emit 0x480a49e2: Array(len=34, data='New Agreement between two Partie', 's!'), stor6, address(stor21)
}

function sub_b4b03291(?) payable {
    if block.timestamp - stor15 < 24 * 3600:
        call address(stor21) with:
           value stor16 wei
             gas 0 wei
        call stor6 with:
           value stor16 wei
             gas 0 wei
        emit 0x449613e8: 96, stor16, 0, 17, 'Payment released!'
    else:
        call address(stor21) with:
           value stor16 - (block.timestamp - stor15 / 24 * 3600 * stor17) wei
             gas 0 wei
        call stor6 with:
           value stor16 wei
             gas 0 wei
        emit 0x449613e8: Array(len=17, data='Payment released!'), stor16 - (block.timestamp - stor15 / 24 * 3600 * stor17), block.timestamp - stor15 / 24 * 3600 * stor17
}



}
