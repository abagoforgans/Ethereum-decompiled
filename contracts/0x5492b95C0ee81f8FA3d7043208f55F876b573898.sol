contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint8 stor1; offset 160
address stor1;
address stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;
uint256 stor15;
address stor16;
address stor17;
address stor18;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor26;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor20 = 0
    stor22 = 0
    stor23 = 0
    stor24 = 0
    stor26 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[8844 len 20]
    require code.data[8876 len 20]
    require code.data[8908 len 20]
    require code.data[9164 len 20]
    require code.data[8960 len 32] > 0
    require code.data[8992 len 32] >= 0
    require code.data[9024 len 32] >= code.data[8992 len 32]
    stor4 = code.data[8876 len 20]
    stor18 = code.data[8908 len 20]
    stor21 = code.data[8928 len 32]
    stor5 = code.data[8960 len 32]
    stor7 = code.data[8992 len 32]
    stor8 = code.data[9024 len 32]
    stor9 = code.data[9056 len 32]
    stor12 = code.data[9088 len 32]
    stor15 = code.data[9120 len 32]
    stor17 = code.data[9164 len 20]
    stor16 = code.data[8844 len 20]
    stor3 = code.data[9196 len 20]
    uint8(stor1.field_160) = 0
    address(stor1.field_0) = code.data[9228 len 20]
    return code.data[663 len 8169]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
