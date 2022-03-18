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
    mem[96 len -2039] = code.data[2839 len -2039]
    mem[64] = -1943
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
    return code.data[800 len 2039]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
array of struct stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
array of struct stor15;
uint8 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20; offset 160
address stor20;
uint256 stor20;

function _fallback() payable {
  stop
}

function seller() payable {
    return stor0, stor1, stor2, stor3
}

function buyer() payable {
    return stor17, stor18, stor19, address(stor20.field_0), uint8(stor20.field_160)
}

function arrival() payable {
    if block.timestamp - stor12 >= 24 * 3600:
        emit 0x466c6f59: Array(len=61, data='The shipment has arrived late. D', 'elay penalty will be charged.'), block.timestamp - stor12 / 24 * 3600 * stor14
}

function releasePayment() payable {
    require not uint8(stor20.field_160)
    call stor3 with:
       value stor13 wei
         gas 0 wei
    uint8(stor20.field_160) = 1
    emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor13
}

function escrow() payable {
    require not uint8(stor20.field_160)
    if stor11 + (72 * 24 * 3600) >= block.timestamp:
        require not uint8(stor20.field_160)
        call stor3 with:
           value stor13 wei
             gas 0 wei
        uint8(stor20.field_160) = 1
        emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor13
}

function sub_287a4f36(?) payable {
    stor17 = arg1
    stor18 = arg2
    stor19 = arg3
    uint256(stor20.field_0) = msg.sender or Mask(96, 160, uint256(stor20.field_0))
    stor13 = msg.value
    uint8(stor20.field_160) = 0
    stor11 = block.timestamp
    stor16 = 1
    emit 0x82a287cc: Array(len=34, data='New Agreement between two Partie', 's!'), stor0, stor17
}

function sub_e1285588(?) payable {
    mem[544] = uint256(stor5.field_0)
    idx = 544
    s = 0
    while stor5.length + 544 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 544] = stor15.length
    mem[stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 576] = uint256(stor15.field_0)
    idx = stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 576
    s = 0
    while stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + stor15.length + 576 > idx + 32:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4, 
           Array(len=stor5.length, data=mem[544 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + stor15.length + (floor32(stor15.length - 1) + -stor15.length + 32 % 32) + 32]),
           stor6,
           stor7,
           stor8,
           stor9,
           stor10,
           stor11,
           stor12,
           stor13,
           stor14,
           stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 448,
           stor16
}



}
