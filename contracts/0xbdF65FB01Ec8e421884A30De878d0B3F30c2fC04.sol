contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor4 = 0
    stor13 = 0
    stor14 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 150
    stor11 = 200
    stor12 = 100
    return code.data[109 len 1626]
}



// =====================  Runtime code  =====================


address longAddress;
uint256 stor0;
address shortAddress;
uint256 stor1;
address oracleAddress;
uint256 stor2;
address sub_bc55b7c6Address;
uint256 stor3;
address timerAddress;
uint256 stor4;
uint256 sub_666ee1b3;
uint256 sub_ff9ea0e7;
uint256 sub_f855c2b2;
uint256 sub_1e007936;
uint256 sub_67b3d32f;
uint256 sub_aede8e6f;
uint256 sub_271d1386;
uint256 sub_b8ab32a7;
uint256 sub_6704d2ed;
uint256 sub_74aed53f;

function long() payable {
    return address(longAddress)
}

function sub_1e007936(?) payable {
    return sub_1e007936
}

function sub_271d1386(?) payable {
    return sub_271d1386
}

function short() payable {
    return address(shortAddress)
}

function sub_666ee1b3(?) payable {
    return sub_666ee1b3
}

function sub_6704d2ed(?) payable {
    return sub_6704d2ed
}

function sub_67b3d32f(?) payable {
    return sub_67b3d32f
}

function sub_74aed53f(?) payable {
    return sub_74aed53f
}

function oracle() payable {
    return address(oracleAddress)
}

function timer() payable {
    return address(timerAddress)
}

function sub_aede8e6f(?) payable {
    return sub_aede8e6f
}

function sub_b8ab32a7(?) payable {
    return sub_b8ab32a7
}

function sub_bc55b7c6(?) payable {
    return address(sub_bc55b7c6Address)
}

function sub_f855c2b2(?) payable {
    return sub_f855c2b2
}

function sub_ff9ea0e7(?) payable {
    return sub_ff9ea0e7
}

function sub_24ad6ca6(?) payable {
    if address(longAddress) != msg.sender:
        require msg.sender == address(shortAddress)
    if sub_1e007936 < 0:
        sub_67b3d32f += sub_1e007936
        sub_1e007936 = 0
    else:
        if sub_67b3d32f < 0:
            sub_1e007936 += sub_67b3d32f
            sub_67b3d32f = 0
    call address(longAddress) with:
       value sub_1e007936 wei
         gas 0 wei
    call address(shortAddress) with:
       value sub_67b3d32f wei
         gas 0 wei
    selfdestruct(address(oracleAddress))
}

function sub_3e0a69a1(?) payable {
    require msg.sender == address(timerAddress)
    sub_ff9ea0e7 = sub_666ee1b3
    call address(sub_bc55b7c6Address).0x5991019c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    sub_666ee1b3 = ext_call.return_data[0]
    sub_1e007936 = sub_1e007936 + (ext_call.return_data[0] * sub_f855c2b2) - (sub_ff9ea0e7 * sub_f855c2b2)
    if sub_1e007936 + (ext_call.return_data[0] * sub_f855c2b2) - (sub_ff9ea0e7 * sub_f855c2b2) >= sub_b8ab32a7 * sub_f855c2b2:
        if sub_67b3d32f >= sub_f855c2b2 * sub_b8ab32a7:
            if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
                sub_6704d2ed = 0
            else:
                sub_6704d2ed = (sub_271d1386 * sub_f855c2b2) - sub_1e007936
            if sub_67b3d32f >= sub_aede8e6f:
                sub_74aed53f = 0
            else:
                sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
    if address(longAddress) != msg.sender:
        require msg.sender == address(shortAddress)
    if sub_1e007936 < 0:
        sub_67b3d32f += sub_1e007936
        sub_1e007936 = 0
    else:
        if sub_67b3d32f < 0:
            sub_1e007936 += sub_67b3d32f
            sub_67b3d32f = 0
    call address(longAddress) with:
       value sub_1e007936 wei
         gas 0 wei
    call address(shortAddress) with:
       value sub_67b3d32f wei
         gas 0 wei
    selfdestruct(address(oracleAddress))
}

function _fallback() payable {
  stop
}

function GetBalance() payable {
    require msg.value <= 0
    if address(longAddress) == msg.sender:
        return sub_1e007936
    require msg.sender == address(shortAddress)
    return sub_67b3d32f
}

function sub_7e6d04db(?) payable {
    require msg.value <= 0
    if msg.sender == address(longAddress):
        return sub_6704d2ed
    require msg.sender == address(shortAddress)
    return sub_74aed53f
}

function sub_4407669c(?) payable {
    require address(longAddress)
    require 0 == address(shortAddress)
    require msg.value >= sub_f855c2b2 * sub_271d1386
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    sub_67b3d32f = msg.value
}

function sub_db082067(?) payable {
    if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
        sub_6704d2ed = 0
    else:
        sub_6704d2ed = (sub_271d1386 * sub_f855c2b2) - sub_1e007936
    if sub_67b3d32f >= sub_aede8e6f:
        sub_74aed53f = 0
    else:
        sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
}

function sub_bed61e9f(?) payable {
    if address(longAddress) == msg.sender:
        sub_1e007936 += msg.value
    else:
        require msg.sender == address(shortAddress)
        sub_67b3d32f += msg.value
    if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
        sub_6704d2ed = 0
    else:
        sub_6704d2ed = (sub_271d1386 * sub_f855c2b2) - sub_1e007936
    if sub_67b3d32f >= sub_aede8e6f:
        sub_74aed53f = 0
    else:
        sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
}

function sub_d77ee72a(?) payable {
    require not address(longAddress)
    require 0 == address(shortAddress)
    require msg.value >= arg3 * sub_271d1386
    sub_f855c2b2 = arg3
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    address(shortAddress) = 0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    uint256(stor4) = arg2 or Mask(96, 160, uint256(stor4))
    sub_1e007936 = msg.value
    sub_67b3d32f = 0
    sub_6704d2ed = 0
    sub_74aed53f = 0
    call address(arg1).0x5991019c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    sub_666ee1b3 = ext_call.return_data[0]
    sub_ff9ea0e7 = ext_call.return_data[0]
}



}
