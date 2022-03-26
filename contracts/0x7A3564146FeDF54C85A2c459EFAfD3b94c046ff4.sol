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
    return code.data[109 len 1802]
}



// =====================  Runtime code  =====================


address longAddress;
address shortAddress;
address oracleAddress;
address sub_bc55b7c6Address;
address timerAddress;
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

function long() {
    return longAddress
}

function sub_1e007936(?) {
    return sub_1e007936
}

function sub_271d1386(?) {
    return sub_271d1386
}

function short() {
    return shortAddress
}

function sub_666ee1b3(?) {
    return sub_666ee1b3
}

function sub_6704d2ed(?) {
    return sub_6704d2ed
}

function sub_67b3d32f(?) {
    return sub_67b3d32f
}

function sub_74aed53f(?) {
    return sub_74aed53f
}

function oracle() {
    return oracleAddress
}

function timer() {
    return timerAddress
}

function sub_aede8e6f(?) {
    return sub_aede8e6f
}

function sub_b8ab32a7(?) {
    return sub_b8ab32a7
}

function sub_bc55b7c6(?) {
    return sub_bc55b7c6Address
}

function sub_f855c2b2(?) {
    return sub_f855c2b2
}

function sub_ff9ea0e7(?) {
    return sub_ff9ea0e7
}

function sub_24ad6ca6(?) {
    if longAddress != msg.sender:
        require shortAddress == msg.sender
    if sub_1e007936 < 0:
        sub_67b3d32f += sub_1e007936
        sub_1e007936 = 0
    else:
        if sub_67b3d32f < 0:
            sub_1e007936 += sub_67b3d32f
            sub_67b3d32f = 0
    call longAddress with:
       value sub_1e007936 wei
         gas 2300 * is_zero(value) wei
    call shortAddress with:
       value sub_67b3d32f wei
         gas 2300 * is_zero(value) wei
    selfdestruct(oracleAddress)
}

function sub_3e0a69a1(?) {
    require timerAddress == msg.sender
    sub_ff9ea0e7 = sub_666ee1b3
    require ext_code.size(sub_bc55b7c6Address)
    call sub_bc55b7c6Address.0x5991019c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    sub_666ee1b3 = ext_call.return_data[0]
    sub_1e007936 = sub_1e007936 + (ext_call.return_data[0] * sub_f855c2b2) - (sub_ff9ea0e7 * sub_f855c2b2)
    if sub_1e007936 + (ext_call.return_data[0] * sub_f855c2b2) - (sub_ff9ea0e7 * sub_f855c2b2) >= sub_b8ab32a7 * sub_f855c2b2:
        if sub_67b3d32f >= sub_b8ab32a7 * sub_f855c2b2:
            if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
                sub_6704d2ed = 0
            else:
                sub_6704d2ed = (sub_f855c2b2 * sub_271d1386) - sub_1e007936
            if sub_67b3d32f >= sub_aede8e6f:
                sub_74aed53f = 0
            else:
                sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
    if longAddress != msg.sender:
        require shortAddress == msg.sender
    if sub_1e007936 < 0:
        sub_67b3d32f += sub_1e007936
        sub_1e007936 = 0
    else:
        if sub_67b3d32f < 0:
            sub_1e007936 += sub_67b3d32f
            sub_67b3d32f = 0
    call longAddress with:
       value sub_1e007936 wei
         gas 2300 * is_zero(value) wei
    call shortAddress with:
       value sub_67b3d32f wei
         gas 2300 * is_zero(value) wei
    selfdestruct(oracleAddress)
}

function _fallback() payable {
    revert 
}

function GetBalance() {
    require msg.value <= 0
    if longAddress == msg.sender:
        return sub_1e007936
    require shortAddress == msg.sender
    return sub_67b3d32f
}

function sub_7e6d04db(?) {
    require msg.value <= 0
    if longAddress == msg.sender:
        return sub_6704d2ed
    require shortAddress == msg.sender
    return sub_74aed53f
}

function sub_4407669c(?) {
    require longAddress
    require not shortAddress
    require msg.value >= sub_f855c2b2 * sub_271d1386
    shortAddress = msg.sender
    sub_67b3d32f = msg.value
}

function sub_db082067(?) {
    if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
        sub_6704d2ed = 0
    else:
        sub_6704d2ed = (sub_f855c2b2 * sub_271d1386) - sub_1e007936
    if sub_67b3d32f >= sub_aede8e6f:
        sub_74aed53f = 0
    else:
        sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
}

function sub_bed61e9f(?) {
    if longAddress == msg.sender:
        sub_1e007936 += msg.value
    else:
        require shortAddress == msg.sender
        sub_67b3d32f += msg.value
    if sub_1e007936 >= sub_aede8e6f * sub_f855c2b2:
        sub_6704d2ed = 0
    else:
        sub_6704d2ed = (sub_f855c2b2 * sub_271d1386) - sub_1e007936
    if sub_67b3d32f >= sub_aede8e6f:
        sub_74aed53f = 0
    else:
        sub_74aed53f = (sub_f855c2b2 * sub_271d1386) - sub_67b3d32f
}

function sub_d77ee72a(?) {
    require not longAddress
    require not shortAddress
    require msg.value >= arg3 * sub_271d1386
    sub_f855c2b2 = arg3
    longAddress = msg.sender
    shortAddress = 0
    oracleAddress = arg1
    sub_bc55b7c6Address = arg1
    timerAddress = arg2
    sub_1e007936 = msg.value
    sub_67b3d32f = 0
    sub_6704d2ed = 0
    sub_74aed53f = 0
    require ext_code.size(arg1)
    call arg1.0x5991019c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    sub_666ee1b3 = ext_call.return_data[0]
    sub_ff9ea0e7 = ext_call.return_data[0]
}



}
