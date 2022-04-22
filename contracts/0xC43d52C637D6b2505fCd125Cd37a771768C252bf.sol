contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
array of uint256 stor4;
uint8 stor5; offset 160
address stor5;
mapping of struct stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint8 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint8 stor39;
uint256 stor39; offset 8
uint64 stor40;
uint256 stor40; offset 64
uint8 stor41;
uint256 stor130;
uint256 stor131;
uint256 stor132;
uint256 stor133;
uint256 stor134;
uint256 stor135;
uint256 stor136;
uint16 stor137;
uint256 stor138;
uint256 stor139;
uint256 stor140;
uint256 stor141;
uint256 stor142;
bool stor143; offset 256
uint8 stor143; offset 160
address stor143;
uint256 stor144;
uint256 stor145;
uint256 stor146;
uint256 stor147;
uint256 stor148;
uint256 stor149;
uint256 stor150;
uint256 stor151;
uint256 stor152;
uint256 stor153;
uint256 stor154;
uint256 stor155;
uint256 stor156;
uint256 stor157;
uint256 stor158;
uint256 stor159;
uint256 stor160;
uint256 stor161;
uint256 stor162;
uint256 stor163;
uint256 stor164;

function _fallback() payable {
    uint8(stor5.field_160) = 0
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Masterium' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    if uint8(stor5.field_160):
        stor2.length.field_1 = 11
        stor2.length.field_8 = 'MTITestnet1' / 256
    else:
        stor2.length.field_1 = 3
        stor2.length.field_8 = 'MTI' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    if uint8(stor5.field_160):
        stor4.length.field_1 = 15
        stor4.length.field_8 = '1.00.01.Testnet' / 256
    else:
        stor4.length.field_1 = 7
        stor4.length.field_8 = '1.00.01' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    address(stor5.field_0) = msg.sender
    address(stor143.field_0) = 0xab942256b49f0c841d371dc3dfe78befea447a27
    uint8(stor143.field_160) = 1
    stor143.field_256 % 1 = 0
    stor144 = block.timestamp
    stor131 = 20000000 * 10^18
    stor132 = 20 * 10^6
    stor133 = 0
    stor134 = 10^14
    stor135 = 100 * 10^18
    require address(stor143.field_0)
    require stor131 > 0
    require stor134 > 0
    require stor135 > stor134
    stor137 = 0
    stor138 = 0
    stor139 = 0
    stor140 = 0
    stor141 = 0
    stor142 = 0
    if uint8(stor5.field_160):
        stor136 = stor144 + 60
        stor145 = 2000
        stor146 = 1000
        stor147 = 800
        stor148 = 500
        stor149 = 500
        stor150 = 500
        stor151 = 500
        stor152 = 500
        stor153 = 500
        stor154 = 400
        stor155 = 400
        stor156 = 400
        stor157 = 200
        stor158 = 200
        stor159 = 200
        stor160 = 400
        stor161 = 500
        stor162 = 800
        stor163 = 1000
        stor164 = 2500
        stor8 = stor131
        stor9 = 0
        stor6[address(stor5.field_0)].field_0 = stor131
        stor6[address(stor5.field_0)].field_256 = 0
        stor36 = 10^16
        stor34 = 50000
        stor130 = 50000 * 10^18
        stor35 = 0
        stor37 = 100000
        stor38 = 100000 * 10^18
        stor41 = 22
        stor30 = 0
        stor31 = 0
        stor32 = 0
        stor33 = 0
        uint8(stor39.field_0) = uint8((stor30 + 1)^2)
        Mask(248, 0, stor39.field_8) = 0
        uint64(stor40.field_0) = uint64(10^18 * uint8((stor30 + 1)^2))
        Mask(192, 0, stor40.field_64) = 0
        stor10 = 24 * 3600
    else:
        stor136 = 419892 * 3600
        stor145 = 2000
        stor146 = 1000
        stor147 = 800
        stor148 = 500
        stor149 = 500
        stor150 = 500
        stor151 = 500
        stor152 = 500
        stor153 = 500
        stor154 = 400
        stor155 = 400
        stor156 = 400
        stor157 = 200
        stor158 = 200
        stor159 = 200
        stor160 = 400
        stor161 = 500
        stor162 = 800
        stor163 = 1000
        stor164 = 2500
        stor8 = stor131
        stor9 = 0
        stor6[address(stor5.field_0)].field_0 = stor131
        stor6[address(stor5.field_0)].field_256 = 0
        stor36 = 10^16
        stor34 = 50000
        stor130 = 50000 * 10^18
        stor35 = 0
        stor37 = 100000
        stor38 = 100000 * 10^18
        stor41 = 22
        stor30 = 0
        stor31 = 0
        stor32 = 0
        stor33 = 0
        uint8(stor39.field_0) = uint8((stor30 + 1)^2)
        Mask(248, 0, stor39.field_8) = 0
        uint64(stor40.field_0) = uint64(10^18 * uint8((stor30 + 1)^2))
        Mask(192, 0, stor40.field_64) = 0
        stor10 = 720 * 24 * 3600
    stor11 = 12
    stor12 = 48
    stor13 = stor136
    stor14 = 10^12
    stor15 = 8 * 10^11
    stor16 = 6 * 10^11
    stor17 = 4 * 10^11
    stor18 = 2 * 10^11
    stor19 = 10^11
    stor20 = 5 * 10^10
    stor21 = 5 * 10^10
    stor22 = 3 * 10^10
    stor23 = 4 * 10^10
    stor24 = 2 * 10^10
    stor25 = 10^10
    stor26 = 10^12
    stor27 = 4 * 10^12
    stor28 = 8 * 10^12
    stor29 = 16 * 10^12
    return code.data[1696 len 9512]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
