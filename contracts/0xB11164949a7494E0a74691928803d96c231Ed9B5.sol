contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor2 = code.data[560 len 32]
    stor3 = block.timestamp / 900
    address(stor1.field_0) = code.data[540 len 20]
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[592 len 32])
    Mask(88, 0, stor1.field_168) = code.data[528 len 11]
    return code.data[124 len 404]
}



// =====================  Runtime code  =====================


address stor0;
uint8 sub_47a1d9c1; offset 160
uint256 stor2;
uint256 stor3;
mapping of struct history;

function sub_47a1d9c1(?) payable {
    return sub_47a1d9c1
}

function history(uint256 arg1) payable {
    return history[arg1].field_0, history[arg1].field_256
}

function _fallback() payable {
    revert 
}

function reading() payable {
    return stor2, stor3
}

function sub_43c8016d(?) payable {
    require stor0 == msg.sender
    require arg1 >= stor2
    require arg2 >= stor3
    stor2 = arg1
    stor3 = arg2
    history[arg2 / 900].field_0 = arg1
    history[arg2 / 900].field_256 = stor3
    emit 0xe494ce32: stor2
}

function sub_2853e26e(?) payable {
    require stor0 == msg.sender
    require arg1 >= stor2
    require block.timestamp >= stor3
    stor2 = arg1
    stor3 = block.timestamp
    history[block.timestamp / 900].field_0 = arg1
    history[block.timestamp / 900].field_256 = stor3
    emit 0xe494ce32: stor2
}



}
