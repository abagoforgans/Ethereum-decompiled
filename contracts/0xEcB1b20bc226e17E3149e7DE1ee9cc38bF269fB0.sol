contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor12;
uint256 stor14;
array of uint256 stor15;
uint8 stor16;

function _fallback() payable {
    mem[96 len -1155] = code.data[1955 len -1155]
    mem[64] = -1059
    stor0 = mem[96]
    stor1 = mem[128]
    stor2 = mem[160]
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = mem[192]
    stor5[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6 = mem[256]
    stor7 = mem[288]
    stor8 = mem[320]
    stor9 = mem[352]
    stor10 = mem[384]
    stor12 = mem[416]
    stor14 = mem[448]
    stor15[] = Array(len=mem[mem[480] + 96], data=mem[mem[480] + 128 len mem[mem[480] + 96]])
    stor16 = 0
    return code.data[800 len 1155]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor3;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20; offset 160
uint256 stor20;

function _fallback() payable {
  stop
}

function sub_5d88eb48(?) payable {
    require not uint8(stor20.field_160)
    call stor3 with:
       value stor13 wei
         gas 0 wei
    uint8(stor20.field_160) = 1
    emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor13
}

function sub_b4b03291(?) payable {
    if block.timestamp - stor12 >= 24 * 3600:
        emit 0x466c6f59: Array(len=61, data='The shipment has arrived late. D', 'elay penalty will be charged.'), block.timestamp - stor12 / 24 * 3600 * stor14
}

function Escrow() payable {
    require not uint8(stor20.field_160)
    if stor11 + (72 * 24 * 3600) >= block.timestamp:
        require not uint8(stor20.field_160)
        call stor3 with:
           value stor13 wei
             gas 0 wei
        uint8(stor20.field_160) = 1
        emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor13
}

function sub_9760e553(?) payable {
    stor17 = arg1
    stor18 = arg2
    stor19 = arg3
    uint256(stor20.field_0) = msg.sender or Mask(96, 160, uint256(stor20.field_0))
    stor13 = msg.value
    uint8(stor20.field_160) = 0
    stor11 = block.timestamp
    stor16 = 1
    emit 0x82a287cc: Array(len=34, data='New Agreement between two Partie', 's!'), stor0, stor17
    require not uint8(stor20.field_160)
    if stor11 + (72 * 24 * 3600) >= block.timestamp:
        require not uint8(stor20.field_160)
        call stor3 with:
           value stor13 wei
             gas 0 wei
        uint8(stor20.field_160) = 1
        emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor13
}



}
